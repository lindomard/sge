object Frm_PCon: TFrm_PCon
  Left = 654
  Top = 125
  Width = 804
  Height = 624
  ActiveControl = BBINCLUIR
  Caption = 'Pr'#243'ximo Contato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1_Edit: TPanel
    Left = 0
    Top = 328
    Width = 796
    Height = 241
    Align = alBottom
    BorderWidth = 3
    Enabled = False
    TabOrder = 2
    object SBx1: TScrollBox
      Left = 4
      Top = 4
      Width = 788
      Height = 233
      Align = alClient
      TabOrder = 0
      object Label4: TLabel
        Left = 4
        Top = 7
        Width = 48
        Height = 13
        Caption = 'N'#250'mero:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 104
        Top = 7
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        FocusControl = DBE_CodVen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 118
        Top = 29
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        FocusControl = DBE_CodCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 34
        Top = 75
        Width = 76
        Height = 13
        Caption = 'Data Contato'
        FocusControl = DBE_datcon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 2
        Top = 156
        Width = 146
        Height = 13
        Caption = 'Data do Pr'#243'ximo Contato:'
        FocusControl = DBE_dtpcon
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 0
        Top = 67
        Width = 776
        Height = 3
        Shape = bsBottomLine
      end
      object Bevel2: TBevel
        Left = -6
        Top = 146
        Width = 775
        Height = 3
        Shape = bsBottomLine
      end
      object DBEdit1: TDBEdit
        Left = 52
        Top = 3
        Width = 50
        Height = 19
        Color = 13828095
        Ctl3D = False
        DataField = 'CTNUMCON'
        DataSource = Src_Contato
        Enabled = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBE_CodVen: TDBEdit
        Left = 164
        Top = 3
        Width = 60
        Height = 19
        Color = 13828095
        Ctl3D = False
        DataField = 'CTCODVEN'
        DataSource = Src_Contato
        ParentCtl3D = False
        TabOrder = 1
        OnExit = DBE_CodVenExit
        OnKeyPress = DBE_CodVenKeyPress
      end
      object DBEdit3: TDBEdit
        Left = 225
        Top = 3
        Width = 282
        Height = 19
        TabStop = False
        Color = 14408667
        Ctl3D = False
        DataField = 'TMP_NOMVEN'
        DataSource = Src_Contato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBE_CodCli: TDBEdit
        Left = 164
        Top = 25
        Width = 60
        Height = 19
        Color = 13828095
        Ctl3D = False
        DataField = 'CTCODCLI'
        DataSource = Src_Contato
        ParentCtl3D = False
        TabOrder = 3
        OnExit = DBE_CodCliExit
        OnKeyPress = DBE_CodCliKeyPress
      end
      object DBEdit5: TDBEdit
        Left = 225
        Top = 25
        Width = 282
        Height = 19
        TabStop = False
        Color = 14408667
        Ctl3D = False
        DataField = 'TMP_NOMCLI'
        DataSource = Src_Contato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 164
        Top = 46
        Width = 241
        Height = 19
        TabStop = False
        Color = 14408667
        Ctl3D = False
        DataField = 'TMP_NOMCON'
        DataSource = Src_Contato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 408
        Top = 46
        Width = 99
        Height = 19
        TabStop = False
        Color = 14408667
        Ctl3D = False
        DataField = 'fone'
        DataSource = Src_Contato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBE_datcon: TDBEdit
        Left = 32
        Top = 90
        Width = 82
        Height = 19
        Color = 13828095
        Ctl3D = False
        DataField = 'CTDATCON'
        DataSource = Src_Contato
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBE_dtpcon: TDBEdit
        Left = 32
        Top = 171
        Width = 82
        Height = 19
        Color = 13828095
        Ctl3D = False
        DataField = 'CTDTPCON'
        DataSource = Src_Contato
        ParentCtl3D = False
        TabOrder = 10
      end
      object dtcontato: TMaskEdit
        Left = 32
        Top = 90
        Width = 82
        Height = 19
        Color = 13828095
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 8
        Text = '  /  /    '
        Visible = False
      end
      object dtpcont: TMaskEdit
        Left = 32
        Top = 171
        Width = 82
        Height = 19
        Color = 13828095
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 11
        Text = '  /  /    '
        Visible = False
        OnExit = dtpcontExit
      end
      object bbAgendar: TBitBtn
        Left = 3
        Top = 207
        Width = 153
        Height = 21
        Cursor = crHandPoint
        Caption = 'Agendar Pr'#243'ximo Contato'
        Enabled = False
        TabOrder = 13
        OnClick = bbAgendarClick
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
      object TEXTCON: TMemo
        Left = 163
        Top = 73
        Width = 487
        Height = 70
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 9
        OnExit = TEXTCONExit
        OnKeyDown = TEXTCONKeyDown
      end
      object TEXTPCON: TMemo
        Left = 163
        Top = 154
        Width = 487
        Height = 70
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 12
        OnExit = TEXTPCONExit
        OnKeyDown = TEXTPCONKeyDown
      end
      object DBCb_Status: TDBCheckBox
        Left = 32
        Top = 192
        Width = 97
        Height = 17
        Caption = 'Contactou'
        DataField = 'CTSTATUS'
        DataSource = Src_Contato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = DBCb_StatusClick
      end
    end
  end
  object RLReport1: TRLReport
    Left = 538
    Top = 528
    Width = 794
    Height = 1123
    DataSource = DM1.Src_Contato
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
      Height = 34
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Degrade.Direction = ddVertical
      Degrade.OppositeColor = clBlue
      object lbl_empresa: TRLLabel
        Left = 2
        Top = 3
        Width = 311
        Height = 16
        AutoSize = False
      end
      object RLLabel1: TRLLabel
        Left = 600
        Top = 1
        Width = 58
        Height = 16
        AutoSize = False
        Caption = 'P'#225'gina:'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 649
        Top = 1
        Width = 29
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
      end
      object RLLabel2: TRLLabel
        Left = 679
        Top = 1
        Width = 9
        Height = 16
        AutoSize = False
        Caption = '/'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 688
        Top = 1
        Width = 29
        Height = 16
        AutoSize = False
        Info = itLastPageNumber
      end
      object lbl_titulo: TRLLabel
        Left = 1
        Top = 17
        Width = 129
        Height = 16
        Caption = 'Rela'#231#227'o de Contatos.'
      end
      object lbl_obs: TRLLabel
        Left = 130
        Top = 17
        Width = 469
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLLabel4: TRLLabel
        Left = 601
        Top = 18
        Width = 39
        Height = 16
        AutoSize = False
        Caption = 'Data:'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 649
        Top = 17
        Width = 68
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 72
      Width = 718
      Height = 81
      DataFields = 'TMP_NOMVEN'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 16
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLLabel5: TRLLabel
          Left = 126
          Top = -1
          Width = 53
          Height = 16
          Alignment = taRightJustify
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 178
          Top = -1
          Width = 59
          Height = 16
          AutoSize = False
          DataField = 'CTCODVEN'
          DataSource = DM1.Src_Contato
          DisplayMask = '00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 241
          Top = -1
          Width = 95
          Height = 16
          DataField = 'TMP_NOMVEN'
          DataSource = DM1.Src_Contato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 16
        Width = 718
        Height = 34
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Borders.FixedLeft = True
        object RLLabel6: TRLLabel
          Left = 14
          Top = -1
          Width = 53
          Height = 16
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 63
          Top = 0
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'CTCODCLI'
          DataSource = DM1.Src_Contato
          DisplayMask = '00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 119
          Top = 0
          Width = 247
          Height = 16
          AutoSize = False
          DataField = 'TMP_NOMCLI'
          DataSource = DM1.Src_Contato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 373
          Top = -1
          Width = 57
          Height = 16
          Caption = 'Contato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 427
          Top = -1
          Width = 172
          Height = 16
          AutoSize = False
          DataField = 'TMP_NOMCON'
          DataSource = DM1.Src_Contato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 602
          Top = -1
          Width = 112
          Height = 16
          AutoSize = False
          DataField = 'fone'
          DataSource = DM1.Src_Contato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 5
          Top = 16
          Width = 102
          Height = 16
          Caption = 'Data do Contato:'
        end
        object RLDBText7: TRLDBText
          Left = 109
          Top = 16
          Width = 43
          Height = 16
          DataField = 'datcon'
          DataSource = DM1.Src_Contato
        end
        object RLDBText8: TRLDBText
          Left = 533
          Top = 14
          Width = 47
          Height = 16
          DataField = 'dtpcont'
          DataSource = DM1.Src_Contato
        end
        object RLLabel12: TRLLabel
          Left = 373
          Top = 15
          Width = 154
          Height = 16
          Caption = 'Data do Proximo Contato:'
        end
      end
      object det_contato: TRLBand
        Left = 0
        Top = 50
        Width = 718
        Height = 31
        AutoSize = True
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLDBMemo1: TRLDBMemo
          Left = 1
          Top = 18
          Width = 370
          Height = 12
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CTTEXCON'
          DataSource = DM1.Src_Contato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RLDBMemo2: TRLDBMemo
          Left = 370
          Top = 18
          Width = 349
          Height = 12
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'CTTEXPCON'
          DataSource = DM1.Src_Contato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 1
          Top = 1
          Width = 370
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Assunto do Contato'
          Color = 15461355
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 371
          Top = 1
          Width = 346
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Assunto do Pr'#243'ximo Contato'
          Color = 15461355
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 153
      Width = 718
      Height = 11
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLLabel10: TRLLabel
        Left = 657
        Top = 1
        Width = 61
        Height = 7
        Align = faRightTop
        Caption = 'Intersys Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel_filtros: TPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 110
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel4_filtros: TPanel
      Left = 0
      Top = 0
      Width = 637
      Height = 110
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 3
        Top = 8
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 17
        Top = 39
        Width = 44
        Height = 13
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 10
        Top = 141
        Width = 50
        Height = 13
        Caption = 'Per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 132
        Top = 141
        Width = 8
        Height = 13
        Caption = #224
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbSEmCont: TSpeedButton
        Left = 1
        Top = 157
        Width = 130
        Height = 26
        Hint = 
          'Esta op'#231#227'o Lista todos os '#13#10'Clientes que n'#227'o possui contatos'#13#10'Ca' +
          'dastrados'
        Caption = 'Clientes Sem Contato'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = sbSEmContClick
      end
      object SB_REAGENDAR: TSpeedButton
        Left = 130
        Top = 157
        Width = 130
        Height = 26
        Hint = 
          'Esta op'#231#227'o Lista todos os '#13#10'Clientes que n'#227'o est'#227'o agendados'#13#10'de' +
          'ntro do per'#237'odo acima digitado'
        Caption = 'Clientes p/Reagendar'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_REAGENDARClick
      end
      object SB_SEMCOMPRA: TSpeedButton
        Left = 259
        Top = 157
        Width = 130
        Height = 26
        Hint = 
          'Esta op'#231#227'o Lista todos os Clientes '#13#10'com contatos agendados e qu' +
          'e '#13#10'n'#227'o efetuaram compras dentro'#13#10'do per'#237'odo acima digitado'
        Caption = 'Clientes Sem Compras'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_SEMCOMPRAClick
      end
      object Label8: TLabel
        Left = 17
        Top = 109
        Width = 44
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 38
        Top = 72
        Width = 21
        Height = 13
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_codbai: TLabel
        Left = 394
        Top = 110
        Width = 38
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 397
        Top = 144
        Width = 45
        Height = 13
        Caption = 'Regi'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODVEN: TEdit
        Left = 65
        Top = 4
        Width = 64
        Height = 19
        Color = 13828095
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object CODCLI: TEdit
        Left = 65
        Top = 38
        Width = 64
        Height = 19
        Color = 13828095
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object MDT1: TMaskEdit
        Left = 65
        Top = 139
        Width = 64
        Height = 19
        Color = 13828095
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 144
        Top = 139
        Width = 62
        Height = 19
        Color = 13828095
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 6
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
      object CB_DTPCONT: TCheckBox
        Left = 208
        Top = 145
        Width = 185
        Height = 17
        Caption = 'Pesquisar data do Pr'#243'ximo Contato'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CB_GRAFICO: TCheckBox
        Left = 397
        Top = 50
        Width = 98
        Height = 17
        Caption = 'Modelo Gr'#225'fico'
        TabOrder = 8
      end
      object CLBStatus: TCheckListBox
        Left = 395
        Top = 3
        Width = 121
        Height = 45
        Color = 16776176
        Columns = 1
        ItemHeight = 13
        Items.Strings = (
          'Pendentes'
          'Confirmados'
          'Todos')
        Style = lbOwnerDrawFixed
        TabOrder = 9
        OnClick = CLBStatusClick
      end
      object rg_ordem: TRadioGroup
        Left = 521
        Top = 1
        Width = 111
        Height = 58
        Caption = 'Ordem:'
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          'Alfabetica'
          'P.Contato+Alfab')
        ParentCtl3D = False
        TabOrder = 10
      end
      object CB_PCONT: TCheckBox
        Left = 397
        Top = 62
        Width = 234
        Height = 17
        Hint = 
          'Ao incluir um novo contato pular'#13#10'do c'#243'digo do cliente para a da' +
          'ta'#13#10'do proximo contato'
        Caption = 'Pular do C'#243'd.Cliente p/Data Pr'#243'ximo Contato'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnExit = CB_PCONTExit
      end
      object CB_DATCON: TCheckBox
        Left = 397
        Top = 78
        Width = 234
        Height = 17
        Hint = 
          'Ao incluir um novo contato colocar'#13#10'a data do ultimo contato na ' +
          'data do'#13#10'contato'
        Caption = 'Colocar data do ultimo contato p/dt.contato'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnExit = CB_PCONTExit
      end
      object CODLOC: TEdit
        Left = 65
        Top = 105
        Width = 64
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Color = 13828095
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnExit = CODLOCExit
        OnKeyPress = CODLOCKeyPress
      end
      object lbx_codloc: TListBox
        Left = 128
        Top = 105
        Width = 264
        Height = 35
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 65
        Top = 124
        Width = 57
        Height = 15
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object lbx_codven: TListBox
        Left = 128
        Top = 4
        Width = 264
        Height = 35
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codvenKeyDown
      end
      object lbx_codcli: TListBox
        Left = 128
        Top = 38
        Width = 264
        Height = 35
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 65
        Top = 23
        Width = 51
        Height = 15
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
      end
      object OMITIR_CLI: TCheckBox
        Left = 65
        Top = 57
        Width = 51
        Height = 15
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
      end
      object CODUF: TEdit
        Left = 65
        Top = 71
        Width = 64
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnExit = CODUFExit
        OnKeyDown = CODUFKeyDown
      end
      object lbx_coduf: TListBox
        Left = 128
        Top = 71
        Width = 264
        Height = 35
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnKeyDown = lbx_codufKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 65
        Top = 90
        Width = 57
        Height = 15
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
      end
      object edt_codbai: TEdit
        Left = 442
        Top = 106
        Width = 64
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Color = 13828095
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        OnExit = edt_codbaiExit
        OnKeyPress = edt_codbaiKeyPress
      end
      object lbx_codbai: TListBox
        Left = 505
        Top = 106
        Width = 120
        Height = 35
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 21
        OnKeyDown = lbx_codbaiKeyDown
      end
      object OMITIR_BAI: TCheckBox
        Left = 442
        Top = 125
        Width = 57
        Height = 15
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 22
      end
      object edt_codreg: TEdit
        Left = 443
        Top = 141
        Width = 64
        Height = 19
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        Color = 13828095
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 23
        OnExit = edt_codregExit
        OnKeyPress = edt_codregKeyPress
      end
      object lbx_codreg: TListBox
        Left = 505
        Top = 140
        Width = 120
        Height = 35
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        OnKeyDown = lbx_codregKeyDown
      end
      object OMITIR_REG: TCheckBox
        Left = 444
        Top = 162
        Width = 57
        Height = 15
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
      end
    end
    object Panel_aplicar: TPanel
      Left = 637
      Top = 0
      Width = 159
      Height = 110
      Align = alRight
      TabOrder = 1
      object BBnAplicar: TBitBtn
        Left = 10
        Top = 17
        Width = 140
        Height = 22
        Cursor = crHandPoint
        Hint = 'Selecionar os registros que'#13#10'atendam os parametros'#13#10'digitados'
        Caption = '&Aplicar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BBnAplicarClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object bbImprimir: TBitBtn
        Left = 10
        Top = 38
        Width = 140
        Height = 22
        Cursor = crHandPoint
        Hint = 'Imprimir os Contatos'#13#10'Selecionados'
        Caption = '&Imprimir Selecionados'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bbImprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
          808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
          000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
          08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
          080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
          0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
          08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
          008888888777777777F888888888888888888888888888888888}
        NumGlyphs = 2
      end
      object CB_DETCONTATO: TCheckBox
        Left = 11
        Top = 0
        Width = 126
        Height = 17
        Hint = 'Se marcado emite o '#13#10'detalhe/assunto do'#13#10'contato'
        Caption = 'Detalhar Contato'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object bbSitCre: TBitBtn
        Left = 10
        Top = 59
        Width = 140
        Height = 22
        Cursor = crHandPoint
        Hint = 
          'Click aqui para ver a'#13#10'Situa'#231#227'o de Credito do'#13#10'Cliente Seleciona' +
          'do'
        Caption = 'Situa'#231#227'o de Credito'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = bbSitCreClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888FFFFFFFFFF88888000000000008888877777777777F88808888888880
          808887FFFFFFFFFFF7F80000000000000808777777777777787F0888888BBB88
          000878888888FFF8777F08888887778808087FFFFFF777FF7F7F000000000000
          08807777777777777F8708888888888080807FFFFFFFFFF7F7F7800000000008
          080087777777777F7F77880FFFFFFFF08080887888FFFFF7F7F78880F00000F0
          0008888787777787777F8880FFFFFFFF08888887888FFFFF7F8888880F00000F
          08888888787777787F8888880FFFFFFFF08888887888888887F8888880000000
          008888888777777777F888888888888888888888888888888888}
        NumGlyphs = 2
      end
      object BBnFechar: TBitBtn
        Left = 10
        Top = 80
        Width = 140
        Height = 22
        Cursor = crHandPoint
        Hint = 'Sair desta op'#231#227'o'
        Caption = '&Fechar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BBnFecharClick
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
  end
  object panel_lista: TPanel
    Left = 0
    Top = 183
    Width = 796
    Height = 145
    Align = alBottom
    BorderWidth = 3
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 4
      Top = 4
      Width = 788
      Height = 137
      Align = alClient
      DataSource = Src_Contato
      FixedColor = 13828095
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CTNUMCON'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTCODVEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTCODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datcon'
          Title.Caption = 'Dt. Contato'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TMP_NOMCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dtpcont'
          Title.Caption = 'Dt. Proximo Contato'
          Width = 124
          Visible = True
        end>
    end
  end
  object Panel_naveg: TPanel
    Left = 0
    Top = 569
    Width = 796
    Height = 24
    Align = alBottom
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 344
      Height = 22
      Cursor = crHandPoint
      Hint = 'Nagega sobre os contatos Selecionados'
      DataSource = Src_Contato
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Ctl3D = True
      Hints.Strings = (
        'Primeiro registro'
        'Registro anterior'
        'Pr'#243'ximo registro'
        #218'ltimo registro'
        'Inserir registro'
        'Excluir registro'
        'Editar registro'
        'Gravar edi'#231#227'o'
        'Cancelar edi'#231#227'o'
        'Atualizar da rede')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BBINCLUIR: TBitBtn
      Left = 345
      Top = 0
      Width = 90
      Height = 22
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Novos Contatos'
      Caption = '&Incluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BBINCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 434
      Top = 0
      Width = 90
      Height = 22
      Cursor = crHandPoint
      Hint = 'Alterar o Registro Atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BBALTERARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object BBGRAVAR: TBitBtn
      Left = 523
      Top = 0
      Width = 90
      Height = 22
      Cursor = crHandPoint
      Hint = 'Gravar o Registro que esta sendo editado'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BBGRAVARClick
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
    object BBLIMPAR: TBitBtn
      Left = 612
      Top = 0
      Width = 90
      Height = 22
      Cursor = crHandPoint
      Hint = 'Limpa a tela CANCELANDO a opera'#231#227'o atual'
      Caption = '&Limpar Tela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BBLIMPARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object BBEXCLUIR: TBitBtn
      Left = 701
      Top = 0
      Width = 90
      Height = 22
      Cursor = crHandPoint
      Hint = 'Excluir Contatos Existentes'
      Caption = 'Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = BBEXCLUIRClick
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 110
    Width = 796
    Height = 73
    Align = alBottom
    Caption = 'GroupBox1'
    TabOrder = 5
    Visible = False
    object Memo1: TMemo
      Left = 87
      Top = 3
      Width = 607
      Height = 32
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        
          'I234567890123456789012345678901234567890123456789012345678901234' +
          '5'
        'F')
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object Memo2: TMemo
      Left = 86
      Top = 40
      Width = 607
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Lines.Strings = (
        
          'I234567890123456789012345678901234567890123456789012345678901234' +
          '5'
        'F')
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 320
    Top = 96
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 544
    Top = 40
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 680
    Top = 96
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 744
    Top = 112
  end
  object U_Contato: TUpdateSQL
    ModifySQL.Strings = (
      'update CONTATO'
      'set'
      '  CTNUMCON = :CTNUMCON,'
      '  CTCODVEN = :CTCODVEN,'
      '  CTCODCLI = :CTCODCLI,'
      '  CTDATCON = :CTDATCON,'
      '  CTDTPCON = :CTDTPCON,'
      '  CTCODEMP = :CTCODEMP,'
      '  CTSTATUS = :CTSTATUS'
      'where'
      '  CTNUMCON = :OLD_CTNUMCON')
    InsertSQL.Strings = (
      'insert into CONTATO'
      
        '  (CTNUMCON, CTCODVEN, CTCODCLI, CTDATCON, CTDTPCON, CTCODEMP, C' +
        'TSTATUS)'
      'values'
      
        '  (:CTNUMCON, :CTCODVEN, :CTCODCLI, :CTDATCON, :CTDTPCON, :CTCOD' +
        'EMP, :CTSTATUS)')
    DeleteSQL.Strings = (
      'delete from CONTATO'
      'where'
      '  CTNUMCON = :OLD_CTNUMCON')
    Left = 606
    Top = 58
  end
  object Tb_Contato: TQuery
    CachedUpdates = True
    AfterInsert = Tb_ContatoAfterInsert
    AfterPost = c
    AfterCancel = Tb_ContatoAfterCancel
    AfterDelete = c
    OnCalcFields = Tb_ContatoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select CTNUMCON,'
      '       CTCODVEN,'
      '       CTCODCLI,'
      '       CTDATCON,'
      '       CTDTPCON,'
      '       CTCODEMP,'
      '       CTSTATUS,'
      '       VNOME   AS TMP_NOMVEN,'
      '       CRAZAO  AS TMP_NOMCLI,'
      '       CNOMCON AS TMP_NOMCON,'
      '       CFONCON AS TMP_FONCON,'
      '       CFONE01  AS TMP_FONECOM,'
      '       CUF      AS TMP_CUF'
      '        ,CFONE01,CCIDADE,CEMAIL'
      'from CONTATO,CADCLI,CADVEN'
      ''
      'where CCODCLI=CTCODCLI'
      'AND   VCODVEN=CTCODVEN')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Contato
    Left = 522
    Top = 42
    object Tb_ContatoCTNUMCON: TFloatField
      DisplayLabel = 'No.Contato'
      FieldName = 'CTNUMCON'
      Origin = 'SG_ASSOC.CONTATO.CTNUMCON'
    end
    object Tb_ContatoCTCODVEN: TFloatField
      DisplayLabel = 'Vendedor'
      FieldName = 'CTCODVEN'
      Origin = 'SG_ASSOC.CONTATO.CTCODVEN'
    end
    object Tb_ContatoCTCODCLI: TFloatField
      DisplayLabel = 'Cliente'
      FieldName = 'CTCODCLI'
      Origin = 'SG_ASSOC.CONTATO.CTCODCLI'
    end
    object Tb_ContatoCTDATCON: TDateTimeField
      DisplayLabel = 'Data Contato'
      FieldName = 'CTDATCON'
      Origin = 'SG_ASSOC.CONTATO.CTDATCON'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_ContatoCTDTPCON: TDateTimeField
      DisplayLabel = 'Data Proximo Contato'
      FieldName = 'CTDTPCON'
      Origin = 'SG_ASSOC.CONTATO.CTDTPCON'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_Contatofone: TStringField
      DisplayLabel = 'Telefone'
      FieldKind = fkCalculated
      FieldName = 'fone'
      Calculated = True
    end
    object Tb_ContatoCTCODEMP: TFloatField
      FieldName = 'CTCODEMP'
      Origin = 'SG_ASSOC.CONTATO.CTCODEMP'
    end
    object Tb_ContatoCTSTATUS: TFloatField
      FieldName = 'CTSTATUS'
      Origin = 'SG_ASSOC.CONTATO.CTSTATUS'
    end
    object Tb_Contatodatcon: TStringField
      FieldKind = fkCalculated
      FieldName = 'datcon'
      Size = 10
      Calculated = True
    end
    object Tb_Contatodtpcont: TStringField
      FieldKind = fkCalculated
      FieldName = 'dtpcont'
      Size = 10
      Calculated = True
    end
    object Tb_ContatoTMP_NOMVEN: TStringField
      FieldName = 'TMP_NOMVEN'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Tb_ContatoTMP_NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'TMP_NOMCLI'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Tb_ContatoTMP_NOMCON: TStringField
      FieldName = 'TMP_NOMCON'
      Origin = 'SG_ASSOC.CADCLI.CNOMCON'
      Size = 40
    end
    object Tb_ContatoTMP_FONCON: TStringField
      FieldName = 'TMP_FONCON'
      Origin = 'SG_ASSOC.CADCLI.CFONCON'
    end
    object Tb_ContatoTMP_FONECOM: TStringField
      FieldName = 'TMP_FONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Tb_ContatoTMP_CUF: TStringField
      FieldName = 'TMP_CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_ContatoCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Tb_ContatoCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Tb_ContatoCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Origin = 'SG_ASSOC.CADCLI.CEMAIL'
      Size = 50
    end
  end
  object Src_Contato: TDataSource
    DataSet = Tb_Contato
    OnDataChange = Src_ContatoDataChange
    Left = 634
    Top = 66
  end
end

object Frm_RelRecbCartao: TFrm_RelRecbCartao
  Left = 120
  Top = 382
  Width = 567
  Height = 277
  Caption = 'Recebimentos por Cart'#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 118
    Top = 7
    Width = 56
    Height = 13
    Caption = 'Per'#237'odo de '
  end
  object Label2: TLabel
    Left = 276
    Top = 7
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label24: TLabel
    Left = 63
    Top = 60
    Width = 65
    Height = 13
    Caption = 'Banco/Caixa:'
  end
  object Label3: TLabel
    Left = 65
    Top = 97
    Width = 56
    Height = 13
    Caption = 'Usu'#225'rio/Cx:'
  end
  object MDT1: TMaskEdit
    Left = 184
    Top = 3
    Width = 68
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 311
    Top = 3
    Width = 68
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object cb_seprede: TCheckBox
    Left = 184
    Top = 23
    Width = 118
    Height = 17
    Caption = 'Separado por Rede'
    TabOrder = 2
  end
  object cb_parcelas: TCheckBox
    Left = 184
    Top = 40
    Width = 140
    Height = 17
    Caption = 'Imprimir dados da Parcela'
    TabOrder = 3
  end
  object bbImprimir: TBitBtn
    Left = 23
    Top = 154
    Width = 137
    Height = 40
    Caption = '&Imprimir'
    TabOrder = 10
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
  object bbFechar: TBitBtn
    Left = 356
    Top = 154
    Width = 137
    Height = 40
    Caption = '&Sair'
    TabOrder = 12
    OnClick = bbFecharClick
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
  object RLReport1: TRLReport
    Left = 0
    Top = 219
    Width = 794
    Height = 1123
    DataSource = Src_CFFP
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
      Height = 55
      BandType = btColumnHeader
      Degrade.Direction = ddVertical
      Degrade.OppositeColor = clTeal
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
        Left = 560
        Top = 0
        Width = 35
        Height = 16
        Caption = 'Data:'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 608
        Top = 0
        Width = 108
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
      end
      object RLLabel2: TRLLabel
        Left = 560
        Top = 17
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 607
        Top = 17
        Width = 108
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 17
        Width = 235
        Height = 16
        Caption = 'Relat'#243'rio de Recebimentos por Cart'#245'es.'
      end
      object lbl_periodo: TRLLabel
        Left = 238
        Top = 17
        Width = 320
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object lbl_obs: TRLLabel
        Left = 0
        Top = 39
        Width = 718
        Height = 16
        Align = faBottom
        Alignment = taCenter
        AutoSize = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 93
      Width = 718
      Height = 70
      DataFields = 'campogrupo'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 31
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object RLDBText2: TRLDBText
          Left = 1
          Top = 1
          Width = 716
          Height = 16
          Align = faTop
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          DataField = 'campogrupo'
          DataSource = Src_CFFP
        end
        object RLLabel4: TRLLabel
          Left = 98
          Top = 17
          Width = 42
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Cupom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 1
          Top = 17
          Width = 98
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'S'#233'rie do ECF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 140
          Top = 17
          Width = 150
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Rede'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel7: TRLLabel
          Left = 290
          Top = 17
          Width = 70
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 360
          Top = 18
          Width = 50
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'N'#250'm.Parc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 409
          Top = 17
          Width = 108
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Data Hora Transa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel10: TRLLabel
          Left = 517
          Top = 17
          Width = 78
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'NSU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 593
          Top = 17
          Width = 56
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Chave Ped'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 648
          Top = 17
          Width = 68
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Oberva'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 31
        Width = 718
        Height = 13
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLDBText3: TRLDBText
          Left = 1
          Top = 0
          Width = 98
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CFFPSERIEECF'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel5
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 98
          Top = 0
          Width = 42
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CFFPNUMCF'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel4
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 140
          Top = 0
          Width = 150
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'REDE'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel6
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 290
          Top = 0
          Width = 70
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CFFPVALOR'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel7
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 360
          Top = 0
          Width = 50
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CFFPQTDPARC'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel8
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 409
          Top = 0
          Width = 108
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CFFPDTHRTRANS_HOST'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel9
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 517
          Top = 0
          Width = 78
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CFFPNUMNSU'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel10
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 593
          Top = 0
          Width = 56
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'CFFPCHAVE'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel11
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 648
          Top = 0
          Width = 68
          Height = 14
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'obs'
          DataSource = Src_CFFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Holder = RLLabel12
          ParentFont = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 44
        Width = 718
        Height = 27
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        DataSource = Src_CFParc
        object RLBand4: TRLBand
          Left = 0
          Top = 1
          Width = 718
          Height = 12
          BandType = btColumnHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel13: TRLLabel
            Left = 3
            Top = 0
            Width = 40
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 45
            Top = 0
            Width = 66
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 112
            Top = 0
            Width = 116
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'Data de Vencimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 13
          Width = 718
          Height = 11
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLDBText14: TRLDBText
            Left = 112
            Top = 0
            Width = 116
            Height = 11
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CFPCDTVCTO'
            DataSource = Src_CFParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 42
            Top = 0
            Width = 69
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CFPCVALOR'
            DataSource = Src_CFParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText12: TRLDBText
            Left = 3
            Top = 0
            Width = 40
            Height = 11
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'CFPCPARCELA'
            DataSource = Src_CFParc
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 163
      Width = 718
      Height = 16
      BandType = btColumnFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
    end
  end
  object edt_codbco: TEdit
    Left = 135
    Top = 58
    Width = 50
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnExit = edt_codbcoExit
    OnKeyPress = edt_codbcoKeyPress
  end
  object lbx_codbco: TListBox
    Left = 184
    Top = 58
    Width = 333
    Height = 38
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnKeyDown = lbx_codbcoKeyDown
  end
  object OMITIR_BCO: TCheckBox
    Left = 135
    Top = 77
    Width = 48
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object edt_codusr_cx: TEdit
    Left = 135
    Top = 95
    Width = 50
    Height = 19
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnExit = edt_codusr_cxExit
    OnKeyPress = edt_codusr_cxKeyPress
  end
  object lbx_codusr_cx: TListBox
    Left = 184
    Top = 95
    Width = 333
    Height = 38
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnKeyDown = lbx_codusr_cxKeyDown
  end
  object OMITIR_USR_CX: TCheckBox
    Left = 135
    Top = 114
    Width = 48
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object Tb_CFFP: TQuery
    OnCalcFields = Tb_CFFPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CFFPREDE AS REDE,CADCFFP.* from CADCFFP')
    Left = 440
    Top = 32
    object Tb_CFFPCFFPCODEMP: TFloatField
      FieldName = 'CFFPCODEMP'
      Origin = 'DTBASE1.CADCFFP.CFFPCODEMP'
    end
    object Tb_CFFPCFFPLOTSEQ: TFloatField
      FieldName = 'CFFPLOTSEQ'
      Origin = 'DTBASE1.CADCFFP.CFFPLOTSEQ'
    end
    object Tb_CFFPCFFPCHAVE: TFloatField
      FieldName = 'CFFPCHAVE'
      Origin = 'DTBASE1.CADCFFP.CFFPCHAVE'
    end
    object Tb_CFFPCFFPCODECF: TFloatField
      FieldName = 'CFFPCODECF'
      Origin = 'DTBASE1.CADCFFP.CFFPCODECF'
    end
    object Tb_CFFPCFFPSERIEECF: TStringField
      FieldName = 'CFFPSERIEECF'
      Origin = 'DTBASE1.CADCFFP.CFFPSERIEECF'
    end
    object Tb_CFFPCFFPNUMCF: TFloatField
      FieldName = 'CFFPNUMCF'
      Origin = 'DTBASE1.CADCFFP.CFFPNUMCF'
    end
    object Tb_CFFPCFFPDATAECF: TDateTimeField
      FieldName = 'CFFPDATAECF'
      Origin = 'DTBASE1.CADCFFP.CFFPDATAECF'
    end
    object Tb_CFFPCFFPSEQ: TFloatField
      FieldName = 'CFFPSEQ'
      Origin = 'DTBASE1.CADCFFP.CFFPSEQ'
    end
    object Tb_CFFPCFFPVALOR: TFloatField
      FieldName = 'CFFPVALOR'
      Origin = 'DTBASE1.CADCFFP.CFFPVALOR'
    end
    object Tb_CFFPCFFPREDE: TStringField
      FieldName = 'CFFPREDE'
      Origin = 'DTBASE1.CADCFFP.CFFPREDE'
      Size = 30
    end
    object Tb_CFFPCFFPTPTRANS: TFloatField
      FieldName = 'CFFPTPTRANS'
      Origin = 'DTBASE1.CADCFFP.CFFPTPTRANS'
    end
    object Tb_CFFPCFFPNUMNSU: TStringField
      FieldName = 'CFFPNUMNSU'
      Origin = 'DTBASE1.CADCFFP.CFFPNUMNSU'
    end
    object Tb_CFFPCFFPCODAUT: TStringField
      FieldName = 'CFFPCODAUT'
      Origin = 'DTBASE1.CADCFFP.CFFPCODAUT'
      Size = 10
    end
    object Tb_CFFPCFFPLOTAUT: TStringField
      FieldName = 'CFFPLOTAUT'
      Origin = 'DTBASE1.CADCFFP.CFFPLOTAUT'
      Size = 10
    end
    object Tb_CFFPCFFPDTHRTRANS_HOST: TDateTimeField
      FieldName = 'CFFPDTHRTRANS_HOST'
      Origin = 'DTBASE1.CADCFFP.CFFPDTHRTRANS_HOST'
    end
    object Tb_CFFPCFFPDTHRTRANS_LOCAL: TDateTimeField
      FieldName = 'CFFPDTHRTRANS_LOCAL'
      Origin = 'DTBASE1.CADCFFP.CFFPDTHRTRANS_LOCAL'
    end
    object Tb_CFFPCFFPDTCOMP: TDateTimeField
      FieldName = 'CFFPDTCOMP'
      Origin = 'DTBASE1.CADCFFP.CFFPDTCOMP'
    end
    object Tb_CFFPCFFPHRCOMP: TStringField
      FieldName = 'CFFPHRCOMP'
      Origin = 'DTBASE1.CADCFFP.CFFPHRCOMP'
      Size = 10
    end
    object Tb_CFFPCFFPBANCO: TStringField
      FieldName = 'CFFPBANCO'
      Origin = 'DTBASE1.CADCFFP.CFFPBANCO'
      Size = 4
    end
    object Tb_CFFPCFFPAGENCIA: TStringField
      FieldName = 'CFFPAGENCIA'
      Origin = 'DTBASE1.CADCFFP.CFFPAGENCIA'
    end
    object Tb_CFFPCFFPDIGAGENCIA: TStringField
      FieldName = 'CFFPDIGAGENCIA'
      Origin = 'DTBASE1.CADCFFP.CFFPDIGAGENCIA'
      Size = 2
    end
    object Tb_CFFPCFFPCC: TStringField
      FieldName = 'CFFPCC'
      Origin = 'DTBASE1.CADCFFP.CFFPCC'
    end
    object Tb_CFFPCFFPDIGCC: TStringField
      FieldName = 'CFFPDIGCC'
      Origin = 'DTBASE1.CADCFFP.CFFPDIGCC'
      Size = 2
    end
    object Tb_CFFPCFFPNCHQ: TStringField
      FieldName = 'CFFPNCHQ'
      Origin = 'DTBASE1.CADCFFP.CFFPNCHQ'
    end
    object Tb_CFFPCFFPDIGNCHQ: TStringField
      FieldName = 'CFFPDIGNCHQ'
      Origin = 'DTBASE1.CADCFFP.CFFPDIGNCHQ'
      Size = 2
    end
    object Tb_CFFPCFFPCMC7: TStringField
      FieldName = 'CFFPCMC7'
      Origin = 'DTBASE1.CADCFFP.CFFPCMC7'
      Size = 70
    end
    object Tb_CFFPCFFPSTATUS: TFloatField
      FieldName = 'CFFPSTATUS'
      Origin = 'DTBASE1.CADCFFP.CFFPSTATUS'
    end
    object Tb_CFFPCFFPFINALIZACAO: TStringField
      FieldName = 'CFFPFINALIZACAO'
      Origin = 'DTBASE1.CADCFFP.CFFPFINALIZACAO'
      Size = 30
    end
    object Tb_CFFPCFFPQTDPARC: TFloatField
      FieldName = 'CFFPQTDPARC'
      Origin = 'DTBASE1.CADCFFP.CFFPQTDPARC'
    end
    object Tb_CFFPCFFPTIPOPARC: TFloatField
      FieldName = 'CFFPTIPOPARC'
      Origin = 'DTBASE1.CADCFFP.CFFPTIPOPARC'
    end
    object Tb_CFFPcampogrupo: TStringField
      FieldKind = fkCalculated
      FieldName = 'campogrupo'
      Size = 80
      Calculated = True
    end
    object Tb_CFFPobs: TStringField
      FieldKind = fkCalculated
      FieldName = 'obs'
      Calculated = True
    end
    object Tb_CFFPREDE: TStringField
      FieldName = 'REDE'
      Origin = 'DTBASE1.CADCFFP.CFFPCODEMP'
      Size = 30
    end
  end
  object Src_CFFP: TDataSource
    DataSet = Tb_CFFP
    OnDataChange = Src_CFFPDataChange
    Left = 468
    Top = 32
  end
  object Src_CFParc: TDataSource
    DataSet = Tb_CFParc
    Left = 480
    Top = 72
  end
  object Tb_CFParc: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADCFParc')
    Left = 441
    Top = 72
    object Tb_CFParcCFPCCODEMP: TFloatField
      FieldName = 'CFPCCODEMP'
      Origin = 'DTBASE1.CADCFPARC.CFPCCODEMP'
    end
    object Tb_CFParcCFPCLOTSEQ: TFloatField
      FieldName = 'CFPCLOTSEQ'
      Origin = 'DTBASE1.CADCFPARC.CFPCLOTSEQ'
    end
    object Tb_CFParcCFPCCHAVE: TFloatField
      FieldName = 'CFPCCHAVE'
      Origin = 'DTBASE1.CADCFPARC.CFPCCHAVE'
    end
    object Tb_CFParcCFPCCODECF: TFloatField
      FieldName = 'CFPCCODECF'
      Origin = 'DTBASE1.CADCFPARC.CFPCCODECF'
    end
    object Tb_CFParcCFPCSERIEECF: TStringField
      FieldName = 'CFPCSERIEECF'
      Origin = 'DTBASE1.CADCFPARC.CFPCSERIEECF'
    end
    object Tb_CFParcCFPCNUMCF: TFloatField
      FieldName = 'CFPCNUMCF'
      Origin = 'DTBASE1.CADCFPARC.CFPCNUMCF'
    end
    object Tb_CFParcCFPCDATAECF: TDateTimeField
      FieldName = 'CFPCDATAECF'
      Origin = 'DTBASE1.CADCFPARC.CFPCDATAECF'
    end
    object Tb_CFParcCFPCSEQ: TFloatField
      FieldName = 'CFPCSEQ'
      Origin = 'DTBASE1.CADCFPARC.CFPCSEQ'
    end
    object Tb_CFParcCFPCTIPOPARC: TFloatField
      FieldName = 'CFPCTIPOPARC'
      Origin = 'DTBASE1.CADCFPARC.CFPCTIPOPARC'
    end
    object Tb_CFParcCFPCQTDPARC: TFloatField
      FieldName = 'CFPCQTDPARC'
      Origin = 'DTBASE1.CADCFPARC.CFPCQTDPARC'
    end
    object Tb_CFParcCFPCPARCELA: TFloatField
      FieldName = 'CFPCPARCELA'
      Origin = 'DTBASE1.CADCFPARC.CFPCPARCELA'
    end
    object Tb_CFParcCFPCDTVCTO: TDateTimeField
      FieldName = 'CFPCDTVCTO'
      Origin = 'DTBASE1.CADCFPARC.CFPCDTVCTO'
    end
    object Tb_CFParcCFPCVALOR: TFloatField
      FieldName = 'CFPCVALOR'
      Origin = 'DTBASE1.CADCFPARC.CFPCVALOR'
    end
    object Tb_CFParcCFPCNUMNSU: TStringField
      FieldName = 'CFPCNUMNSU'
      Origin = 'DTBASE1.CADCFPARC.CFPCNUMNSU'
      Size = 12
    end
    object Tb_CFParcCFPCSTATUS: TFloatField
      FieldName = 'CFPCSTATUS'
      Origin = 'DTBASE1.CADCFPARC.CFPCSTATUS'
    end
  end
  object RLRichFilter1: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 456
    Top = 240
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 512
    Top = 208
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 552
    Top = 208
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 464
    Top = 224
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 440
    Top = 240
  end
end

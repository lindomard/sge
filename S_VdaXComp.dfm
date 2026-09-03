object Frm_VdaXComp: TFrm_VdaXComp
  Left = 192
  Top = 107
  Width = 328
  Height = 190
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Balan'#231'o de Vendas x Despesas'
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 24
    Top = 12
    Width = 28
    Height = 13
    Caption = 'M'#234's:'
  end
  object Label1: TLabel
    Left = 102
    Top = 11
    Width = 27
    Height = 13
    Caption = 'Ano:'
  end
  object MES: TEdit
    Left = 62
    Top = 8
    Width = 33
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    OnExit = MESExit
  end
  object ANO: TEdit
    Left = 140
    Top = 7
    Width = 61
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    OnExit = ANOExit
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 107
    Width = 129
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 2
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
    Left = 152
    Top = 107
    Width = 129
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
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
  object GroupBox1: TGroupBox
    Left = 17
    Top = 34
    Width = 262
    Height = 61
    Caption = 'Filtrar os Seguintes Caixas:'
    TabOrder = 4
    object CODCAI01: TEdit
      Left = 9
      Top = 16
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODCAI01Exit
    end
    object CODCAI02: TEdit
      Left = 9
      Top = 37
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODCAI02Exit
    end
    object CODCAI03: TEdit
      Left = 71
      Top = 17
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODCAI03Exit
    end
    object CODCAI04: TEdit
      Left = 71
      Top = 37
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CODCAI04Exit
    end
    object CODCAI05: TEdit
      Left = 128
      Top = 16
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODCAI05Exit
    end
    object CODCAI06: TEdit
      Left = 129
      Top = 37
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = CODCAI06Exit
    end
    object CODCAI08: TEdit
      Left = 181
      Top = 37
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = CODCAI08Exit
    end
    object CODCAI07: TEdit
      Left = 181
      Top = 16
      Width = 47
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = CODCAI07Exit
    end
  end
  object Qr_Ped: TQuery
    OnCalcFields = Qr_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1DATDOC,'
      '       sum(P1TOTALL)  as TOTPED,'
      '       sum(P1VALFRE)  as TAXENT,'
      '       sum(P1ACRECONV+P1ACREGER)   as TAXADM,'
      '       sum(P1TOTUCPR) as TOTCPR  from cadp01'
      'group by P1DATDOC')
    Left = 264
    Top = 8
    object Qr_Pedtotliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totliq'
      Calculated = True
    end
    object Qr_Pedporml: TFloatField
      FieldKind = fkCalculated
      FieldName = 'porml'
      Calculated = True
    end
    object Qr_Pedtotdesp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totdesp'
      Calculated = True
    end
    object Qr_Pedtotdescf: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totdescf'
      Calculated = True
    end
    object Qr_Pedtotjur: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totjur'
      Calculated = True
    end
    object Qr_Pedtotcred: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totcred'
      Calculated = True
    end
    object Qr_Pedlucliq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'lucliq'
      Calculated = True
    end
    object Qr_PedP1DATDOC: TDateTimeField
      FieldName = 'P1DATDOC'
    end
    object Qr_PedTOTPED: TFloatField
      FieldName = 'TOTPED'
    end
    object Qr_PedTAXENT: TFloatField
      FieldName = 'TAXENT'
    end
    object Qr_PedTAXADM: TFloatField
      FieldName = 'TAXADM'
    end
    object Qr_PedTOTCPR: TFloatField
      FieldName = 'TOTCPR'
    end
  end
end

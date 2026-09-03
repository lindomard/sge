object Frm_CAT52xPedido: TFrm_CAT52xPedido
  Left = 223
  Top = 133
  Width = 928
  Height = 590
  Caption = 'Comprar CAT52 x Pedido'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 41
    Align = alTop
    Caption = 'Compara'#231#245'es CAT52 em Rela'#231#227'o ao Pedido de Vendas'
    Color = 16771304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 920
    Height = 54
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 210
      Top = 6
      Width = 62
      Height = 13
      Caption = 'Periodo de'
    end
    object Label2: TLabel
      Left = 434
      Top = 4
      Width = 8
      Height = 13
      Caption = #224
    end
    object bbSelecionar: TBitBtn
      Left = 8
      Top = 22
      Width = 257
      Height = 25
      Caption = 'Selecionar divergencias'
      TabOrder = 0
      OnClick = bbSelecionarClick
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
    object bbAjustar: TBitBtn
      Left = 296
      Top = 22
      Width = 257
      Height = 25
      Caption = 'Ajustar Divergencias'
      TabOrder = 1
      OnClick = bbAjustarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
        0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
        00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
        00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
        00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
        D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
        FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 648
      Top = 22
      Width = 257
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
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
    object edt_dataini: TDateEdit
      Left = 286
      Top = 1
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 3
    end
    object edt_datafin: TDateEdit
      Left = 475
      Top = 1
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 95
    Width = 920
    Height = 464
    Align = alClient
    Caption = 'Divergencias Encontradas:'
    TabOrder = 2
    object DBGrid_ITENS: TDBGrid
      Left = 2
      Top = 15
      Width = 916
      Height = 447
      Align = alClient
      DataSource = src_div01
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CT52I_CODEMP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CT52I_SERIE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CT52I_CODECF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CT52I_NUMCF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CT52I_DATACF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTTRIB_CAT52'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTTRIB_PED02'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTRET_CAT52'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTRET_PED02'
          Visible = True
        end>
    end
  end
  object Qr_Div01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select * from ('
      
        'select CT52I_CODEMP,CT52I_SERIE,CT52I_CODECF,CT52I_NUMCF,CT52I_D' +
        'ATACF'
      ',SUM(TOTTRIB_CAT52) as TOTTRIB_CAT52'
      ',SUM(TOTTRIB_PED02) as TOTTRIB_PED02'
      ',SUM(TOTRET_CAT52) as TOTRET_CAT52'
      ',SUM(TOTRET_PED02) as TOTRET_PED02'
      'from  ('
      ''
      ''
      
        'SELECT CT52I_CODEMP,SUBSTR(CT52I_SERIE,1,15) AS CT52I_SERIE,CT52' +
        'I_CODECF,CT52I_NUMCF,CT52I_DATACF,'
      'SUM(CASE WHEN CT52I_ALIQ>0 THEN'
      'CT52I_TOTLIQ-(NVL(CT52I_VALDES_ITEM,0)+NVL(CT52I_VALDES_GER,0))'
      'else 0 END) AS TOTTRIB_CAT52'
      ',0 AS TOTTRIB_PED02'
      ''
      ',SUM(CASE WHEN SUBSTR(CT52I_TOTPARC,1,1)='#39'F'#39' THEN'
      'CT52I_TOTLIQ-(NVL(CT52I_VALDES_ITEM,0)+NVL(CT52I_VALDES_GER,0))'
      'else 0 END) AS TOTRET_CAT52'
      ',0 as TOTRET_PED02'
      ','#39'CAT52'#39' AS ORIGEM'
      'FROM CADECF_CAT52_ITENS'
      'WHERE CT52I_DATACF>=:DATAINI and CT52I_DATACF<=:DATAFIN'
      'AND NVL(CT52I_INDCANC,'#39'N'#39')<>'#39'S'#39
      
        'GROUP BY CT52I_CODEMP,SUBSTR(CT52I_SERIE,1,15),CT52I_CODECF,CT52' +
        'I_NUMCF,CT52I_DATACF'
      'union'
      ''
      
        'SELECT P1CODEMP AS CT52I_CODEMP,P1ECF_SERIE AS CT52I_SERIE,P1COD' +
        'ECF AS CT52I_CODECF'
      ',P1NUMCF AS CT52I_NUMCF,P1DATACF AS CT52I_DATACF,'
      '0 AS TOTTRIB_CAT52'
      ',SUM(CASE WHEN P2ALIQ>0 THEN'
      '  NVL(P2TOTLIQ,0)'
      '  else 0 END)  AS TOTTRIB_PED02'
      ''
      ',0  AS TOTRET_CAT52'
      
        ',SUM(CASE WHEN (SUBSTR(P2SIT,2,1) in ('#39'1'#39','#39'3'#39','#39'7'#39','#39'6'#39')) or SUBST' +
        'R(P2CSOSN,1,1) in ('#39'2'#39','#39'9'#39')  THEN'
      '  NVL(P2TOTLIQ,0)'
      '  else 0 END)  AS TOTRET_PED02'
      ','#39'PED02'#39' AS ORIGEM'
      ''
      'FROM CADP01,CADP02'
      
        'WHERE P2CODEMP(+)=P1CODEMP AND P2CHAVE(+)=P1CHAVE AND P2LOTSEQ(+' +
        ')=P1LOTSEQ AND P2ORDEM(+)=P1ORDEM'
      'AND  P1DATACF>=:DATAINI and P1DATACF<=:DATAFIN'
      'AND P1STATUS<>9 AND P1CODEMP=1 AND P1CUPOM=1'
      ''
      'GROUP BY P1CODEMP,P1ECF_SERIE,P1CODECF,P1NUMCF,P1DATACF'
      ')'
      
        'group by CT52I_CODEMP,CT52I_SERIE,CT52I_CODECF,CT52I_NUMCF,CT52I' +
        '_DATACF'
      
        ') where(TOTTRIB_CAT52<>TOTTRIB_PED02) OR (TOTRET_CAT52<>TOTRET_P' +
        'ED02)'
      'order by CT52I_NUMCF')
    Left = 672
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'DATAINI'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATAFIN'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DATAFIN'
        ParamType = ptUnknown
      end>
    object Qr_Div01CT52I_CODEMP: TFloatField
      FieldName = 'CT52I_CODEMP'
    end
    object Qr_Div01CT52I_SERIE: TStringField
      FieldName = 'CT52I_SERIE'
    end
    object Qr_Div01CT52I_CODECF: TFloatField
      FieldName = 'CT52I_CODECF'
    end
    object Qr_Div01CT52I_NUMCF: TFloatField
      FieldName = 'CT52I_NUMCF'
    end
    object Qr_Div01CT52I_DATACF: TDateTimeField
      FieldName = 'CT52I_DATACF'
    end
    object Qr_Div01TOTTRIB_CAT52: TFloatField
      FieldName = 'TOTTRIB_CAT52'
    end
    object Qr_Div01TOTTRIB_PED02: TFloatField
      FieldName = 'TOTTRIB_PED02'
    end
    object Qr_Div01TOTRET_CAT52: TFloatField
      FieldName = 'TOTRET_CAT52'
    end
    object Qr_Div01TOTRET_PED02: TFloatField
      FieldName = 'TOTRET_PED02'
    end
  end
  object src_div01: TDataSource
    DataSet = Qr_Div01
    Left = 712
    Top = 80
  end
end

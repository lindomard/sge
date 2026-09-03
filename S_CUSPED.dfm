object Frm_CusPed: TFrm_CusPed
  Left = 192
  Top = 124
  Width = 437
  Height = 480
  Caption = 'Apura'#231#227'o de Custos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_cab: TPanel
    Left = 0
    Top = 0
    Width = 421
    Height = 84
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 45
      Top = 13
      Width = 42
      Height = 13
      Caption = 'Pedido..:'
    end
    object Label2: TLabel
      Left = 5
      Top = 37
      Width = 81
      Height = 13
      Caption = 'Total do Pedido.:'
    end
    object Label3: TLabel
      Left = 50
      Top = 63
      Width = 36
      Height = 13
      Caption = 'Custo..:'
    end
    object edt_chave: TEdit
      Left = 88
      Top = 8
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object btn_busca: TButton
      Left = 278
      Top = 9
      Width = 110
      Height = 25
      Caption = 'Buscar &Chave'
      TabOrder = 1
      OnClick = btn_buscaClick
    end
    object edt_total: TEdit
      Left = 88
      Top = 33
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object edt_custo: TEdit
      Left = 88
      Top = 59
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object btn_Sair: TButton
      Left = 278
      Top = 43
      Width = 110
      Height = 25
      Caption = 'Sai&r'
      TabOrder = 4
      OnClick = btn_SairClick
    end
  end
  object pnl_det: TPanel
    Left = 0
    Top = 84
    Width = 421
    Height = 358
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 419
      Height = 356
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Nome'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'NOME'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Percent'
          Title.Alignment = taCenter
          Title.Caption = '%%%'
          Width = 81
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Title.Caption = 'VALOR'
          Width = 111
          Visible = True
        end>
    end
    object pnl_conf: TPanel
      Left = 64
      Top = 80
      Width = 281
      Height = 113
      Color = clActiveCaption
      TabOrder = 1
      Visible = False
      OnEnter = pnl_confEnter
      OnExit = pnl_confExit
      object Label4: TLabel
        Left = 8
        Top = 48
        Width = 149
        Height = 13
        Caption = 'Centro de Custo de Desp. Fixas'
      end
      object Label5: TLabel
        Left = 8
        Top = 67
        Width = 42
        Height = 13
        Caption = 'Codigo..:'
      end
      object Label6: TLabel
        Left = 8
        Top = 91
        Width = 88
        Height = 13
        Caption = 'Valor do Imposto..:'
      end
      object Label7: TLabel
        Left = 104
        Top = 16
        Width = 63
        Height = 13
        Caption = 'Configura'#231#227'o'
      end
      object edt_codcc: TEdit
        Left = 52
        Top = 64
        Width = 45
        Height = 21
        TabOrder = 0
        OnExit = edt_codccExit
        OnKeyPress = edt_codccKeyPress
      end
      object edt_nomcc: TEdit
        Left = 96
        Top = 64
        Width = 177
        Height = 21
        Color = clMoneyGreen
        ReadOnly = True
        TabOrder = 1
      end
      object c_valor: TCurrencyEdit
        Left = 96
        Top = 88
        Width = 57
        Height = 21
        AutoSize = False
        DisplayFormat = '% ,0.00;-% ,0.00'
        TabOrder = 2
      end
      object bb_Salva: TBitBtn
        Left = 163
        Top = 86
        Width = 110
        Height = 25
        Caption = '&Salvar'
        TabOrder = 3
        OnClick = bb_SalvaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
          00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
          00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
          00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
          00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
          0003737FFFFFFFFF7F7330099999999900333777777777777733}
        NumGlyphs = 2
      end
    end
  end
  object RxData: TRxMemoryData
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Percent'
        DataType = ftFloat
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end>
    AfterInsert = RxDataAfterInsert
    BeforePost = RxDataBeforePost
    AfterPost = RxDataAfterPost
    Left = 384
    Top = 17
    object RxDataid: TIntegerField
      FieldName = 'id'
    end
    object RxDataNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object RxDataPercent: TFloatField
      FieldName = 'Percent'
    end
    object RxDataValor: TFloatField
      FieldName = 'Valor'
    end
  end
  object DataSource1: TDataSource
    DataSet = RxData
    Left = 440
    Top = 73
  end
end

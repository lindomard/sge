object Frm_RegRec: TFrm_RegRec
  Left = 193
  Top = 92
  BorderStyle = bsSingle
  Caption = 'Registro de Reclama'#231#245'es'
  ClientHeight = 548
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 498
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 48
      Width = 69
      Height = 13
      Caption = 'N'#186' Protocolo..:'
    end
    object btncancelar: TBitBtn
      Left = 331
      Top = 1
      Width = 82
      Height = 37
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Cance&lar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btncancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btngravar: TBitBtn
      Left = 248
      Top = 1
      Width = 82
      Height = 37
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btngravarClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnexcluir: TBitBtn
      Left = 166
      Top = 1
      Width = 82
      Height = 37
      Hint = 'Exclus'#227'o do registro atual'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnalterar: TBitBtn
      Left = 83
      Top = 1
      Width = 82
      Height = 37
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btnalterarClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btnincluir: TBitBtn
      Left = 1
      Top = 1
      Width = 82
      Height = 37
      Hint = 'Inclus'#227'o de novos registros'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnincluirClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object edtBusca: TEdit
      Left = 74
      Top = 45
      Width = 338
      Height = 21
      TabOrder = 5
    end
    object btnBusca: TBitBtn
      Left = 426
      Top = 44
      Width = 66
      Height = 25
      Hint = 'Filtrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnBuscaClick
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
    object bbImprimir: TBitBtn
      Left = 413
      Top = 1
      Width = 82
      Height = 37
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 498
    Height = 456
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 1
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object lblProtocolo: TLabel
        Left = 19
        Top = 15
        Width = 69
        Height = 13
        Caption = 'N'#186' Protocolo..:'
      end
      object lblOrigem: TLabel
        Left = 58
        Top = 59
        Width = 30
        Height = 13
        Caption = 'Tipo..:'
      end
      object Label2: TLabel
        Left = 1
        Top = 37
        Width = 87
        Height = 13
        Caption = 'Data Ocorrencia..:'
      end
      object Label3: TLabel
        Left = 42
        Top = 81
        Width = 46
        Height = 13
        Caption = 'Produto..:'
      end
      object Label4: TLabel
        Left = 401
        Top = 81
        Width = 26
        Height = 13
        Caption = 'Qtd..:'
      end
      object Label5: TLabel
        Left = 33
        Top = 103
        Width = 55
        Height = 13
        Caption = 'Lote Vcto..:'
      end
      object dbeProtocolo: TDBEdit
        Left = 90
        Top = 12
        Width = 178
        Height = 21
        DataField = 'RRPROTOCOLO'
        DataSource = DM1.Src_RegRec
        ReadOnly = True
        TabOrder = 0
      end
      object dbeDatOco: TDBDateEdit
        Left = 90
        Top = 34
        Width = 114
        Height = 21
        DataField = 'RRDATOCO'
        DataSource = DM1.Src_RegRec
        NumGlyphs = 2
        TabOrder = 1
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 293
        Width = 490
        Height = 135
        Align = alBottom
        Caption = 'Resolu'#231#227'o'
        TabOrder = 8
        object DBMemo1: TDBMemo
          Left = 2
          Top = 15
          Width = 486
          Height = 118
          Align = alClient
          DataField = 'RRRESOLUCAO'
          DataSource = DM1.Src_RegRec
          TabOrder = 0
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 158
        Width = 490
        Height = 135
        Align = alBottom
        Caption = 'Ocorr'#234'ncia'
        TabOrder = 7
        object dbeMemo: TDBMemo
          Left = 2
          Top = 15
          Width = 486
          Height = 118
          Align = alClient
          DataField = 'RROCORRENCIA'
          DataSource = DM1.Src_RegRec
          TabOrder = 0
        end
      end
      object dbeCODIGO: TDBEdit
        Left = 204
        Top = 56
        Width = 63
        Height = 21
        DataField = 'RRCODIGO'
        DataSource = DM1.Src_RegRec
        TabOrder = 2
        OnExit = dbeCODIGOExit
        OnKeyPress = dbeCODIGOKeyPress
      end
      object dbCODPRO: TDBEdit
        Left = 90
        Top = 78
        Width = 58
        Height = 21
        DataField = 'RRCODPRO'
        DataSource = DM1.Src_RegRec
        TabOrder = 3
        OnExit = dbCODPROExit
        OnKeyPress = dbCODPROKeyPress
      end
      object DBEdit3: TDBEdit
        Left = 430
        Top = 78
        Width = 58
        Height = 21
        DataField = 'RRQTD'
        DataSource = DM1.Src_RegRec
        TabOrder = 4
      end
      object dbLoteVenc: TDBEdit
        Left = 90
        Top = 99
        Width = 179
        Height = 21
        DataField = 'RRLOTEEVCTO'
        DataSource = DM1.Src_RegRec
        TabOrder = 5
      end
      object dbrg_parecer: TDBRadioGroup
        Left = 0
        Top = 121
        Width = 490
        Height = 37
        Align = alBottom
        Caption = 'Parecer'
        Columns = 3
        DataField = 'RRPARECER'
        DataSource = DM1.Src_RegRec
        Items.Strings = (
          'Procede'
          'N'#227'o Procede'
          'N'#227'o avaliado')
        TabOrder = 6
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object dbnomcod: TDBEdit
        Left = 267
        Top = 56
        Width = 221
        Height = 21
        Color = 16776176
        DataField = 'NOMCOD'
        DataSource = DM1.Src_RegRec
        ReadOnly = True
        TabOrder = 9
      end
      object dbnompro: TDBEdit
        Left = 147
        Top = 78
        Width = 251
        Height = 21
        Color = 16776176
        DataField = 'NOMPRO'
        DataSource = DM1.Src_RegRec
        ReadOnly = True
        TabOrder = 10
      end
      object rbxTipo: TRxDBComboBox
        Left = 90
        Top = 55
        Width = 113
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'RRTIPO'
        DataSource = DM1.Src_RegRec
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'CLIENTE'
          'FORNECEDOR'
          'TRANSPORTADORA'
          'OUTROS')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
    end
    object tsLista: TTabSheet
      Caption = 'Listagem'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 490
        Height = 428
        Align = alClient
        DataSource = DM1.Src_RegRec
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'RRCODUSR'
            Title.Caption = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RRDATINC'
            Title.Caption = 'DATA INCLUS'#195'O'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RRPROTOCOLO'
            Title.Caption = 'PROTOCOLO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RRDATOCO'
            Title.Caption = 'DATA OCORRENCIA'
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Impressao'
      ImageIndex = 2
      TabVisible = False
      object RLReport1: TRLReport
        Left = -88
        Top = -8
        Width = 794
        Height = 1123
        DataSource = DM1.Src_RegRec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 848
          BeforePrint = RLBand1BeforePrint
          object RLLabel1: TRLLabel
            Left = 312
            Top = 32
            Width = 153
            Height = 16
            Caption = 'Registro de Reclama'#231#245'es'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 656
            Top = 41
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLAngleLabel1: TRLAngleLabel
            Left = 0
            Top = 80
            Width = 63
            Height = 16
            Caption = 'Protocolo:'
          end
          object RLDBText1: TRLDBText
            Left = 63
            Top = 80
            Width = 104
            Height = 16
            DataField = 'RRPROTOCOLO'
            DataSource = DM1.Src_RegRec
          end
          object RLAngleLabel2: TRLAngleLabel
            Left = 344
            Top = 80
            Width = 102
            Height = 16
            Caption = 'Data Ocorrencia:'
          end
          object RLDBText2: TRLDBText
            Left = 448
            Top = 80
            Width = 76
            Height = 16
            DataField = 'RRDATOCO'
            DataSource = DM1.Src_RegRec
          end
          object RLAngleLabel3: TRLAngleLabel
            Left = 0
            Top = 112
            Width = 40
            Height = 16
            Caption = 'Tipo..:'
          end
          object RLDBText3: TRLDBText
            Left = 119
            Top = 112
            Width = 74
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RRCODIGO'
            DataSource = DM1.Src_RegRec
          end
          object RLDBText4: TRLDBText
            Left = 193
            Top = 112
            Width = 344
            Height = 16
            DataField = 'NOMCOD'
            DataSource = DM1.Src_RegRec
          end
          object RLAngleLabel4: TRLAngleLabel
            Left = 0
            Top = 144
            Width = 61
            Height = 16
            Caption = 'Produto..:'
          end
          object RLDBText5: TRLDBText
            Left = 62
            Top = 144
            Width = 131
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'RRCODPRO'
            DataSource = DM1.Src_RegRec
          end
          object RLDBText6: TRLDBText
            Left = 194
            Top = 144
            Width = 448
            Height = 16
            DataField = 'NOMPRO'
            DataSource = DM1.Src_RegRec
          end
          object RLAngleLabel5: TRLAngleLabel
            Left = 150
            Top = 162
            Width = 33
            Height = 16
            Caption = 'Lote:'
          end
          object RLDBText7: TRLDBText
            Left = 100
            Top = 162
            Width = 48
            Height = 16
            DataField = 'RRQTD'
            DataSource = DM1.Src_RegRec
          end
          object RLDBText8: TRLDBText
            Left = 184
            Top = 162
            Width = 193
            Height = 16
            AutoSize = False
            DataField = 'RRLOTEEVCTO'
            DataSource = DM1.Src_RegRec
          end
          object RLAngleLabel6: TRLAngleLabel
            Left = 62
            Top = 162
            Width = 37
            Height = 16
            Caption = 'Qtd..:'
          end
          object rlTipo: TRLLabel
            Left = 41
            Top = 112
            Width = 72
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'CLIENTE'
            Color = clActiveCaption
            ParentColor = False
            Transparent = False
          end
          object RLLabel2: TRLLabel
            Left = 1
            Top = 200
            Width = 61
            Height = 16
            Caption = 'Parecer..:'
          end
          object RLLabel3: TRLLabel
            Left = 1
            Top = 240
            Width = 79
            Height = 16
            Caption = 'Ocorrencia..:'
          end
          object RLLabel4: TRLLabel
            Left = 1
            Top = 432
            Width = 77
            Height = 16
            Caption = 'Resolu'#231#227'o..:'
          end
          object RLDBMemo1: TRLDBMemo
            Left = 81
            Top = 240
            Width = 609
            Height = 185
            AutoSize = False
            DataField = 'RROCORRENCIA'
            DataSource = DM1.Src_RegRec
          end
          object RLDBMemo2: TRLDBMemo
            Left = 81
            Top = 432
            Width = 609
            Height = 185
            AutoSize = False
            DataField = 'RRRESOLUCAO'
            DataSource = DM1.Src_RegRec
          end
          object RLLabel5: TRLLabel
            Left = 4
            Top = 640
            Width = 100
            Height = 16
            Caption = 'Obs. Adicionais:'
          end
          object RLMemo1: TRLMemo
            Left = 104
            Top = 640
            Width = 586
            Height = 201
            Lines.Strings = (
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________'
              
                '________________________________________________________________' +
                '_____________')
          end
          object RLDBText9: TRLDBText
            Left = 68
            Top = 1
            Width = 81
            Height = 16
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLLabel6: TRLLabel
            Left = 1
            Top = 1
            Width = 68
            Height = 16
            Caption = 'Empresa..:'
          end
          object rlparecer: TRLLabel
            Left = 65
            Top = 200
            Width = 248
            Height = 16
            Caption = 'Parecer..:'
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 529
    Width = 498
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = '00/00/0000 00:00:00'
        Width = 110
      end
      item
        Text = 'USU'#193'RIO: 1111 - MASTER'
        Width = 110
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 148
    Top = 161
  end
end

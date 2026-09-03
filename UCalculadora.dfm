object frmCalculadora: TfrmCalculadora
  Left = 239
  Top = 44
  BorderStyle = bsSingle
  Caption = 'Calculadora '
  ClientHeight = 368
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 349
    Width = 450
    Height = 19
    AutoHint = True
    Panels = <
      item
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Alignment = taCenter
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 450
    Height = 349
    ActivePage = TabCalculadora
    Align = alClient
    TabOrder = 1
    object TabCalculadora: TTabSheet
      Caption = 'Calculadora'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 442
        Height = 321
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object Panel3: TPanel
          Left = 201
          Top = 5
          Width = 235
          Height = 308
          BevelInner = bvLowered
          TabOrder = 1
          object edtResultado: TRichEdit
            Left = 4
            Top = 5
            Width = 227
            Height = 298
            Hint = 'Hist'#243'rico das opera'#231#245'es'
            Alignment = taRightJustify
            Color = clSkyBlue
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ScrollBars = ssBoth
            ShowHint = True
            TabOrder = 0
          end
        end
        object Panel4: TPanel
          Left = 6
          Top = 7
          Width = 192
          Height = 307
          BevelInner = bvLowered
          TabOrder = 0
          object Label7: TLabel
            Left = 59
            Top = 265
            Width = 76
            Height = 13
            Caption = 'Casas decimais:'
          end
          object Panel6: TPanel
            Left = 8
            Top = 7
            Width = 175
            Height = 34
            BevelInner = bvLowered
            TabOrder = 0
            object Edit1: TEdit
              Left = 7
              Top = 7
              Width = 160
              Height = 21
              Hint = 'Valor para opera'#231#245'es'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyPress = Edit1KeyPress
            end
          end
          object Panel1: TPanel
            Left = 9
            Top = 44
            Width = 174
            Height = 210
            BevelOuter = bvLowered
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              Left = 7
              Top = 5
              Width = 39
              Height = 25
              Caption = '7'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 47
              Top = 5
              Width = 39
              Height = 25
              Caption = '8'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton2Click
            end
            object SpeedButton3: TSpeedButton
              Left = 88
              Top = 5
              Width = 39
              Height = 25
              Caption = '9'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton3Click
            end
            object SpeedButton4: TSpeedButton
              Left = 7
              Top = 31
              Width = 39
              Height = 25
              Caption = '4'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton4Click
            end
            object SpeedButton5: TSpeedButton
              Left = 47
              Top = 31
              Width = 39
              Height = 25
              Caption = '5'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton5Click
            end
            object SpeedButton6: TSpeedButton
              Left = 88
              Top = 31
              Width = 39
              Height = 25
              Caption = '6'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton6Click
            end
            object SpeedButton7: TSpeedButton
              Left = 7
              Top = 56
              Width = 39
              Height = 25
              Caption = '1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton7Click
            end
            object SpeedButton8: TSpeedButton
              Left = 47
              Top = 56
              Width = 39
              Height = 25
              Caption = '2'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton8Click
            end
            object SpeedButton9: TSpeedButton
              Left = 88
              Top = 56
              Width = 39
              Height = 25
              Caption = '3'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton9Click
            end
            object SpeedButton10: TSpeedButton
              Left = 7
              Top = 81
              Width = 79
              Height = 25
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton10Click
            end
            object SpeedButton11: TSpeedButton
              Left = 88
              Top = 81
              Width = 39
              Height = 25
              Caption = ','
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = SpeedButton11Click
            end
            object btnSoma: TSpeedButton
              Left = 128
              Top = 5
              Width = 39
              Height = 25
              Caption = '+'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSomaClick
            end
            object btnSubtrai: TSpeedButton
              Left = 128
              Top = 30
              Width = 39
              Height = 25
              Caption = '-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnSubtraiClick
            end
            object btnMultiplica: TSpeedButton
              Left = 128
              Top = 56
              Width = 39
              Height = 25
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnMultiplicaClick
            end
            object btnDivide: TSpeedButton
              Left = 128
              Top = 81
              Width = 39
              Height = 25
              Caption = '/'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnDivideClick
            end
            object btnPercentual: TSpeedButton
              Left = 7
              Top = 106
              Width = 39
              Height = 25
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnPercentualClick
            end
            object btnDiv: TSpeedButton
              Left = 47
              Top = 106
              Width = 39
              Height = 25
              Caption = 'Div'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnDivClick
            end
            object btnMod: TSpeedButton
              Left = 89
              Top = 106
              Width = 79
              Height = 25
              Caption = 'Mod'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnModClick
            end
            object Button14: TSpeedButton
              Left = 7
              Top = 131
              Width = 161
              Height = 25
              Caption = 'Zerar Soma'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = Button14Click
            end
            object btnLimpar_Historico: TSpeedButton
              Left = 7
              Top = 156
              Width = 161
              Height = 25
              Caption = 'Limpar Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btnLimpar_HistoricoClick
            end
            object Button16: TSpeedButton
              Left = 7
              Top = 181
              Width = 161
              Height = 25
              Caption = 'Imprimir Hist'#243'rico'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = Button16Click
            end
          end
          object pnlVl_Final: TPanel
            Left = 7
            Top = 279
            Width = 175
            Height = 22
            Alignment = taRightJustify
            BevelOuter = bvLowered
            BorderWidth = 5
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object txtCasas_Decimais: TSpinEdit
            Left = 137
            Top = 256
            Width = 45
            Height = 22
            MaxValue = 10
            MinValue = 0
            TabOrder = 3
            Value = 2
            OnChange = txtCasas_DecimaisChange
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Calculos Especiais'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 442
        Height = 321
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object PageControl2: TPageControl
          Left = 2
          Top = 2
          Width = 438
          Height = 317
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 0
          TabPosition = tpBottom
          object TabPotencia: TTabSheet
            Caption = 'Potencia'
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object Label1: TLabel
                Left = 125
                Top = 100
                Width = 54
                Height = 13
                Caption = 'Valor Base:'
              end
              object Label2: TLabel
                Left = 134
                Top = 125
                Width = 45
                Height = 13
                Caption = 'Pot'#234'ncia:'
              end
              object Button11: TButton
                Left = 222
                Top = 141
                Width = 81
                Height = 25
                Caption = 'Calcular'
                TabOrder = 2
                OnClick = Button11Click
              end
              object edtVl_Base: TSpinEdit
                Left = 182
                Top = 91
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 0
                Value = 0
              end
              object edtVl_Potencia: TSpinEdit
                Left = 182
                Top = 116
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 1
                Value = 0
              end
              object pnlVl_Potencia: TPanel
                Left = 139
                Top = 171
                Width = 164
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Media'
            ImageIndex = 1
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object Label3: TLabel
                Left = 8
                Top = 23
                Width = 93
                Height = 13
                Caption = 'Valores para m'#233'dia:'
              end
              object Label4: TLabel
                Left = 283
                Top = 201
                Width = 30
                Height = 13
                Caption = 'Soma:'
              end
              object Label5: TLabel
                Left = 255
                Top = 231
                Width = 58
                Height = 13
                Caption = 'Quantidade:'
              end
              object Label6: TLabel
                Left = 286
                Top = 261
                Width = 27
                Height = 13
                Alignment = taRightJustify
                Caption = 'Total:'
              end
              object edtVl_Media: TSpinEdit
                Left = 105
                Top = 14
                Width = 121
                Height = 22
                MaxValue = 0
                MinValue = 0
                TabOrder = 0
                Value = 0
              end
              object StringGrid1: TStringGrid
                Left = 106
                Top = 39
                Width = 119
                Height = 236
                ColCount = 1
                DefaultRowHeight = 18
                FixedCols = 0
                RowCount = 1
                FixedRows = 0
                TabOrder = 2
              end
              object Button13: TButton
                Left = 233
                Top = 14
                Width = 66
                Height = 22
                Caption = 'Inserir'
                TabOrder = 1
                OnClick = Button13Click
              end
              object pnlVl_Soma_Media: TPanel
                Left = 316
                Top = 188
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object pnlQt_Media: TPanel
                Left = 316
                Top = 218
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object pnlVl_Total_Media: TPanel
                Left = 316
                Top = 248
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Datas'
            ImageIndex = 2
            OnShow = TabSheet3Show
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object lblQt_Difer: TLabel
                Left = 284
                Top = 270
                Width = 30
                Height = 13
                Alignment = taRightJustify
                Caption = 'Soma:'
                Visible = False
              end
              object cmbDatas: TComboBox
                Left = 100
                Top = 10
                Width = 325
                Height = 21
                ItemHeight = 13
                TabOrder = 1
                OnClick = cmbDatasClick
                Items.Strings = (
                  'SOMA DIAS A UMA DATA'
                  'SUBTRAI DIAS DE UMA DATA'
                  'SOMA MESES A UMA DATA'
                  'SUBTRAI MESES DE UMA DATA'
                  'SOMA ANOS A UMA DATA'
                  'SUBTRAI ANOS DE UMA DATA'
                  'SOMA SEMANAS A UMA DATA'
                  'SUBTRAI SEMANAS DE UMA DATA'
                  'DIFEREN'#199'A DE DIAS ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE SEMANAS ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE MESES ENTRE DUAS DATAS'
                  'DIFEREN'#199'A DE ANOS ENTRE DUAS DATAS'
                  'CALCULA IDADE'
                  'DIFEREN'#199'A REAL ENTRE DUAS DATAS (ANOS/MESES/DIAS)')
              end
              object edtQt_Dias_Datas: TSpinEdit
                Left = 5
                Top = 34
                Width = 69
                Height = 22
                MaxValue = 99999999
                MinValue = 1
                TabOrder = 2
                Value = 1
                Visible = False
              end
              object dtpDt_Calculo: TDateTimePicker
                Left = 5
                Top = 10
                Width = 90
                Height = 21
                Date = 38460.564268900510000000
                Time = 38460.564268900510000000
                TabOrder = 0
              end
              object dtpDt_Calculo_1: TDateTimePicker
                Left = 5
                Top = 60
                Width = 90
                Height = 21
                Date = 38460.564268900510000000
                Time = 38460.564268900510000000
                TabOrder = 3
                Visible = False
              end
              object MonthCalendar1: TMonthCalendar
                Left = 82
                Top = 69
                Width = 265
                Height = 213
                AutoSize = True
                Date = 38460.643234953710000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
                Visible = False
                WeekNumbers = True
              end
              object Button15: TButton
                Left = 351
                Top = 34
                Width = 74
                Height = 22
                Caption = 'Calcular'
                TabOrder = 4
                OnClick = Button15Click
              end
              object edtDt_Calculo_1: TMaskEdit
                Left = 362
                Top = 265
                Width = 64
                Height = 21
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 6
                Text = '  /  /    '
                Visible = False
              end
              object pnlQt_Difer_Datas: TPanel
                Left = 95
                Top = 257
                Width = 330
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                Visible = False
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Horas'
            ImageIndex = 3
            OnShow = TabSheet4Show
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object lblTotal_Hora: TLabel
                Left = 251
                Top = 270
                Width = 63
                Height = 13
                Alignment = taRightJustify
                Caption = 'lblTotal_Hora'
                Visible = False
              end
              object cmbCalcula_Hora: TComboBox
                Left = 100
                Top = 10
                Width = 324
                Height = 21
                ItemHeight = 13
                TabOrder = 1
                OnClick = cmbCalcula_HoraClick
                Items.Strings = (
                  'SOMA SEGUNDOS A UMA HORA'
                  'SUBTRAI SEGUNDOS DE UMA HORA'
                  'SOMA MINUTOS A UMA HORA'
                  'SUBTRAI MINUTOS DE UMA HORA'
                  'SOMA HORAS A UMA HORA'
                  'SUBTRAI HORAS DE UMA HORA'
                  'DIFEREN'#199'A DE SEGUNDOS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A DE MINUTOS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A DE HORAS ENTRE DUAS HORAS'
                  'DIFEREN'#199'A ENTRE DUAS HORAS')
              end
              object edtSoma_Horas: TSpinEdit
                Left = 5
                Top = 34
                Width = 68
                Height = 22
                MaxValue = 99999999
                MinValue = 1
                TabOrder = 2
                Value = 1
                Visible = False
              end
              object dtpHoras: TDateTimePicker
                Left = 5
                Top = 10
                Width = 89
                Height = 21
                Date = 38460.564268900510000000
                Time = 38460.564268900510000000
                Kind = dtkTime
                TabOrder = 0
              end
              object dtpHoras_1: TDateTimePicker
                Left = 5
                Top = 60
                Width = 89
                Height = 21
                Date = 38460.564268900510000000
                Time = 38460.564268900510000000
                Kind = dtkTime
                TabOrder = 3
                Visible = False
              end
              object Button17: TButton
                Left = 351
                Top = 34
                Width = 73
                Height = 22
                Caption = 'Calcular'
                TabOrder = 4
                OnClick = Button17Click
              end
              object MaskEdit1: TMaskEdit
                Left = 362
                Top = 265
                Width = 64
                Height = 21
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 5
                Text = '  /  /    '
                Visible = False
              end
              object dtpResultado_Horas: TDateTimePicker
                Left = 320
                Top = 257
                Width = 104
                Height = 27
                Date = 38460.564268900510000000
                Time = 38460.564268900510000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Kind = dtkTime
                ParentFont = False
                TabOrder = 6
                Visible = False
              end
              object pnlTotal_Hora: TPanel
                Left = 318
                Top = 258
                Width = 106
                Height = 26
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '0'
                Color = clSkyBlue
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -19
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                Visible = False
              end
              object ckbTimer_Ativado: TCheckBox
                Left = 100
                Top = 39
                Width = 234
                Height = 17
                Caption = 'Timer Ativado (Calculo a partir da hora atual)'
                TabOrder = 8
                Visible = False
                OnClick = ckbTimer_AtivadoClick
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Cron'#244'metro'
            ImageIndex = 4
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 291
              Align = alClient
              BevelInner = bvLowered
              TabOrder = 0
              object pnlCronometro: TPanel
                Left = 12
                Top = 10
                Width = 406
                Height = 41
                Alignment = taRightJustify
                BevelOuter = bvLowered
                BorderWidth = 5
                Caption = '00:00:00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -27
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object btnInicia_Cronometro: TButton
                Left = 138
                Top = 55
                Width = 75
                Height = 25
                Caption = 'Iniciar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = btnInicia_CronometroClick
              end
              object btnZerar: TButton
                Left = 218
                Top = 55
                Width = 75
                Height = 25
                Caption = 'Zerar'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = btnZerarClick
              end
            end
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Sobre'
      ImageIndex = 2
      object ScrollBox1: TScrollBox
        Left = 16
        Top = 40
        Width = 417
        Height = 257
        TabOrder = 0
        object Label8: TLabel
          Left = 176
          Top = 40
          Width = 74
          Height = 13
          Caption = 'Calculadora 1.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 144
          Top = 64
          Width = 129
          Height = 13
          Caption = 'INTERSYS SISTEMAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Image1: TImage
          Left = 70
          Top = 88
          Width = 311
          Height = 136
          Picture.Data = {
            0A544A504547496D616765D25D0000FFD8FFE000104A46494600010101012C01
            2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
            3232323232323232323232323232323232323232323232323232323232323232
            32323232323232323232323232FFC00011080183036B03012200021101031101
            FFC4001F0000010501010101010100000000000000000102030405060708090A
            0BFFC400B5100002010303020403050504040000017D01020300041105122131
            410613516107227114328191A1082342B1C11552D1F02433627282090A161718
            191A25262728292A3435363738393A434445464748494A535455565758595A63
            6465666768696A737475767778797A838485868788898A92939495969798999A
            A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
            D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
            01010101010101010000000000000102030405060708090A0BFFC400B5110002
            0102040403040705040400010277000102031104052131061241510761711322
            328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
            292A35363738393A434445464748494A535455565758595A636465666768696A
            737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
            E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F79E
            1D702AACF0E074A219F18E6AE7CB2AD0061C8369A88BD68DCDBE3240ACE91083
            4006FA37D464525004BBE8DF51514012EFA37D4545004BBE8DF51514012EFA37
            D4545004BBE8DF51514012EFA4DF51D1400F3200324D675C6B08B218ADD7CD93
            DBA0ACCD5B5369263696ED803EFB8EDED55E095204DA9F89F5AF36B62FDEE487
            DE4391AC0DD4FCCB3841FDD5A5FB2A1E4CF267D7359DF6DF7A3ED9EF58F3D37F
            16A1CC5F68EE22E61B924FA35363D69E0709791EDFF6C74AA5F6DF7A8E59D264
            2AE010693ABCBAD3760E63A78AE12640E8C194F71526FAE2AD6FA4D2EE40DC5A
            DD8F23D2BAC8A559A25910E548C8C57761712AB2ECD0D4AE59DF4BBEA2A2BACA
            25DF46FA8A8A00977D1BEA2A28025DF46FA8A8A00977D1BEA2A28025DF46FA8A
            8A00977D1BEA2A28024DF46FA8890055792F6D613892E2353EEC2849BD857B17
            77D2EFAAB14D14C331C8AE3FD939A968192EFA37D4545004BBE8DF51514012EF
            A37D4545004BBE8DF51514012EFA37D4545004BBE8DF51514012EFA37D454500
            4BBE8DF51514012EFA37D45450049BE977D4428A00977D1BEA2A28025DF46FA8
            A8A00977D1BEA2A28025DF46FA8A8A00977D1BEA2A28025DF46FA8A8A00977D1
            BEA2A28025DF46FA8A8A00977D1BEA2A28025DF46FA8A8A00977D1BEA2A28025
            DF46FA8A8A00977D1BEA2A28025DF46FA8A8A00977D1BEA2A28025DF46FA8A8A
            00977D1BEA2A28025DF46FA8A8A00977D1BEA2A28025DF46FA8A8A00977D26FA
            8E9A4E280246931552E6E8229E69B3CE114926B95D67585855BE6A009B54D692
            05625AB963E2376624377AE6B59D6DA59080DC56547784A0E6803E9C126D3572
            DEE704026B39CD092106803A0F9654AA1716D8CF145B5C6303357BE591680309
            E3C1A8B6D6ACF075E2A8BC7834010628C53F146280198A314FC518A006628C53
            F146280198A314FC518A006628C53F14628023C550D5AEC5958492E7E6C617EB
            5A58AE5BC613158E084742726B9F1553D9D29491337CB1B9CF2DD15249396639
            269DF6D35473466BE639A471F397BEDA68FB69AA39A334734839CBDF6D347DB4
            D51CD19A39A41CE5C7B9F31706BA2F0BDF1747B57392BCAD7239AD3D027316AF
            0FA31C1AE8C255942B45F72A9CFDE3D0714629F8A315F4E760CC518A7E28C500
            3314629F8A31400CC518A7E28C5003314629F8A314011E28C53F158BAE78934F
            D0A12D7128327F0C6BC934E3172768A13692BB355D9514B390A07526B91D73C7
            DA6E965A2B73F699C7653C0FC6B8BD6BC4FAAF881CA2B1B6B4EC8A7923DEB262
            B2863E48DCDEA6BD1A5824B5A87154C574816F53F19EB9AA9216468623D163E3
            F5AE7A59AE598B4B24A58F76635BC001D00151CD124B195603A57741423A2472
            CA7293D595344D7EF747BE8E58A6729B86F427822BDE6CEE16F2CE1B84FBB228
            615F393AED765EE0E2BE80F0B2B0F0D586EEBE50AE3CC61156923AF0B26EE8D6
            C518A7E28C5796768CC518A7E28C5003314629F8A31400CC518A7E28C5003314
            629F8A31400CC518A7E28C5003314629F8A31400CC518A7E28C5003314629F8A
            31400C03AD18A781D68C5003314629F8A31400CC518A7E28C5003314629F8A31
            400CC518A7E28C5003314629F8A31400CC518A7E28C5003314629F8A31400CC5
            18A7E28C5003314629F8A31400CC518A7E28C5003314629F8A31400CC518A7E2
            8C5003314629F8A31400CC518A7E28C5003314629F8A31400CC518A7E28C5003
            314629F8A31400CC518A7E28C5003314629F8A31400CC518A7E29A78A0069E2A
            ACF30453CD3E798229E6B99D63565891BE6A008759D5D6146F9ABCC75DD70C8C
            C03558D7B5A2E5806AE12F6E9A473CD00492DDB4B267356E27FDD2D62C6D96AD
            687FD52D007D5AF5183CD48F515004F1B906B4209FDEB296A78DF06803678916
            A9CF0E3B510CF8AB9F2CABEF4018EC98A662AF4F0953D2AAB2E28023C518A5A2
            80131462968A004C518A5A280131462968A006E2B8DF1A0226B76EC41AECEB9B
            F185A19B4D1328CB4673F8572E321CD45A33ADF03386DD46EA8B751BABE7B90F
            339897751BAA2DD46EA39039C97751BAA2DD46EA39039C97755ED1817D5ADC0E
            BBF3599BABA1F08DA99F55F388F96219CFBD6D429F3548A34A6DB9247A001C52
            E2968AFA53D3131462968A004C518A5A280131462968A006E29ACCA8A5988007
            526A0BDBDB7B0B769EE6558E3519249AF2DF12F8CAE3582D6F68CD0590E0B746
            7FFEB56D4684AABB232A956305A9BDE24F1E240CF67A4E259BA34BFC2B5E7D33
            99676B9BD98CB331C9663559649643E559C0EE7D546735617C31AF5D0DFF0061
            98FD462BD7A54A9D156BD8E09CAA5577E84326A51AF0809A886A873CA71515EE
            957DA79C5D5B4917BB2F1552BA62A2D5D6A62D5B737A19D664DCA6A4CF1597A7
            310ECB9ED57E57D91337A0ACDC6CC4652446E752589464BC8001F8D7D13A7DB8
            B5D3EDE01D12303F4AF18F01698752F1345232E6383F78DFD2BDC4579D98CEF2
            515D0F43091B26C31462968AF38EB131462968A004C518A5A280131462968A00
            4C518A5A280131462968A004C518A5A280131462968A004C518A5A28011475A3
            14ABDE8A004C518A5A280131462968A004C518A5A280131462968A004C518A5A
            280131462968A004C518A5A280131462968A004C518A5A280131462968A004C5
            18A5A280131462968A004C518A5A280131462968A004C518A5A280131462968A
            004C518A5A280131462968A004C514B484E28010F155A798203CD2CD305079AE
            7F54D4846A79A008B56D50448DF3579C6B9AC172C0355CD6B562C5806AE1EFEE
            4BB1E68028DFDD1918F358D2B64D5B9DB24D527EB400E87EF0AD987FD52D6343
            F7856CC3FEA96803EAD7A8AA57A8A801C29E29829E2802546C55B8672A7AD511
            522B6280363E59D3DEA85C42509E2886E0A1EB56A491654F7A00CA618A6E69F3
            90A4D57320A00973466A1F307AD1E60F5A009B3466A1F307AD1E60F5A009B346
            6A1F307AD1E60A00973514F0A5C40F138CAB0C1A4F3051E60A4D5D5985AE797E
            AFA749A65F3C2C0EDCE51BD4567E6BD3F55D3ADF55B631CA30C3EEB7706BCF35
            3D2EE74C90895094ECE0706BC8AF857095E3B1E5D7A3283BAD8A7BA8DD50F9C9
            EB479E9EB5CFECD9CBCEBB93668CD43E727F7854F6D14979288E042EC7D050A9
            37B2052BBB21D1AB4B22A202CCC7000AF4BF0FE9634CD3D5587EF5F97359BA07
            87E3B002E2E30F3F61D96BA4F3057A585C37B3F7A5B9E9E1A8B8FBD226CD2E6A
            1F3051E60F5AEE3AC9B3466A1F307AD1E60F5A009B3466A1F307AD279A3D6802
            6CD666AFADDA68B68D3DCC983FC283AB1F6AA9AD78862D2A20883CDBA7E23897
            924D73D69E1ABBD66EC6A1AECA4E795841E83D2B58417C53D8CE737B47739EBD
            B9D63C637FF244E6107E48C7DD5F726BA1D2BE1CC236CBAA4A653FF3C938515D
            85AC16F67108ADE258D47651567CC15ACF152B72C344671A0AFCD2D595ECB49B
            0D3E3096B6B1C607A2D5EE3150F9828F30572B6DEACDD24B620D434EB6D4ED1E
            DEE62574618E474AF04D734C6D2758B8B33C846F94FB76AFA0BCC15E37F10761
            F13C84752A335E865F51A9B8F439B1515CB739ED3D7059A9F7D2623083A9A96D
            808E11EFCD4DA3E9EDAD6B90DBA8CA6ECB1F415E94A695E4CE18C5B763D1FE1C
            68FF00D9FA31BB91712DC1CF3FDDED5DB66AA5BAC76D0470C6004450A054BE60
            AF02ACDCE6E4CF5611E58A44F9A3350F983D68F307AD4164D9A3350F983D68F3
            07AD004D9A3350F983D68F307AD004D9A3350F983D68F307AD004D9A3350F983
            D68F307AD004D9A3350F983D68F307AD004D9A3350F983D68F307AD004D9A335
            0F983D68F307AD004D9A3350F983D68F307AD004C87EF519A863907CFF00851E
            60A009B3466A1F307AD1E60F5A009B3466A1F307AD1E60F5A009B3466A1F307A
            D1E60F5A009B3466A1F307AD1E60F5A009B3466A1F307AD1E60F5A009B3466A1
            F307AD1E60F5A009B3466A1F307AD1E60F5A009B3466A1F307AD1E60F5A009B3
            466A1F307AD1E60F5A009B3466A1F307AD1E60F5A009B3466A1F307AD1E60F5A
            009B3466A1F307AD1E60F5A009B3466A1F307AD1E60F5A009B3466A1F307AD1E
            60F5A009B3466A1F307AD1E60F5A009B3466A1F307AD1E60F5A009B3466A1F30
            7AD1E60F5A009B3466A1F307AD1E68F5A0094B62ABCD305079A6493803AD64DF
            5EED53CD003351D40229E6B87D5F522DB86EABBAA5F939E6B90BE9CB13CD0067
            5FDC1763CD615C3649AD1B93926B326EF4019F377AA6FD6AE4DDEA9BF5A007C3
            F7856CC3FEA96B1A1FBC2B661FF54B401F56BD4552BD45400E14F14C14F1400E
            14B48296801436294CE5475A61A8A43C50043717073D6A9B5C73D68B86E4D536
            6E6802D7DA3DE8FB47BD53DC69371A00BBF68F7A3ED1EF54B751BBDE802EFDA3
            DE8FB47BD52DD46E340177ED1EF47DA3DEA96EF7A375005DFB47BD472B473214
            9143A9EC4556DD46EA04D5F7326F7C2BA65D12CAAD131FEE1ACD6F03C25BE5BB
            703DC5751BA8DC6A1D38BE873CB09465AB89816DE0DB089834D2492E3B13C574
            3696D6B629B6DE1541EC29BB8D1BA9A8456C8B850A74FE145DFB47BD1F68F7AA
            5BBDE8DDEF546C5DFB47BD1F68F7AA5BBDE8DD40177ED1EF47DA3DEA96EA377B
            D005DFB41F5AA9777B301E55B2EE94F73D17DCD377520342021B1D3E1B694DC4
            A4CD74DF7A57EBF87A56A7DA2A96E346E34DB6F712562EFDA3DE8FB47BD52DC6
            9771A432E7DA3DE8FB47BD53DC69371A00B86E3DEBC63C577BF6DF145CB29CA8
            6DBF957A8EA1762D2C279D8F0884D78B34A66B896E1CFCCEC4D77E063EF391CB
            897A244D3DCEC8F683C9AF45F006966CAC4DF4CB8966FBB9ECB5C0E81A63EB5A
            C24783E529DCE7DABD8A24586258D06154600ABC655B2F6688C3D3D7999A3F68
            F7A3ED1EF54B71A5DC6BCD3B4B9F68F7A3ED1EF54F71A371A00B9F68F7A3ED1E
            F54F71A371A00B9F68F7A3ED1EF54F71A371A00B9F68F7A3ED1EF54F71A371A0
            0B9F68F7A3ED1EF54F71A371A00B9F68F7A3ED1EF54F71A371A00B9F68F7A3ED
            1EF54F71A371A00B9F68F7A3ED1EF54F71A371A00B9F68F7A3ED07D6A9EE349B
            A802F25C7DFE7D28FB47BD5246FBDF851B8D005CFB47BD1F68F7AA7B8D1B8D00
            5CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F68
            F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B8D
            005CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F
            68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B
            8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD
            1F68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD1F68F7AA7B8D
            1B8D005CFB47BD1F68F7AA7B8D1B8D005CFB47BD06E0FAD52DC682D40124D707
            079AC1D42E4E0F35A33B1DA6B0AFDBAD0060DF4A49358372724D6C5E1E4D62DC
            77A00CC9FBD66CD5A33F7ACE9A8033E6EF54DFAD5C9BBD537EB400F87EF0AD98
            7FD52D6343F7856CC3FEA96803EAD7A8AA57A8A801C29E29829E2801C2969052
            D0021A864E9531A864E94019971D4D536EB572E3A9AA6DD6801B494514010CF3
            C76D0BCD2B85451924D709A97C4091A768B4D8415071E63F7AB7F116F5E0D361
            B646204ADF37B815E7B6A3099F535DF85C3C66B9A479D8BC4CA0F96276D6BE21
            D5A640F35C8407A055AB3FDB97BFF3F8FF0090AE4C5E9000F4A3EDC7D6BABEAF
            1EC71AC54BB9D67F6E5EFF00CFE37E428FEDCBDFF9FC6FC85727F6E3EA68FB71
            F534BEAF1EC3FAD4BB9D67F6E5EFFCFE37E428FEDCBDFF009FC6FC85727F6E3E
            A68FB71F5347D5E3D83EB52EE759FDB97BFF003F8DF90A3FB72F7FE7F1BF215C
            9FDB8FA9A3EDC7D4D1F578F60FAD4BB9D67F6E5EFF00CFE37E428FEDCBDFF9FC
            6FC85727F6E3EA68FB71F5347D5E3D83EB52EE759FDB97BFF3F8DF90A3FB72F7
            FE7F1BF215C9FDB8FA9A3EDC7D4D1F578F60FAD4BB9D67F6E5EFFCFE37E428FE
            DCBDFF009FC6FC85727F6E3EA68FB71F5347D5E3D83EB52EE754FAE6A1B4ECBC
            3BBDC0AA29E39D4EC67DB751472C60F24706B0FEDC7D6AADCBF9C493E94D61A0
            F4685F5A9A774CF5BD1B5AB5D6AD44D6EDC8FBCA7A835A95E45E07BD7B5F1147
            1063B25CAB0AF5DCD7995E97B39D8F5E854F690BB0A28A2B1360A28A2800A28A
            46215493C00280392F1DEA1E469896687E798F3F4AF367C9C448324F1815B3E2
            8D53FB43589640731A7C89F855EF04E846FAFBEDF3AE6188FCB9EE6BD6A4951A
            37670CFF007952C8EBBC25A27F64E96ACEBFBF97E673E9ED5D15030381457972
            9394B999D918A8AB20A28A2A4A0A28A2800A28A2800A28A2800A28A2800A28A2
            800A28A2800A28A2800A28A2800A28A28004FE2FC296913F8BF0A0D001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0145145001451450014514500145145001451450014514500145145001451450
            0141A283D2802B4FD0D615FF00435BB37435857DD0D0073977D4D635C77AD9BB
            EA6B1AE3BD0065CFDEB3A6AD19FBD674D4019F377AA6FD6AE4DDEA9BF5A007C3
            F7856CC3FEA96B1A1FBC2B661FF54B401F56BD4552BD45400E14F14C14F1400E
            14B482968010D43274A98D43274A00CCB8EA6A9B75AB971D4D536EB400CA28A2
            8038AF88B64D369715CA8CF94DCFD0D79D5B37EEF1E95EE93C115CC4629A3574
            3D558706A97F606943A58C23E8B5D987C52A71E568E1C4615D5774CF1FCD19AF
            61FEC1D2FF00E7CA2FFBE6B3B54F0869F7D6EC228C412E3E564AE858E837AA39
            5E5D34B46797E68CD4979693E9D7B25A5CAE1D0F07D45439AED524D5D1C32838
            BB31D9A334CA299361F9A334CA280B0FCD19A65140587E68CD328A02C3F228CD
            46CC46001963C015DEF86FC1B18B75BBD494BC8E3223ECBF5ACAAD78D25766F4
            70F2AAEC8E1B34D66C2935EC6340D2F1FF001E717E547F60E978FF008F288FFC
            06B97EBF1EC752CBA5DCF35F02D9B5D78892503E4841626BD6EAADAE9D676258
            DB5BA445BAED18CD5AAE1AD57DA4AE7A34697B38D85A28A2B2360A28A28012B0
            3C5BAA0D3B4870AD8965F956B7988552C4E0019AF24F15EAEDAB6AEC9192628C
            EC403BD7461A973CF5D919569F2C4CDD3AC66D5F528EDA204963F31F41EB5EC7
            A758C5A759456D0A80A831F5AC3F0768034BB117132FFA44A3273FC23D2BA8AA
            C556E7972AD913469F2ABB0A28A2B94DC28A28A0028A28A0028A28A0028A28A0
            028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0013F8BF0A0D09FC5
            F8506800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A0F4A283D2802B4DF74D615F7435BB37DD35857DD0D00739
            77D4D635C77AD9BBEA6B1AE3BD0065CFDEB3A6AD19FBD674D4019F377AA6FD6A
            E4DDEA9BF5A007C3F7856CC3FEA96B1A1FBC2B661FF54B401F56BD4552BD4540
            0E14F14C14F1400E14B482968010D43274A98D43274A00CCB8EA6A9B75AB971D
            4D536EB400CA28A2800A28A2800A28A280389F881A509AC17508D7F7909C311D
            C579EAB6541AF68D6ADC5CE8D751119CC6715E289F282A7B122BD4C14DB8F2F6
            3C9C7C2D25224CD19A6E68CD769E7D87668CD37346680B0ECD19A6E68CD0161D
            9A334DCD213C1A02C743E0DD306A7AE09645CC56FF0037E3DABD600006074AE2
            BE1CDB6CD2E7B823E6924C7E15DB578D8A9B95467BB85828D34145145739D214
            514500145145001451515C4E96D6EF348C1510124D1B81CEF8CF591A6E96618D
            BF7F37CA3D877AE6BC15E1E37B73FDA374BFBA43F203FC46AB2C573E31F12337
            22DD4F5ECAB5E9B696B1D9DB2410A85441800576CE5EC69F22DDEE73C57B49F3
            3D8B006060514515C47405145140051451400514514005145140051451400514
            51400514514005145140051451400514514005145140027F17E141A13F8BF0A0
            D001451450014514500145145001451450014514500145145001451450014514
            5001451450014514500145145001451450014514500145145001451450014514
            50014514500141E94507A500569BEE9AC2BEE86B766FBA6B0AFBA1A00E72EFA9
            AC6B8EF5B377D4D635C77A00CB9FBD674D5A33F7ACE9A8033E6EF54DFAD5C9BB
            D537EB400F87EF0AD987FD52D6343F7856CC3FEA96803EAD7A8AA57A8A801C29
            E29829E2801C2969052D0021A864E9531A864E94019971D4D536EB572E3A9AA6
            DD68019451450014514500145145003255DF13AFAA915E1B791791A8DCC3FDC9
            08FD6BDD0D78D78A20FB3F896ED00E0B6EAEDC14BDE68E1C746F04CCAA2928AF
            4CF245A2928A602D149452017348C70A68A4237617D4E28634B53D73C176FE47
            86ADB2305B2C6BA1AA1A3C3F67D22D62C636C62AFD78351DE4D9F414D5A29051
            4515258514514005145140095C4F8C35296F2E22D12C72D2C87F798EC3D2BA3D
            77554D274E798F3237CB1AFA9ACBF0BE88F007D4AF46EBC9CEEE7F8456D4AD15
            CEFE4673F7BDD468E81A345A369EB0A0064232EDEA6B5A8A5ACA52727765A492
            B20A28A290C28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0013F8BF0A0D09FC5F8506800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A28
            00A0F4A283D2802B4DF74D615F7435BB37DD35857DD0D0073977D4D635C77AD9
            BBEA6B1AE3BD0065CFDEB3A6AD19FBD674D4019F377AA6FD6AE4DDEA9BF5A007
            C3F7856CC3FEA96B1A1FBC2B661FF54B401F56BD4552BD45400E14F14C14F140
            0E14B482968010D43274A98D43274A00CCB8EA6A9B75AB971D4D536EB400CA28
            A2800A28A2800A28A28012BCABC7B1797E230DFDF8C1AF56AF37F8910EDBEB49
            B1F7948AE9C23B5439716AF4D9C55149466BD73C6168A4CD19A005A293346681
            8B9A96D63F36F6DE3FEF4807EB50D68685119B5FB241FF003D01A89BB45B2E9A
            BC923DAE15DB046BE8A053E81C0A2BC23DF4145145001451450014C92458919D
            CE154649A7D645FABEA538B28C9108E6661DFF00D9A695D89B33AD6D5B5FD57F
            B42E01FB1C071021FE23FDEAE9C0038151C5124312C7180AAA3000A929CA5714
            5585A28A2A4A0A28A2800A28A2800A28A2800A28A2800A4AC2D53599ACAEFCA4
            552319E6A8FF00C24B75FF003CD2B9278CA50938B21CD23ACA2B93FF008496EB
            FB895B7A4DEBDF5B1924001071C5553C553A8F96238CD3D8D1A28A2BA4A0A28A
            2800A28A2800A28A2800A28A2800A28A28004FE2FC283427F17E141A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
            00283D28A0F4A00AD37DD35857DD0D6ECDD0D615F743401CE5DF5358D71DEB66
            EFA9AC6B8EF401973F7ACE9AB467EF59D350067CDDEA9BF5AB9377AA6FD6801F
            0FDE15B30FFAA5AC687EF0AD987FD52D007D5AF5154AF515003853C53053C500
            3852D20A5A004350C9D2A6350C9D280332E3A9AA6DD6AE5C75354DBAD00328A2
            8A0028A28A0028A28A002B84F8931E6D6D24F4622BBBAE37E22A6ED1226FEECA
            2B6C3BB544638857A6CF32CD19A28AF68F10334668A2800CD19A28A002B7BC1B
            1F99E28B6CF41935835D3F80937F8901FEEA13595776A6CD682FDE23D628A28A
            F10F7028A28A0028A28A0064818A10BD4F7A6C30AC29B547B93EA694CD103832
            283F5A3CF8BFE7A2FE74B9977168494547E7C5FF003D17F3A78208C83914269E
            C3168A2ABCD79041FEB2551F8D0E496AC0B1456636BB62A71E6E7E8285D72C58
            E3CDC7D4565EDE9FF3227997734E8AAF0DE5BCFF00EAE553F8D58AD1493D5141
            451455005148480324E0533CF8BFE7A2FE749B4B70393F10FF00C848FF00BB59
            35ABAFB2B6A24A9046DED5955F3B88FE2CBD4E49FC4C2BACF0DFFC7837FBD5C9
            D755E1D9112C486703E6EE6B7C034AAEA552DCDCA2A3F3E2FF009E8BF9D2AC88
            E70AE09F635EDF32EE748FA28A298051452160A32481400B45529B54B383EFCC
            B9F6E6AA3F88ACD7A6E6FA0ACA55E9C77627248D7A2B17FE125B5FEE3FE552A7
            882C9BAB32FD454AC4D27F685CCBB9AB476AAD0EA16B3FDC9949F4CD59C82383
            5AC64A5B32854FE2FC283427F17E141AA00A28A2800A2A333460E0BA83F5A3CF
            8BFE7A2FE753CCBB8125151F9F17FCF45FCE9E082320E4534D3D80296A39268E
            152D23851EE6B365D7ECE3380C5BE82A275610F89D84DA5B9AD4563C5E21B591
            C2E181271C8AD70770C8A215233F85DC134F6168A28AD061454724D1C432EEAA
            3DCD52975AB288E0CA09F6A89548C777613691A345633788ACC74DC7F0A6FF00
            C24B6B9FB8F59FD6697F30B9A3DCDBA2B213C4366C792C3EA2ACC5AB59CBF767
            5FC78AA8D7A72DA487CC8BD45355D5C655811EC69D5A8C28A29ACEA9F7980FA9
            A2E03A8A8FCF8BFE7A2FE7479F17FCF45FCEA799770B92515189E2270245FCEA
            4A69A7B00514514C028A28A0028A634B1A9C33807DCD279F17FCF45FCE9732EE
            0494547E7C5FF3D17F3A55951CE15C13EC68E65DC07D07A51487A5302BCFD2B0
            6FBBD6ECE40524902B9AD4AF6DE3C869573ED52E496EC2E62DDF5358D71DEAE5
            DEA76E49C126B1E7D42239C0353ED21DC574579FBD674D5626BC8CFAD5296746
            EF54A4985CA935537EB56E4607A1AA8FD6A863E1FBC2B661FF0054B58D0FDE15
            B30FFAA5A00FAB5EA2A95EA2A0070A78A60A78A0070A5A414B40086A193A54C6
            A193A500665C75354DBAD5CB8EA6A9B75A006514514005145140051451400572
            DE3D8F7F86E43FDD606BA9AE73C7033E17B93E98AD297F1119D6F819E420F146
            69334B9AF6CF0C33466933466801734669334B9A002BB1F87499D6A77F48F15C
            7576FF000DC6750BA3FEC0AC313FC266F86FE223D2A8A28AF1CF6428A28A0029
            0FDD34B48DF74D27B01C1DE3B7DB26F98FDF3DEA0DEDFDE3F9D4B79FF1F937FB
            E6A0AF9A9B7CCCE37B8EDEDFDE6FCEBB4B7BA8EDB4B8A495B0020EB5C4D4F3DD
            4B3AA2B37CA830056D87C47B2BBEA5C27CA695FEBF34E4A41FBB4F5EE6B21DD9
            D896624FB9A6D15954AB3A8EF264B937B8B45145642155D90E55883EA0D6B586
            BD340C1273BE3F53D4563D15AD3AB3A6EF163526B63D0209E3B888491B02A6A6
            AE4B40BE30DCF90E7E47E9EC6BACAF770F59558731D3197322BDFF0016337FBA
            6B85DED93F337E75DD5FFF00C78CDFEE9AE0FB9AE1CC5FBC8CAA8124F539A28A
            2BCB320A50C474247E3494530177B7F78FE75B3E1C6637ED924FC9EB58B5B1E1
            BFF90837FB95D1856FDB44A87C475B476A4ED58FAD6A9F658FC988FEF5BF4AF7
            6A5454E3CCCE96ECAE49A8EB30D98289F3CBE83B573575A9DD5DB12F210BFDD1
            D2AA3333B1662493D4D257875B173A8FB239A536C339EB4515720D2EEEE40291
            1C7A9E2B08C6537A22526CA7456B7FC23D7B8CE17F3AAB71A65DDB0CBC471EA3
            9AB950A9157687CAD150120E4122B42D358BAB5206F2E9E86B3A8A9854941DE2
            C136B63B8D375286F918A1C3F195357ABCF6DA792DE5F32362181AED34DBF5BE
            B60FD1C70C2BD8C262D55F765B9BC27CC5EA0F4A283D2BB8D0E0EF9DBEDD37CC
            7EF9EF55F7B7F79BF3A9AFBFE3FA7FF7CD57AF99A8DF3B3925B8EDEDFDE6FCEB
            ABFED38EC74B84B1DD214E16B92A7BC8F26373138181ED5A51C43A576B7638CA
            C4D777D3DE485A4738EC3B0AAD45158CA4E4EEC96EE4B6FF00F1F11FFBC2BBF4
            FB8BF4AE02DFFE3E23FF0078577E9F717E95EA65BB48DA96C23BAA29662001DC
            D73DA87884EE31DAF4FEF9A3C437EC185AC671DDBFC2B9DA58BC5B4F92015276
            D112CB7134EDBA491989F53515152450C93BED890B1F415E67BD27DCC7564745
            6AC7E1FBD7192157EA6A43E1BBBC7DF4FCEB6586AAFEC95C92EC63515A13E8D7
            9002C632C0775E6A81041C1E0D65284A0ED256134D13DBDF5C5B3031CAC07A67
            8AE8F4DD752E488A7C249D8F635CA528241C8EB5B51C4CE93D361C66D1E89D46
            6A86AF6A6E6C582E77AF231506857E6EAD8C721CBA719F515AC7918AF6D38D6A
            775D4E9D248F3C2CE0E0B37E746F7FEF37E757F59B336B7CD81F23F22B3ABE7E
            A45C24E2CE569A761EB2BAB060CD907D6BB8D3AE45D5947203CE306B84AE83C3
            777B647B663C1E4575E06AF2D4E57D4BA72B3B1D3514515ED9D02535DC468CC4
            F00669F58DAFDE79169E529F9A4E3F0ACEACD420E4C4DD95CE72FAEDEE6F2493
            71C13C73DAABEF6FEF1FCE9B457CE4A6E4EECE46DB1DBDBFBC7F3AE9BC3B6ACB
            135C3E72DC0C9ED5CF59DBB5D5D244BDCF35DDC312C312C6A301462BBF0149CA
            5CEFA1AD25ADC92B3352D5A2B15DBF7A53D14558D42E85A5A3CBDC0E3EB5C3CD
            2BCD2348E49663DEBAB178974972C772E73B6C3EFB53B9BA277C842FF7474AC2
            BA24E735A3274ACEB9E6BCB8CE53776CC6EDB3267EF5425AD87B19E4190981EA
            6A9CDA74A3B8AEFA74E56BD8D52663C95524AD39ED245CF4359D329524118AE8
            516B72AC547245445CE79A95EA06ADA2CA45980E48AD987FD52D60DBB61C56F4
            3FEA96B44EE33EAD7A8AA57A8A980E14F14C14F1400E14B482968010D43274A9
            8D43274A00CCB8EA6A9B75AB971D4D536EB400CA28A2800A28A2800A28A2800A
            E7FC68B9F0BDD7E15D0560F8C7FE458BBFA0ABA7F1A33A9F033C6A8A0515EE9E
            20668CD1450019A334514005779F0D47FA55E1FF006457075DEFC34FF5D7BF41
            5CF89FE1337C37F151E8D4514578E7B014514500148DF74D2D237DD349EC0703
            79FF001F937FBE6A0A9EF3FE3F26FF007CD415F333F899C6F70A7471B48E1114
            96278029B5D27876C46C372E324F0B9ABA149D59F2A1C63CCEC25978706D0F72
            4E7FBA2B523D22C906042A7EB57E8AF72186A705648E95048CF9347B2901CC20
            7D2B9ED57476B1FDEC64B447F4AEC2ABDEC227B49233DD4D457C34270765A8A5
            04D1C1D14A46D623D0D25783B1CC3E0731CF1B8EA18577F1B6E895BD4579E8FB
            C3EB5DF599CD9C47FD915EA65AFE246D4BA92488B2C6C8C3E5618359DFD8363F
            F3C8FE75A9495E94A9C67F12B9AB49EE715AC5B476B7BE5C4B85C567D6B7887F
            E4247FDDAC9AF9EC424AAB48E597C415D068BA65B5E5A19254CB6719CD73F5D6
            786FFE3C1BFDEADB05152A9668AA6AEF526FEC1B0FF9E47F3A9ED74CB6B390C9
            0A6188C6735728AF6551A69DD237E5488E7944303C8DD1466B84B99DAE6E1E56
            3CB1AEA7C413797A7151FC6715C8579B9854BC940CAABD6C2D1451F5AF30C8DF
            D0F4A57417332E47F0835D28000C018AE7EDFC416B04091F96FF0028C54BFF00
            092DB7FCF37AF6E855A14E092674465148DCA46556041008AC4FF8496DBFE79B
            D1FF00092DB7FCF37FCAB7FAD51FE62B9E254D734A5847DA61185CFCC0560574
            977AF5ADCDB4916C7F98606457375E462FD9F3DE99854B5F405EF5A5A35D9B5B
            E504FC8FC1ACD5FE2A5562AC08EA0D614E6E125244A76773D1073CD29E955AC6
            5F3ACE27EE545583D2BE913BAB9D47057DFF001FD3FF00BE6ABD58BEFF008FE9
            FF00DF355EBE6AA7C6CE47B8500127028AD9D06C05C4C67906510F1EE69D2A6E
            A4D450E2AEEC161A04B70A24989443DBBD6BC7A058A2E190B1F526B547038A2B
            DCA784A505B5CE85048CF5D12C558308B91CF5AD00005C0ED452D6F18463F0AB
            14925B1C26A7219351989FEF62AA55DD5A2316A5283DCE6A957CED6BFB477396
            5B8574FE1BF27ECED8C7999E7D6B98A7C53490B6E8DCA9F6AAC3D554A7CCD046
            5CAEE7A1D15C6C7AF5EC6305C37D45584F12CE3EFC4A7E95EAC71F499BAA913A
            935CE6BBA612CB3DBC649270C1452AF89FFBD07E46A55F12C07EF44C3E94AAD6
            A15A3CAD839464AC73FF0061BAFF009E127E547D86EBFE7849F957530EB96529
            C17DA4FA8AD18E48E55DC8CAC3DAB08E0A94FE195C954E2F66737A0413C37A77
            C6EAA57B8AE9E8007A52D7A1428FB28F2A6691565632B5CB3FB5591651F3A722
            B8EAF456019483D0D70FAADA1B4BE7503E5272B5E7E614B555119558F52954D6
            B39B6B98E55FE1350D15E6465CAEE8C93B33D0A1904D1248A78619A92B13C3B7
            7E6DA9858FCC9D3E95B75F4946A7B482923AE2EEAE21200C9ED5C4EAF77F6ABE
            720E557815D2EB377F65B16C1F9DB815C593939AF3F30ADB5346555F40A28A9A
            D606B9B9489472C6BCC8C5B7646295F437FC3965B50DCB8E5B85AE86A2822582
            148D470A3152D7D150A6A9C1451D515656303C4D21104483A139AE60D753E258
            8B5AA4807DD3CD72D5E463AFED99854F888A4E955A1D9F6B4F331B73DEACC9D2
            B36E7BD6345DA498A3A334EEB1DB158F71DEAB3DE4F1F01C91E86AA4BA84BDC0
            35EDC311167429209FBD65DD207522A796F89EAB54E5BA07F86B4E78B1DD19B2
            2B0CF06ABB03E957A4994D566209E0D34900C8C1DC38ADE833E42FD2B221FBC2
            B661FF0054B5495867D5AF5154AF515301C29E29829E2801C2969052D0021A86
            4E9531A864E94019971D4D536EB572E3A9AA6DD6801945145001451450014514
            50015CF78D0EDF0BDD1FA57435CE78E0E3C2D71EE455D2F8D7A99D5F819E3D45
            2668CD7B878A2D1499A33400B452668CD002D779F0D4FF00A5DD8FF6457055DC
            FC363FF130B91FEC573E27F84CDF0FFC447A6514515E41EB8514514005237DD3
            4B48DF74D27B01C0DE7FC7E4DFEF9A82A7BCFF008FC9BFDF35057CCCFE2671BD
            C2BB9D2D0269D081FDDCD70D5DE69DFF0020F87FDC15DF96AF799AD22D514515
            EC1B8535C651BE94EA46FBA7E949EC079FDC0C5CC83FDA35154D77FF001F72FF
            00BC6A1AF999FC4CE37B8A2BBCB0FF008F187FDC15C1577B61FF001E30FF00BA
            2BD0CB7E266B44B3451457AE6E71FE21FF009091FF0076B26B5BC43FF2123FEE
            D649AF9CC4FF00165EA72CFE2615D6786FFE3C1BFDEAE4EBACF0DFFC7837FBD5
            BE03F8A552DCDAA28A2BDC3A0E7FC4EDFB9897DEB99AEA3C4CB9B689BD1AB98A
            F071DFC667354F8828A29514BB851D49C57190368AD81E1CBB2010C9CFBD2FFC
            23779FDE4FCEBA3EAB57F94AE497631A8AD9FF00846EF3FBC9F9D1FF0008DDE7
            F793F3A3EAB57F943925D8C6A2B67FE11BBCFEF27E749FF08E5E7F793F3A3EAB
            57F943925D8C75EF456CAF872F3E6F993F3A3FE11CBCFEF27E747D56AFF28724
            BB1B5A1B6ED2E2CF6AD23D2A96976B259D9AC5210581ED574F4AF76926A9A4FB
            1D31D8E0AFBFE3FA7FF7CD57AB17DFF1FD3FFBE6ABD7CED4F8D9C92DC2BB4D0E
            2116991F1CB735C5D777A68FF897C3FEE8AEECB97EF1B34A5B96E8A28AF64E80
            A28A28030F5ED38DC279F10CBA8E40EE2B95230706BD148CF06B1F50D0A2BA63
            2447CB73F91AF371783737CF0DCCA74EFAA392A2B427D1AF213FEA8B0F55AA8D
            6D3A7DE89C7E15E5CA94E3BA3171688E8A52AC3AA9FCA92A2CC41451452012AC
            5ADECF692068DC8F6EC6ABD1551938BBA04DA3B6D33514BF873D1C7DE15A15C4
            691726DB508C83F2B1C115DB03915EEE12B7B586BBA3A612BA16B1B5FB3F3ED3
            CD51F347CFE15B14D740E8548E08C56F569AA907165357563CF28AB5A85A9B4B
            C78C8E3391F4AAB5F3728B8B7167235665FD22E8DADFA127E56E0D76C082335E
            76090723AD7550EA80689E713F3A8DBF8D7A581AEA29C59AD395B432B5EBBFB4
            5EF96A7E48F8FC6B269598BB163C9272692BCFAB51D49B93336EEEE15D27872C
            B01AE9875E16B06DA06B8B8489472C6BBAB7856DE048D470A315DB80A3CD2E77
            D0BA51BBB93514515EC9D041776EB756EF130E18570F776B25A4ED1C8318E87D
            6BBFAA77B610DEC7B645E7B1EE2B8F1586F6CAEB72270E638093A566DCF7AEA6
            FBC3F71164C243AFEB5CE5E5A4F1E7744C3F0AF3151A907AA31E568C39FBD509
            6B46E1181E54FE559D2835D5045A29C95524AB7255492BA62522B3D40D53BD40
            D5BC4A44D6EFF3006B721FF54B5CF47D6B6EDE51E4264F38AA52EE3B9F59BD45
            52BD455631C29E29829E2801C2969052D0021A864E9531A864E94019971D4D53
            6EB572E3A9AA4DDE801B4546920909DBC80719A92800A28A2800A28A2800AE57
            C7F26CF0E32FF79C0AEA8D717F11E4C68B0AFACB5AD057A88CAB7F0D9E5B4526
            68CD7B478E2D1499A33400B452668CD002D767F0E24C6B72A7AC55C5E6BAAF00
            49B7C4683FBC845635F5A6CD6869511EBB4514578C7B014514500148DF74D2D2
            37DD349EC070379FF1F937FBE6A0A9EF3FE3F26FF7CD415F3353E2671BDC5AEE
            F4EFF907C3FEE0AE12BBBD3BFE41F0FF00B82BD0CB7E266B44B5451457AE6E14
            8DF74FD29691BEE9FA527B01C05DFF00C7DCBFEF1A86A6BBFF008FB97FDE350D
            7CCCFE2671BDC5AEF2C3FE3C61FF007457075DE587FC78C3FEE8AF432DF899AD
            12CD14515EB9B9C7F887FE4247FDDAC9AD6F10FF00C84BFE035935F3989FE2CB
            D4E59FC4C2BABF0D9CD837FBD5CA56CE8BAAC7648D1CB9DA4E4115A60E71855B
            C874DD99D65159BFDBD6047FADFD2A6B6D4ED6F24290BE580CE315ED2AD4E4EC
            99D0A488B5A83CFD3A4C0C95E457175E88CA194A9E8462B89D52C9ACAF1971F2
            31CA9AF3F30A4EEA68CAAC7A94A853B581F434515E5989DD69F722E6CE3901ED
            8356EB89D33537B0931CB447AAD7516FAADA5C282B2807D0D7BB87C4C6A46CDE
            A74C269A2F515119E2C67CC5C7D6A9DD6B1696CA7F781DBD16BA255211576CA6
            D226BEBE8EC60F31F9E7000EF599FF0009343FF3C9AB0F50D424BF977370A3EE
            AFA553AF2AAE3E5CDEE6C632AAEFA1D42789A0F9BF74DDA9478961660044F935
            CB2F7AD6D0EC0DCDD09587EED39FA9A54B155EA4D453129C9BB1D746DBE35623
            1919C538F4A070283D2BD9E8741C0DF7FC7F4FFEF9AAF562FBFE3FA7FF007CD5
            7AF9AA9F1B38E5B85777A6FF00C83E0FF7457095DDE9BFF20F87FDD15DD96FC4
            CD6916E8A28AF60DC2A1B99FECF6EF2E33B46715354571189A078CFF001022A6
            57B3B0330FFE1274FF009E07F3A3FE1274FF009E07F3AE7A68DA199E361CA9C5
            475E23C6D64ED739BDA48E98789A3240F24FE75B71949A35902821867A579F56
            E697AE7D9904338250746F4ADF0D8D6E56AA542A6BEF1D2B5BC2DF7A353F8544
            DA7DA375813F2A647AAD9CA0159947D4E2A61796E7FE5B27E75E8DE94BB1B68C
            AAFA2D8BF5840FA5656A9A1C505BB4D01236F5535B726A36918CB4E9F9D61EAD
            ADA4F0B416E0907AB1AE5C4AC3A83BDAE673E5B1834514578873925BE45CC78F
            EF0AEFD3EE2FD2B88D2E033EA1128E80E4D7703818AF5F2E8BE56CE8A5B0B451
            457A66A61788ACFCDB7170A3E64EBF4AE5ABD0A58D65899186430C5709796E6D
            6E9E26EC78FA578F9852B4BDA2EA61563ADC869DE63F9663CFCA4E714DA2BCE4
            DAD8C84A28A96DE169E7489464B1C50936EC82D7377C3965CB5D30F65AE92A0B
            5816DADD2251C28A9EBE8E85254E0A27545595828A28AD8A31AF35D5B4BA684C
            44EDEF9AAE7C4E9FF3C0FE755BC496C52E96603E57183F5AC3AF1ABE2AB53A8E
            373094E49D8DE97C4A847FA93F9D52FB7A5FAB90B823B1AC993A5545BA7B594B
            AF20F51EB5547193725CEF408D477D4B7768A73951F9562DCC319CFC83F2ABF2
            EA304A3AED3E86B3E79A339C38FCEBD45284B636BA665DC411F3F28ACC9EDD39
            C715AB3C89CFCC2B2AE27419C1C9A2D10D0CB946D622ABB55894EE626ABB54A0
            163EB5A3193E58ACE8FAD6CC11030293E949AB899F5ABD4552BD455B143853C5
            3053C5003852D20A5A004350CBD0D4A6A197A1A00CCB8EA6B02FAEDA4B95B1B7
            3FBD6E5D87F02D5AF116AEBA640028DF7121DB1463A935574AB07B4B7324E77D
            CCC7748DEFE956A365764B777645D8A358A3545E805494515050514514005145
            14005703F12E5C5ADA45EAC4D77B5E67F12A6DD7F6D0FF0075335BE195EAA30C
            4BB53670B9A334DA2BD73CA1D9A334DA2801D9A334DA2801D9AE83C172F97E27
            B527A124573B9AD3F0FCBE4EBB66FD3F7A2A2A2BC1A2E1A4933DDA8A407201A5
            AF10F6428A28A00291BEE9A5A43D0D0C0E06F7FE3F66FF007CD415AD75A35EC9
            7323AC390CC4839A8BFB0F50FF009E3FAD7CECE854726D459CAE2EFB19D5DE69
            FF00F1E107FB82B94FEC4BFF00F9E3FAD75B671B45671238C32A806BBB014E70
            93E65634A49ADCB1451457A86C148DF74FD29691B95349EC070177FF001F72FF
            00BC6A1AD5B8D1AF9EE2465872A5891CD47FD87A87FCF1FD6BE7A742A3936A2C
            E57177D8CE1D6BBDB0FF008F187FDD15C9FF00625FE7FD4FEB5D75A234569123
            0C30500D776029CA127CCAC6949344F451457A86C72FE25808B88E6EC462B06B
            BDBCB48EF2031483AF43E95C9DDE8D756CC7085D3D56BC6C661E4A6E715A330A
            9077BA33E8A568DD7828C3EA29307D0D79F666415B1E1BFF0090837FB958F83E
            95B3E1B07EDEDFEE5746157EFA2553F88EB2A96A1611DF405187CC3A1F4ABB45
            7BF28A92B33A5AB9C0DDD9CB692949548F43EB55EBBFB8B586EA3292A061FCAB
            9FBBF0E3A92D6CFB87F74D78F5F0338BBC354612A6D6C6052838E95625B0BA84
            90F0B0FC2A028C3AA91F8571384A3BA33B30DEDFDE3F9D25183E869C2376E023
            13F4A5A80CA2AE41A5DE4E7E58580F53C56CD9F871530F72DB8FF7474ADA9E1A
            A547A229424CC8D374C96FA53804463AB1AEC6DADA3B585628C600A7DBC49121
            5450AA31C0A92BD8C3E1A3455FA9BC21CA141E94507A57532CE06FBFE3FA7FF7
            CD57AD7BAD1EFA4BB95D61CAB3120E6A1FEC3D43FE78FEB5F3D528D4726D459C
            AE2EFB19D5DDE9BFF20F87FDD15CAFF61DFF00FCF1FD6BACB28DA2B3891C6195
            7045766029CE327CCAC69493459A28A2BD5360A28A28039ED734A6973730AE58
            7DE03BD73641070460D7A2632315957DA241759751B243DC579B8AC173BE786E
            653A77D51C7D15A971A0DE4249550EBED541EDA78FEFC4E3EA2BCC9529C3E246
            2E2D11D2E4FA9A36B0FE13F95260FA1A8D441F5A4A76D63FC27F2A912D6793EE
            44E7F0A1464F64166434E456760AA0927A015A96DE1FBB9882E046BEF5BF63A4
            5BD90C81B9FF00BC6BAA8E0AA4DEBA22E34DB20D174DFB245E6C83F7ADFA56BF
            6A5A2BDAA74D538F2A3A12B2B0514515A0C2B9EF11D9E516E5472386AE86A9EA
            614E9F306E9B4D6188829D36993257470D451457CE1CA25743E1CB2CB35D38E9
            C2D6143134F3246BD58E2BBBB4B75B6B648947415DF80A3CF3E67D0D2946EEE4
            F451457B67405145140152FECD2F6D9A26EBD8FA1AE2AEAD65B494C722918E87
            D6BD02AADDD9C3771ED9501F7F4AE3C561556D56E44E1CC79F49D2B36E7BD75D
            7FE1D9132D036E1E86B98BEB2B88490F137E55E6FB0A907AA31E568C29FA9AA1
            29AD19D5813953F9567CA0FA574C2E5A294A6AA4956E41556404F6AE98948AAF
            50355978D8F6A84A60F35D1145A1605DCE3D2B761FF52B58F0FDE15B30FF00AA
            5AB4867D5AF5154AF515301C29E29829E2801C2969052D00309ACFD52FA1D3AC
            A4B99D82A20CD5E91D510B310140C926BCD354BE97C63E214D36D491610B6646
            1FC58AD6953E7777B22273E55A6E3F45827D7353935CBC53E58256DD0F61EB5D
            2B75A9C5BC76B02411285441800540DD6A6A4B99DC718D909451454141451450
            014514500257927C419BCCF1095FEE2015EB66BC47C5971F68F115DBE7A3EDFC
            ABAF06AF3B9CB8B7EE2462D14515E99E70514514005145140054F65218AF6171
            D9C1FD6A034E43B5C11DA86B4047D056EE1EDA261DD41FD2A5ACDD0A7FB46896
            9267398C66B4ABC2968EC7B31774985145148A0A28A2800A28A2800A28A2800A
            28A2800A28A2800A28A2800A28A2800A28A2800A300D1450046D0C4FF7A353F8
            5466CAD8FF00CB14FCAAC5153CB17BA0B15FEC56DFF3C53F2A7476D0C4731C6A
            A7D40A9A8A1422B642B0514515430A28A28010A83D40351B5BC2DD6243F854B4
            5269302B8B3B7073E4A7E5522C312F48D47E1525149462BA05830076A28A2A80
            13F8BF0A0D09FC5F851400514514005145140051451400514514005145140051
            451400521453D541FA8A5A28B0109B685BAC4BF9527D8ADF3FEA53F2A9E8A8E4
            8F6158885B42BD224FCAA40AA3A281F852D154A297418514514C028A28A006BB
            6D42DE8335CFB789F6B11F67E871D6B7E5FF0054FF00EE9AF3E93FD637D4D706
            36BCE95B919954938EC743FF000947FD3BFEB59F7FAD4F7A86303621EA077ACC
            A2BCD9E2EACD72B664E726145152DBC0D713AC483258D60936EC89B5CDAF0E59
            6E91AE5C70BC2E6BA7AAF676EB6B6C9128E82AC57D0E1E97B2A6A27545595828
            A28ADCA0A28A2800A434B41E94015A6E86B06FC020E456F4DF74D615F743401C
            CDE46849F947E558D711273F20FCAB72EFA9AC6B8EF4AC80C99A3519F94567CC
            00ED5A53F7ACE9A8B019F2F7AA6FD6AE4DDEA9BF5A603E1FBC2B661FF54B58D0
            FDE15B30FF00AA5A00FAB5EA2A95EA2A0070A78A60A78A00514B482B9DF17788
            A3D034B770C0DC4836C6BEFEB5508B9C945132928ABB39DF1F78A4C59D1EC5F3
            349C4ACBD87A56B783B411A3E8EAF2AFFA4CE37393D47B5717E07D1E4D775C7D
            4AF32F1C6DBC96FE26AF5B9000B815D5886A9C5518FCCC295E6F9D99D71DEA93
            75ABB71DEA9B75AE33A4651451400514514005145140114EFE5C123FA2935E0B
            A84BE7DFCF21FE2727F5AF6CF105C8B4D0EEE527188C815E1721DCE49EE735DF
            828EECE0C63D521B45145779C41451450014514500140EB45140CF64F03DC79F
            E1A80672509535D277AE17E1B5D06B1B8B6CF2ADBBF3AEEEBC6AEAD51A3D6A12
            BD34145145646A14514500145145001451450014514500145145001451450014
            52556BFBD8EC2CE4BA9012918C903AD095F4065AA2B1743F115AEBDE69B74917
            CBEBBAB669B8B8BB31269EA85A28A290C28A28A0028A28A0028A28A0028A28A0
            028A28A0028A28A0028A28A0013F8BF0A2A01776EB2346D3207E3E5279A9E800
            A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800
            A28A2800A28A2800A28A280192FF00AA7FF74D79F49FEB5BEA6BD0C80460F435
            48E93644E7C915C58BC34AB5ACF6339C398E1E8AEE3FB22CBFE780A51A4D90FF
            00960B5C9FD9D3EE88F64CE2A18259DC2448589F415D5E91A50B24F3241995BF
            4AD28ADE28788E355FA0A92BAB0F838D27CCF565C69A88B45145771A05145140
            051451400507A51486802BCDF74D615F7435BB37DD35857DD0D0073977D4D635
            C77AD9BBEA6B1AE3BD0065CFDEB3A6AD19FBD674D4019F377AA6FD6AE4DDEA9B
            F5A007C3F7856CC3FEA96B1A1FBC2B661FF54B401F56BD4552BD45400E14FA60
            A70340105EDE43616925CCEC1638D7249AF0DD6B54B9F13EBA641B8AB36C893D
            05747F10FC4A6F2EBFB26D5FF7519FDE907A9F4A6FC38D105DEA2D7F2A66283E
            EE7BB57A787A6A8527565B9C5566EA4FD9C4F41F0DE8E9A2E8D0DB0037E3739F
            535A7274A98D43274AF36527277676463656466DC77AA6DD6AE5C77AA4DD690C
            6D145140094B55350BF834CB47B9B96DB1AF5AE7DFE2068C98F99CFD055469CA
            5B22255231D1B3ABA2B91FF8587A37FD35FCAA86A7F11AD7ECCCB6113B4A4705
            8600AB542A3E84BAD05D467C43D6D444BA6C4D963F3498EDED5E6C4E6A6BABA9
            6F2E1E699CB3B9C926A1AF528D3F671B1E6D59F3CAE1452668CD6A662D1499A3
            3400B452668CD002D1499A2803A2F086B0349D663676C4527C8FED5ECA8E1D43
            290548C835F3C8254E4576DE1BF1D369D02DADFAB4B12FDD61D45716268397BD
            13AF0F5947DD96C7A9515C97FC2C3D1BFE9AFE54ABF1074666C6E907B915C5EC
            6A763B3DAC3B9D6D158FA4F88AC35991D2D2425906482315B150D38BB32E3252
            57414C7758D4B3B00A3A934FAE1FE21EA33DB5AC16B131559725C8EFED554E1C
            F25114A5CAAE6DDD78BB46B5728F761987F7466A18BC6DA24AC17ED2549F5158
            DE1BF0969577A64573707CF92419237702B4EF3C0BA44F0910C4D13F6606B671
            A117CAEE42736AE7456D7705E44248255910F7539A9ABCE3C3565ABE8DE21301
            8A5368CC559B1F29F7AF47ACAAC141D93B970936B5168A28ACCA0A28A28012A9
            6AD15BCFA64F1DD3EC85970EC3B0ABB591E27FF9176F3FDCAA82BC9213D8A5E1
            6B0D2AC84FFD997266DD8DF939C57495C07C35FBB7BFF01AEFEAEBC796A357B9
            34DDE22D1451591614514500148CC15496381EA696B8FF001FEA33D9E971C30B
            15F39B0C47A5553839C945132972AB9A977E2CD1ECDCA4976A58765E6ABC7E37
            D1246DBF682BF55AC1F0AF85B4CD434D4BBBA6F3A47EABBBA56DDC781B469A32
            B1C2636ECCA6BA251A117CAEE42736AE6F5A5EDB5EC624B699645F553562BCD3
            46D3B56D07C48228E295ED4BED66C7CA47AD7A5D63560A0FDD7745424E4B5168
            A28ACCB0A28A2800AA97BA85AE9F187BA9563527009AB7595AD6876FAE40915C
            33054391B69C6D7D7613BDB43CDF52D42297C65F698E7CC1E6A9DC0F18AF48B6
            D7F4CB9952186E91E46E0283D6BCB6FB4982DBC51FD9A85BC9F315727AE0D7A0
            69DE0AD3F4FBC8AEA2794BA72013C57762153E58DFB6873D372BB3A7A28A2B80
            E90A28A2800A28A2801335997DE20D334E245C5D22B7F74726B1FC69E207D2AC
            D6DEDCE279BBFF0074573FE1FF0006BEAD10BED465708FCA8CF2DEF5D10A2B97
            9E6EC8CA5377B44EA17C71A23363ED047B95AD8B3D4ED3504DD6B3A483D8D60C
            9E02D1DE3DAAAEA7FBC0D71FAA6997DE0FD4639EDE663131F95877F6354A952A
            9A41EBE62729C75923D6696B3745D49756D2E1BA5EAC3E61E86B4AB95A69D99A
            A77D428A28A06145145002550B8D66C2D6EBECD35C224BD369EB5A15E4BE3391
            A2F15B489F7970456D4292A92E533A93E5573D3AEF52B4B18F7DCCE918EDB8F5
            ACB1E33D10BEDFB5F3F4AC1D2FC2D3EB6ABA86B3339DE32B183D056ADC781347
            920658E368DF1C30355C9462ED26EE2E69BD523A0B5BDB6BD8FCCB699645F553
            515EEAD63A72E6EAE5233E84F35E4F6B7D7DE1BD5E782DD89604A6DEC7D0D75B
            A6F834DFA8BDD6669249A4F9B667A554F0F186B27A095472D12D4D94F19688EF
            B05D8CFA915B56F730DD44248245910F42A735CBEA1E04D2E4B57FB323452804
            839CD73BE08BE9ECB5F6D39DC98DC952A4F008A5ECA9CA0E507B0F9E49DA47A8
            514515CC6A14514500145145001546FB55B2D39775D5C247EC4F3535E4AD05A4
            D2AA966552401DEBCCB4ED16FF00C49ADC926A2258E3CEE258638F415B52A719
            5DC9D9222726B44760DE38D115B02763EE16ADD9F8A748BD70915DA873D9B8AA
            A9E08D11130D6E58FA96AE53C61E1BB1D1E08EE6CDCA316C7964FF002AD230A3
            37CAAF721CA715767A70218020E4506B9DF05DF497BE1F8CCAC59D0EDC9AE88F
            4AE79C7964E2CD62EEAE579BEE9AC2BEE86B766FBA6B0AFBA1A919CE5DF5358D
            71DEB66EFA9AC6B8EF401973F7ACD9FBD694FDEB0B5490AA851DE84AE0579E78
            C123755469509EB522408630C7926A37897B0C5376112C04161835B50FFAA5AE
            7EDC324C300E2BA087FD52D2633EAD7A8AA47A8E80145737E33F10AE87A4308D
            87DA661B631E9EF5BD71711DADBC93CAC15114B126BC37C43AC49AFEB525CB13
            E4A9DB1AFA0AEAC250F693BBD91857ABC9133A349279B272F2CADF8926BDDBC3
            3A4AE8FA2416C07CFB7739F526BCBFC07A5FF69F88D6475CC36C379FAF6AF681
            5BE6157554D7432C2C34E7607A543274A949C0AAB3C80035E71D852B83C9AA4C
            79A92E26193CD5269C67AD004F9A4CD57F3C7AD1E70F5A00E3BE23DD32585B5B
            A9C2C8D93F85798B1E6BD4BC7764F7DA52CD10CBC27240F4AF2C73CD7A9846BD
            99E66253F697625156A2883C608A7FD9C7A57473231E5653A2AE7D9C51F67147
            320E5653A2AE7D9C51F67147320E5653A2AE7D9C51F67147320E5653A2AE7D9C
            51F67147320E5653A2AE7D9C51F67147320E5653A2AE7D9C51F67147320E5652
            A51C1AB6600064F4AA648DE71D334D4903563A8F045D3DBF88E00A7E590156AF
            6106BC93C0B60F3EAE2ED9488A11D7D4D7A979C3D6BCCC5B4EA6877E11350D4B
            39AC4F116810EBD6AB1B36C953946F4AD2F387AD709E359F53B3BB8EEAD6E255
            81860853C0358D14DCD72BB3379B56D4A87C2BE23D2C93653965F48DF147F6BF
            8BB4E3FBD8E5655F54C8ADAD1BC716335A46979218A6518627A1F7AD0B8F1868
            D14649B957F60339AEA752A5ED285CC94636BA665E85E3B6BBBC4B4BF8446EE7
            6875F5AEE322BC795FFB73C58B359C25236903600E8077AF585942A019E82B1C
            4C2316B9742E936EF72D6697355BCE1EB479C3D6B9CD4B39A4CD57F387AD1E70
            F5A00B19AC8F139FF8A7AF3FDCABFE78F5AC8F12CC0F87EEC67F82AE9FC68996
            CCE7BE1A9F96F7F0AF40CD79D7C38902ADEFE15DEF9C3D6B4C4FF15934BE0459
            CD19AADE70F5A3CE1EB581A1673499AAFE70F5A3CE1EB401633591AF68B0EB96
            3F6791B6B03946F4357BCE1EB5C578DE5D46DDA2BBB39E548B1B5C21E95A524D
            CD59D889EDA99EDE11F10698C4D8CFB97FD86C527F69F8BF4EFF005892B28F55
            CD6AE83E38B46B38E1BF90A4C83058F46F7AD69BC5FA347192D74ADEC066BAA5
            52A5ED28DCC94636BA7631B47F1EC92DDA5B6A30042C76EF5E307DEBBC0C0804
            7435E397D3AF883C4AAF630955661D07A77AF588A4D90A293C8502B2C44231B3
            5A5CBA4DBBA65CCD2E6AB79C3D68F387AD731A9673466AB79C3D68F387AD0058
            CD04D57F387AD1E70F5A00F30D5BFE47EFFB6CB5EACA7E51F4AF22D7E716BE34
            69E4076AC8ADF8577F6BE28D32EDE28A2B90D23F45C575E222DC22D2E8614DA5
            266FE697355BCE1EB479C3D6B90DCB39A3355BCE1EB479C3D6802CE693355FCE
            1EB479C3D6803CD7E20976D7E207A796315A569A778B3EC9179179188B68DA3D
            AAC78DB487D46D92EEDD774B0F503A9159FE1DF1B47676C965A8865F2F857C76
            F7AEF5272A4B955EC733569BB97BFB3BC63FF3FC9556FF00C3BE27D4E1115DDC
            C522039009EF5BD278D74648F70BADDEC05725A978B751D63514874ADF1A6700
            0EA7DCD4D3751BBD921C9452DCECFC27A55CE8FA5B5B5D152DBF2369ED5D066B
            234A135BE9F1477329926C65D8FAD5EF3C7AD724DB726D9BC55916734B9AADE7
            0F5A3CE1EB5232CE693355FCE1EB479C3D6802C66BCA7C5AA1FC6414F42CB9AF
            4EF387AD79778A2407C64A7FDA5AEAC27C6FD0C6B6C7AAC002DBC600C00A2A4C
            D548A61E4A73FC229FE70F5AE5363CC6F915FE20052060CE38AF551800015E51
            76FF00F17001FF00A6C2BD3FCF1EB5D3897A47D0C696ECB0C7E53F4AF2AD1B8F
            1F903FE7B357A699C6D3CF6AF2ED21C0F1E13FF4D5A9E1BE19FA055DD1EB59A5
            CD56F387AD1E70F5AE5362CE68CD56F387AD1E70F5A00B39A4CD57F387AD1E70
            F5A004BDBB8ACAD24B899808D064D7052F8D354D42E5A2D26CC6DEC76E4D743E
            2C8E4BBF0FDC470E4B75C0EF8AE33C1BAFDA68F2CF15E0D9BF187C74AEBA308F
            B372B5D98D493E64B635D62F1A5E7DE7F294FD0564EBFE1FD4ACEC3EDBA8DE79
            AFBB01739AECE4F1968F1A6E3760FB015C878975F9F5FB565B581C59C272CE47
            5AD294A7CCBDDB2266A36DEE74DF0FCFFC480FFD7435D61AF39F047886D2D2D3
            EC1331595E4F938EB9AEFBCF1EB5CD884D547734A6D38A098FCB5877DDEB5659
            862B1EF5F39AC4D0E7EEFA9AC6B8EF5B377D4D635C77A00CB9FBD645EC0265C1
            E08E86B5E7EF581A9F9A8E1D5885EF8A6B713283DBCB1FDD3C7B542CD20EB568
            5CAB200C706A17917D69BB804137CE030ADE87FD52D73A83CC986D1DEBA287FD
            4AFD29303EAD7A8AA47ACDD57518B4BD367BB94E1635247B9A495DD903765738
            AF88DE20F2E15D22DDFE7939971D87A579D102187DCD4D3DD4BAA6A335ECC496
            76279AAD2E66B9488772057D050A4A94144F2AACF9E47AEFC35D37EC9A01BA65
            FDE5C3673ED5DA138AA1A3DB0B2D1ED6DC0C6C8C0A9E69828EB5E1D69F3CDC8F
            4E9C796290B34C1475AC6BDBE0B9E6A3D4351080FCD5CADFEA9927E6ACCB342E
            750193CD536BFF007AC196F893D6A13787D6803A2FB7FBD1F6FF007AE69AF428
            24B605409A8B4EDFBB3FBB1FC5EBF4A2C0754D7AACA43720F515CCEA5E19B0BD
            91A4858C2EDC9C74A97ED67D68FB59F5AA8CE51774C994232DD1909E129A13FB
            BBC523D08A7FFC23777FF3F117E55A9F6B3EB47DACFAD69F58A9DCCFD8C0CBFF
            00846EEFFE7E22FCA8FF00846EEFFE7E22FCAB53ED67D68FB59F5A3EB13EE3F6
            3032FF00E11BBBFF009F88BF2A3FE11BBBFF009F88BF2AD4FB59F5A3ED67D68F
            AC4FB87B18197FF08DDDFF00CFC45F951FF08DDDFF00CFC45F956A7DACFAD1F6
            B3EB47D627DC3D8C0CBFF846EEFF00E7E22FCA8FF846EEFF00E7E22FCAB53ED6
            7D68FB59F5A3EB13EE1EC6065FFC23777FF3F117E547FC23777FF3F117E55A9F
            6B3EB47DACFAD1F589F70F63032FFE11BBBFF9F88BF2A3FE11BBBFF9F88BF2AD
            4FB59F5A3ED67D68FAC4FB87B18192DE16B99461AED147B0A9AD7C1D6D1B86B8
            B9320F40315A1F6B3EB47DACFAD1EDEA770F610EC6D5A3416302C36E81107615
            63EDDEF5CEFDACFAD1F6B3EB58B77344AC747F6EF7A8A6B88AE2231CAA1D0F50
            6B07ED67D68FB59F5A06171E1AD2A762CAAD1E7FBA6A38FC2BA5A3659A47F626
            A4FB59F5A3ED67D6B4F6B3EE4F247B1AD63159E9C9B6DA254F71D4D5DFB7FBD7
            39F6B3EB47DACFAD66DB7AB292B1D1FDBBDE8FB77BD739F6B3EB47DACFAD0074
            7F6EF7A3EDDEF5CE7DACFAD1F6B3EB401D1FDBBDEA1B99A2BB81E1986E8D8608
            AC2FB59F5A3ED67D6803534FB7B2D2F7FD923D9BFAF3D6AF7DBBDEB9CFB59F5A
            5FB59F5A1BBEAC4958E8FEDDEF47DBBDEB9CFB59F5A3ED67D6819D1FDBBDE8FB
            77BD739F6B3EB47DACFAD00747F6EF7A8E5BA8E68CA480329EA0D607DACFAD1F
            6B3EB400B73E1CD2AE1CB0468C9FEE9A893C2BA5A9C9691BD89A93ED67D68FB5
            9F5AD3DACFB93C91EC6A58DBD969CB8B68550FAF7ABDF6EF7AE77ED67D68FB5F
            BD66DB7AB1A563A3FB77BD1F6EF7AE73ED67D68FB59F5A06747F6EF7A3EDDEF5
            CE7DACFAD1F6B3EB401D1FDBBDE8FB7FBD739F6B3EB47DACFAD005DD474EB1D5
            896B84F9C7018706AAD8E81A7E9F749711B39743919351A5DFDEE7D294DD9F5A
            B552495AFA13CAAF73A3FB77BD1F6EF7AE73ED67D68FB59F5A828E8FEDDEF47D
            BBDEB9CFB59F5A3ED67D6803A3FB77BD1F6EF7AE73ED67D68FB59F5A00E88DF0
            239358F7DA46997EE5E4842B9EACBC555FB59F5A4FB59F5A6A4E2EE989A4F723
            5F0A696AD92F211E84D6C585AD8E9A3FD1A1553FDEEF599F6B3EB49F6B3EB552
            A93968D89452D91D27DBBDE8FB77BD739F6B3EB47DACFAD414747F6EF7A3EDDE
            F5CE7DACFAD1F6B3EB401D1FDBBDE8FB77BD739F6B3EB47DACFAD00745F6FF00
            7ACCB9D3F4EBBBCFB54D16E9B8F9B3543ED67D693ED67D69A6D6C2693DCE8C5F
            000007814BF6EF7AE73ED67D68FB59F5A432FB5869EF7DF6D68BF7F9DDBB3DEB
            4FEDDEF5CEFDAFDE8FB59F5A1B6F712491D11BEED9ACC8B4FD3A1BEFB624389F
            39DD9EF59FF6B3EB4BF6B3EB4D36B606933A3FB77BD1F6EF7AE73ED67D68FB59
            F5A433A3FB77BD1F6EF7AE73ED67D68FB59F5A00E8FEDDEF47DBBDEB9CFB59F5
            A3ED67D6803A237C08C13C562DE68BA5DEC8647842B9EA578AAFF6B3EB49F6B3
            EB4E3271D531349EE3E1F0E6931302632F8FEF1AD74FB2C76C6DD624111182B8
            E0D637DACFAD1F6B3EB4E5394B760A296C5B8749D2A1B859E3B70B229C839E95
            AFF6EF7AE73ED67D697ED67D693937B82496C740D7B91D6A9CF3EE079ACBFB5F
            BD34DCE7BD2185C9CE6B26E3BD684926E159F71CE68032E7EF59970030208C8A
            D39FBD66CD4019335B4793818AAAD0A83DEB426AA6FD69DD80E8142B0C0ADA87
            FD52D6343F7856CC3FEA96901F55BD795FC4AD6BCEB88F4985B85F9A4C7AF615
            E95AA5E258584F72E70B1A935E072DC3EA5AACF7929C9762D5DD81A5CD3E77D0
            E5C4D4E58F2A00A2183E82A1D2F0FAC5AEEE8655CFE7525EB6D871EB59F0CE6D
            EE2394754606BD6DE2CE08EE7D1C6658E05E780A2B0F52D4D6353F35668F1143
            75A5C53C6E086419E7A1AE4755D68B3300D5F38D59D99EC2D517352D5F712035
            73D3DF16279ACDB8BF2EC79ACF9B508E319771F4A43360DCE7BD56B9D522B65C
            B365BB015CFDC6AEEFF2C408CF7EF4B6B6C5984D707737606AD46DAB26F7D8D3
            8A49F506F3272521EC83BFD6B496608A157802B344F81479FEF52DDC691A9F68
            F7A3ED1EF597E7FBD1E7FBD219A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE
            8FB47BD65F9FEF479FEF401A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB
            47BD65F9FEF479FEF401A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47B
            D65F9FEF479FEF401A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65
            F9FEF479FEF401A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9F
            EF479FEF401A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9FEF4
            79FEF401A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9FEF479F
            EF401A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9FEF479FEF4
            01A9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9FEF479FEF401A
            9F68F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9FEF479FEF401A9F6
            8F7A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9FEF479FEF401A9F68F7
            A3ED1EF597E7FBD1E7FBD006A7DA3DE8FB47BD65F9FEF479FEF401A8B71F7B9A
            5FB47BD65ACFD79A3CFF007A00D3FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF
            47DA3DEB2FCFF7A3CFF7A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47D
            A3DEB2FCFF007A3CFF007A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47
            DA3DEB2FCFF7A3CFF7A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47DA3
            DEB2FCFF007A3CFF007A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47DA
            3DEB2FCFF7A3CFF7A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47DA3DE
            B2FCFF007A3CFF007A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47DA3D
            EB2FCFF7A3CFF7A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47DA3DEB2
            FCFF007A3CFF007A00D4FB47BD1F68F7ACBF3FDE8F3FDE80353ED1EF47DA3DEB
            2FCFF7A3CFF7A00D4FB47BD2FDA3DEB2BCFF007A5F3FDE80353ED19EF51C9206
            159FE7FBD2F9FEF4004FDEB327EF57E49030AA33F7A00CE9BBD537EB5766EF54
            9FAD003E1FBC2B661FF54B58D0FDE15B30FF00AA5A00F74F893A9791A5A5921C
            34C72DF415E65691EC873EB5D3F8FEF3ED5AE48B9CAC6028AE73212303DABD9C
            3C792923CCAF2E6994B536C2AD62CF3800F35A7A8CA1E3233C8AE62E666048AA
            9D751560A74EE5E875DBBB2056294EC3D54F4A8A6F10CF2F5519AC77724D3720
            75AF36A4A32773B629A562EC9A8DC4BFC5B47B5420B3B606598D4481A43C703D
            6ADC5B62181D7D6B2724B62ED72CDBC2B17CCDCBFF002AB7E7567F9DEF479D59
            B77DCA4AC6879DEF479DEF59FE77BD1E77BD03343CEF7A3CEF7ACFF3BDE8F3BD
            E80343CEF7A3CEF7ACFF003BDE8F3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE803
            43CEF7A3CEF7ACFF003BDE8F3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE80343CE
            F7A3CEF7ACFF003BDE8F3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3
            CEF7ACFF003BDE8F3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7
            ACFF003BDE8F3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7ACFF
            003BDE8F3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7ACFF003B
            DE8F3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7ACFF003BDE8F
            3BDE80343CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7ACFF003BDE8F3BDE
            80343CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7ACFF003BDE8F3BDE8034
            3CEF7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7ACFF003BDE8F3BDE80343CEF
            7A3CEF7ACFF3BDE8F3BDE80343CEF7A3CEF7ACFF003BDE8F3BDE80343CEF7A3C
            EF7ACFF3BDE8F3BDE803404DD79A3CEF7ACF12F5A3CEF7A00D0F3BDE8F3BDEB3
            FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A
            3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A
            00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3
            BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3
            BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3F
            CEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3
            CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A0
            0D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3BDEB3FCEF7A3CEF7A00D0F3B
            DE8F3BDEB3FCEF7A3CEF7A00D0F3BDE8F3FDEB3FCEF7A3CEF7A00D1F3FDEA377
            C8AA7E77BD1E7500135527EB565DF3559FAD003E1FBC2B661FF54B58D0FDE15B
            30FF00AA5A00ED3C4771BF519E42792E4D62DC5E011E41ED57BC6BBAC7559908
            F958EE53EB5C44D7CE0100F15EB4AAAE456383D9DE5A966F6F4B13CD644B3163
            D69B24AF21E948B6F23F27815E7CE6DB3AA10B111724F14F54EEDF954EB6FB7A
            0A77926B26CD2C303607146F34FF0024FA51E49F4A4319BCD1BCD3FC93E94792
            7D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD
            3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D2
            8019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC
            93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D2801
            9BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E
            947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BC
            D1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947
            927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1B
            CD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927
            D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3
            FC93E947927D280181CD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28
            019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC9
            3E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019
            BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E9
            47927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD
            1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E9479
            27D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BC
            D3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D
            28019BCD1BCD3FC93E947927D28019BCD1BCD3FC93E947927D28019BCD349CD4
            BE49F4A7084FA500100F9856CC2BFBA5AA10C382322B621881856803B6F17C11
            5C6EF3903E3A66BCE24B583CD23CB18FA9A28AD20FDD225B8F5B6854711814EF
            263FEED14566CA41E4C7FDDA3C98FF00BB45140C3C98FF00BB47931FF768A280
            0F263FEED1E4C7FDDA28A003C98FFBB47931FF00768A2800F263FEED1E4C7FDD
            A28A003C98FF00BB47931FF768A2800F263FEED1E4C7FDDA28A003C98FFBB479
            31FF00768A2800F263FEED1E4C7FDDA28A003C98FF00BB47931FF768A2800F26
            3FEED1E4C7FDDA28A003C98FFBB47931FF00768A2800F263FEED1E4C7FDDA28A
            003C98FF00BB47931FF768A2800F263FEED1E4C7FDDA28A003C98FFBB47931FF
            00768A2800F263FEED1E4C7FDDA28A003C98FF00BB47931FF768A2800F263FEE
            D1E4C7FDDA28A003C98FFBB47931FF00768A2800F263FEED1E4C7FDDA28A003C
            98FF00BB47931FF768A2800F263FEED1E4C7FDDA28A003C98FFBB47931FF0076
            8A2800F263FEED1E4C7FDDA28A003C98FF00BB47931FF768A2800F263FEED1E4
            C7FDDA28A003C98FFBB47931FF00768A2800F263FEED1E4C7FDDA28A003C98FF
            00BB47931FF768A2800F263FEED1E4C7FDDA28A003C98FFBB47931FF00768A28
            00F263FEED1E4C7FDDA28A003C98FF00BB47931FF768A2800F263FEED1E4C7FD
            DA28A003C98FFBB47931FF00768A2800F263FEED1E4C7FDDA28A003C98FF00BB
            47931FF768A2800F263FEED1E4C7FDDA28A003C98FFBB47931FF00768A2800F2
            63FEED1E4C7FDDA28A003C98FF00BB47931FF768A2800F263FEED1E4C7FDDA28
            A003C98FFBB47931FF00768A2800F263FEED1E4C7FDDA28A003C98FF00BB4793
            1FF768A2800F263FEED1E4C7FDDA28A003C98FFBB47931FF00768A2800F263FE
            ED1E4C7FDDA28A003C98FF00BB47931FF768A2800F263FEED1E4C7FDDA28A003
            C98FFBB4A218FF00BB45140166286323EEFEB5A30411F92BF2FAF7F7A28A00FF
            D9}
          Stretch = True
        end
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 333
    Top = 104
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 293
    Top = 104
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 305
    Top = 210
  end
end

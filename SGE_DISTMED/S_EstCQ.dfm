object Frm_EstCQ: TFrm_EstCQ
  Left = 297
  Top = 261
  BorderStyle = bsSingle
  Caption = 'Estatisticas Controle de Qualidade'
  ClientHeight = 270
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 384
    Height = 270
    ActivePage = TsFiltros
    Align = alClient
    TabOrder = 0
    object TsFiltros: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 320
        Height = 20
        Caption = 'Estatisticas para Controle de Qualidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 56
        Width = 36
        Height = 13
        Caption = 'Periodo'
      end
      object Label3: TLabel
        Left = 200
        Top = 51
        Width = 6
        Height = 13
        Caption = #224
      end
      object Label4: TLabel
        Left = 16
        Top = 128
        Width = 27
        Height = 13
        Caption = 'Filtros'
      end
      object DateEdit1: TDateEdit
        Left = 72
        Top = 48
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object Button1: TButton
        Left = 128
        Top = 216
        Width = 75
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 1
        OnClick = Button1Click
      end
      object DateEdit2: TDateEdit
        Left = 216
        Top = 48
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
      end
      object rgTipo: TCheckListBox
        Left = 13
        Top = 146
        Width = 340
        Height = 64
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Vnd sem Lote'
          'Vnd sem Transportadora'
          'Dev. Cliente')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 3
      end
      object rgModelo: TRadioGroup
        Left = 16
        Top = 84
        Width = 289
        Height = 41
        Caption = 'Modelo'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Analitico'
          'Sintetico')
        TabOrder = 4
      end
    end
    object TsAnalitico: TTabSheet
      Caption = 'Analitico'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 63
        Top = -22
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = SrcAnalitico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PrintEmpty = False
        ShowProgress = False
        BeforePrint = RLReport1BeforePrint
        object RLGroup1: TRLGroup
          Left = 39
          Top = 115
          Width = 716
          Height = 90
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          DataFields = 'TIPO'
          object RLBand1: TRLBand
            Left = 0
            Top = 0
            Width = 716
            Height = 40
            BandType = btTitle
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            object rlChave: TRLLabel
              Left = 0
              Top = 21
              Width = 64
              Height = 18
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CHAVE'
            end
            object RLLabel2: TRLLabel
              Left = 74
              Top = 3
              Width = 45
              Height = 16
              Caption = 'TIPO..:'
            end
            object rlnumnf: TRLLabel
              Left = 64
              Top = 21
              Width = 72
              Height = 18
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'NUM. NF'
            end
            object rldatanf: TRLLabel
              Left = 136
              Top = 21
              Width = 72
              Height = 18
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'DATA NF'
            end
            object rlcliente: TRLLabel
              Left = 208
              Top = 21
              Width = 361
              Height = 18
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = True
              Borders.DrawBottom = False
              Caption = 'CLIENTE'
            end
            object rltransp: TRLLabel
              Left = 569
              Top = 21
              Width = 150
              Height = 18
              Alignment = taCenter
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = True
              Borders.DrawRight = False
              Borders.DrawBottom = False
              Caption = 'TRANSPORTADORA'
            end
            object RLDBText1: TRLDBText
              Left = 120
              Top = 3
              Width = 53
              Height = 16
              DataField = 'NOMTIP'
              DataSource = SrcAnalitico
            end
          end
          object RLBand2: TRLBand
            Left = 0
            Top = 40
            Width = 716
            Height = 18
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            AfterPrint = RLBand2AfterPrint
            object RLDBText2: TRLDBText
              Left = 0
              Top = 1
              Width = 64
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P1CHAVE'
              DataSource = SrcAnalitico
              Holder = rlChave
            end
            object RLDBText3: TRLDBText
              Left = 64
              Top = 1
              Width = 72
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P1NUMNF'
              DataSource = SrcAnalitico
              Holder = rlnumnf
            end
            object RLDBText4: TRLDBText
              Left = 136
              Top = 1
              Width = 72
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'P1DATANF'
              DataSource = SrcAnalitico
              Holder = rldatanf
            end
            object RLDBText5: TRLDBText
              Left = 208
              Top = 1
              Width = 361
              Height = 16
              AutoSize = False
              Borders.Sides = sdCustom
              Borders.DrawLeft = False
              Borders.DrawTop = False
              Borders.DrawRight = True
              Borders.DrawBottom = False
              DataField = 'NOMCLI'
              DataSource = SrcAnalitico
              Holder = rlcliente
            end
            object RLDBText6: TRLDBText
              Left = 569
              Top = 1
              Width = 150
              Height = 16
              AutoSize = False
              DataField = 'NOMTRA'
              DataSource = SrcAnalitico
              Holder = rltransp
            end
          end
          object RLBand6: TRLBand
            Left = 0
            Top = 58
            Width = 716
            Height = 31
            BandType = btSummary
            BeforePrint = RLBand6BeforePrint
            object RLLabel6: TRLLabel
              Left = 328
              Top = 8
              Width = 99
              Height = 16
              Caption = 'Total Ocorrecias'
            end
            object rlTotalOco: TRLLabel
              Left = 434
              Top = 8
              Width = 60
              Height = 16
              Alignment = taRightJustify
              Caption = '00000000'
            end
            object RLLabel7: TRLLabel
              Left = 496
              Top = 8
              Width = 8
              Height = 16
              Caption = '/'
            end
            object rlTotalPed: TRLLabel
              Left = 507
              Top = 8
              Width = 62
              Height = 16
            end
          end
        end
        object RLBand5: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 76
          BandType = btTitle
          object RLLabel3: TRLLabel
            Left = 208
            Top = 32
            Width = 199
            Height = 16
            Caption = 'Relatorio de Estatisticas de Erros'
          end
          object RLDBText7: TRLDBText
            Left = 0
            Top = 0
            Width = 81
            Height = 16
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 654
            Top = 42
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 670
            Top = 59
            Width = 112
            Height = 16
            Info = itLastPageNumber
          end
          object RLLabel5: TRLLabel
            Left = 661
            Top = 59
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 573
            Top = 59
            Width = 87
            Height = 16
            Alignment = taRightJustify
            Info = itPageNumber
          end
        end
        object RLBand10: TRLBand
          Left = 39
          Top = 205
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLSystemInfo4: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo5: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object banner: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
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
    object TsSintetico: TTabSheet
      Caption = 'TsSintetico'
      ImageIndex = 2
      object RLReport2: TRLReport
        Left = 6
        Top = -9
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = SrcSintetico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PrintEmpty = False
        ShowProgress = False
        object RLBand3: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 39
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 0
            Top = 21
            Width = 64
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'CHAVE'
          end
          object RLLabel4: TRLLabel
            Left = 64
            Top = 21
            Width = 72
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'NUM. NF'
          end
        end
        object RLBand4: TRLBand
          Left = 39
          Top = 78
          Width = 716
          Height = 18
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText8: TRLDBText
            Left = 0
            Top = 1
            Width = 64
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TIPO'
            DataSource = SrcSintetico
          end
          object RLDBText9: TRLDBText
            Left = 64
            Top = 1
            Width = 72
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'TOTAL'
            DataSource = SrcSintetico
          end
        end
        object RLBand8: TRLBand
          Left = 39
          Top = 96
          Width = 716
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLSystemInfo8: TRLSystemInfo
            Left = 643
            Top = 0
            Width = 73
            Height = 16
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Info = itHour
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 634
            Top = 0
            Width = 6
            Height = 14
            Caption = '/'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLSystemInfo9: TRLSystemInfo
            Left = 558
            Top = 0
            Width = 75
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 150
            Top = 1
            Width = 394
            Height = 14
            Caption = 
              #169'Intersys - Sistemas de Gest'#227'o Empresarial - (62) 3247 - 1560 /(' +
              '62) 3247 - 1580'
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
  end
  object SrcAnalitico: TDataSource
    DataSet = QryAnalitico
    Left = 52
    Top = 192
  end
  object QryAnalitico: TQuery
    OnCalcFields = QryAnaliticoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select P1CHAVE, P1NUMNF, P1DATANF, P1CODCLI, P1CODTRA, 0 AS TIPO' +
        ' from ('
      ' SELECT unique P2CHAVE AS CHAVE, P2CODEMP as CODEMP'
      ' FROM CADP02,CADP02_LOTES '
      ' WHERE P2LM_CHAVE(+)=P2CHAVE AND P2LM_CODPRO(+)=P2CODPRO '
      '  AND P2LM_CODEMP(+)=P2CODEMP AND P2LM_LOTSEQ(+)=P2LOTSEQ '
      '  AND DECODE(P2LOTE,NULL,P2LM_LOTE,P2LOTE) IS NULL'
      '  AND P2CHAVE IN (SELECT UNIQUE P1CHAVE FROM CADP01 WHERE '
      '  P1EMIDOC>0)), CADP01'
      '  where P1CHAVE=CHAVE and P1CODEMP=CODEMP')
    Left = 20
    Top = 192
    object QryAnaliticoP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object QryAnaliticoP1NUMNF: TFloatField
      FieldName = 'P1NUMNF'
    end
    object QryAnaliticoP1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
    end
    object QryAnaliticoP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
    end
    object QryAnaliticoP1CODTRA: TFloatField
      FieldName = 'P1CODTRA'
    end
    object QryAnaliticoTIPO: TFloatField
      FieldName = 'TIPO'
    end
    object QryAnaliticoNOMCLI: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMCLI'
      Size = 100
      Calculated = True
    end
    object QryAnaliticoNOMTRA: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMTRA'
      Size = 100
      Calculated = True
    end
    object QryAnaliticoNOMTIP: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMTIP'
      Size = 100
      Calculated = True
    end
  end
  object QrySintetico: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select TIPO, COUNT(*) AS TOTAL from ('
      
        '  select P1CHAVE, P1NUMNF, P1DATANF, P1CODCLI, P1CODTRA, 0 as TI' +
        'PO from ( '
      '  select unique P2CHAVE AS CHAVE, P2CODEMP as CODEMP '
      '  from CADP02,CADP02_LOTES '
      '  where P2LM_CHAVE(+)=P2CHAVE and P2LM_CODPRO(+)=P2CODPRO '
      '   and P2LM_CODEMP(+)=P2CODEMP and P2LM_LOTSEQ(+)=P2LOTSEQ '
      '   and decode(P2LOTE,NULL,P2LM_LOTE,P2LOTE) is null '
      '    and P2CHAVE in (select UNIQUE P1CHAVE from CADP01  '
      
        '   where P1EMIDOC>0 and P1STATUS<9 and P1DATDOC>='#39'01/07/2013'#39')),' +
        ' CADP01 '
      '   where P1CHAVE=CHAVE and P1CODEMP=CODEMP '
      ' union '
      
        ' select P1CHAVE, P1NUMNF, P1DATANF, P1CODCLI, P1CODTRA, 1 as TIP' +
        'O '
      ' from CADP01 '
      ' where P1EMIDOC>0 and P1STATUS<9 and P1CODTRA=0 '
      ' and P1DATDOC>='#39'01/07/2013'#39
      ') '
      'group by Tipo'
      'order by tipo')
    Left = 20
    Top = 224
    object QrySinteticoTIPO: TFloatField
      FieldName = 'TIPO'
    end
    object QrySinteticoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object SrcSintetico: TDataSource
    DataSet = QrySintetico
    Left = 52
    Top = 224
  end
end

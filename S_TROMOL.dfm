inherited Frm_TroMol: TFrm_TroMol
  Left = 267
  Top = 154
  Width = 735
  Height = 531
  Caption = 'ORDEM DE SERVICO PARA TROCA DE MOLDE'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 727
    inherited lbl_emp: TLabel
      Left = 682
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'C'#243'digo')
    end
    inherited Edit1: TMaskEdit
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl
    Width = 727
    Height = 362
    inherited tsCad: TTabSheet
      object Label6: TLabel
        Left = 472
        Top = 8
        Width = 89
        Height = 13
        Cursor = crHandPoint
        Hint = 'Click - P/Cadastrar Novo Tipo de Molde'
        Caption = 'Saida do Molde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label6Click
      end
      object Label7: TLabel
        Left = 451
        Top = 67
        Width = 136
        Height = 13
        Caption = 'Estado de Conservacao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 451
        Top = 267
        Width = 116
        Height = 13
        Caption = 'Hora / Minuto Saida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 472
        Top = 132
        Width = 73
        Height = 13
        Cursor = crHandPoint
        Caption = 'Encarregado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Label10Click
      end
      object Label11: TLabel
        Left = 447
        Top = 187
        Width = 122
        Height = 13
        Cursor = crHandPoint
        Caption = 'Gerente de Producao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        OnClick = Label11Click
      end
      object Label13: TLabel
        Left = 500
        Top = 294
        Width = 13
        Height = 13
        Caption = ' : '
      end
      object Label9: TLabel
        Left = 326
        Top = 271
        Width = 84
        Height = 13
        Caption = 'Data Da Saida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 307
        Height = 334
        Align = alLeft
        TabOrder = 8
        object Label1: TLabel
          Left = 96
          Top = 3
          Width = 103
          Height = 13
          Cursor = crHandPoint
          Caption = 'Entrada Do Molde'
          DragCursor = crDefault
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = Label1Click
        end
        object Label2: TLabel
          Left = 8
          Top = 62
          Width = 100
          Height = 13
          Caption = 'Data Entrada.....:'
        end
        object Label3: TLabel
          Left = 126
          Top = 299
          Width = 49
          Height = 13
          Cursor = crHandPoint
          Hint = 'Click - P/ Cadastro Imobilizado'
          Caption = 'Maquina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label3Click
        end
        object Label4: TLabel
          Left = 82
          Top = 79
          Width = 130
          Height = 13
          Cursor = crHandPoint
          Hint = 'Click - P/Cadastrar Novo Tipo de Molde'
          Caption = 'Tipo Molde de Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label4Click
        end
        object Label5: TLabel
          Left = 127
          Top = 119
          Width = 48
          Height = 13
          Cursor = crHandPoint
          Hint = 'Click - P/ Cadastra Nova Situacao'
          Caption = 'Verificar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = Label5Click
        end
        object Label12: TLabel
          Left = 11
          Top = 30
          Width = 96
          Height = 13
          Caption = 'Numero............:'
        end
        object Label14: TLabel
          Left = 260
          Top = 57
          Width = 13
          Height = 13
          Caption = ' : '
        end
        object Label15: TLabel
          Left = 240
          Top = 32
          Width = 52
          Height = 13
          Caption = 'Hh  : Mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBGrid2: TDBGrid
          Left = 3
          Top = 135
          Width = 299
          Height = 163
          Ctl3D = False
          DataSource = DSSITUACAO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnCellClick = DBGrid2CellClick
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'OK'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SNOMSITMAQ'
              Title.Caption = 'Nome Situacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SCODSITMAQ'
              Title.Caption = 'Codigo Situacao'
              Visible = True
            end>
        end
        object ComboBox1: TComboBox
          Left = 5
          Top = 96
          Width = 296
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 5
        end
        object ComboBox5: TComboBox
          Left = 4
          Top = 316
          Width = 295
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 7
          OnExit = ComboBox5Exit
        end
        object BUSCADTENT: TDateTimePicker
          Left = 209
          Top = 54
          Width = 21
          Height = 21
          Date = 38706.479504120400000000
          Time = 38706.479504120400000000
          TabOrder = 2
          TabStop = False
          OnChange = BUSCADTENTChange
        end
        object HORAENT: TMaskEdit
          Left = 236
          Top = 54
          Width = 22
          Height = 19
          Ctl3D = False
          EditMask = '99;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Text = '  '
          OnExit = HORAENTExit
        end
        object MINUTOENT: TMaskEdit
          Left = 272
          Top = 54
          Width = 22
          Height = 19
          Ctl3D = False
          EditMask = '99;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 2
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          Text = '  '
          OnExit = MINUTOENTExit
        end
        object CODIGO: TEdit
          Left = 109
          Top = 24
          Width = 121
          Height = 19
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = CODIGOExit
        end
        object DATAENT: TMaskEdit
          Left = 108
          Top = 55
          Width = 101
          Height = 19
          Ctl3D = False
          EditMask = '99/99/9999;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
      object OBS: TDBEdit
        Left = 312
        Top = 87
        Width = 404
        Height = 19
        Ctl3D = False
        DataField = 'TOBSESTSAI'
        DataSource = DM2.Src_TroMol
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object HORASAIINI: TEdit
        Left = 478
        Top = 291
        Width = 20
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnExit = HORASAIINIExit
      end
      object MINUTOSAIINI: TEdit
        Left = 512
        Top = 291
        Width = 20
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnExit = MINUTOSAIINIExit
      end
      object ComboBox2: TComboBox
        Left = 312
        Top = 32
        Width = 403
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
      end
      object ComboBox3: TComboBox
        Left = 312
        Top = 154
        Width = 404
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 2
      end
      object ComboBox4: TComboBox
        Left = 312
        Top = 210
        Width = 404
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 3
      end
      object BUSCADTSAI: TDateTimePicker
        Left = 420
        Top = 291
        Width = 21
        Height = 21
        Date = 38706.465801504600000000
        Time = 38706.465801504600000000
        TabOrder = 4
        TabStop = False
        OnChange = BUSCADTSAIChange
      end
      object DATASAI: TMaskEdit
        Left = 314
        Top = 292
        Width = 107
        Height = 19
        Ctl3D = False
        EditMask = '99/99/9999;1; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '  /  /    '
        OnExit = DATASAIExit
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 719
        Height = 341
        Font.Color = clBlue
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TCODEMP'
            Title.Caption = 'Cod. Empresa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODTROMOL'
            Title.Caption = 'Cod.Ord.Servico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODMOLDE'
            Title.Caption = 'Cod. Molde'
            Width = 272
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODIMO'
            Title.Caption = 'Cod. Imobilizado'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODMOLSAI'
            Title.Caption = 'Cod. Molde Saida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOBSESTSAI'
            Title.Caption = 'Obs....'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODENCAR'
            Title.Caption = 'Encarregado'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODGEREN'
            Title.Caption = 'Gerente'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TDATAENT'
            Title.Caption = 'Data da Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'THORAENTINI'
            Title.Caption = 'Hora Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TMINUENTTOFIN'
            Title.Caption = 'Minuto da Entrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TDATASAI'
            Title.Caption = 'Data da Saida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'THORASAIINI'
            Title.Caption = 'Hora da Saida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TMINUSAIFIN'
            Title.Caption = 'Minuto da Saida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT4'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT5'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT6'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT7'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT8'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT9'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCODSIT10'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 391
    Width = 727
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 444
    Width = 727
    object Label16: TLabel [0]
      Left = 136
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Label16'
    end
    object BitBtn1: TBitBtn
      Left = 328
      Top = 17
      Width = 124
      Height = 35
      Caption = 'Impressao'
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
  end
  object DSSITUACAO: TDataSource
    DataSet = SITUACAO
    Left = 557
    Top = 416
  end
  object SITUACAO: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select '#39' '#39' OK ,snomsitmaq,scodsitmaq from cadsitmaq')
    UpdateObject = USITUACAO
    Left = 502
    Top = 416
    object SITUACAOOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object SITUACAOSNOMSITMAQ: TStringField
      FieldName = 'SNOMSITMAQ'
      Size = 40
    end
    object SITUACAOSCODSITMAQ: TFloatField
      FieldName = 'SCODSITMAQ'
    end
  end
  object USITUACAO: TUpdateSQL
    ModifySQL.Strings = (
      'update cadsitmaq'
      'set'
      '  OK = :OK'
      'where'
      '  SCODSITMAQ = :OLD_SCODSITMAQ')
    InsertSQL.Strings = (
      'insert into cadsitmaq'
      '  (OK)'
      'values'
      '  (:OK)')
    DeleteSQL.Strings = (
      'delete from cadsitmaq'
      'where'
      '  SCODSITMAQ = :OLD_SCODSITMAQ')
    Left = 624
    Top = 416
  end
end

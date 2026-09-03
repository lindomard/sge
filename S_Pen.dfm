object Frm_Pen: TFrm_Pen
  Left = 15
  Top = 131
  Width = 785
  Height = 375
  Caption = 'Pendencias de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 53
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 30
      Width = 48
      Height = 13
      Caption = 'Cliente.:'
    end
    object Label2: TLabel
      Left = 7
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Pedido.:'
    end
    object Label3: TLabel
      Left = 142
      Top = 6
      Width = 56
      Height = 13
      Caption = 'Lote Seq:'
    end
    object CHAVE: TEdit
      Left = 70
      Top = 2
      Width = 67
      Height = 19
      TabStop = False
      Color = 16769520
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DTPED: TEdit
      Left = 374
      Top = 2
      Width = 126
      Height = 19
      TabStop = False
      Color = 16769520
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object CODCLI: TEdit
      Left = 70
      Top = 25
      Width = 67
      Height = 19
      TabStop = False
      Color = 16769520
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object NOMCLI: TEdit
      Left = 140
      Top = 25
      Width = 360
      Height = 19
      TabStop = False
      Color = 16769520
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_lotseq: TEdit
      Left = 201
      Top = 3
      Width = 67
      Height = 19
      TabStop = False
      Color = 16769520
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 769
    Height = 243
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 767
      Height = 200
      Align = alClient
      DataSource = Src_Pen
      FixedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid1ColExit
      OnExit = DBGrid1Exit
      Columns = <
        item
          Expanded = False
          FieldName = 'PECODPRO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nompro'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEQTDPEN'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'und'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEPRECO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEQTDPED'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEQTDENV'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEDESC01'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEDESC02'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEDESC03'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PEVALDES'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 201
      Width = 767
      Height = 41
      Align = alBottom
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 765
        Height = 39
        DataSource = Src_Pen
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alClient
        Hints.Strings = (
          'Primeiro Registro'
          'Registro Anterior'
          'Proximo Registro'
          #218'ltimo Registro'
          'Inserir Registro'
          'Excluir Registro'
          'Alterar Registro'
          'Gravar Registro'
          'Cancelar Registro')
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 296
    Width = 769
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 56
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      Visible = False
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
      Left = 218
      Top = 2
      Width = 255
      Height = 36
      Caption = '&Sair'
      TabOrder = 1
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
  end
  object Src_Pen: TDataSource
    DataSet = Qr_Pen
    Left = 160
    Top = 32
  end
  object Qr_Pen: TQuery
    CachedUpdates = True
    BeforeInsert = Qr_PenBeforeInsert
    AfterInsert = Qr_PenAfterInsert
    BeforePost = Qr_PenBeforePost
    AfterPost = c
    AfterDelete = c
    OnCalcFields = Qr_PenCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPEN')
    UpdateObject = U_Pen
    Left = 208
    Top = 32
    object Qr_PenPECODEMP: TFloatField
      FieldName = 'PECODEMP'
      Origin = 'SG_ASSOC.CADPEN.PECODEMP'
    end
    object Qr_PenPECHAVE: TFloatField
      FieldName = 'PECHAVE'
      Origin = 'SG_ASSOC.CADPEN.PECHAVE'
    end
    object Qr_PenPEITEM: TFloatField
      FieldName = 'PEITEM'
      Origin = 'SG_ASSOC.CADPEN.PEITEM'
    end
    object Qr_PenPECODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PECODPRO'
      Origin = 'SG_ASSOC.CADPEN.PECODPRO'
    end
    object Qr_PenPEQTDPED: TFloatField
      DisplayLabel = 'Qtd.Ped'
      FieldName = 'PEQTDPED'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPED'
    end
    object Qr_PenPEQTDENV: TFloatField
      DisplayLabel = 'Qtd.Env'
      FieldName = 'PEQTDENV'
      Origin = 'SG_ASSOC.CADPEN.PEQTDENV'
    end
    object Qr_PenPEQTDPEN: TFloatField
      DisplayLabel = 'Pendencia'
      FieldName = 'PEQTDPEN'
      Origin = 'SG_ASSOC.CADPEN.PEQTDPEN'
    end
    object Qr_PenPEDESC01: TFloatField
      DisplayLabel = 'Desc.01'
      FieldName = 'PEDESC01'
      Origin = 'SG_ASSOC.CADPEN.PEDESC01'
    end
    object Qr_PenPEDESC02: TFloatField
      DisplayLabel = 'Desc.02'
      FieldName = 'PEDESC02'
      Origin = 'SG_ASSOC.CADPEN.PEDESC02'
    end
    object Qr_PenPEDESC03: TFloatField
      DisplayLabel = 'Desc.03'
      FieldName = 'PEDESC03'
      Origin = 'SG_ASSOC.CADPEN.PEDESC03'
    end
    object Qr_PenPEVALDES: TFloatField
      DisplayLabel = 'Vlr.Desc.'
      FieldName = 'PEVALDES'
      Origin = 'SG_ASSOC.CADPEN.PEVALDES'
    end
    object Qr_PenPEPRECO: TFloatField
      DisplayLabel = 'P'#231'o.Unit'#225'rio'
      FieldName = 'PEPRECO'
      Origin = 'SG_ASSOC.CADPEN.PEPRECO'
    end
    object Qr_Pennompro: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldKind = fkCalculated
      FieldName = 'nompro'
      Size = 40
      Calculated = True
    end
    object Qr_Penund: TStringField
      DisplayLabel = 'Und'
      FieldKind = fkCalculated
      FieldName = 'und'
      Size = 3
      Calculated = True
    end
    object Qr_Pentotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qr_PenPELOTSEQ: TFloatField
      FieldName = 'PELOTSEQ'
      Origin = 'SG_ASSOC.CADPEN.PELOTSEQ'
    end
    object Qr_PenPECODCLI: TFloatField
      FieldName = 'PECODCLI'
      Origin = 'SG_ASSOC.CADPEN.PECODCLI'
    end
    object Qr_PenPECODVEN: TFloatField
      FieldName = 'PECODVEN'
      Origin = 'SG_ASSOC.CADPEN.PECODVEN'
    end
    object Qr_PenPEDATA: TDateTimeField
      FieldName = 'PEDATA'
      Origin = 'SG_ASSOC.CADPEN.PEDATA'
    end
    object Qr_PenPEGRADE: TStringField
      FieldName = 'PEGRADE'
      Origin = 'SG_ASSOC.CADPEN.PEGRADE'
    end
  end
  object U_Pen: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPEN'
      'set'
      '  PECODEMP = :PECODEMP,'
      '  PELOTSEQ = :PELOTSEQ,'
      '  PECHAVE = :PECHAVE,'
      '  PECODCLI = :PECODCLI,'
      '  PECODVEN = :PECODVEN,'
      '  PEDATA = :PEDATA,'
      '  PEITEM = :PEITEM,'
      '  PECODPRO = :PECODPRO,'
      '  PEQTDPED = :PEQTDPED,'
      '  PEQTDENV = :PEQTDENV,'
      '  PEQTDPEN = :PEQTDPEN,'
      '  PEDESC01 = :PEDESC01,'
      '  PEDESC02 = :PEDESC02,'
      '  PEDESC03 = :PEDESC03,'
      '  PEVALDES = :PEVALDES,'
      '  PEPRECO = :PEPRECO,'
      '  PEGRADE = :PEGRADE'
      'where'
      '  PECODEMP = :OLD_PECODEMP and'
      '  PELOTSEQ = :OLD_PELOTSEQ and'
      '  PECHAVE = :OLD_PECHAVE and'
      '  PEITEM = :OLD_PEITEM and'
      '  PECODPRO = :OLD_PECODPRO')
    InsertSQL.Strings = (
      'insert into CADPEN'
      
        '  (PECODEMP, PELOTSEQ, PECHAVE, PECODCLI, PECODVEN, PEDATA, PEIT' +
        'EM, '
      'PECODPRO, '
      '   PEQTDPED, PEQTDENV, PEQTDPEN, PEDESC01, PEDESC02, PEDESC03, '
      'PEVALDES, '
      '   PEPRECO, PEGRADE)'
      'values'
      
        '  (:PECODEMP, :PELOTSEQ, :PECHAVE, :PECODCLI, :PECODVEN, :PEDATA' +
        ', '
      ':PEITEM, '
      
        '   :PECODPRO, :PEQTDPED, :PEQTDENV, :PEQTDPEN, :PEDESC01, :PEDES' +
        'C02, '
      ':PEDESC03, '
      '   :PEVALDES, :PEPRECO, :PEGRADE)')
    DeleteSQL.Strings = (
      'delete from CADPEN'
      'where'
      '  PECODEMP = :OLD_PECODEMP and'
      '  PELOTSEQ = :OLD_PELOTSEQ and'
      '  PECHAVE = :OLD_PECHAVE and'
      '  PEITEM = :OLD_PEITEM and'
      '  PECODPRO = :OLD_PECODPRO')
    Left = 240
    Top = 33
  end
end

object Frm_compras_ProdSemRel: TFrm_compras_ProdSemRel
  Left = 86
  Top = 139
  Width = 840
  Height = 350
  ActiveControl = DBE_codpro_int
  Caption = 'Produtos Sem Relacionamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gb_produtos_nfe: TGroupBox
    Left = 0
    Top = 0
    Width = 832
    Height = 173
    Align = alClient
    BiDiMode = bdLeftToRight
    Caption = 'Produtos da NFE:'
    Ctl3D = False
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 0
    object Label6: TLabel
      Left = 552
      Top = 200
      Width = 53
      Height = 13
      Caption = '% Desc.02'
    end
    object Label7: TLabel
      Left = 552
      Top = 240
      Width = 61
      Height = 13
      Caption = 'Cod.Produto'
    end
    object Label8: TLabel
      Left = 552
      Top = 280
      Width = 53
      Height = 13
      Caption = '% Desc.03'
    end
    object Label9: TLabel
      Left = 552
      Top = 320
      Width = 40
      Height = 13
      Caption = 'P'#231'o.Unit'
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 14
      Width = 830
      Height = 158
      Align = alClient
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PSR_CODPRO_FOR'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSR_UND_FOR'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSR_QTD_FOR'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSR_NOMPRO_FOR'
          Width = 362
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'psr_pcouni_for'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PSR_VLRTOT_FOR'
          Width = 94
          Visible = True
        end>
    end
  end
  object gb_relacionados: TGroupBox
    Left = 0
    Top = 173
    Width = 832
    Height = 105
    Align = alBottom
    Caption = 'Relacionado com:'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 75
      Width = 33
      Height = 13
      Caption = 'Marca:'
    end
    object DBE_codpro_int: TDBEdit
      Left = 12
      Top = 48
      Width = 102
      Height = 21
      DataField = 'PSR_CODPRO_INT'
      DataSource = src_prodSemRel
      TabOrder = 0
      OnEnter = DBE_codpro_intEnter
      OnExit = DBE_codpro_intExit
      OnKeyDown = DBE_codpro_intKeyDown
    end
    object DBE_und_int: TDBEdit
      Left = 115
      Top = 48
      Width = 38
      Height = 21
      TabStop = False
      DataField = 'PSR_UND_INT'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 1
    end
    object DBE_qtd_int: TDBEdit
      Left = 156
      Top = 48
      Width = 77
      Height = 21
      DataField = 'PSR_QTD_INT'
      DataSource = src_prodSemRel
      TabOrder = 2
      OnExit = DBE_qtd_intExit
    end
    object DBE_nompro_int: TDBEdit
      Left = 235
      Top = 48
      Width = 362
      Height = 21
      TabStop = False
      DataField = 'PSR_NOMPRO_INT'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 3
    end
    object DBE_vlr_tot: TDBEdit
      Left = 697
      Top = 48
      Width = 94
      Height = 21
      TabStop = False
      DataField = 'PSR_VLRTOT_INT'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 4
    end
    object dbe_pcouni_int: TDBEdit
      Left = 599
      Top = 48
      Width = 94
      Height = 21
      TabStop = False
      DataField = 'psr_pcouni_int'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 503
      Top = 75
      Width = 288
      Height = 21
      TabStop = False
      DataField = 'psr_descfator'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit2: TDBEdit
      Left = 12
      Top = 18
      Width = 102
      Height = 21
      Color = 12189695
      DataField = 'PSR_CODPRO_FOR'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 7
      OnEnter = DBE_codpro_intEnter
      OnExit = DBE_codpro_intExit
      OnKeyDown = DBE_codpro_intKeyDown
    end
    object DBEdit3: TDBEdit
      Left = 115
      Top = 18
      Width = 38
      Height = 21
      TabStop = False
      Color = 12189695
      DataField = 'PSR_UND_FOR'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit4: TDBEdit
      Left = 156
      Top = 18
      Width = 77
      Height = 21
      Color = 12189695
      DataField = 'PSR_QTD_FOR'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 9
      OnExit = DBE_qtd_intExit
    end
    object DBEdit5: TDBEdit
      Left = 235
      Top = 18
      Width = 362
      Height = 21
      TabStop = False
      Color = 12189695
      DataField = 'PSR_NOMPRO_FOR'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit6: TDBEdit
      Left = 599
      Top = 18
      Width = 94
      Height = 21
      TabStop = False
      Color = 12189695
      DataField = 'psr_pcouni_for'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit7: TDBEdit
      Left = 697
      Top = 18
      Width = 94
      Height = 21
      TabStop = False
      Color = 12189695
      DataField = 'PSR_VLRTOT_FOR'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 12
    end
    object DBEdit8: TDBEdit
      Left = 59
      Top = 72
      Width = 362
      Height = 21
      TabStop = False
      DataField = 'PSR_MARCA'
      DataSource = src_prodSemRel
      ReadOnly = True
      TabOrder = 13
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 278
    Width = 832
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object cds_prodSemRel: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cds_prodSemRelCalcFields
    Left = 712
    Top = 24
    object cds_prodSemRelPSR_ITEM: TIntegerField
      DisplayLabel = #205'tem'
      FieldName = 'PSR_ITEM'
    end
    object cds_prodSemRelPSR_UND_FOR: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PSR_UND_FOR'
      Size = 6
    end
    object cds_prodSemRelPSR_CODPRO_FOR: TStringField
      DisplayLabel = 'Cod.Prod'
      FieldName = 'PSR_CODPRO_FOR'
    end
    object cds_prodSemRelPSR_NOMPRO_FOR: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'PSR_NOMPRO_FOR'
      Size = 60
    end
    object cds_prodSemRelPSR_QTD_FOR: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'PSR_QTD_FOR'
    end
    object cds_prodSemRelPSR_VLRTOT_FOR: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'PSR_VLRTOT_FOR'
    end
    object cds_prodSemRelPSR_CODPRO_INT: TStringField
      FieldName = 'PSR_CODPRO_INT'
    end
    object cds_prodSemRelPSR_UND_INT: TStringField
      FieldName = 'PSR_UND_INT'
      Size = 6
    end
    object cds_prodSemRelPSR_NOMPRO_INT: TStringField
      FieldName = 'PSR_NOMPRO_INT'
      Size = 60
    end
    object cds_prodSemRelPSR_QTD_INT: TFloatField
      FieldName = 'PSR_QTD_INT'
    end
    object cds_prodSemRelpsr_pcouni_for: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'psr_pcouni_for'
      Calculated = True
    end
    object cds_prodSemRelpsr_pcouni_int: TFloatField
      FieldKind = fkCalculated
      FieldName = 'psr_pcouni_int'
      Calculated = True
    end
    object cds_prodSemRelpsr_vlrtot_int: TFloatField
      FieldKind = fkCalculated
      FieldName = 'psr_vlrtot_int'
      Calculated = True
    end
    object cds_prodSemRelpsr_descfator: TStringField
      FieldKind = fkCalculated
      FieldName = 'psr_descfator'
      Size = 60
      Calculated = True
    end
    object cds_prodSemRelpsr_fator_conv: TFloatField
      FieldKind = fkCalculated
      FieldName = 'psr_fator_conv'
      Calculated = True
    end
    object cds_prodSemRelPSR_CODFOR: TFloatField
      FieldName = 'PSR_CODFOR'
    end
    object cds_prodSemRelPSR_MARCA: TStringField
      FieldName = 'PSR_MARCA'
      Size = 60
    end
    object cds_prodSemRelPSR_STATUS: TIntegerField
      FieldName = 'PSR_STATUS'
    end
  end
  object src_prodSemRel: TDataSource
    DataSet = cds_prodSemRel
    Left = 712
    Top = 64
  end
end

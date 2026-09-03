object Frm_SPED_EFD_NotasST: TFrm_SPED_EFD_NotasST
  Left = 296
  Top = 111
  Width = 890
  Height = 476
  Caption = 'Notas Fiscais com Substitui'#231#227'o Tributaria'
  Color = 16740207
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 874
    Height = 54
    Align = alBottom
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 20
      Width = 85
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor Contabil'
    end
    object Label2: TLabel
      Left = 148
      Top = 19
      Width = 85
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Base de Calculo'
    end
    object Label3: TLabel
      Left = 247
      Top = 19
      Width = 85
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor Icms Retido'
    end
    object Label4: TLabel
      Left = 344
      Top = 20
      Width = 85
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor Contabil'
    end
    object Label5: TLabel
      Left = 444
      Top = 19
      Width = 85
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Base de Calculo'
    end
    object Label6: TLabel
      Left = 543
      Top = 19
      Width = 85
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor Icms Retido'
    end
    object st_ent_valcont: TStaticText
      Left = 48
      Top = 34
      Width = 86
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 0
    end
    object st_ent_baser: TStaticText
      Left = 148
      Top = 34
      Width = 86
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 1
    end
    object ST_ent_ICMSRET: TStaticText
      Left = 247
      Top = 34
      Width = 86
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 48
      Top = 3
      Width = 283
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'ENTRADAS'
      TabOrder = 3
    end
    object StaticText2: TStaticText
      Left = 344
      Top = 3
      Width = 283
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'SAIDAS'
      TabOrder = 4
    end
    object ST_sai_ICMSRET: TStaticText
      Left = 543
      Top = 33
      Width = 86
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 5
    end
    object st_sai_baser: TStaticText
      Left = 444
      Top = 33
      Width = 86
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 6
    end
    object st_sai_valcont: TStaticText
      Left = 344
      Top = 33
      Width = 86
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      TabOrder = 7
    end
  end
  object DBGrid_Notas: TDBGrid
    Left = 0
    Top = 0
    Width = 874
    Height = 271
    Align = alClient
    DataSource = Src_Notas
    ParentColor = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMNF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAEMIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORNF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ICMSST'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 345
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPONF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFOP'
        Visible = True
      end>
  end
  object DBGrid_resumo: TDBGrid
    Left = 0
    Top = 271
    Width = 874
    Height = 113
    Align = alBottom
    DataSource = src_resumo
    ParentColor = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'uf'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ent_valor_contabil'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ent_icmsr'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sai_valor_contabil'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sai_icmsr'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tot_gnre'
        Width = 77
        Visible = True
      end>
  end
  object Src_Notas: TDataSource
    DataSet = Qr_Notas
    Left = 504
    Top = 40
  end
  object Qr_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select NSNUMERO AS NUMNF,'
      '       NSDTEMIS AS DATAEMIS,'
      '       NSTOTNOTA AS VALORNF,'
      '       NSICMSRI+NSICMSRN+NSICMSRP AS ICMSST,'
      '       NSCODCLI AS CODIGO,'
      '       NSCFO1 AS CFOP,'
      '       CRAZAO  AS NOME,CUF AS UF,'
      '       '#39'Entrada '#39' AS TIPONF from CADNS,CADCLI'
      '       where NSCODEMP IS NULL'
      '       and CCODCLI=NSCODCLI'
      '       and CCODEMP=NSCODemp'
      '')
    Left = 528
    Top = 80
    object Qr_NotasNUMNF: TFloatField
      DisplayLabel = 'Numero NF'
      FieldName = 'NUMNF'
      Origin = 'SG_ASSOC.CADNS.NSNUMERO'
    end
    object Qr_NotasDATAEMIS: TDateTimeField
      DisplayLabel = 'Data Emis'
      FieldName = 'DATAEMIS'
      Origin = 'SG_ASSOC.CADNS.NSDTEMIS'
    end
    object Qr_NotasVALORNF: TFloatField
      DisplayLabel = 'Valor NF'
      FieldName = 'VALORNF'
      Origin = 'SG_ASSOC.CADNS.NSTOTNOTA'
    end
    object Qr_NotasICMSST: TFloatField
      DisplayLabel = 'ICMS ST'
      FieldName = 'ICMSST'
      Origin = 'SG_ASSOC.CADNS.NSICMSRI'
    end
    object Qr_NotasCODIGO: TFloatField
      DisplayLabel = 'Cod. Part'
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADNS.NSCODCLI'
    end
    object Qr_NotasNOME: TStringField
      DisplayLabel = 'Nome do Particpante'
      FieldName = 'NOME'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object Qr_NotasTIPONF: TStringField
      DisplayLabel = 'Tipo da NF'
      FieldName = 'TIPONF'
      FixedChar = True
      Size = 8
    end
    object Qr_NotasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object Qr_NotasCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
  end
  object mem_resumo: TRxMemoryData
    FieldDefs = <>
    Left = 664
    Top = 88
    object mem_resumouf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Size = 2
    end
    object mem_resumoent_valor_contabil: TFloatField
      DisplayLabel = 'Valor Entrada'
      FieldName = 'ent_valor_contabil'
    end
    object mem_resumoent_icmsr: TFloatField
      DisplayLabel = 'Icms Entrada'
      FieldName = 'ent_icmsr'
    end
    object mem_resumosai_valor_contabil: TFloatField
      DisplayLabel = 'Valor Saida'
      FieldName = 'sai_valor_contabil'
    end
    object mem_resumosai_icmsr: TFloatField
      DisplayLabel = 'Icms Saida'
      FieldName = 'sai_icmsr'
    end
    object mem_resumotot_gnre: TFloatField
      DisplayLabel = 'Total GNRE'
      FieldName = 'tot_gnre'
    end
  end
  object src_resumo: TDataSource
    DataSet = mem_resumo
    Left = 704
    Top = 96
  end
end

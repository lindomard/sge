object frm_financeiro: Tfrm_financeiro
  Left = 191
  Top = 117
  Width = 1045
  Height = 685
  Caption = 'Financeiro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 396
    Width = 33
    Height = 13
    Caption = 'CNPJ.:'
  end
  object Panel1: TPanel
    Left = 600
    Top = 560
    Width = 185
    Height = 41
    Caption = 'Posi'#231#227'o Financeira'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 121
    Align = alTop
    TabOrder = 1
    object lbl_atencao: TLabel
      Left = 1
      Top = 1
      Width = 1035
      Height = 119
      Align = alClient
      Alignment = taCenter
      Caption = 'Aten'#231#227'o!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -60
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 1037
    Height = 112
    Align = alTop
    TabOrder = 2
    object RichEdit1: TRichEdit
      Left = 1
      Top = 1
      Width = 1035
      Height = 110
      Align = alClient
      Alignment = taCenter
      Lines.Strings = (
        
          'Encontramos 10 titulos vencidos e em abertos valor principal do ' +
          'd'#233'bito r$3500,00 (tres mil e quinhentos reais), para '
        
          'efetuar o pagamento hoje seu d'#233'bito '#233' de r$4.000,00 (quatro mil)' +
          ' reais.')
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 560
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object Memo1: TMemo
    Left = 760
    Top = 488
    Width = 265
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 448
    Top = 560
    Width = 75
    Height = 25
    Caption = 'Ler Json'
    TabOrder = 5
  end
  object Memo2: TMemo
    Left = 672
    Top = 440
    Width = 313
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object edt_cnpj: TEdit
    Left = 64
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '1536747001527'
  end
  object BitBtn3: TBitBtn
    Left = 800
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Gerar Json'
    TabOrder = 8
  end
  object Memo3: TMemo
    Left = 720
    Top = 448
    Width = 313
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 9
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 233
    Width = 1037
    Height = 192
    Align = alTop
    Caption = 'Rela'#231#227'o de Titulos:'
    TabOrder = 10
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 1033
      Height = 175
      Align = alClient
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'crazao'
          Title.Alignment = taCenter
          Width = 359
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crnumero'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crdesd'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crdtvcto'
          Title.Alignment = taCenter
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crvalor'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crvalpag'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crdescf'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crdtdescf'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crmulta'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crjurd'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtdatraso'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crapagar'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'crdtemis'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 437
    Width = 633
    Height = 121
    Caption = 'Proposta para Pagamento:'
    TabOrder = 11
    object Panel4: TPanel
      Left = 2
      Top = 15
      Width = 629
      Height = 29
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 3
        Width = 40
        Height = 13
        Caption = 'Entrada:'
      end
      object Label5: TLabel
        Left = 166
        Top = 3
        Width = 86
        Height = 13
        Caption = 'restante divido em'
      end
      object Label6: TLabel
        Left = 318
        Top = 3
        Width = 28
        Height = 13
        Caption = 'vezes'
      end
      object Label7: TLabel
        Left = 358
        Top = 3
        Width = 78
        Height = 13
        Caption = 'com intervalo de'
      end
      object Label8: TLabel
        Left = 510
        Top = 3
        Width = 19
        Height = 13
        Caption = 'dias'
      end
      object edt_valor_entrada: TEdit
        Left = 64
        Top = 2
        Width = 95
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object edt_qtdparc: TEdit
        Left = 256
        Top = 2
        Width = 58
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
      end
      object edt_intervalo: TEdit
        Left = 448
        Top = 2
        Width = 58
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
      end
    end
    object bbGerar: TBitBtn
      Left = 536
      Top = 17
      Width = 61
      Height = 25
      Caption = 'Gerar'
      TabOrder = 1
      OnClick = bbGerarClick
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
    object DBGrid2: TDBGrid
      Left = 2
      Top = 44
      Width = 629
      Height = 75
      Align = alClient
      DataSource = src_proposta
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'datapgto'
          Title.Alignment = taCenter
          Width = 176
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Alignment = taCenter
          Width = 156
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 88
    Top = 576
    Width = 313
    Height = 65
    Caption = 'Condi'#231#245'es Exclusivas:'
    TabOrder = 12
    object cb_aplicar_desconto: TCheckBox
      Left = 8
      Top = 16
      Width = 305
      Height = 17
      Caption = 'Aplicar Desconto Mesmo Fora do Prazo'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = cb_aplicar_descontoClick
    end
    object cb_aplicar_multa: TCheckBox
      Left = 8
      Top = 31
      Width = 305
      Height = 17
      Caption = 'Aplicar Multa'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cb_aplicar_descontoClick
    end
    object cb_aplicar_juros: TCheckBox
      Left = 8
      Top = 46
      Width = 305
      Height = 17
      Caption = 'Aplicar Juros por Atraso'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = cb_aplicar_descontoClick
    end
  end
  object Timer_atencao: TTimer
    OnTimer = Timer_atencaoTimer
    Left = 720
    Top = 88
  end
  object cds_uf: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 16
    object cds_ufUFSigla: TStringField
      FieldName = 'UFSigla'
      Size = 2
    end
    object cds_ufUFNome: TStringField
      FieldName = 'UFNome'
      Size = 100
    end
  end
  object cds_financeiro: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 888
    Top = 56
    object cds_financeirocridNew: TIntegerField
      DisplayLabel = 'Chave Id'
      FieldName = 'cridNew'
    end
    object cds_financeiroccodcli: TIntegerField
      DisplayLabel = 'C'#243'd Pessoa'
      FieldName = 'ccodcli'
    end
    object cds_financeirocrazao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'crazao'
      Size = 100
    end
    object cds_financeirocrnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'crnumero'
    end
    object cds_financeirocrdesd: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'crdesd'
      Size = 2
    end
    object cds_financeirocrdtvcto: TDateTimeField
      DisplayLabel = 'Dt. Vcto'
      FieldName = 'crdtvcto'
    end
    object cds_financeirocrvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'crvalor'
    end
    object cds_financeirocrvalpag: TFloatField
      DisplayLabel = 'Ja Pago'
      FieldName = 'crvalpag'
    end
    object cds_financeirocrdescf: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'crdescf'
    end
    object cds_financeirocrdtdescf: TDateTimeField
      DisplayLabel = 'Data p/Desconto'
      FieldName = 'crdtdescf'
    end
    object cds_financeirocrmulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'crmulta'
    end
    object cds_financeirocrjurd: TFloatField
      DisplayLabel = 'Juros p/dia'
      FieldName = 'crjurd'
    end
    object cds_financeiroqtdatraso: TIntegerField
      DisplayLabel = 'Atraso'
      FieldName = 'qtdatraso'
    end
    object cds_financeirocrapagar: TFloatField
      DisplayLabel = 'A Pagar'
      FieldName = 'crapagar'
    end
    object cds_financeirocrdtemis: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'crdtemis'
    end
  end
  object DataSource1: TDataSource
    DataSet = cds_financeiro
    Left = 840
    Top = 56
  end
  object cds_proposta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 704
    Top = 320
    object cds_propostadatapgto: TDateField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'datapgto'
    end
    object cds_propostavalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
  end
  object src_proposta: TDataSource
    DataSet = cds_proposta
    Left = 696
    Top = 344
  end
end

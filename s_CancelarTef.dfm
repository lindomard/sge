object Frm_CancelarTef: TFrm_CancelarTef
  Left = 192
  Top = 117
  Width = 918
  Height = 540
  Caption = 'Formas de Pagamentos do Pedido:'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 153
    Align = alTop
    Color = clWhite
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 908
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'Estorno de Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object lbl_cab_ped: TLabel
      Left = 1
      Top = 23
      Width = 908
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'lbl_cab_ped'
      WordWrap = True
    end
  end
  object Panel_fp: TPanel
    Left = 0
    Top = 153
    Width = 910
    Height = 128
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 908
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = 'Formas de Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 23
      Width = 908
      Height = 104
      Align = alClient
      DataSource = src_fp
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
          FieldName = 'ORDEM'
          Title.Alignment = taCenter
          Title.Caption = 'Ordem'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPFORMA'
          Title.Alignment = taCenter
          Title.Caption = 'Id Forma'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPNOMFOR'
          Title.Alignment = taCenter
          Title.Caption = 'Nome '
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPVALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VINCULO'
          Title.Alignment = taCenter
          Title.Caption = 'Vinculo'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFPSTATUS_MOTIVO'
          Title.Alignment = taCenter
          Title.Caption = 'Status Motivo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSERVACOES'
          Title.Alignment = taCenter
          Title.Caption = 'Observa'#231#245'es'
          Width = 231
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 386
    Width = 910
    Height = 82
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object lbl_excluindo: TLabel
      Left = 1
      Top = 1
      Width = 908
      Height = 80
      Align = alClient
      Alignment = taCenter
      Caption = 'lbl_excluindo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
  end
  object Panel_rodape: TPanel
    Left = 0
    Top = 468
    Width = 910
    Height = 41
    Align = alBottom
    TabOrder = 3
    Visible = False
    object lbl_msg_estorno: TLabel
      Left = 11
      Top = 16
      Width = 390
      Height = 17
      Caption = 'N'#227'o Foi possivel Estornar todos os Pagamentos o que deseja fazer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object sbnTentarNovamente: TSpeedButton
      Left = 407
      Top = 13
      Width = 151
      Height = 22
      Caption = 'Tentar Novamante'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
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
      ParentFont = False
      OnClick = sbnTentarNovamenteClick
    end
    object sbnDesistir: TSpeedButton
      Left = 563
      Top = 12
      Width = 151
      Height = 22
      Caption = 'Desistir e Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
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
      NumGlyphs = 2
      ParentFont = False
      OnClick = sbnDesistirClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 281
    Width = 910
    Height = 105
    Align = alTop
    Caption = 'Dados do Comprovante:'
    TabOrder = 4
    object DBMemo1: TDBMemo
      Left = 2
      Top = 15
      Width = 528
      Height = 88
      Align = alClient
      DataField = 'PFPCOMPROVANTE_VINC'
      DataSource = src_fp
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 530
      Top = 15
      Width = 378
      Height = 88
      Align = alRight
      DataField = 'PFPCOMPROVANTE_ESTORNO'
      DataSource = src_fp
      TabOrder = 1
    end
  end
  object src_fp: TDataSource
    DataSet = query_fp
    Left = 368
    Top = 104
  end
  object u_fp: TUpdateSQL
    Left = 320
    Top = 104
  end
  object query_fp: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_fp
    Left = 448
    Top = 96
    object query_fpORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object query_fpPFPID_NEW: TFloatField
      FieldName = 'PFPID_NEW'
    end
    object query_fpPFPNOMFOR: TStringField
      FieldName = 'PFPNOMFOR'
      Size = 100
    end
    object query_fpPFPFORMA: TFloatField
      FieldName = 'PFPFORMA'
    end
    object query_fpPFPVALOR: TFloatField
      FieldName = 'PFPVALOR'
    end
    object query_fpVINCULO: TStringField
      FieldName = 'VINCULO'
      Size = 30
    end
    object query_fpPFPSTATUS_MOTIVO: TStringField
      FieldName = 'PFPSTATUS_MOTIVO'
      Size = 50
    end
    object query_fpPFPCOMPROVANTE_VINC: TMemoField
      FieldName = 'PFPCOMPROVANTE_VINC'
      BlobType = ftMemo
    end
    object query_fpPFPCOMPROVANTE_ESTORNO: TMemoField
      FieldName = 'PFPCOMPROVANTE_ESTORNO'
      BlobType = ftMemo
    end
    object query_fpOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 254
    end
    object query_fpPFPSTATUS: TFloatField
      FieldName = 'PFPSTATUS'
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 504
    Top = 225
  end
end

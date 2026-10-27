object DM_CDS: TDM_CDS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 264
  Top = 117
  Height = 466
  Width = 423
  object cds_seqtef: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_seqtefAfterPost
    Left = 25
    Top = 25
    object cds_seqtefseqtef: TIntegerField
      FieldName = 'seqtef'
    end
  end
  object cds_receb: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_recebAfterPost
    AfterDelete = cds_recebAfterPost
    OnCalcFields = cds_recebCalcFields
    Left = 41
    Top = 81
    object cds_recebchaveId: TIntegerField
      DisplayLabel = 'Chave Id'
      FieldName = 'chaveId'
    end
    object cds_recebchave_id_forma: TIntegerField
      FieldName = 'chave_id_forma'
    end
    object cds_recebstatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'status'
    end
    object cds_recebcomprovante: TMemoField
      DisplayLabel = 'Comprovante'
      FieldName = 'comprovante'
      BlobType = ftMemo
    end
    object cds_recebnomeRede: TStringField
      DisplayLabel = 'Rede'
      FieldName = 'nomeRede'
      Size = 100
    end
    object cds_recebNSU: TStringField
      FieldName = 'NSU'
      Size = 50
    end
    object cds_recebcodigoAutorizacao: TStringField
      DisplayLabel = 'C'#243'digo de Autoriza'#231#227'o'
      FieldName = 'codigoAutorizacao'
      Size = 10
    end
    object cds_recebtransacao: TStringField
      FieldName = 'transacao'
      Size = 50
    end
    object cds_recebstatus_calculado: TStringField
      DisplayLabel = 'Status'
      FieldKind = fkCalculated
      FieldName = 'status_calculado'
      Calculated = True
    end
    object cds_recebchave_id_cab: TIntegerField
      FieldName = 'chave_id_cab'
    end
    object cds_recebsequencia_forma: TIntegerField
      FieldName = 'sequencia_forma'
    end
    object cds_recebvalorVenda: TFloatField
      FieldName = 'valorVenda'
    end
  end
  object src_receb: TDataSource
    DataSet = cds_receb
    Left = 121
    Top = 81
  end
  object src_seq_tef: TDataSource
    DataSet = cds_seqtef
    Left = 113
    Top = 25
  end
  object cds_config_tef: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_config_tefAfterPost
    Left = 41
    Top = 177
    object cds_config_tefcf_tef_qtd_vias: TIntegerField
      FieldName = 'cf_tef_qtd_vias'
    end
    object cds_config_tefcf_tef_via_reduzido: TIntegerField
      FieldName = 'cf_tef_via_reduzido'
    end
    object cds_config_tefcf_tempo_espera_tef: TIntegerField
      FieldName = 'cf_tempo_espera_tef'
    end
    object cds_config_tefcf_tempo_espera_sts: TIntegerField
      FieldName = 'cf_tempo_espera_sts'
    end
    object cds_config_tefcf_data_ult_bkp: TDateField
      FieldName = 'cf_data_ult_bkp'
    end
    object cds_config_tefcf_pos_empresa_id: TIntegerField
      FieldName = 'cf_pos_empresa_id'
    end
    object cds_config_tefcf_pos_provider: TStringField
      FieldName = 'cf_pos_provider'
      Size = 100
    end
    object cds_config_tefcf_pos_terminalId: TStringField
      FieldName = 'cf_pos_terminalId'
      Size = 100
    end
    object cds_config_tefcl_pos_apelido: TStringField
      FieldName = 'cl_pos_apelido'
      Size = 100
    end
    object cds_config_tefcl_pos_clientId: TStringField
      FieldName = 'cl_pos_clientId'
      Size = 100
    end
    object cds_config_tefcl_pos_merchantId: TStringField
      FieldName = 'cl_pos_merchantId'
      Size = 100
    end
    object cds_config_tefcl_pos_tokenApi: TStringField
      FieldName = 'cl_pos_tokenApi'
      Size = 100
    end
    object cds_config_tefcf_pos_ambiente: TStringField
      FieldName = 'cf_pos_ambiente'
      Size = 100
    end
    object cds_config_tefcf_pos_ativo: TIntegerField
      FieldName = 'cf_pos_ativo'
    end
    object cds_config_tefcf_pos_url: TStringField
      FieldName = 'cf_pos_url'
      Size = 254
    end
  end
  object src_config_tef: TDataSource
    DataSet = cds_config_tef
    Left = 129
    Top = 177
  end
  object cds_pedido_cab: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_pedido_cabAfterPost
    AfterDelete = cds_pedido_cabAfterPost
    OnCalcFields = cds_pedido_cabCalcFields
    Left = 41
    Top = 249
    object cds_pedido_cabchaveId: TIntegerField
      DisplayLabel = 'Chave Id'
      FieldName = 'chaveId'
    end
    object cds_pedido_cabcodcli: TFloatField
      FieldName = 'codcli'
    end
    object cds_pedido_cabrazao_social: TStringField
      FieldName = 'razao_social'
      Size = 100
    end
    object cds_pedido_cabvalor_tef: TFloatField
      FieldName = 'valor_tef'
    end
    object cds_pedido_cabvalor_tef_recebido: TFloatField
      FieldName = 'valor_tef_recebido'
    end
    object cds_pedido_cabdata_hora_pedido: TDateTimeField
      FieldName = 'data_hora_pedido'
    end
    object cds_pedido_cabdata_hora_colocacao: TDateTimeField
      FieldName = 'data_hora_colocacao'
    end
    object cds_pedido_cabobservacao: TStringField
      FieldName = 'observacao'
      Size = 254
    end
    object cds_pedido_caberroaoconcluir: TIntegerField
      FieldName = 'erroaoconcluir'
    end
    object cds_pedido_cabvalor_tef_restante: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_tef_restante'
      Calculated = True
    end
    object cds_pedido_cabfinalizado: TIntegerField
      FieldName = 'finalizado'
    end
    object cds_pedido_cabvalor_pedido: TFloatField
      FieldName = 'valor_pedido'
    end
  end
  object src_pedido_cab: TDataSource
    DataSet = cds_pedido_cab
    Left = 129
    Top = 249
  end
  object cds_pedido_formas: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cds_pedido_formasAfterPost
    AfterDelete = cds_pedido_formasAfterPost
    Left = 41
    Top = 305
    object cds_pedido_formaschave_id: TIntegerField
      DisplayLabel = 'Chave Id'
      FieldName = 'chave_id'
    end
    object cds_pedido_formastransacao: TStringField
      DisplayLabel = 'Transacao'
      FieldName = 'transacao'
      Size = 50
    end
    object cds_pedido_formasforma_pgto: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'forma_pgto'
    end
    object cds_pedido_formasvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object cds_pedido_formassituacao_venda: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao_venda'
    end
    object cds_pedido_formaschave_id_cab: TIntegerField
      DisplayLabel = 'Id Cabecalho'
      FieldName = 'chave_id_cab'
    end
    object cds_pedido_formasnsu: TStringField
      FieldName = 'nsu'
      Size = 100
    end
    object cds_pedido_formascomprovante: TMemoField
      FieldName = 'comprovante'
      BlobType = ftMemo
    end
  end
  object src_pedido_formas: TDataSource
    DataSet = cds_pedido_formas
    Left = 129
    Top = 305
  end
end

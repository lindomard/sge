object Frm_FPagComparadoAoTitulo: TFrm_FPagComparadoAoTitulo
  Left = 83
  Top = 77
  Width = 1164
  Height = 480
  Caption = 'Formas de Pagamentos Comparado Aos Titulos:'
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
    Width = 1156
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 13
      Width = 85
      Height = 13
      Caption = 'Chave do Pedido:'
    end
    object lbl_dadosped: TLabel
      Left = 264
      Top = 16
      Width = 63
      Height = 13
      Caption = 'lbl_dadosped'
    end
    object sbnforma: TSpeedButton
      Left = 907
      Top = 6
      Width = 124
      Height = 26
      Cursor = crHandPoint
      Hint = 'Click aqui para Ver as Formas dos Pagamentos'
      Caption = 'Forma de Pgto'
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
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbnformaClick
    end
    object edt_chaveped: TEdit
      Left = 136
      Top = 12
      Width = 121
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object btnSair: TBitBtn
      Left = 1043
      Top = 6
      Width = 97
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 1
      OnClick = btnSairClick
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
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1156
    Height = 207
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object dbg_fpxDup: TDBGrid
      Left = 1
      Top = 1
      Width = 1154
      Height = 205
      Align = alClient
      DataSource = src_fpxDup
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbg_fpxDupDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PARC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFP_VALOR'
          Title.Alignment = taCenter
          Width = 132
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PFP_DATA'
          Title.Alignment = taCenter
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DUP_VALOR'
          Title.Alignment = taCenter
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DUP_DTVCTO'
          Title.Alignment = taCenter
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARC'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTOS'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS'
          Title.Alignment = taCenter
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALPAG'
          Title.Alignment = taCenter
          Width = 147
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATPAG'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object gb_dujpagru: TGroupBox
    Left = 0
    Top = 248
    Width = 1156
    Height = 201
    Align = alBottom
    Caption = 'Agrupamentos Encontrados:'
    TabOrder = 2
    object dbg_dupagru: TDBGrid
      Left = 2
      Top = 15
      Width = 1152
      Height = 184
      Align = alClient
      DataSource = src_dupagru
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
          FieldName = 'CRAZAO'
          Title.Alignment = taCenter
          Width = 338
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DANUMERO'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DADESD'
          Title.Alignment = taCenter
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DADUP'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DADTEMIS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DAVALOR'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DANFACUM'
          Title.Alignment = taCenter
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATOTNF'
          Title.Alignment = taCenter
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DACHAVE'
          Title.Alignment = taCenter
          Width = 102
          Visible = True
        end>
    end
  end
  object src_fpxDup: TDataSource
    DataSet = qr_fpxDup
    Left = 632
    Top = 121
  end
  object qr_fpxDup: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ''
      'SELECT PARC,MAX(PFP_VALOR) AS PFP_VALOR'
      ',MAX(PFP_DATA) AS PFP_DATA'
      ',MAX(DUP_VALOR) AS DUP_VALOR'
      ',MAX(DUP_DTVCTO) AS DUP_DTVCTO'
      ''
      ',MAX(DESCONTOS) as DESCONTOS'
      ',MAX(JUROS) AS JUROS'
      ',MAX(VALPAG) as VALPAG'
      ',MAX(DATPAG) as DATPAG'
      ',MAX(CRDUP) AS CRDUP'
      ''
      ',max(CRCODCLI) as CRCODCLI'
      ',max(CRDESD) as CRDESD'
      ',max(CRDTEMIS) as CRDTEMIS'
      ''
      ',CHAVEPED,CODEMP,LOTSEQ'
      'FROM ('
      ''
      'SELECT ROWNUM AS PARC, T1.* FROM ('
      
        'SELECT PFPVALOR AS PFP_VALOR,PFPDATA AS PFP_DATA, 0 AS DUP_VALOR' +
        ', NULL AS DUP_DTVCTO, PFPCHAVE AS CHAVEPED,PFPCODEMP AS CODEMP'
      ''
      ',PFPLOTSEQ AS LOTSEQ'
      ',0 as DESCONTOS'
      ',0 AS JUROS'
      ',0 as VALPAG'
      ',null as DATPAG'
      ',0 as CRNUMERO'
      ',0 as CRCODCLI'
      ','#39#39' as  CRDESD'
      ',null as CRDTEMIS'
      ', 0 AS CRDUP'
      ' from cadpfp'
      'WHERE PFPCHAVE=27227'
      ' ORDER BY PFP_DATA'
      ' ) T1'
      ' '
      'UNION ALL '
      'SELECT ROWNUM AS PARC, T1.* FROM ('
      ''
      
        'SELECT  0 AS PFP_VALOR,null AS PFP_DATA, CRVALOR AS DUP_VALOR, C' +
        'RDTVCTO AS DUP_DTVCTO, CRNPED AS CHAVEPED'
      ',CRCODEMP AS CODEMP, CRLOTSEQ_CP AS LOTSEQ'
      ',CRDESC as DESCONTOS'
      ',CRJUROS AS JUROS'
      ',CRVALPAG as VALPAG'
      ',CRDTPAG as DATPAG'
      ',CRNUMERO,CRCODCLI,CRDESD, CRDTEMIS,CRDUP'
      ''
      ' from caddar '
      'where crnped=27227'
      'ORDER BY CRDTVCTO'
      ') T1'
      ''
      ''
      ''
      ''
      ') GROUP BY PARC,CHAVEPED,CODEMP,LOTSEQ'
      ''
      'ORDER BY PARC')
    Left = 600
    Top = 121
    object qr_fpxDupPARC: TFloatField
      DisplayLabel = 'Nro. Parc'
      FieldName = 'PARC'
    end
    object qr_fpxDupPFP_VALOR: TFloatField
      DisplayLabel = 'Valor FPag'
      FieldName = 'PFP_VALOR'
    end
    object qr_fpxDupPFP_DATA: TDateTimeField
      DisplayLabel = 'Data Fpag'
      FieldName = 'PFP_DATA'
    end
    object qr_fpxDupDUP_VALOR: TFloatField
      DisplayLabel = 'Valor Conta'
      FieldName = 'DUP_VALOR'
    end
    object qr_fpxDupDUP_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto Conta'
      FieldName = 'DUP_DTVCTO'
    end
    object qr_fpxDupCHAVEPED: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CHAVEPED'
    end
    object qr_fpxDupCODEMP: TFloatField
      DisplayLabel = 'Cod Emp'
      FieldName = 'CODEMP'
    end
    object qr_fpxDupLOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'LOTSEQ'
    end
    object qr_fpxDupDESCONTOS: TFloatField
      DisplayLabel = 'Desc'
      FieldName = 'DESCONTOS'
    end
    object qr_fpxDupJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
    end
    object qr_fpxDupVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'VALPAG'
    end
    object qr_fpxDupDATPAG: TDateTimeField
      DisplayLabel = 'Data Pagto'
      FieldName = 'DATPAG'
    end
    object qr_fpxDupCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
    end
    object qr_fpxDupCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
    end
    object qr_fpxDupCRDESD: TStringField
      FieldName = 'CRDESD'
      Size = 4
    end
    object qr_fpxDupCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
    end
    object qr_fpxDupCRDUP: TFloatField
      FieldName = 'CRDUP'
    end
  end
  object qr_dupagru: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select CRAZAO,DANUMERO,DADESD,DADUP,DADTEMIS,DAVALOR,DACHAVE,DAO' +
        'RDEM,DANFACUM,DATOTNF from dupagru,CADP01,CADCLI'
      ''
      'where P1CHAVE=DACHAVE'
      'AND P1LOTSEQ=DALOTSEQ AND P1CODEMP=DACODEMP'
      'AND dachave=11801'
      'AND CCODCLI=P1CODCLI'
      'order by DANUMERO,DADESD')
    Left = 624
    Top = 337
    object qr_dupagruCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object qr_dupagruDANUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'DANUMERO'
      Origin = 'SG_ASSOC.DUPAGRU.DANUMERO'
    end
    object qr_dupagruDADESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'DADESD'
      Origin = 'SG_ASSOC.DUPAGRU.DADESD'
      Size = 4
    end
    object qr_dupagruDADUP: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'DADUP'
      Origin = 'SG_ASSOC.DUPAGRU.DADUP'
    end
    object qr_dupagruDADTEMIS: TDateTimeField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DADTEMIS'
      Origin = 'SG_ASSOC.DUPAGRU.DADTEMIS'
    end
    object qr_dupagruDAVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'DAVALOR'
      Origin = 'SG_ASSOC.DUPAGRU.DAVALOR'
    end
    object qr_dupagruDACHAVE: TFloatField
      DisplayLabel = 'Chave do Pedido'
      FieldName = 'DACHAVE'
      Origin = 'SG_ASSOC.DUPAGRU.DACHAVE'
    end
    object qr_dupagruDAORDEM: TFloatField
      DisplayLabel = 'Ordem'
      FieldName = 'DAORDEM'
      Origin = 'SG_ASSOC.DUPAGRU.DAORDEM'
    end
    object qr_dupagruDANFACUM: TStringField
      DisplayLabel = 'Nota Acumuladas'
      FieldName = 'DANFACUM'
      Origin = 'SG_ASSOC.DUPAGRU.DANFACUM'
      Size = 100
    end
    object qr_dupagruDATOTNF: TFloatField
      DisplayLabel = 'Total das Notas'
      FieldName = 'DATOTNF'
      Origin = 'SG_ASSOC.DUPAGRU.DATOTNF'
    end
  end
  object src_dupagru: TDataSource
    DataSet = qr_dupagru
    Left = 656
    Top = 337
  end
end

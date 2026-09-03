object Frm_NFCE_Impressao: TFrm_NFCE_Impressao
  Left = 285
  Top = 124
  Width = 1109
  Height = 523
  Caption = 'Frm_NFCE_Impressao'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1101
    Height = 492
    ActivePage = tsQrCode
    Align = alClient
    TabOrder = 0
    object tsQrCode: TTabSheet
      Caption = 'QrCode'
      object Label1: TLabel
        Left = 8
        Top = 13
        Width = 21
        Height = 13
        Caption = 'Text'
      end
      object Label2: TLabel
        Left = 8
        Top = 69
        Width = 45
        Height = 13
        Caption = 'Encoding'
      end
      object Label3: TLabel
        Left = 184
        Top = 69
        Width = 51
        Height = 13
        Caption = 'Quiet zone'
      end
      object PaintBox1: TPaintBox
        Left = 288
        Top = 13
        Width = 201
        Height = 209
      end
      object edtText: TEdit
        Left = 8
        Top = 32
        Width = 265
        Height = 21
        TabOrder = 0
        Text = 'Hello world'
      end
      object cmbEncoding: TComboBox
        Left = 8
        Top = 88
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 1
        Text = 'Auto'
        Items.Strings = (
          'Auto'
          'Numeric'
          'Alphanumeric'
          'ISO-8859-1'
          'UTF-8 without BOM'
          'UTF-8 with BOM')
      end
      object edtQuietZone: TEdit
        Left = 184
        Top = 88
        Width = 89
        Height = 21
        TabOrder = 2
        Text = '4'
      end
      object Edit2: TEdit
        Left = 495
        Top = 151
        Width = 377
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'ABCDEFGHIJKLMNOPQRSTUVXWYZ'
      end
      object Edit3: TEdit
        Left = 495
        Top = 167
        Width = 377
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'abcdefghijklmnopqrstuvxwyz'
      end
      object Edit1: TEdit
        Left = 495
        Top = 184
        Width = 377
        Height = 21
        TabOrder = 5
        Text = '123456789012345678901234567890'
      end
    end
  end
  object cds_detalhe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 16
    object cds_detalheDETINFADPROD: TMemoField
      FieldName = 'DETINFADPROD'
      BlobType = ftMemo
    end
    object cds_detalhenomepro: TStringField
      FieldName = 'nomepro'
      Size = 254
    end
    object cds_detalheDETPRODQCOM: TFloatField
      FieldName = 'DETPRODQCOM'
    end
    object cds_detalheDETPRODCPROD: TFloatField
      FieldName = 'DETPRODCPROD'
    end
    object cds_detalheDETPRODNCM: TStringField
      FieldName = 'DETPRODNCM'
    end
    object cds_detalheDETPRODCFOP: TStringField
      FieldName = 'DETPRODCFOP'
      Size = 4
    end
    object cds_detalheDETPRODUCOM: TStringField
      FieldName = 'DETPRODUCOM'
    end
    object cds_detalheVDESC: TFloatField
      FieldName = 'VDESC'
    end
    object cds_detalheDETPRODVUNCOM: TFloatField
      FieldName = 'DETPRODVUNCOM'
    end
    object cds_detalheDETPRODVPROD: TFloatField
      FieldName = 'DETPRODVPROD'
    end
    object cds_detalheORI_PROD: TStringField
      FieldName = 'ORI_PROD'
      Size = 1
    end
    object cds_detalhecst: TStringField
      FieldName = 'cst'
      Size = 3
    end
    object cds_detalheICMSVBC: TFloatField
      FieldName = 'ICMSVBC'
    end
    object cds_detalhealiq_icms: TFloatField
      FieldName = 'aliq_icms'
    end
    object cds_detalheCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 4
    end
    object cds_detalhepercipi: TFloatField
      FieldName = 'percipi'
    end
    object cds_detalheitem_num: TIntegerField
      FieldName = 'item_num'
    end
    object cds_detalheCSTB_CBENEF: TStringField
      FieldName = 'CSTB_CBENEF'
      Size = 14
    end
    object cds_detalheVFRETE: TFloatField
      FieldName = 'VFRETE'
    end
  end
  object cds_cabecalho: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 24
    object cds_cabecalhoCHAVE_ACESSO: TStringField
      FieldName = 'CHAVE_ACESSO'
      Size = 50
    end
    object cds_cabecalhochave_acesso_calc: TStringField
      FieldName = 'chave_acesso_calc'
      Size = 60
    end
    object cds_cabecalhoEMITXNOME: TStringField
      FieldName = 'EMITXNOME'
      Size = 100
    end
    object cds_cabecalhoemicidadeuf: TStringField
      FieldName = 'emicidadeuf'
      Size = 120
    end
    object cds_cabecalhoEMITIE: TStringField
      FieldName = 'EMITIE'
      Size = 50
    end
    object cds_cabecalhoEMITIEST: TStringField
      FieldName = 'EMITIEST'
      Size = 50
    end
    object cds_cabecalhoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object cds_cabecalhoemit_endereco_comp: TStringField
      FieldName = 'emit_endereco_comp'
      Size = 200
    end
    object cds_cabecalhoTPIMP: TIntegerField
      FieldName = 'TPIMP'
    end
    object cds_cabecalhomodelo: TIntegerField
      FieldName = 'modelo'
    end
    object cds_cabecalhoemit_cnpj: TStringField
      FieldName = 'emit_cnpj'
      Size = 30
    end
    object cds_cabecalhofone_fax: TStringField
      FieldName = 'fone_fax'
      Size = 25
    end
    object cds_cabecalhocep_emit: TStringField
      FieldName = 'cep_emit'
      Size = 10
    end
    object cds_cabecalhosaida_entrada: TStringField
      FieldName = 'saida_entrada'
      Size = 1
    end
    object cds_cabecalhoIDENNF: TStringField
      FieldName = 'IDENNF'
      Size = 10
    end
    object cds_cabecalhonumeronf: TFloatField
      FieldName = 'numeronf'
    end
    object cds_cabecalhoIDEDEMI: TDateTimeField
      FieldName = 'IDEDEMI'
    end
    object cds_cabecalhoDATASAIDA: TDateTimeField
      FieldName = 'DATASAIDA'
    end
    object cds_cabecalhoHORASAIDA: TStringField
      FieldName = 'HORASAIDA'
      Size = 10
    end
    object cds_cabecalhoIDESERIE: TStringField
      FieldName = 'IDESERIE'
      Size = 3
    end
    object cds_cabecalhoIDENATOP: TStringField
      FieldName = 'IDENATOP'
      Size = 100
    end
    object cds_cabecalhoDESTISUF: TStringField
      FieldName = 'DESTISUF'
      Size = 2
    end
    object cds_cabecalhonomcli_codigo: TStringField
      FieldName = 'nomcli_codigo'
      Size = 254
    end
    object cds_cabecalhonum_prot: TStringField
      FieldName = 'num_prot'
      Size = 30
    end
    object cds_cabecalhodest_cnpj: TStringField
      FieldName = 'dest_cnpj'
      Size = 30
    end
    object cds_cabecalhoDESTENDERDESTXLGR: TStringField
      FieldName = 'DESTENDERDESTXLGR'
      Size = 100
    end
    object cds_cabecalhoDESTENDERDESTXBAIRRO: TStringField
      FieldName = 'DESTENDERDESTXBAIRRO'
      Size = 50
    end
    object cds_cabecalhoDESTENDERDESTCEP: TStringField
      FieldName = 'DESTENDERDESTCEP'
      Size = 9
    end
    object cds_cabecalhoDESTENDERDESTXMUN: TStringField
      FieldName = 'DESTENDERDESTXMUN'
      Size = 80
    end
    object cds_cabecalhodest_fone: TStringField
      FieldName = 'dest_fone'
      Size = 30
    end
    object cds_cabecalhoDESTENDERDESTUF: TStringField
      FieldName = 'DESTENDERDESTUF'
      Size = 2
    end
    object cds_cabecalhodest_inscricao: TStringField
      FieldName = 'dest_inscricao'
      Size = 50
    end
    object cds_cabecalhoTOTALICMSTOTVBC: TFloatField
      FieldName = 'TOTALICMSTOTVBC'
    end
    object cds_cabecalhoTOTALICMSTOTVICMS: TFloatField
      FieldName = 'TOTALICMSTOTVICMS'
    end
    object cds_cabecalhoTOTALICMSTOTVBCST: TFloatField
      FieldName = 'TOTALICMSTOTVBCST'
    end
    object cds_cabecalhoTOTALICMSTOTVST: TFloatField
      FieldName = 'TOTALICMSTOTVST'
    end
    object cds_cabecalhoTOTALICMSTOTVPROD: TFloatField
      FieldName = 'TOTALICMSTOTVPROD'
    end
    object cds_cabecalhoTOTALICMSTOTVFRETE: TFloatField
      FieldName = 'TOTALICMSTOTVFRETE'
    end
    object cds_cabecalhoTOTALICMSTOTVSEG: TFloatField
      FieldName = 'TOTALICMSTOTVSEG'
    end
    object cds_cabecalhoTOTALICMSTOTVDESC: TFloatField
      FieldName = 'TOTALICMSTOTVDESC'
    end
    object cds_cabecalhoTOTALICMSTOTVOUTRO: TFloatField
      FieldName = 'TOTALICMSTOTVOUTRO'
    end
    object cds_cabecalhoTOTALICMSTOTVIPI: TFloatField
      FieldName = 'TOTALICMSTOTVIPI'
    end
    object cds_cabecalhoTOTALICMSTOTVNF: TFloatField
      FieldName = 'TOTALICMSTOTVNF'
    end
    object cds_cabecalhovalor_texto: TStringField
      FieldName = 'valor_texto'
      Size = 50
    end
    object cds_cabecalhoemissao_texto: TStringField
      FieldName = 'emissao_texto'
      Size = 50
    end
    object cds_cabecalhoTT_XNOME: TStringField
      FieldName = 'TT_XNOME'
      Size = 100
    end
    object cds_cabecalhoTRANSPVEICTRANSPPLACA: TStringField
      FieldName = 'TRANSPVEICTRANSPPLACA'
      Size = 12
    end
    object cds_cabecalhoTRANSPVEICTRANSPUF: TStringField
      FieldName = 'TRANSPVEICTRANSPUF'
      Size = 2
    end
    object cds_cabecalhotransp_cnpj: TStringField
      FieldName = 'transp_cnpj'
      Size = 30
    end
    object cds_cabecalhoTT_XENDER: TStringField
      FieldName = 'TT_XENDER'
      Size = 100
    end
    object cds_cabecalhoTT_XMUN: TStringField
      FieldName = 'TT_XMUN'
      Size = 60
    end
    object cds_cabecalhoTT_UF: TStringField
      FieldName = 'TT_UF'
      Size = 2
    end
    object cds_cabecalhoTRANSPVOLQVOL: TIntegerField
      FieldName = 'TRANSPVOLQVOL'
    end
    object cds_cabecalhoTRANSPVOLMARCA: TStringField
      FieldName = 'TRANSPVOLMARCA'
      Size = 50
    end
    object cds_cabecalhoTRANSPVOLPESOB: TFloatField
      FieldName = 'TRANSPVOLPESOB'
    end
    object cds_cabecalhoTRANSPVOLPESOL: TFloatField
      FieldName = 'TRANSPVOLPESOL'
    end
    object cds_cabecalhoINFADICINFCPL: TMemoField
      FieldName = 'INFADICINFCPL'
      BlobType = ftMemo
    end
    object cds_cabecalhoINFADICINFADFISCO: TMemoField
      FieldName = 'INFADICINFADFISCO'
      BlobType = ftMemo
    end
    object cds_cabecalhoTOTALISSQNTOTVISS: TFloatField
      FieldName = 'TOTALISSQNTOTVISS'
    end
    object cds_cabecalhoTOTALISSQNTOTVBC: TFloatField
      FieldName = 'TOTALISSQNTOTVBC'
    end
    object cds_cabecalhofantasia_cliente: TStringField
      FieldName = 'fantasia_cliente'
      Size = 100
    end
    object cds_cabecalhoEMITIM: TStringField
      FieldName = 'EMITIM'
      Size = 50
    end
    object cds_cabecalhorecebemos: TStringField
      FieldName = 'recebemos'
      Size = 254
    end
    object cds_cabecalhorazao_fantasia: TStringField
      FieldName = 'razao_fantasia'
      Size = 100
    end
    object cds_cabecalhodata_vencimentos: TStringField
      FieldName = 'data_vencimentos'
      Size = 254
    end
    object cds_cabecalhofrete_cif_fob: TStringField
      FieldName = 'frete_cif_fob'
      Size = 1
    end
    object cds_cabecalhoTRANSPVOLESP: TStringField
      FieldName = 'TRANSPVOLESP'
      Size = 30
    end
    object cds_cabecalhoqrcode: TStringField
      FieldName = 'qrcode'
      Size = 500
    end
    object cds_cabecalhochacesso_bloco1: TStringField
      FieldName = 'chacesso_bloco1'
      Size = 60
    end
    object cds_cabecalhochacesso_bloco2: TStringField
      FieldName = 'chacesso_bloco2'
      Size = 60
    end
    object cds_cabecalhotpemis: TIntegerField
      FieldName = 'tpemis'
    end
    object cds_cabecalhodathorprot: TDateTimeField
      FieldName = 'dathorprot'
    end
    object cds_cabecalhovTotTrib: TFloatField
      FieldName = 'vTotTrib'
    end
    object cds_cabecalhoobscup: TMemoField
      FieldName = 'obscup'
      BlobType = ftMemo
    end
    object cds_cabecalhotpamb: TIntegerField
      FieldName = 'tpamb'
    end
    object cds_cabecalhoDESTXNOME: TStringField
      FieldName = 'DESTXNOME'
      Size = 100
    end
  end
  object cds_vcto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 32
    object cds_vctoVDATA: TDateTimeField
      FieldName = 'VDATA'
    end
    object cds_vctoVVALOR: TFloatField
      FieldName = 'VVALOR'
    end
    object cds_vctonumdup: TStringField
      FieldName = 'numdup'
      Size = 10
    end
    object cds_vctonomfpgto: TStringField
      FieldName = 'nomfpgto'
      Size = 30
    end
  end
end

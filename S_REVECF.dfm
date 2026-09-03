object Frm_REVECF: TFrm_REVECF
  Left = 181
  Top = 184
  BorderStyle = bsSingle
  Caption = 'Gerar Arquivos de Revendas de ECF'
  ClientHeight = 198
  ClientWidth = 407
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 198
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 79
      Top = 95
      Width = 35
      Height = 16
      Caption = 'M'#234's..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 210
      Top = 96
      Width = 33
      Height = 16
      Caption = 'Ano..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 171
      Width = 55
      Height = 16
      Caption = 'Arquivo..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 7
      Width = 44
      Height = 13
      Caption = 'Modelo..:'
    end
    object Label5: TLabel
      Left = 8
      Top = 29
      Width = 73
      Height = 13
      Caption = 'Cod. Controle..:'
    end
    object cb_mes: TComboBox
      Left = 116
      Top = 91
      Width = 81
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Janeiro'
      OnChange = cb_mesChange
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o '
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object cb_ano: TComboBox
      Left = 245
      Top = 92
      Width = 60
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 2
      ParentFont = False
      TabOrder = 1
      Text = '2012'
      OnChange = cb_anoChange
      Items.Strings = (
        '2010'
        '2011'
        '2012')
    end
    object btn_gerarecf: TButton
      Left = 160
      Top = 128
      Width = 75
      Height = 25
      Caption = '&Gerar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_gerarecfClick
    end
    object edt_arquivo: TEdit
      Left = 67
      Top = 166
      Width = 326
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = 'C:\SGE\REVECFJAN2012.txt'
    end
    object cb_modelo: TComboBox
      Left = 56
      Top = 3
      Width = 345
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Estabelecimento Fabricante ou Importador de ECF'
      Items.Strings = (
        'Estabelecimento Fabricante ou Importador de ECF'
        'Empresa Interventora Credenciada'
        'Contribuinte Usu'#225'rio ou Propriet'#225'rio de ECF'
        'Estabelecimento Revendedor de ECF (n'#227'o enquadrado no c'#243'digo 2)')
    end
    object CODCON: TEdit
      Left = 83
      Top = 26
      Width = 44
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnExit = CODCONExit
      OnKeyPress = CODCONKeyPress
    end
    object NOMCOM: TEdit
      Left = 127
      Top = 26
      Width = 273
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 10930928
      ReadOnly = True
      TabOrder = 6
    end
  end
  object Tb_RevECF: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select p2complemento as serie,'
      '          pdrefer as Iden,'
      '          crazao as razao,'
      '          ccnpj, ccpf,'
      '          cie as ie,'
      '          clog||'#39' '#39'||cbairro||'#39' '#39'||ccidade as endereco,'
      '          cuf as uf, '
      '          p1numnf as numnf, '
      '          p1datanf as data_nf'
      'from cadp01, cadp02, cadcli, cadpro '
      
        'where p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotse' +
        'q'
      
        '      and p1status<9 and p1codcli=ccodcli and p1emidoc=1 and p1t' +
        'ipo=1'
      '      and pdcodpro=p2codpro')
    Left = 8
    Top = 88
    object Tb_RevECFSERIE: TMemoField
      FieldName = 'SERIE'
      Origin = 'SG_ASSOC.CADP02.P2COMPLEMENTO'
      BlobType = ftMemo
      Size = 500
    end
    object Tb_RevECFIDEN: TStringField
      FieldName = 'IDEN'
      Origin = 'SG_ASSOC.CADPRO.PDREFER'
    end
    object Tb_RevECFRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 60
    end
    object Tb_RevECFCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Tb_RevECFCCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Tb_RevECFIE: TStringField
      FieldName = 'IE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Tb_RevECFENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 122
    end
    object Tb_RevECFUF: TStringField
      FieldName = 'UF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_RevECFNUMNF: TFloatField
      FieldName = 'NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Tb_RevECFDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
  end
end

object DM_MYSQL: TDM_MYSQL
  OldCreateOrder = False
  OnCreate = fr
  Left = 523
  Top = 243
  Height = 306
  Width = 404
  object SQLConnection_NFE: TSQLConnection
    ConnectionName = 'MySQL50'
    DriverName = 'MySQL50'
    GetDriverFunc = 'getSQLDriverMYSQL50'
    KeepConnection = False
    LibraryName = 'dbxopenmysql50.dll'
    LoginPrompt = False
    Params.Strings = (
      'ErrorResourceFile=LocaleCode=0000'
      'BlobSize=-1'
      'Password=1478'
      'User_Name=wakri'
      'Database=gw'
      'HostName=localhost'
      'DriverName=MySQL50')
    VendorLib = 'libmysql.dll'
    Left = 40
    Top = 80
  end
  object SQLConnection_CEP: TSQLConnection
    ConnectionName = 'MySQL50'
    DriverName = 'MySQL50'
    GetDriverFunc = 'getSQLDriverMYSQL50'
    KeepConnection = False
    LibraryName = 'dbxopenmysql50.dll'
    LoginPrompt = False
    Params.Strings = (
      'ErrorResourceFile=LocaleCode=0000'
      'BlobSize=-1'
      'Password=1478'
      'User_Name=wakri'
      'Database=gw'
      'HostName=10.1.1.2'
      'DriverName=MySQL50')
    VendorLib = 'libmysql.dll'
    Left = 40
    Top = 16
  end
  object SQLConnection_PEDELE: TSQLConnection
    ConnectionName = 'MySQL50'
    DriverName = 'MySQL50'
    GetDriverFunc = 'getSQLDriverMYSQL50'
    KeepConnection = False
    LibraryName = 'dbxopenmysql50.dll'
    LoginPrompt = False
    Params.Strings = (
      'ErrorResourceFile=LocaleCode=0000'
      'BlobSize=-1'
      'Password=brasil6@'
      'User_Name=frutosdocerrado6'
      'Database=frutosdocerrado6'
      'HostName=186.202.152.5'
      'DriverName=MySQL50')
    VendorLib = 'libmysql.dll'
    Left = 168
    Top = 104
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from clientes'
      '')
    SQLConnection = SQLConnection_PEDELE
    Left = 72
    Top = 200
    object IntegerField1: TIntegerField
      FieldName = 'CODCLI'
    end
    object StringField1: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object StringField2: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
  end
  object Tb_Cli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from clientes'
      '')
    SQLConnection = SQLConnection_PEDELE
    Left = 72
    Top = 168
    object Tb_CliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object Tb_CliCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object Tb_CliRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object Tb_CliTIPOPRECO: TIntegerField
      FieldName = 'TIPOPRECO'
    end
  end
  object dsp_cli: TDataSetProvider
    DataSet = Tb_Cli
    Left = 120
    Top = 168
  end
  object CDS_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cli'
    Left = 168
    Top = 168
    object CDS_CliCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object CDS_CliCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object CDS_CliRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object CDS_CliTIPOPRECO: TIntegerField
      FieldName = 'TIPOPRECO'
    end
  end
  object Src_cli: TDataSource
    DataSet = CDS_Cli
    Left = 256
    Top = 168
  end
end

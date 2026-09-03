object DM1_ADO: TDM1_ADO
  OldCreateOrder = False
  Left = 334
  Top = 97
  Height = 339
  Width = 337
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDAORA.1;Password=DEZENOVE;User ID=SGE_LS06;Data Sourc' +
      'e=ORCLDEZG;Persist Security Info=True'
    KeepConnection = False
    LoginPrompt = False
    Provider = 'MSDAORA.1'
    Left = 37
    Top = 28
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 93
    Top = 28
  end
end

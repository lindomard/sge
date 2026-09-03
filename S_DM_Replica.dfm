object DM_Replica: TDM_Replica
  OldCreateOrder = False
  Left = 315
  Top = 249
  Height = 180
  Width = 132
  object DB_REPLICA: TDatabase
    DatabaseName = 'SG_REPLICA'
    DriverName = 'ORACLE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=SGE_172'
      'USER NAME=SGE_MEDGOIAS'
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=dezenove')
    SessionName = 'Default'
    Left = 24
    Top = 16
  end
end

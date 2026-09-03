object Frm_Stru2: TFrm_Stru2
  Left = 194
  Top = 114
  Width = 364
  Height = 124
  Caption = 'Tabelas Interbase'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object IBSQL1: TIBSQL
    Database = IBDatabase1
    ParamCheck = True
    Transaction = IBTransaction1
    Left = 152
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 128
    Top = 32
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = 'C:\dados\BANCO.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    AllowStreamedConnected = False
    Left = 88
    Top = 32
  end
end

object Frm_WebService: TFrm_WebService
  Left = 307
  Top = 134
  Width = 679
  Height = 375
  Caption = 'Frm_WebService'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_localconexao: TLabel
    Left = 0
    Top = 0
    Width = 671
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'lbl_localconexao'
  end
  object lbl_encontrado: TLabel
    Left = 0
    Top = 13
    Width = 671
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'lbl_localconexao'
  end
  object SoapConnection1: TSoapConnection
    Agent = 'Borland SOAP 1.2'
    Connected = True
    URL = 
      'http://127.0.0.1/webservice_sge/SGE_WEBSERVER.exe/soap/IAppserve' +
      'r'
    SOAPServerIID = 'IAppServerSOAP - {C99F4735-D6D2-495C-8CA2-E53E5A439E61}'
    UseSOAPAdapter = True
    Left = 48
    Top = 160
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ClientDataSet1Field1'
        DataType = ftTypedBinary
      end>
    IndexDefs = <>
    Params = <>
    RemoteServer = SoapConnection1
    StoreDefs = True
    Left = 104
    Top = 136
  end
  object Table1: TTable
    Left = 176
    Top = 160
  end
end

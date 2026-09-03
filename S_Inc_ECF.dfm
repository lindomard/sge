object Frm_Inc_ECF: TFrm_Inc_ECF
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Frm_Inc_ECF'
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
  object Tb_IncECF: TTable
    DatabaseName = '\TEMP'
    FieldDefs = <
      item
        Name = 'Tb_IncECFField1'
      end>
    StoreDefs = True
    TableName = 'CADINCECF'
    Left = 48
    Top = 64
  end
end

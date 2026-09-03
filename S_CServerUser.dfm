object Frm_CServerUser: TFrm_CServerUser
  Left = 66
  Top = 107
  Width = 670
  Height = 375
  Caption = 'Usu'#225'rios do Sistema'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 662
    Height = 316
    Align = alClient
    Caption = 'Status dos Usu'#225'rios do Sistema:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 658
      Height = 299
      Align = alClient
      DataSource = Src_Usr
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODUSR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMUSR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Empresa'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 316
    Width = 662
    Height = 25
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 7
      Width = 124
      Height = 13
      Caption = 'Usu'#225'rio ou Endere'#231'o:'
    end
    object USUARIO: TEdit
      Left = 131
      Top = 1
      Width = 331
      Height = 21
      TabOrder = 0
    end
    object conectar: TBitBtn
      Left = 465
      Top = 2
      Width = 98
      Height = 22
      Caption = '&Conectar'
      TabOrder = 1
      OnClick = conectarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000333300
        0000377777F3337777770FFFF099990FFFF07FFFF7FFFF7FFFF7000000999900
        00007777777777777777307703399330770337FF7F37F337FF7F300003399330
        000337777337F337777333333339933333333FFFFFF7F33FFFFF000000399300
        0000777777F7F37777770FFFF099990FFFF07FFFF7F7FF7FFFF7000000999900
        00007777777777777777307703399330770337FF7F37F337FF7F300003399330
        0003377773F7FFF77773333330000003333333333777777F3333333330FFFF03
        3333333337FFFF7F333333333000000333333333377777733333333333077033
        33333333337FF7F3333333333300003333333333337777333333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 563
      Top = 2
      Width = 98
      Height = 22
      Caption = 'C&ancelar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object Qr_Usr: TQuery
    OnCalcFields = Qr_UsrCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADUSR'
      'order by NOMUSR')
    Left = 160
    Top = 56
    object Qr_UsrCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CODEMP'
      Origin = 'SG_ASSOC.CADUSR.CODEMP'
    end
    object Qr_UsrCODUSR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODUSR'
      Origin = 'SG_ASSOC.CADUSR.CODUSR'
    end
    object Qr_UsrNOMUSR: TStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldName = 'NOMUSR'
      Origin = 'SG_ASSOC.CADUSR.NOMUSR'
      Size = 40
    end
    object Qr_UsrCODCAR: TFloatField
      DisplayLabel = 'Cargo'
      FieldName = 'CODCAR'
      Origin = 'SG_ASSOC.CADUSR.CODCAR'
    end
    object Qr_UsrSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = 'SG_ASSOC.CADUSR.SENHA'
    end
    object Qr_UsrCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'CODVEN'
      Origin = 'SG_ASSOC.CADUSR.CODVEN'
    end
    object Qr_UsrENDERECOIP: TStringField
      DisplayLabel = 'Endere'#231'o IP'
      FieldName = 'ENDERECOIP'
      Origin = 'SG_ASSOC.CADUSR.ENDERECOIP'
      Size = 40
    end
    object Qr_UsrEmpresa: TStringField
      FieldKind = fkCalculated
      FieldName = 'Empresa'
      Size = 40
      Calculated = True
    end
    object Qr_Usrestado: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'estado'
      Size = 15
      Calculated = True
    end
  end
  object Src_Usr: TDataSource
    DataSet = Qr_Usr
    Left = 192
    Top = 56
  end
end

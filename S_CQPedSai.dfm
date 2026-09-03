object Frm_CQPedSai: TFrm_CQPedSai
  Left = 340
  Top = 208
  BorderStyle = bsSingle
  Caption = 'CONTROLE DE QUALIDADE [ SAIDA DE MERCADORIA ]'
  ClientHeight = 377
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 7
    Width = 42
    Height = 13
    Caption = 'Pedido..:'
  end
  object Label2: TLabel
    Left = 198
    Top = 7
    Width = 35
    Height = 13
    Caption = 'Data ..:'
  end
  object Label3: TLabel
    Left = 43
    Top = 37
    Width = 41
    Height = 13
    Caption = 'Cliente..:'
  end
  object Label4: TLabel
    Left = 27
    Top = 61
    Width = 58
    Height = 13
    Caption = 'Endere'#231'o..::'
  end
  object Label8: TLabel
    Left = 4
    Top = 85
    Width = 81
    Height = 13
    Caption = 'Transportadora..:'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 200
    Width = 375
    Height = 177
    Align = alBottom
    DataSource = DM1.Src_CADCONQ
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'selecionado'
        Title.Caption = 'OK'
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CQ_NOME'
        Title.Caption = 'NOME'
        Width = 317
        Visible = True
      end>
  end
  object CHAVEP: TEdit
    Left = 46
    Top = 3
    Width = 121
    Height = 21
    TabOrder = 1
    OnEnter = CHAVEPEnter
    OnExit = CHAVEPExit
  end
  object DATAP: TDateEdit
    Left = 237
    Top = 3
    Width = 121
    Height = 21
    Color = 16776176
    NumGlyphs = 2
    ReadOnly = True
    TabOrder = 2
  end
  object FORN: TEdit
    Left = 87
    Top = 33
    Width = 271
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object ENDFOR: TEdit
    Left = 87
    Top = 57
    Width = 271
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 111
    Width = 375
    Height = 89
    Align = alBottom
    Caption = 'Dados da NF'
    TabOrder = 5
    object Label5: TLabel
      Left = 12
      Top = 19
      Width = 17
      Height = 13
      Caption = 'NF:'
    end
    object Label6: TLabel
      Left = 156
      Top = 18
      Width = 26
      Height = 13
      Caption = 'Data:'
    end
    object Label7: TLabel
      Left = 8
      Top = 40
      Width = 84
      Height = 13
      Caption = 'Chave de Acesso'
    end
    object NUMNF: TEdit
      Left = 32
      Top = 16
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object DATANF: TDateEdit
      Left = 186
      Top = 15
      Width = 121
      Height = 21
      Color = 16776176
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 1
    end
    object CHAVE_ACESSO: TMaskEdit
      Left = 8
      Top = 56
      Width = 305
      Height = 21
      EditMask = 
        '0000\-0000\-0000\-0000\-0000\-0000\-0000\-0000\-0000\-0000\-0000' +
        ';1;_'
      MaxLength = 54
      ReadOnly = True
      TabOrder = 2
      Text = '1234-5678-9012-3456-7890-1234-5678-9012-3456-7890-1234'
    end
  end
  object TRANSP: TEdit
    Left = 87
    Top = 81
    Width = 271
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 288
    Top = 123
  end
end

inherited Frm_DadSint: TFrm_DadSint
  Left = 175
  Top = 5
  Height = 554
  Caption = 'Dados Sintegra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      OnExit = CAMPOExit
      Items.Strings = (
        'Data'
        'Impressora')
    end
    inherited Edit1: TMaskEdit
      Width = 180
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      Text = '  /  /    '
    end
  end
  inherited PC1: TPageControl
    Height = 385
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 143
        Height = 13
        Caption = 'C'#243'digo da Impressora.....'
      end
      object Label2: TLabel
        Left = 8
        Top = 31
        Width = 144
        Height = 13
        Caption = 'Data.............................'
      end
      object Label3: TLabel
        Left = 9
        Top = 51
        Width = 145
        Height = 13
        Caption = 'Contador de Redu'#231#227'o.....'
      end
      object Label4: TLabel
        Left = 9
        Top = 70
        Width = 137
        Height = 13
        Caption = 'Contador Reinicio Oper:'
      end
      object Label5: TLabel
        Left = 11
        Top = 92
        Width = 142
        Height = 13
        Caption = 'Valor da Venda Bruta.....'
      end
      object Label6: TLabel
        Left = 260
        Top = 93
        Width = 137
        Height = 13
        Caption = 'Valor Venda L'#237'quida.....'
      end
      object Label7: TLabel
        Left = 11
        Top = 113
        Width = 141
        Height = 13
        Caption = 'Vendas Canceladas.......'
      end
      object Label8: TLabel
        Left = 11
        Top = 134
        Width = 137
        Height = 13
        Caption = 'Acr'#233'scimos..................'
      end
      object Label9: TLabel
        Left = 261
        Top = 135
        Width = 137
        Height = 13
        Caption = 'Descontos...................'
      end
      object Label10: TLabel
        Left = 11
        Top = 155
        Width = 138
        Height = 13
        Caption = 'Valor do ISSQN............'
      end
      object Label11: TLabel
        Left = 260
        Top = 156
        Width = 142
        Height = 13
        Caption = 'Isentas.........................'
      end
      object Label12: TLabel
        Left = 12
        Top = 176
        Width = 137
        Height = 13
        Caption = 'N'#227'o Incidente..............'
      end
      object Label13: TLabel
        Left = 261
        Top = 177
        Width = 137
        Height = 13
        Caption = 'Substiui'#231#227'o Tribut'#225'ria...'
      end
      object DBEdit1: TDBEdit
        Left = 144
        Top = 6
        Width = 53
        Height = 19
        Ctl3D = False
        DataField = 'RSCODIMP'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 198
        Top = 3
        Width = 277
        Height = 21
        DataField = 'nomeimp'
        DataSource = DM1.Src_RSin01
        Enabled = False
        ParentColor = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 145
        Top = 26
        Width = 86
        Height = 19
        Ctl3D = False
        DataField = 'RSDATA'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 146
        Top = 46
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'RSCREDZ'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 146
        Top = 67
        Width = 52
        Height = 19
        Ctl3D = False
        DataField = 'RSCRO'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 146
        Top = 88
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSVDABRUT'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 395
        Top = 89
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSVDALIQ'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 146
        Top = 109
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSCUPCAN'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 146
        Top = 130
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSACRECUP'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 396
        Top = 131
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSDESCUP'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 146
        Top = 151
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSISSCUP'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 395
        Top = 152
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSISENTAS'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit13: TDBEdit
        Left = 146
        Top = 172
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSNAOINC'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 396
        Top = 173
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'RSSUBTRI'
        DataSource = DM1.Src_RSin01
        ParentCtl3D = False
        TabOrder = 13
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 195
        Width = 526
        Height = 162
        Align = alBottom
        Caption = 'Totais por Al'#237'quotas:'
        TabOrder = 14
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 135
          Width = 522
          Height = 25
          DataSource = DM1.Src_RSin02
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          TabOrder = 0
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 522
          Height = 120
          Align = alClient
          DataSource = DM1.Src_RSin02
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid2ColExit
          Columns = <
            item
              Expanded = False
              FieldName = 'RS2ALIQ'
              Width = 171
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RS2VALOR'
              Width = 251
              Visible = True
            end>
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 357
        DataSource = DM1.Src_RSin01
        Columns = <
          item
            Expanded = False
            FieldName = 'RSCODIMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSDATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSNSERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSSEQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSCRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSCREDZ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSCOO_FINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSCOO_INICIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSCUPCAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSACRECUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSDESCUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSISSCUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSISENTAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSNAOINC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSSUBTRI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSVDABRUT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RSVDALIQ'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 414
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 467
    inherited DBNavigator1: TDBNavigator
      DataSource = DM1.Src_RSin01
    end
    object CAPTURAR: TBitBtn
      Left = 321
      Top = 16
      Width = 180
      Height = 37
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = '&Capturar Redu'#231#245'es Anteriores'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = CAPTURARClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C6C6C6000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Layout = blGlyphTop
    end
  end
end

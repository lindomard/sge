inherited Frm_CP: TFrm_CP
  Left = 36
  Top = 132
  Height = 382
  Caption = 'Contas a Pagar'
  Font.Style = [fsBold]
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Items.Strings = (
        'Numero'
        'Cod.Fornecedor'
        'Data Emiss'#227'o')
    end
  end
  inherited Panel3: TPanel
    Top = 312
    Height = 43
    inherited PRIMEIRO: TYusoftGradientButton
      Height = 40
      OnClick = PRIMEIROClick
    end
    inherited ULTIMO: TYusoftGradientButton
      Height = 40
      OnClick = ULTIMOClick
    end
    inherited PROXIMO: TYusoftGradientButton
      Height = 40
      OnClick = PROXIMOClick
    end
    inherited ANTERIOR: TYusoftGradientButton
      Height = 40
      OnClick = ANTERIORClick
    end
    inherited INCLUIR: TYusoftGradientButton
      OnClick = INCLUIRClick
    end
    inherited ALTERAR: TYusoftGradientButton
      Height = 40
      OnClick = ALTERARClick
    end
    inherited EXCLUIR: TYusoftGradientButton
      Height = 40
      OnClick = EXCLUIRClick
    end
    inherited CANCELAR: TYusoftGradientButton
      Height = 40
      OnClick = CANCELARClick
    end
    inherited SAIR: TYusoftGradientButton
      Height = 40
    end
    inherited GRAVAR: TYusoftGradientButton
      Height = 40
    end
  end
  inherited PC1: TPageControl
    Height = 283
    ActivePage = tsTab
    TabIndex = 1
    inherited tsCad: TTabSheet
      Enabled = False
      object Label1: TLabel
        Left = 10
        Top = 6
        Width = 48
        Height = 13
        Caption = 'N'#250'mero:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 223
        Top = 6
        Width = 48
        Height = 13
        Caption = 'Parcela:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 10
        Top = 30
        Width = 95
        Height = 13
        Caption = 'C'#243'd.Fornecedor:'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 10
        Top = 52
        Width = 100
        Height = 13
        Caption = 'Data de Emiss'#227'o:'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 10
        Top = 75
        Width = 34
        Height = 13
        Caption = 'Valor:'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 223
        Top = 51
        Width = 106
        Height = 13
        Caption = 'Data Vencimento.:'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 10
        Top = 125
        Width = 41
        Height = 13
        Caption = 'Status:'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 10
        Top = 147
        Width = 92
        Height = 13
        Caption = 'Valor Desconto:'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 223
        Top = 147
        Width = 90
        Height = 13
        Caption = 'Data Desconto:'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 10
        Top = 169
        Width = 98
        Height = 13
        Caption = 'Desc.Concedido:'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 223
        Top = 169
        Width = 35
        Height = 13
        Caption = 'Juros:'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 10
        Top = 101
        Width = 67
        Height = 13
        Caption = 'C'#243'd.Banco:'
        FocusControl = DBEdit14
      end
      object Label12: TLabel
        Left = 10
        Top = 191
        Width = 85
        Height = 13
        Caption = 'Situa'#231'ao Pgto:'
      end
      object Label14: TLabel
        Left = 223
        Top = 192
        Width = 102
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label15: TLabel
        Left = 223
        Top = 213
        Width = 83
        Height = 13
        Caption = 'Lote de Baixa:'
      end
      object Label16: TLabel
        Left = 10
        Top = 213
        Width = 85
        Height = 13
        Caption = 'Data da Baixa:'
      end
      object Label17: TLabel
        Left = 11
        Top = 233
        Width = 83
        Height = 13
        Caption = 'Observa'#231#245'es.:'
      end
      object DBEdit1: TDBEdit
        Left = 115
        Top = 3
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CANUMERO'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 330
        Top = 3
        Width = 25
        Height = 19
        Ctl3D = False
        DataField = 'CADESD'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 115
        Top = 26
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CACODFOR'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 2
        OnExit = DBEdit3Exit
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 115
        Top = 49
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CADTEMIS'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 115
        Top = 72
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CAVALOR'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 330
        Top = 49
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CADTVCTO'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit7: TDBEdit
        Left = 115
        Top = 118
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CASTATUS'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 115
        Top = 141
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CAVALDES'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 330
        Top = 143
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CADTDESC'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 115
        Top = 164
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CADESC'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit11: TDBEdit
        Left = 330
        Top = 165
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CAJUROS'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit13: TDBEdit
        Left = 223
        Top = 26
        Width = 243
        Height = 19
        Ctl3D = False
        DataField = 'nomefor'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit14: TDBEdit
        Left = 115
        Top = 95
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CABANCO'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 6
        OnExit = DBEdit14Exit
        OnKeyPress = DBEdit14KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 115
        Top = 186
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'situacao'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit16: TDBEdit
        Left = 330
        Top = 209
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CALOTE'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBEdit17: TDBEdit
        Left = 115
        Top = 209
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CADTBX'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit18: TDBEdit
        Left = 330
        Top = 187
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'CACHAVEP'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBEdit15: TDBEdit
        Left = 222
        Top = 95
        Width = 243
        Height = 19
        Ctl3D = False
        DataField = 'nombco'
        DataSource = DM1.Src_CP
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit19: TDBEdit
        Left = 115
        Top = 230
        Width = 318
        Height = 19
        Ctl3D = False
        DataField = 'CAOBS'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        TabOrder = 18
      end
    end
    inherited tsTab: TTabSheet
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 702
        Height = 255
        Align = alClient
        DataSource = DM1.Src_CP
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CANUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADESD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CACODFOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADTEMIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAVALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADTVCTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CASTATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAVALDES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADTDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAJUROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CABANCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CALOTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomefor'
            Visible = True
          end>
      end
    end
  end
end

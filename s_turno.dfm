inherited Frm_Turnos: TFrm_Turnos
  Left = 333
  Top = 143
  Width = 891
  Height = 398
  Caption = 'Cadastro de Turnos'
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 883
    inherited lbl_emp: TLabel
      Left = 838
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited Edit1: TMaskEdit
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl
    Width = 883
    Height = 232
    ActivePage = tsTab
    inherited tsCad: TTabSheet
      object lbl_TR_CODTURNO: TLabel
        Left = 32
        Top = 16
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = DBE_TR_CODTURNO
      end
      object lbl_TR_DESCRICAO: TLabel
        Left = 336
        Top = 16
        Width = 62
        Height = 13
        Caption = 'Descri'#231#227'o:'
        FocusControl = DBE_TR_DESCRICAO
      end
      object lbl_TR_HRSE1: TLabel
        Left = 32
        Top = 53
        Width = 112
        Height = 13
        Caption = 'Horario de Entrada:'
        FocusControl = DBE_TR_HRSE1
      end
      object lbl_TR_HRSS1: TLabel
        Left = 334
        Top = 53
        Width = 136
        Height = 13
        Caption = 'Horario Saida Intervalo:'
        FocusControl = DBE_TR_HRSS1
      end
      object lbl_TR_HRSE2: TLabel
        Left = 32
        Top = 89
        Width = 148
        Height = 13
        Caption = 'Horario Entrada Intervalo:'
        FocusControl = DBE_TR_HRSE2
      end
      object lbl_TR_HRSS2: TLabel
        Left = 334
        Top = 89
        Width = 100
        Height = 13
        Caption = 'Horario de Saida:'
        FocusControl = DBE_TR_HRSS2
      end
      object DBE_TR_CODTURNO: TDBEdit
        Left = 32
        Top = 32
        Width = 134
        Height = 19
        Ctl3D = False
        DataField = 'TR_CODTURNO'
        DataSource = DM6.Ds_Turno
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBE_TR_DESCRICAO: TDBEdit
        Left = 336
        Top = 32
        Width = 394
        Height = 19
        Ctl3D = False
        DataField = 'TR_DESCRICAO'
        DataSource = DM6.Ds_Turno
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBE_TR_HRSE1: TDBEdit
        Left = 32
        Top = 69
        Width = 238
        Height = 19
        Ctl3D = False
        DataField = 'TR_HRSE1'
        DataSource = DM6.Ds_Turno
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBE_TR_HRSS1: TDBEdit
        Left = 334
        Top = 69
        Width = 238
        Height = 19
        Ctl3D = False
        DataField = 'TR_HRSS1'
        DataSource = DM6.Ds_Turno
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBE_TR_HRSE2: TDBEdit
        Left = 32
        Top = 105
        Width = 238
        Height = 19
        Ctl3D = False
        DataField = 'TR_HRSE2'
        DataSource = DM6.Ds_Turno
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBE_TR_HRSS2: TDBEdit
        Left = 334
        Top = 105
        Width = 238
        Height = 19
        Ctl3D = False
        DataField = 'TR_HRSS2'
        DataSource = DM6.Ds_Turno
        ParentCtl3D = False
        TabOrder = 5
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 875
        Height = 204
        DataSource = DM6.Ds_Turno
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TR_CODTURNO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_DESCRICAO'
            Title.Alignment = taCenter
            Width = 218
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_HRSE1'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_HRSS1'
            Title.Alignment = taCenter
            Title.Caption = 'Saida Intervalo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_HRSE2'
            Title.Alignment = taCenter
            Title.Caption = 'Entrada Intervalo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_HRSS2'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TR_CODEMP'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 261
    Width = 883
    inherited INCLUIR: TBitBtn
      Width = 128
    end
    inherited ALTERAR: TBitBtn
      Left = 131
      Width = 128
    end
    inherited EXCLUIR: TBitBtn
      Left = 258
      Width = 128
    end
    inherited GRAVAR: TBitBtn
      Left = 385
      Width = 128
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 512
      Width = 128
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 314
    Width = 883
    inherited DBNavigator1: TDBNavigator
      Width = 504
      DataSource = DM6.Ds_Turno
    end
    inherited SAIR: TBitBtn
      Left = 514
      Width = 128
    end
  end
end

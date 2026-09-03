inherited Frm_Transp: TFrm_Transp
  Left = 24
  Top = 77
  Width = 748
  Height = 462
  Caption = 'Cadastro de Transportadoras'
  Font.Style = [fsBold]
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 40
    Top = 64
    Width = 69
    Height = 13
    Caption = 'TRCODTRA'
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 104
    Width = 68
    Height = 13
    Caption = 'TRRAZTRA'
  end
  object Label3: TLabel [2]
    Left = 40
    Top = 144
    Width = 67
    Height = 13
    Caption = 'TRFANTRA'
  end
  inherited Panel1: TPanel
    Width = 740
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited Panel3: TPanel
    Top = 387
    Width = 740
    inherited PRIMEIRO: TYusoftGradientButton
      OnClick = PRIMEIROClick
    end
    inherited ULTIMO: TYusoftGradientButton
      Left = 75
      OnClick = ULTIMOClick
    end
    inherited PROXIMO: TYusoftGradientButton
      Left = 146
      OnClick = PROXIMOClick
    end
    inherited ANTERIOR: TYusoftGradientButton
      Left = 218
      OnClick = ANTERIORClick
    end
    inherited INCLUIR: TYusoftGradientButton
      Left = 289
      OnClick = INCLUIRClick
    end
    inherited ALTERAR: TYusoftGradientButton
      Left = 361
      OnClick = ALTERARClick
    end
    inherited EXCLUIR: TYusoftGradientButton
      Left = 504
      OnClick = EXCLUIRClick
    end
    inherited CANCELAR: TYusoftGradientButton
      Left = 576
      OnClick = CANCELARClick
    end
    inherited SAIR: TYusoftGradientButton
      Left = 644
    end
    inherited GRAVAR: TYusoftGradientButton
      Left = 433
    end
  end
  inherited PC1: TPageControl
    Width = 740
    Height = 358
    inherited tsCad: TTabSheet
      Enabled = False
    end
    inherited tsTab: TTabSheet
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 732
        Height = 330
        Align = alClient
        DataSource = DM1.Src_Tra
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'TRCODTRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRRAZTRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRFANTRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRTPLOG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRNLOG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRNUM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TRCOMPL'
            Visible = True
          end>
      end
    end
  end
end

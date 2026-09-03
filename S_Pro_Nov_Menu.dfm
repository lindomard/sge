inherited Frm_Pro_Nov_Menu: TFrm_Pro_Nov_Menu
  Left = 345
  Top = 127
  Height = 549
  Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited PC1: TPageControl
    Height = 325
    inherited tsCad: TTabSheet
      inherited Panel2: TPanel
        Height = 294
        inherited gb_estoque: TGroupBox
          Top = 247
        end
      end
    end
    inherited Tsad: TTabSheet
      inherited Bevel4: TBevel
        Left = -1
        Width = 769
      end
      inherited gb_dadosFiscais: TGroupBox
        Top = 19
        Width = 761
        inherited Label67: TLabel
          Left = 19
        end
        inherited Label69: TLabel
          Top = 36
        end
      end
    end
    inherited TsLote: TTabSheet
      inherited Panel9: TPanel
        Height = 253
        inherited DBGrid2: TDBGrid
          Height = 211
        end
        inherited GB_INFO_GRADE: TGroupBox
          Top = 212
        end
      end
    end
    inherited Ts_Kit: TTabSheet
      inherited DBG_KIT: TDBGrid
        Height = 242
      end
    end
    inherited tsFiscais: TTabSheet
      inherited gb_cst_icms: TGroupBox
        Top = 46
      end
      inherited gb_csosn_sn: TGroupBox
        Top = 126
      end
      inherited gb_cstipi: TGroupBox
        Top = 213
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 119
        Columns = <
          item
            Expanded = False
            FieldName = 'PDCODPRO'
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Title.Alignment = taCenter
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDREFER'
            Title.Alignment = taCenter
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDMARCA'
            Title.Alignment = taCenter
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pcoven'
            Title.Alignment = taCenter
            Title.Caption = 'Pre'#231'o 1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estoque'
            Title.Alignment = taCenter
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'saldo_filial'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPRECO2'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPRECO3'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDSECAO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Title.Alignment = taCenter
            Title.Caption = 'Und'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDDESC'
            Title.Alignment = taCenter
            Title.Caption = 'Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPMC'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diferenca'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCLAS'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPESOB'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDREGMS'
            Title.Alignment = taCenter
            Title.Caption = 'REG. M. SAUDE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDVALREGMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDFIS_CST_ICMS_EST_CF'
            Title.Alignment = taCenter
            Title.Caption = 'CST - CF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDFIS_CST_ICMS_EST_REV'
            Title.Alignment = taCenter
            Title.Caption = 'CST - REV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME_COMPRA'
            Title.Alignment = taCenter
            Width = 378
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDCOMPRA_UND'
            Title.Alignment = taCenter
            Width = 164
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Top = 119
      end
      inherited gb_promocao: TGroupBox
        Top = 178
      end
    end
    inherited tsObservacoes: TTabSheet
      inherited DBMemo_PDOBS: TDBMemo
        Height = 269
      end
    end
    inherited Tab_Filtros: TTabSheet
      inherited Panel4: TPanel
        Top = 230
      end
    end
  end
  inherited Panel5: TPanel
    Top = 492
  end
  inherited pop_excluir_prod: TPopupMenu
    Left = 175
  end
  inherited src_pro_cmet: TDataSource
    Left = 276
    Top = 122
  end
  inherited tb_cmet: TQuery
    Left = 308
    Top = 114
  end
  inherited u_cmet: TUpdateSQL
    Left = 276
    Top = 154
  end
  inherited Tb_Pro_cons: TQuery
    Left = 162
  end
end

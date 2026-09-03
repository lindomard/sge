object Frm_VisNF: TFrm_VisNF
  Left = 4
  Top = 21
  Width = 789
  Height = 549
  Caption = 'Visualiza'#231#227'o de Notas Fiscais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 773
    Height = 162
    Align = alTop
    Caption = 'Dados do Emitente:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label4: TLabel
      Left = 421
      Top = 103
      Width = 104
      Height = 13
      Caption = 'Incri'#231#227'o Estadual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape2: TShape
      Left = 414
      Top = 78
      Width = 365
      Height = 1
    end
    object Label1: TLabel
      Left = 418
      Top = 8
      Width = 166
      Height = 29
      Caption = 'NOTA FISCAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 424
      Top = 83
      Width = 36
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 621
      Top = 79
      Width = 157
      Height = 18
      AutoSize = False
      Caption = 'Data de Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 621
      Top = 44
      Width = 68
      Height = 29
      AutoSize = False
      Caption = 'S'#233'rie:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 633
      Top = 8
      Width = 36
      Height = 29
      AutoSize = False
      Caption = 'No.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 1
      Top = 103
      Width = 777
      Height = 1
    end
    object Shape3: TShape
      Left = 413
      Top = 5
      Width = 1
      Height = 125
    end
    object Shape4: TShape
      Left = 601
      Top = 5
      Width = 1
      Height = 125
    end
    object Shape5: TShape
      Left = 2
      Top = 129
      Width = 777
      Height = 1
    end
    object Label8: TLabel
      Left = 5
      Top = 104
      Width = 160
      Height = 13
      Caption = 'NATUREZADA OPERA'#199#195'O:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 5
      Top = 133
      Width = 93
      Height = 13
      Caption = 'DESTINATARIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 305
      Top = 132
      Width = 36
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 421
      Top = 132
      Width = 104
      Height = 13
      Caption = 'Incri'#231#227'o Estadual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 576
      Top = 131
      Width = 69
      Height = 13
      Caption = 'CIDADE/UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RAZSOC: TDBText
      Left = 6
      Top = 12
      Width = 403
      Height = 20
      Alignment = taCenter
      DataField = 'razao_emit'
      DataSource = Src_Nf01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ENDERECO: TDBText
      Left = 5
      Top = 35
      Width = 403
      Height = 20
      Alignment = taCenter
      DataField = 'endereco_emit'
      DataSource = Src_Nf01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CIDADE: TDBText
      Left = 5
      Top = 56
      Width = 403
      Height = 20
      Alignment = taCenter
      DataField = 'cid_uf_emit'
      DataSource = Src_Nf01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TELEFONE: TDBText
      Left = 4
      Top = 77
      Width = 403
      Height = 20
      Alignment = taCenter
      DataField = 'fone_emit'
      DataSource = Src_Nf01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 464
      Top = 83
      Width = 120
      Height = 17
      Alignment = taRightJustify
      DataField = 'cnpj'
      DataSource = Src_Nf01
    end
    object NUMNF: TDBText
      Left = 674
      Top = 10
      Width = 94
      Height = 29
      Alignment = taCenter
      Color = clRed
      DataField = 'numeronf'
      DataSource = Src_Nf01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SERIE: TDBText
      Left = 725
      Top = 41
      Width = 42
      Height = 29
      Alignment = taCenter
      Color = clRed
      DataField = 'SERIE'
      DataSource = Src_Nf01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 624
      Top = 105
      Width = 125
      Height = 23
      Alignment = taCenter
      Color = clRed
      DataField = 'DATANF'
      DataSource = Src_Nf01
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -20
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 422
      Top = 116
      Width = 164
      Height = 11
      Alignment = taRightJustify
      DataField = 'inscricao'
      DataSource = Src_Nf01
    end
    object DBText4: TDBText
      Left = 256
      Top = 144
      Width = 125
      Height = 13
      Alignment = taRightJustify
      DataField = 'cnpj_dest'
      DataSource = Src_Nf01
    end
    object DBText5: TDBText
      Left = 410
      Top = 145
      Width = 140
      Height = 14
      Alignment = taCenter
      DataField = 'ie_dest'
      DataSource = Src_Nf01
    end
    object DBText6: TDBText
      Left = 574
      Top = 143
      Width = 195
      Height = 17
      DataField = 'cidade_dest'
      DataSource = Src_Nf01
    end
    object natop: TLabel
      Left = 4
      Top = 116
      Width = 407
      Height = 13
      AutoSize = False
      Caption = 'natop'
    end
    object DBText17: TDBText
      Left = 6
      Top = 146
      Width = 267
      Height = 13
      DataField = 'razao_dest'
      DataSource = Src_Nf01
    end
    object Cb_Saida: TCheckBox
      Left = 505
      Top = 39
      Width = 79
      Height = 16
      Caption = 'Sa'#237'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Cb_Entrada: TCheckBox
      Left = 421
      Top = 39
      Width = 68
      Height = 17
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 162
    Width = 773
    Height = 262
    Align = alClient
    Caption = 'DADOS DO PRODUTO'
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 14
      Width = 771
      Height = 156
      Align = alClient
      DataSource = Src_NF02
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEM'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPROD'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLPRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTDES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valortotal'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITTRI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFOP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQ'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMSN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMSR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BASENR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQNR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ICMSNR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ISENTAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESC01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESC02'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESC03'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIQN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TABICM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LISTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALIPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PMC'
          Visible = True
        end>
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 170
      Width = 771
      Height = 91
      ActivePage = TabSheet5
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Totais por Lista de Produtos'
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 771
          Height = 63
          Align = alClient
          DataSource = Src_TotLista
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nomlista'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTLIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTISEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIPI'
              Visible = True
            end>
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Totais Por CFOP'
        ImageIndex = 1
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 771
          Height = 63
          Align = alClient
          DataSource = Src_CFOP
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PF2CFO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTLIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTISEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIPI'
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Totais Por Situa'#231#227'o Tribut'#225'ria'
        ImageIndex = 2
        object DBGrid4: TDBGrid
          Left = 0
          Top = 0
          Width = 771
          Height = 63
          Align = alClient
          DataSource = Src_SitTri
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PF2SIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTLIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTISEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIPI'
              Visible = True
            end>
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Totais por Al'#237'quota'
        ImageIndex = 3
        object DBGrid5: TDBGrid
          Left = 0
          Top = 0
          Width = 771
          Height = 63
          Align = alClient
          DataSource = Src_TotAliq
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'TOTLIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ICMSR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTISEN'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRIPI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PF2ALIQ'
              Visible = True
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Duplicatas'
        ImageIndex = 4
        object DBGrid6: TDBGrid
          Left = 0
          Top = 0
          Width = 763
          Height = 63
          Align = alClient
          DataSource = Src_Dup
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'DTVENC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtdesc'
              Visible = True
            end>
        end
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 424
    Width = 773
    Height = 87
    Align = alBottom
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Shape6: TShape
      Left = 1
      Top = 46
      Width = 777
      Height = 1
    end
    object Label14: TLabel
      Left = 5
      Top = 8
      Width = 127
      Height = 13
      Caption = 'Base de C'#225'lculo ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 197
      Top = 8
      Width = 82
      Height = 13
      Caption = 'Valor do ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 329
      Top = 9
      Width = 136
      Height = 13
      Caption = 'Base de C'#225'lc.ICMS Sub'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 502
      Top = 10
      Width = 111
      Height = 13
      Caption = 'Icms Sub.Tribut'#225'ria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 656
      Top = 9
      Width = 108
      Height = 13
      Caption = 'Total dos Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape7: TShape
      Left = 320
      Top = 6
      Width = 1
      Height = 97
    end
    object Shape8: TShape
      Left = 160
      Top = 6
      Width = 1
      Height = 98
    end
    object Shape9: TShape
      Left = 480
      Top = 6
      Width = 1
      Height = 97
    end
    object Shape10: TShape
      Left = 640
      Top = 6
      Width = 1
      Height = 97
    end
    object Label19: TLabel
      Left = 7
      Top = 50
      Width = 30
      Height = 13
      Caption = 'Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 197
      Top = 50
      Width = 41
      Height = 13
      Caption = 'Seguro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 329
      Top = 50
      Width = 72
      Height = 13
      Caption = 'Desp. Assec'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 502
      Top = 50
      Width = 17
      Height = 13
      Caption = 'IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 656
      Top = 50
      Width = 79
      Height = 13
      Caption = 'Total da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 7
      Top = 26
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'BASEN'
      DataSource = Src_Nf01
    end
    object DBText8: TDBText
      Left = 173
      Top = 26
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'ICMSN'
      DataSource = Src_Nf01
    end
    object DBText9: TDBText
      Left = 332
      Top = 26
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'BASER'
      DataSource = Src_Nf01
    end
    object DBText10: TDBText
      Left = 497
      Top = 26
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'ICMSR'
      DataSource = Src_Nf01
    end
    object DBText11: TDBText
      Left = 647
      Top = 26
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'TOTMER'
      DataSource = Src_Nf01
    end
    object DBText12: TDBText
      Left = 5
      Top = 66
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'VALFRE'
      DataSource = Src_Nf01
    end
    object DBText13: TDBText
      Left = 171
      Top = 66
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'VALSEG'
      DataSource = Src_Nf01
    end
    object DBText14: TDBText
      Left = 330
      Top = 66
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'TOTOUT'
      DataSource = Src_Nf01
    end
    object DBText15: TDBText
      Left = 495
      Top = 66
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'TOTIPI'
      DataSource = Src_Nf01
    end
    object DBText16: TDBText
      Left = 645
      Top = 66
      Width = 123
      Height = 17
      Alignment = taRightJustify
      DataField = 'TOTLIQ'
      DataSource = Src_Nf01
    end
  end
  object Qr_nf02: TQuery
    OnCalcFields = Qr_nf02CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2CODPRO   AS CODPROD '
      ',PF2CFO     AS CFOP'
      ' ,PF2QTDP    AS QUANTIDADE '
      ' ,PF2ITEM    AS ITEM '
      ' ,PF2PU      AS VLPRODUTO '
      ' ,PF2ALIQ    AS ALIQ '
      ' ,PF2LOTE    AS LOTE '
      ',PF2DATAV   AS DATAV'
      ' ,PF2DESC01  AS PDESC01 '
      ',PF2DESC02  AS PDESC02 '
      ' ,PF2DESC03  AS PDESC03 '
      ' ,PF2SIT     AS SITTRI '
      ' ,PF2ALIQ    AS ALIQN '
      ' ,PF2ALIQNR  AS ALIQNR '
      ',PF2BASEN   AS BASEN '
      '  ,PF2ICMSN   AS ICMSN '
      '  ,PF2BASER   AS BASER '
      ' ,PF2ICMSR   AS ICMSR '
      ' ,PF2TAB  AS TABICM '
      '  ,PF2LISTA   AS LISTA '
      '   ,PF2TOTDES  AS TOTDES '
      ',PF2BASENR  AS BASENR '
      ' ,PF2ICMSNR  AS ICMSNR '
      '  ,PF2ISENTAS AS ISENTAS '
      '   ,PF2ALIPI   AS ALIPI'
      '  ,PF2IPI     AS VALIPI '
      '   ,PF2PMC     AS PMC '
      '   ,PDNOME     AS DESCRICAO '
      ',PDUND      AS UNID '
      ' from CADPF2,CADPRO where'
      'PF2CODEMP=1 '
      ' and  PF2LOTSEQ=0'
      ' and PF2CHAVE=13830'
      'and PDCODPRO=PF2CODPRO ')
    Left = 304
    Top = 16
    object Qr_nf02CODPROD: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPROD'
      Origin = 'SG_ASSOC.CADPF2.PF2CODPRO'
    end
    object Qr_nf02CFOP: TFloatField
      FieldName = 'CFOP'
      Origin = 'SG_ASSOC.CADPF2.PF2CFO'
    end
    object Qr_nf02QUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = 'SG_ASSOC.CADPF2.PF2QTDP'
    end
    object Qr_nf02ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'ITEM'
      Origin = 'SG_ASSOC.CADPF2.PF2ITEM'
    end
    object Qr_nf02VLPRODUTO: TFloatField
      DisplayLabel = 'Pre'#231'o Unit.'
      FieldName = 'VLPRODUTO'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_nf02ALIQ: TFloatField
      DisplayLabel = 'Al'#237'q.'
      FieldName = 'ALIQ'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQ'
    end
    object Qr_nf02LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Qr_nf02DATAV: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'DATAV'
      Origin = 'SG_ASSOC.CADPF2.PF2DATAV'
    end
    object Qr_nf02PDESC01: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'PDESC01'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC01'
    end
    object Qr_nf02PDESC02: TFloatField
      DisplayLabel = '%Desc.02'
      FieldName = 'PDESC02'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC02'
    end
    object Qr_nf02PDESC03: TFloatField
      DisplayLabel = '%Desc03'
      FieldName = 'PDESC03'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC03'
    end
    object Qr_nf02SITTRI: TStringField
      DisplayLabel = 'Sit.Trib'
      FieldName = 'SITTRI'
      Origin = 'SG_ASSOC.CADPF2.PF2SIT'
      Size = 3
    end
    object Qr_nf02ALIQN: TFloatField
      DisplayLabel = 'Al'#237'q'
      FieldName = 'ALIQN'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQ'
    end
    object Qr_nf02ALIQNR: TFloatField
      DisplayLabel = 'Al'#237'q'
      FieldName = 'ALIQNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIQNR'
    end
    object Qr_nf02BASEN: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BASEN'
      Origin = 'SG_ASSOC.CADPF2.PF2BASEN'
    end
    object Qr_nf02ICMSN: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'ICMSN'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSN'
    end
    object Qr_nf02BASER: TFloatField
      DisplayLabel = 'Base ST'
      FieldName = 'BASER'
      Origin = 'SG_ASSOC.CADPF2.PF2BASER'
    end
    object Qr_nf02ICMSR: TFloatField
      DisplayLabel = 'ICMS ST'
      FieldName = 'ICMSR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSR'
    end
    object Qr_nf02TABICM: TStringField
      DisplayLabel = 'Tab.ICMS'
      FieldName = 'TABICM'
      Origin = 'SG_ASSOC.CADPF2.PF2TAB'
      Size = 1
    end
    object Qr_nf02LISTA: TFloatField
      DisplayLabel = 'Lista'
      FieldName = 'LISTA'
      Origin = 'SG_ASSOC.CADPF2.PF2LISTA'
    end
    object Qr_nf02TOTDES: TFloatField
      DisplayLabel = 'Tot.Desc.'
      FieldName = 'TOTDES'
      Origin = 'SG_ASSOC.CADPF2.PF2TOTDES'
    end
    object Qr_nf02BASENR: TFloatField
      DisplayLabel = 'Bs.Cal.Nor.Ret'
      FieldName = 'BASENR'
      Origin = 'SG_ASSOC.CADPF2.PF2BASENR'
    end
    object Qr_nf02ICMSNR: TFloatField
      DisplayLabel = 'ICMS do Ret.'
      FieldName = 'ICMSNR'
      Origin = 'SG_ASSOC.CADPF2.PF2ICMSNR'
    end
    object Qr_nf02ISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'ISENTAS'
      Origin = 'SG_ASSOC.CADPF2.PF2ISENTAS'
    end
    object Qr_nf02ALIPI: TFloatField
      DisplayLabel = 'Al.IPI'
      FieldName = 'ALIPI'
      Origin = 'SG_ASSOC.CADPF2.PF2ALIPI'
    end
    object Qr_nf02VALIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VALIPI'
      Origin = 'SG_ASSOC.CADPF2.PF2IPI'
    end
    object Qr_nf02PMC: TFloatField
      FieldName = 'PMC'
      Origin = 'SG_ASSOC.CADPF2.PF2PMC'
    end
    object Qr_nf02DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'DESCRICAO'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 40
    end
    object Qr_nf02UNID: TStringField
      DisplayLabel = 'UND'
      FieldName = 'UNID'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_nf02valortotal: TFloatField
      DisplayLabel = 'Vlr.Total'
      FieldKind = fkCalculated
      FieldName = 'valortotal'
      Calculated = True
    end
  end
  object Src_NF02: TDataSource
    DataSet = Qr_nf02
    Left = 332
    Top = 16
  end
  object Qr_Nf01: TQuery
    OnCalcFields = Qr_Nf01CalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select (PF1CODEMP-PF1CODEMP) AS FORCLI '
      ',PF1CODFOR  AS CODIGO '
      ',PF1DATA    AS DATAPED '
      ',PF1DESC01  AS PDESC01 '
      ',PF1DESC02  AS PDESC02 '
      ',(PF1DESC03-PF1DESC03) AS PDESC03 '
      ', PF1DESC03 AS DESCVLR '
      ',PF1TOTDES  AS TOTDES '
      ',PF1TOTBRU  AS TOTMER '
      ',PF1TOTLIQ  AS TOTLIQ '
      ',PF1STATUS  AS STATUS '
      ',PF1TOTPOS  AS TOTPOS'
      ',PF1TOTNEG  AS TOTNEG '
      ',PF1TOTINA  AS TOTINA '
      ',PF1TOTFRE  AS VALFRE '
      ',PF1TOTSEG  AS VALSEG '
      ',PF1BASEN   AS BASEN '
      ',PF1BASER   AS BASER '
      ',PF1ICMSN   AS ICMSN '
      ',PF1ICMSR   AS ICMSR '
      ',PF1BASENR  AS BASENR '
      ',PF1ICMSNR  AS ICMSNR '
      ',PF1ISENTAS AS ISENTAS '
      ',PF1TOTOUT  AS TOTOUT '
      ',PF1TOTIPI  AS TOTIPI '
      ',PF1DATANF  AS DATANF '
      ',PF1NUMNF   AS NUMNF '
      ',PF1SERIE   AS SERIE '
      ',PF1SUBSER  AS SUBSER '
      ',PF1MODELO  AS MODELO '
      ',PF1CODBCO  AS CODBCO '
      ',PF1CODTRA  AS CODTRA '
      ',PF1PIPIFRETE AS PERCIPIFRE '
      ',PF1IPIFRETE  AS IPIFRETE '
      'from CADPF1'
      'where  PF1CODEMP=1 and '
      ' PF1LOTSEQ=0'
      ' and PF1CHAVE=1380')
    Left = 296
    Top = 56
    object Qr_Nf01FORCLI: TFloatField
      DisplayLabel = 'ForCli'
      FieldName = 'FORCLI'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Qr_Nf01CODIGO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.CADPF1.PF1CODFOR'
    end
    object Qr_Nf01DATAPED: TDateTimeField
      DisplayLabel = 'Dt.Ped.'
      FieldName = 'DATAPED'
      Origin = 'SG_ASSOC.CADPF1.PF1DATA'
    end
    object Qr_Nf01PDESC01: TFloatField
      DisplayLabel = '%Desc.01'
      FieldName = 'PDESC01'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC01'
    end
    object Qr_Nf01PDESC02: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'PDESC02'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC02'
    end
    object Qr_Nf01PDESC03: TFloatField
      DisplayLabel = '%Desc.03'
      FieldName = 'PDESC03'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC03'
    end
    object Qr_Nf01DESCVLR: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'DESCVLR'
      Origin = 'SG_ASSOC.CADPF1.PF1DESC03'
    end
    object Qr_Nf01TOTDES: TFloatField
      DisplayLabel = 'Total dos Descontos'
      FieldName = 'TOTDES'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTDES'
    end
    object Qr_Nf01TOTMER: TFloatField
      DisplayLabel = 'Total das Mercadorias'
      FieldName = 'TOTMER'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTBRU'
    end
    object Qr_Nf01TOTLIQ: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_Nf01STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = 'SG_ASSOC.CADPF1.PF1STATUS'
    end
    object Qr_Nf01TOTPOS: TFloatField
      DisplayLabel = 'Total Positivo'
      FieldName = 'TOTPOS'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTPOS'
    end
    object Qr_Nf01TOTNEG: TFloatField
      DisplayLabel = 'Total Negativo'
      FieldName = 'TOTNEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTNEG'
    end
    object Qr_Nf01TOTINA: TFloatField
      DisplayLabel = 'Total Inalterado'
      FieldName = 'TOTINA'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTINA'
    end
    object Qr_Nf01VALFRE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'VALFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTFRE'
    end
    object Qr_Nf01VALSEG: TFloatField
      DisplayLabel = 'Valor do Seguro'
      FieldName = 'VALSEG'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTSEG'
    end
    object Qr_Nf01BASEN: TFloatField
      DisplayLabel = 'Base Icms Normal'
      FieldName = 'BASEN'
      Origin = 'SG_ASSOC.CADPF1.PF1BASEN'
    end
    object Qr_Nf01BASER: TFloatField
      DisplayLabel = 'Base Icms ST'
      FieldName = 'BASER'
      Origin = 'SG_ASSOC.CADPF1.PF1BASER'
    end
    object Qr_Nf01ICMSN: TFloatField
      DisplayLabel = 'ICMS Normal'
      FieldName = 'ICMSN'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSN'
    end
    object Qr_Nf01ICMSR: TFloatField
      DisplayLabel = 'ICMS ST'
      FieldName = 'ICMSR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSR'
    end
    object Qr_Nf01BASENR: TFloatField
      DisplayLabel = 'Base Normal do Retido'
      FieldName = 'BASENR'
      Origin = 'SG_ASSOC.CADPF1.PF1BASENR'
    end
    object Qr_Nf01ICMSNR: TFloatField
      DisplayLabel = 'Icms Normal do Retido'
      FieldName = 'ICMSNR'
      Origin = 'SG_ASSOC.CADPF1.PF1ICMSNR'
    end
    object Qr_Nf01ISENTAS: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'ISENTAS'
      Origin = 'SG_ASSOC.CADPF1.PF1ISENTAS'
    end
    object Qr_Nf01TOTOUT: TFloatField
      DisplayLabel = 'Total Outras'
      FieldName = 'TOTOUT'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTOUT'
    end
    object Qr_Nf01TOTIPI: TFloatField
      DisplayLabel = 'Total do IPI'
      FieldName = 'TOTIPI'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTIPI'
    end
    object Qr_Nf01DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'DATANF'
      Origin = 'SG_ASSOC.CADPF1.PF1DATANF'
    end
    object Qr_Nf01NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_Nf01SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = 'SG_ASSOC.CADPF1.PF1SERIE'
      Size = 3
    end
    object Qr_Nf01SUBSER: TStringField
      DisplayLabel = 'Sub-S'#233'rie'
      FieldName = 'SUBSER'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBSER'
      Size = 3
    end
    object Qr_Nf01MODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = 'SG_ASSOC.CADPF1.PF1MODELO'
      Size = 3
    end
    object Qr_Nf01CODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco.'
      FieldName = 'CODBCO'
      Origin = 'SG_ASSOC.CADPF1.PF1CODBCO'
    end
    object Qr_Nf01CODTRA: TFloatField
      DisplayLabel = 'C'#243'd.Tra'
      FieldName = 'CODTRA'
      Origin = 'SG_ASSOC.CADPF1.PF1CODTRA'
    end
    object Qr_Nf01PERCIPIFRE: TFloatField
      DisplayLabel = '% IPI Frete'
      FieldName = 'PERCIPIFRE'
      Origin = 'SG_ASSOC.CADPF1.PF1PIPIFRETE'
    end
    object Qr_Nf01IPIFRETE: TFloatField
      DisplayLabel = 'Vlr.IPI Frete'
      FieldName = 'IPIFRETE'
      Origin = 'SG_ASSOC.CADPF1.PF1IPIFRETE'
    end
    object Qr_Nf01cnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Calculated = True
    end
    object Qr_Nf01inscricao: TStringField
      FieldKind = fkCalculated
      FieldName = 'inscricao'
      Size = 40
      Calculated = True
    end
    object Qr_Nf01razao_emit: TStringField
      FieldKind = fkCalculated
      FieldName = 'razao_emit'
      Size = 40
      Calculated = True
    end
    object Qr_Nf01endereco_emit: TStringField
      FieldKind = fkCalculated
      FieldName = 'endereco_emit'
      Size = 50
      Calculated = True
    end
    object Qr_Nf01cid_uf_emit: TStringField
      FieldKind = fkCalculated
      FieldName = 'cid_uf_emit'
      Size = 50
      Calculated = True
    end
    object Qr_Nf01fone_emit: TStringField
      FieldKind = fkCalculated
      FieldName = 'fone_emit'
      Size = 50
      Calculated = True
    end
    object Qr_Nf01cfop_nota: TStringField
      FieldKind = fkCalculated
      FieldName = 'cfop_nota'
      Size = 50
      Calculated = True
    end
    object Qr_Nf01razao_dest: TStringField
      FieldKind = fkCalculated
      FieldName = 'razao_dest'
      Size = 50
      Calculated = True
    end
    object Qr_Nf01cnpj_dest: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj_dest'
      Calculated = True
    end
    object Qr_Nf01ie_dest: TStringField
      FieldKind = fkCalculated
      FieldName = 'ie_dest'
      Size = 40
      Calculated = True
    end
    object Qr_Nf01cidade_dest: TStringField
      FieldKind = fkCalculated
      FieldName = 'cidade_dest'
      Size = 40
      Calculated = True
    end
    object Qr_Nf01numeronf: TStringField
      FieldKind = fkCalculated
      FieldName = 'numeronf'
      Size = 6
      Calculated = True
    end
  end
  object Src_Nf01: TDataSource
    DataSet = Qr_Nf01
    Left = 328
    Top = 56
  end
  object Src_TotLista: TDataSource
    DataSet = Qr_TotLista
    Left = 120
    Top = 72
  end
  object Qr_TotLista: TQuery
    OnCalcFields = Qr_TotListaCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2LISTA,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ'
      '       ,sum(PF2BASEN+PF2BASENR) AS BCICMS'
      '       ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS'
      '       ,sum(PF2BASER)           AS BASER'
      '       ,sum(PF2ICMSR)           AS ICMSR'
      '       ,sum(PF2TOTDES)          AS DESCONTO '
      '       ,sum(PF2ISENTAS)         AS TOTISEN'
      '       ,sum(PF2IPI)             AS VLRIPI'
      'from CADPF2'
      'group by PF2LISTA')
    Left = 88
    Top = 72
    object Qr_TotListaPF2LISTA: TFloatField
      DisplayLabel = 'Lista de Produtos'
      FieldName = 'PF2LISTA'
    end
    object Qr_TotListaTOTLIQ: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'TOTLIQ'
    end
    object Qr_TotListaBCICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BCICMS'
    end
    object Qr_TotListaICMS: TFloatField
      DisplayLabel = 'ICMS normal'
      FieldName = 'ICMS'
    end
    object Qr_TotListaBASER: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'BASER'
    end
    object Qr_TotListaICMSR: TFloatField
      DisplayLabel = 'ICMS ST'
      FieldName = 'ICMSR'
    end
    object Qr_TotListaDESCONTO: TFloatField
      DisplayLabel = 'Tot.Descontos'
      FieldName = 'DESCONTO'
    end
    object Qr_TotListaTOTISEN: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'TOTISEN'
    end
    object Qr_TotListaVLRIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VLRIPI'
    end
    object Qr_TotListanomlista: TStringField
      DisplayLabel = 'Nome da Lista'
      FieldKind = fkCalculated
      FieldName = 'nomlista'
      Calculated = True
    end
  end
  object Qr_TotCFOP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2CFO,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ'
      '       ,sum(PF2BASEN+PF2BASENR) AS BCICMS'
      '       ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS'
      '       ,sum(PF2BASER)           AS BASER'
      '       ,sum(PF2ICMSR)           AS ICMSR'
      '       ,sum(PF2TOTDES)          AS DESCONTO '
      '       ,sum(PF2ISENTAS)         AS TOTISEN'
      '       ,sum(PF2IPI)             AS VLRIPI'
      'from CADPF2'
      'group by PF2CFO')
    Left = 89
    Top = 40
    object Qr_TotCFOPPF2CFO: TFloatField
      DisplayLabel = 'CFOP'
      FieldName = 'PF2CFO'
    end
    object Qr_TotCFOPTOTLIQ: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'TOTLIQ'
    end
    object Qr_TotCFOPBCICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BCICMS'
    end
    object Qr_TotCFOPICMS: TFloatField
      FieldName = 'ICMS'
    end
    object Qr_TotCFOPBASER: TFloatField
      DisplayLabel = 'Base ST'
      FieldName = 'BASER'
    end
    object Qr_TotCFOPICMSR: TFloatField
      DisplayLabel = 'ICMS ST'
      FieldName = 'ICMSR'
    end
    object Qr_TotCFOPDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
    end
    object Qr_TotCFOPTOTISEN: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'TOTISEN'
    end
    object Qr_TotCFOPVLRIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VLRIPI'
    end
  end
  object Src_CFOP: TDataSource
    DataSet = Qr_TotCFOP
    Left = 123
    Top = 41
  end
  object Qr_TotSitTri: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2SIT,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ'
      '       ,sum(PF2BASEN+PF2BASENR) AS BCICMS'
      '       ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS'
      '       ,sum(PF2BASER)           AS BASER'
      '       ,sum(PF2ICMSR)           AS ICMSR'
      '       ,sum(PF2TOTDES)          AS DESCONTO '
      '       ,sum(PF2ISENTAS)         AS TOTISEN'
      '       ,sum(PF2IPI)             AS VLRIPI'
      'from CADPF2'
      'group by PF2SIT')
    Left = 89
    Top = 10
    object Qr_TotSitTriPF2SIT: TStringField
      DisplayLabel = 'Sit.Trib'
      FieldName = 'PF2SIT'
      Size = 4
    end
    object Qr_TotSitTriTOTLIQ: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'TOTLIQ'
    end
    object Qr_TotSitTriBCICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BCICMS'
    end
    object Qr_TotSitTriICMS: TFloatField
      DisplayLabel = 'ICMS normal'
      FieldName = 'ICMS'
    end
    object Qr_TotSitTriBASER: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'BASER'
    end
    object Qr_TotSitTriICMSR: TFloatField
      DisplayLabel = 'ICMS ST'
      FieldName = 'ICMSR'
    end
    object Qr_TotSitTriDESCONTO: TFloatField
      DisplayLabel = 'Tot.Descontos'
      FieldName = 'DESCONTO'
    end
    object Qr_TotSitTriTOTISEN: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'TOTISEN'
    end
    object Qr_TotSitTriVLRIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VLRIPI'
    end
  end
  object Src_SitTri: TDataSource
    DataSet = Qr_TotSitTri
    Left = 123
    Top = 11
  end
  object Qr_TotAliq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2ALIQ,sum((PF2PU*PF2QTDP)-PF2TOTDES) as TOTLIQ'
      '       ,sum(PF2BASEN+PF2BASENR) AS BCICMS'
      '       ,sum(PF2ICMSN+PF2ICMSNR) AS ICMS'
      '       ,sum(PF2BASER)           AS BASER'
      '       ,sum(PF2ICMSR)           AS ICMSR'
      '       ,sum(PF2TOTDES)          AS DESCONTO '
      '       ,sum(PF2ISENTAS)         AS TOTISEN'
      '       ,sum(PF2IPI)             AS VLRIPI'
      'from CADPF2'
      'group by PF2ALIQ')
    Left = 160
    Top = 10
    object Qr_TotAliqPF2ALIQ: TFloatField
      DisplayLabel = 'Al'#237'quota'
      FieldName = 'PF2ALIQ'
    end
    object Qr_TotAliqTOTLIQ: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'TOTLIQ'
    end
    object Qr_TotAliqBCICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BCICMS'
    end
    object Qr_TotAliqICMS: TFloatField
      DisplayLabel = 'ICMS Normal'
      FieldName = 'ICMS'
    end
    object Qr_TotAliqBASER: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'BASER'
    end
    object Qr_TotAliqICMSR: TFloatField
      DisplayLabel = 'ICMS ST'
      FieldName = 'ICMSR'
    end
    object Qr_TotAliqDESCONTO: TFloatField
      DisplayLabel = 'Tot.Descontos'
      FieldName = 'DESCONTO'
    end
    object Qr_TotAliqTOTISEN: TFloatField
      DisplayLabel = 'Isentas'
      FieldName = 'TOTISEN'
    end
    object Qr_TotAliqVLRIPI: TFloatField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VLRIPI'
    end
  end
  object Src_TotAliq: TDataSource
    DataSet = Qr_TotAliq
    Left = 194
    Top = 11
  end
  object Qr_Dup: TQuery
    OnCalcFields = Qr_DupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF1VDATAV AS DTVENC'
      '      ,PF1VVALOR AS VALOR'
      '      ,PF1VDESCF AS DESCF'
      '      ,PF1VDTDESCF AS DTDESCF'
      'from CADPF1V')
    Left = 240
    Top = 32
    object Qr_DupDTVENC: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'DTVENC'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDATAV'
    end
    object Qr_DupVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = 'SG_ASSOC.CADPF1V.PF1VVALOR'
    end
    object Qr_DupDESCF: TFloatField
      DisplayLabel = 'Desc.Financeiro'
      FieldName = 'DESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDESCF'
    end
    object Qr_DupDTDESCF: TDateTimeField
      DisplayLabel = 'p/Pgto. at'#233
      FieldName = 'DTDESCF'
      Origin = 'SG_ASSOC.CADPF1V.PF1VDTDESCF'
    end
    object Qr_Dupdtdesc: TStringField
      DisplayLabel = 'p/Pgto at'#233
      FieldKind = fkCalculated
      FieldName = 'dtdesc'
      Size = 10
      Calculated = True
    end
  end
  object Src_Dup: TDataSource
    DataSet = Qr_Dup
    Left = 270
    Top = 34
  end
end

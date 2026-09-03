object Frm_Pos_Integracao: TFrm_Pos_Integracao
  Left = 307
  Top = 174
  Width = 1044
  Height = 611
  Caption = 'Integra'#231#227'o com Pos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 71
    Width = 1036
    Height = 509
    ActivePage = TabSheet1
    Align = alBottom
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pagina Principal'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1028
        Height = 243
        Align = alTop
        TabOrder = 0
        object gb_fechar_venda: TGroupBox
          Left = 1
          Top = 1
          Width = 545
          Height = 241
          Align = alLeft
          Caption = 'Fechar Venda:'
          TabOrder = 0
          object Label1: TLabel
            Left = 4
            Top = 78
            Width = 96
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Valor:'
          end
          object Label2: TLabel
            Left = 3
            Top = 95
            Width = 96
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Forma Pagamento:'
          end
          object Label3: TLabel
            Left = 10
            Top = 15
            Width = 96
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Venda Id:'
          end
          object Label5: TLabel
            Left = 9
            Top = 34
            Width = 96
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Observa'#231#245'es:'
          end
          object edt_valor: TEdit
            Left = 109
            Top = 75
            Width = 145
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnExit = edt_valorExit
          end
          object cb_forma: TComboBox
            Left = 108
            Top = 92
            Width = 148
            Height = 21
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 1
            Text = 'DINHEIRO'
            Items.Strings = (
              'DINHEIRO'
              'PIX'
              'CREDITO'
              'DEBITO'
              'OUTROS')
          end
          object GroupBox1: TGroupBox
            Left = 264
            Top = 11
            Width = 285
            Height = 136
            Caption = 'Formas Selecionadas:'
            TabOrder = 2
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 281
              Height = 88
              Align = alClient
              DataSource = src_formas
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'venda_id'
                  Title.Alignment = taCenter
                  Width = 38
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'forma_pgto'
                  Title.Alignment = taCenter
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'valor'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'situacao'
                  Title.Alignment = taCenter
                  Width = 63
                  Visible = True
                end>
            end
            object Panel2: TPanel
              Left = 2
              Top = 103
              Width = 281
              Height = 31
              Align = alBottom
              TabOrder = 1
              object bbExluirForma: TButton
                Left = 154
                Top = 3
                Width = 117
                Height = 25
                Caption = 'Exluir Forma'
                TabOrder = 0
              end
              object bbConsultarSituacao: TButton
                Left = 3
                Top = 3
                Width = 117
                Height = 25
                Caption = 'Consultar Situa'#231#227'o'
                TabOrder = 1
              end
            end
          end
          object edt_venda_id: TEdit
            Left = 109
            Top = 13
            Width = 145
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            OnExit = edt_venda_idExit
          end
          object memo_obs: TMemo
            Left = 109
            Top = 31
            Width = 145
            Height = 45
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
          end
          object Button1: TButton
            Left = 8
            Top = 151
            Width = 117
            Height = 25
            Caption = 'Adicionar Forma'
            TabOrder = 5
            OnClick = Button1Click
          end
        end
        object GroupBox2: TGroupBox
          Left = 600
          Top = 1
          Width = 427
          Height = 241
          Align = alRight
          Caption = 'Json:'
          TabOrder = 1
          object Memo_json: TMemo
            Left = 2
            Top = 15
            Width = 423
            Height = 224
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
    object tsAdm: TTabSheet
      Caption = 'Administrativos'
      ImageIndex = 1
    end
  end
  object Panel_cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 423
      Top = 8
      Width = 96
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Terminal:'
    end
    object Label6: TLabel
      Left = 10
      Top = 10
      Width = 96
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Id da Empresa:'
    end
    object edt_terminal: TEdit
      Left = 522
      Top = 6
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'CIELO_SMART_01'
    end
    object edt_id_empresa: TEdit
      Left = 109
      Top = 8
      Width = 145
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object cds_formas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 329
    Top = 49
    Data = {
      750000009619E0BD01000000180000000400000000000300000075000876656E
      64615F696404000100000000000A666F726D615F7067746F0100490000000100
      0557494454480200020014000576616C6F720800040000000000087369747561
      63616F01004900000001000557494454480200020014000000}
    object cds_formasvenda_id: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'venda_id'
    end
    object cds_formasforma_pgto: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'forma_pgto'
    end
    object cds_formasvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
    end
    object cds_formassituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
    end
  end
  object src_formas: TDataSource
    DataSet = cds_formas
    Left = 385
    Top = 49
  end
end

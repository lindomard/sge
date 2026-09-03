inherited Frm_PECF: TFrm_PECF
  Left = 114
  Top = 126
  Width = 796
  Height = 487
  Caption = 'Cadastro de Impressoras Fiscais'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 780
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited Panel3: TPanel
    Top = 401
    Width = 780
    inherited DBNavigator1: TDBNavigator
      Width = 236
      DataSource = DM1.Src_ECF
      TabOrder = 7
    end
    inherited CANCELAR: TBitBtn
      Left = 485
      Width = 60
      TabOrder = 4
    end
    inherited GRAVAR: TBitBtn
      Left = 424
      Width = 60
      TabOrder = 1
      OnClick = GRAVARClick
    end
    inherited EXCLUIR: TBitBtn
      Left = 364
      Width = 60
      TabOrder = 2
    end
    inherited ALTERAR: TBitBtn
      Left = 303
      Width = 60
      TabOrder = 3
    end
    inherited INCLUIR: TBitBtn
      Left = 243
      Width = 60
      TabOrder = 0
    end
    inherited SAIR: TBitBtn
      Left = 545
      Width = 60
    end
    object BB_REDZ: TBitBtn
      Left = 606
      Top = 5
      Width = 91
      Height = 37
      Caption = '&Redu'#231#245'es Z'
      TabOrder = 5
      OnClick = BB_REDZClick
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
    object bbDadSint: TBitBtn
      Left = 697
      Top = 5
      Width = 91
      Height = 37
      Caption = '&dados Sintegra'
      TabOrder = 8
      OnClick = bbDadSintClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  inherited PC1: TPageControl
    Width = 780
    Height = 372
    inherited tsCad: TTabSheet
      Enabled = False
      object Label1: TLabel
        Left = 4
        Top = 14
        Width = 84
        Height = 13
        Caption = 'N'#250'mero do Caixa:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 5
        Top = 35
        Width = 84
        Height = 13
        Caption = 'Nome do Caixa...:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 171
        Top = 126
        Width = 50
        Height = 13
        Caption = 'Caminho..:'
        Enabled = False
      end
      object Label4: TLabel
        Left = 170
        Top = 170
        Width = 49
        Height = 13
        Caption = 'Senha.....:'
        Enabled = False
      end
      object Label5: TLabel
        Left = 53
        Top = 232
        Width = 207
        Height = 13
        Caption = 'Mensagem a ser Impressa no Cupom Fiscal:'
      end
      object Label6: TLabel
        Left = 4
        Top = 208
        Width = 174
        Height = 13
        Caption = 'C'#243'digos de Aliquotas p/Mercadorias:'
      end
      object Label8: TLabel
        Left = 182
        Top = 208
        Width = 39
        Height = 13
        Caption = 'Retidas:'
      end
      object Label9: TLabel
        Left = 264
        Top = 208
        Width = 37
        Height = 13
        Caption = 'Isentas:'
      end
      object Label7: TLabel
        Left = 12
        Top = 331
        Width = 126
        Height = 13
        Caption = 'Data do '#250'ltimo Movimento:'
        FocusControl = DBEdit4
      end
      object Label10: TLabel
        Left = 246
        Top = 330
        Width = 130
        Height = 13
        Caption = 'Data da '#218'ltima Redu'#231#227'o Z:'
        FocusControl = DBEdit12
      end
      object Label11: TLabel
        Left = 323
        Top = 247
        Width = 98
        Height = 13
        Caption = 'Valor do Suprimento:'
        FocusControl = DBEdit13
      end
      object Label13: TLabel
        Left = 325
        Top = 269
        Width = 81
        Height = 13
        Caption = 'Valor da Sangria:'
        FocusControl = DBEdit14
      end
      object Label14: TLabel
        Left = 349
        Top = 207
        Width = 111
        Height = 13
        Caption = 'Modelo do Documento:'
        FocusControl = DBEdit15
      end
      object Label17: TLabel
        Left = -1
        Top = 76
        Width = 117
        Height = 13
        Caption = 'Porta de Comunica'#231#227'o..:'
      end
      object Label18: TLabel
        Left = 241
        Top = 54
        Width = 38
        Height = 13
        Caption = 'Modelo:'
      end
      object Label19: TLabel
        Left = 5
        Top = 54
        Width = 87
        Height = 13
        Caption = 'Marca Impressora:'
      end
      object DBEdit1: TDBEdit
        Left = 94
        Top = 8
        Width = 64
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFCAIXA'
        DataSource = DM1.Src_ECF
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 94
        Top = 30
        Width = 244
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFNOME'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 4
        Top = 110
        Width = 155
        Height = 41
        Caption = 'Tipo de Impress'#227'o'
        Columns = 2
        Ctl3D = False
        DataField = 'CFREDE'
        DataSource = DM1.Src_ECF
        Items.Strings = (
          '&Local'
          '&Em Rede')
        ParentCtl3D = False
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
        OnChange = DBRadioGroup3Change
      end
      object DBEdit3: TDBEdit
        Left = 232
        Top = 120
        Width = 195
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFLOCAL'
        DataSource = DM1.Src_ECF
        Enabled = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 6
        Top = 154
        Width = 155
        Height = 38
        Caption = 'Criticar Senha ao Acessar:'
        Columns = 2
        Ctl3D = False
        DataField = 'CFCRITS'
        DataSource = DM1.Src_ECF
        Items.Strings = (
          '&N'#227'o'
          '&Sim')
        ParentCtl3D = False
        TabOrder = 4
        Values.Strings = (
          '0'
          '1')
        OnChange = DBRadioGroup4Change
      end
      object DBEdit5: TDBEdit
        Left = 11
        Top = 247
        Width = 300
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFMENS1'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 11
        Top = 267
        Width = 300
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFMENS2'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 10
      end
      object DBEdit7: TDBEdit
        Left = 11
        Top = 287
        Width = 300
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFMENS3'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 11
        Top = 307
        Width = 300
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFMENS4'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 12
      end
      object Edit2: TEdit
        Left = 232
        Top = 166
        Width = 195
        Height = 19
        Color = 16771818
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        PasswordChar = '*'
        TabOrder = 5
        OnExit = Edit2Exit
      end
      object DBEdit9: TDBEdit
        Left = 224
        Top = 206
        Width = 25
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFCODALR'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 310
        Top = 205
        Width = 25
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFCODALI'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 142
        Top = 328
        Width = 94
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFDTULTMOV'
        DataSource = DM1.Src_ECF
        Enabled = False
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit12: TDBEdit
        Left = 380
        Top = 326
        Width = 94
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFDTULTREDZ'
        DataSource = DM1.Src_ECF
        Enabled = False
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBEdit13: TDBEdit
        Left = 433
        Top = 246
        Width = 123
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFSUP'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 13
      end
      object DBEdit14: TDBEdit
        Left = 433
        Top = 267
        Width = 123
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFSANGRIA'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBCheckBox1: TDBCheckBox
        Left = 329
        Top = 287
        Width = 206
        Height = 17
        Caption = 'Gera Mapa Resumo Automaticamente'
        DataField = 'CFMAPARES'
        DataSource = DM1.Src_ECF
        TabOrder = 17
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 540
        Top = 286
        Width = 224
        Height = 17
        Caption = 'Possui Formas de Pagamento Cadastrada'
        DataField = 'CFFPGTO'
        DataSource = DM1.Src_ECF
        TabOrder = 18
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBEdit15: TDBEdit
        Left = 475
        Top = 206
        Width = 94
        Height = 19
        Color = 16771818
        Ctl3D = False
        DataField = 'CFMODDOC'
        DataSource = DM1.Src_ECF
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBCheckBox3: TDBCheckBox
        Left = 329
        Top = 304
        Width = 206
        Height = 17
        Caption = 'Impressora compat'#237'vel com o Sintegra'
        DataField = 'CFDADSINT'
        DataSource = DM1.Src_ECF
        TabOrder = 19
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 541
        Top = 303
        Width = 224
        Height = 17
        Caption = 'Realizar a Abertura do dia Pelo Sistema'
        DataField = 'CFABERTSIS'
        DataSource = DM1.Src_ECF
        TabOrder = 20
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DB_PORTA: TDBComboBox
        Left = 118
        Top = 72
        Width = 120
        Height = 21
        DataField = 'CFPORTA'
        DataSource = DataSource1
        ItemHeight = 13
        TabOrder = 21
      end
      object dcb_usb: TDBCheckBox
        Left = 329
        Top = 231
        Width = 272
        Height = 14
        Caption = 'Utilizar Conex'#227'o USB'
        DataField = 'CFUSB'
        DataSource = DM1.Src_ECF
        TabOrder = 22
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object RxDBCb_MODECF: TRxDBComboBox
        Left = 287
        Top = 50
        Width = 145
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'CFMODECF'
        DataSource = DM1.Src_ECF
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'MP 20 FI II'
          'MP 40 FI II'
          'MP 25 FI'
          'MP 50 FI'
          'MP 2000 TH FI'
          'MP 2100 TH FI'
          'MP 6000 TH FI'
          'MP 6100 TH FI'
          'MP 4000 TH FI')
        ParentCtl3D = False
        TabOrder = 23
        Values.Strings = (
          '6'
          '8'
          'B'
          'C'
          'E'
          'F'
          'G'
          'H'
          'J')
      end
      object RxDBCb_MODELO: TRxDBComboBox
        Left = 94
        Top = 50
        Width = 145
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'CFMODELO'
        DataSource = DM1.Src_ECF
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Bematech'
          'Emulador(Bematech)'
          'Daruma')
        ParentCtl3D = False
        TabOrder = 24
        Values.Strings = (
          '0'
          '1'
          '2')
        OnClick = RxDBCb_MODELOClick
      end
    end
    object INFOR: TTabSheet [1]
      Caption = 'Informa'#231#245'es da Impressora'
      Enabled = False
      ImageIndex = 1
      object Label12: TLabel
        Left = 538
        Top = 12
        Width = 30
        Height = 13
        Caption = 'S'#233'rie.:'
        FocusControl = DBEdit11
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 185
        Height = 344
        Align = alLeft
        Caption = 'Al'#237'quotas Cadastradas:'
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 181
          Height = 327
          Align = alClient
          Color = 16771818
          DataSource = DM1.Src_Cal
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CACODALI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAALIQ'
              Visible = True
            end>
        end
      end
      object DBEdit11: TDBEdit
        Left = 577
        Top = 7
        Width = 192
        Height = 21
        DataField = 'CFSERIE'
        DataSource = DM1.Src_ECF
        Enabled = False
        TabOrder = 1
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 581
        Top = 38
        Width = 185
        Height = 35
        Caption = 'Forma de Arredondamento'
        Columns = 2
        DataField = 'CFARRED'
        DataSource = DM1.Src_ECF
        Enabled = False
        Items.Strings = (
          'Arredonda'
          'Truncamento')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object bbCapturar: TBitBtn
        Left = 556
        Top = 319
        Width = 158
        Height = 22
        Caption = '&Capturar'
        TabOrder = 3
        OnClick = bbCapturarClick
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
      end
      object GroupBox5: TGroupBox
        Left = 185
        Top = 0
        Width = 352
        Height = 344
        Align = alLeft
        Caption = 'Formas de Pagamentos:'
        TabOrder = 4
        object DBGrid_fp: TDBGrid
          Left = 2
          Top = 15
          Width = 348
          Height = 189
          Align = alClient
          Color = 16771818
          DataSource = DM1.Src_ECF_FP
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FPECODIGO'
              PickList.Strings = (
                'Dinheiro'
                'Cheque'
                'TecBan'
                'Cartao Visa'
                'Cartao Amex'
                'Cheque Rede'
                'Cartao Redecard'
                'Convenio')
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FPEFORMA'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vinculo'
              Width = 123
              Visible = True
            end>
        end
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 317
          Width = 348
          Height = 25
          DataSource = DM1.Src_ECF_FP
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alBottom
          TabOrder = 1
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 204
          Width = 348
          Height = 113
          Align = alBottom
          Caption = 'Editar'
          Color = 16771818
          ParentColor = False
          TabOrder = 2
          object Label15: TLabel
            Left = 6
            Top = 17
            Width = 36
            Height = 13
            Caption = 'C'#243'digo:'
          end
          object Label16: TLabel
            Left = 4
            Top = 51
            Width = 29
            Height = 13
            Caption = 'Forma'
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 133
            Top = 15
            Width = 213
            Height = 96
            Align = alRight
            Caption = 'Vinculo:'
            Color = 16771818
            Columns = 2
            Ctl3D = True
            DataField = 'FPEVINC'
            DataSource = DM1.Src_ECF_FP
            Items.Strings = (
              'Dinheiro'
              'Cheque'
              'Cheque Rede'
              'Cartao Visa'
              'Cartao Amex'
              'Cartao RedeCard'
              'TecBan'
              'Devolu'#231#245'es'
              'Conv'#234'nio'
              'Troco'
              'Dep.C/C'
              'Ordem Pgto'
              'Outros')
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10'
              '11')
          end
          object DBEdit16: TDBEdit
            Left = 4
            Top = 32
            Width = 56
            Height = 19
            Ctl3D = False
            DataField = 'FPECODIGO'
            DataSource = DM1.Src_ECF_FP
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = DBEdit16Enter
            OnExit = DBEdit16Exit
          end
          object DBEdit17: TDBEdit
            Left = 2
            Top = 66
            Width = 128
            Height = 19
            Ctl3D = False
            DataField = 'FPEFORMA'
            DataSource = DM1.Src_ECF_FP
            ParentCtl3D = False
            TabOrder = 1
          end
        end
      end
      object DBRG_TIPOPROG: TDBRadioGroup
        Left = 581
        Top = 83
        Width = 180
        Height = 45
        Caption = 'Programa Padr'#227'o'
        Ctl3D = False
        DataField = 'CFMODPROGPAD'
        DataSource = DM1.Src_ECF
        Items.Strings = (
          'Venda Digitada'
          'Venda Checkout(Mercado)')
        ParentCtl3D = False
        TabOrder = 5
        Values.Strings = (
          '0'
          '1')
      end
    end
    inherited tsTab: TTabSheet
      ImageIndex = 2
      inherited DBGrid1: TDBGrid
        Width = 772
        Height = 344
        Color = 16771818
        DataSource = DM1.Src_ECF
        OnDblClick = DBGrid1DblClick
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CFCAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CFNOME'
            Width = 343
            Visible = True
          end>
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM1.Tb_ECF
    OnDataChange = DataSource1DataChange
    Left = 460
    Top = 125
  end
end

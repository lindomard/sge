inherited Frm_FPag: TFrm_FPag
  Left = 250
  Top = 181
  Width = 730
  Height = 452
  Caption = 'Manuten'#231#227'o nas Formas de Pagamento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 722
    inherited lbl_emp: TLabel
      Left = 677
    end
    inherited BBnAtu: TBitBtn
      Left = 473
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      ItemIndex = 0
      Text = 'Nome'
    end
    inherited Edit1: TMaskEdit
      Width = 251
    end
  end
  inherited PC1: TPageControl
    Width = 722
    Height = 286
    inherited tsCad: TTabSheet
      object Label4: TLabel
        Left = 25
        Top = 32
        Width = 37
        Height = 13
        Caption = 'Nome:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 18
        Top = 8
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 203
        Top = 90
        Width = 116
        Height = 13
        Caption = 'Ordem de Impressao'
        FocusControl = DBEdit1
      end
      object Label6: TLabel
        Left = 16
        Top = 213
        Width = 497
        Height = 13
        Caption = 
          'Ao Realizar uma Transa'#231#227'o Utilizando Esta Forma Lan'#231'ar o movimen' +
          'to no Banco/Caixa'
        Color = clBtnFace
        ParentColor = False
      end
      object Label7: TLabel
        Left = 202
        Top = 8
        Width = 101
        Height = 13
        Caption = 'Desconto Maximo'
        FocusControl = DBEdit1
      end
      object Label9: TLabel
        Left = 456
        Top = 10
        Width = 72
        Height = 13
        Caption = 'Vincluado a:'
      end
      object Label10: TLabel
        Left = 453
        Top = 54
        Width = 93
        Height = 13
        Caption = 'TPag para XML '
      end
      object DBR_NUMERO: TDBRadioGroup
        Left = 13
        Top = 91
        Width = 185
        Height = 50
        Caption = 'Requer N'#250'mero'
        Ctl3D = True
        DataField = 'FPNUM'
        DataSource = DM1.Src_FP
        Items.Strings = (
          'N'#227'o'
          'Sim')
        ParentCtl3D = False
        TabOrder = 6
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
      object DBR_FORMA: TDBRadioGroup
        Left = 13
        Top = 53
        Width = 182
        Height = 36
        Caption = 'Tipo da forma:'
        Columns = 2
        Ctl3D = True
        DataField = 'FPTIPO'
        DataSource = DM1.Src_FP
        Items.Strings = (
          '&Cr'#233'ditos'
          '&D'#233'bitos')
        ParentCtl3D = False
        TabOrder = 5
        Values.Strings = (
          '0'
          '1')
      end
      object DBEdit2: TDBEdit
        Left = 70
        Top = 27
        Width = 124
        Height = 19
        Ctl3D = False
        DataField = 'FPDESC'
        DataSource = DM1.Src_FP
        ParentCtl3D = False
        TabOrder = 1
        OnExit = DBEdit2Exit
      end
      object DBEdit1: TDBEdit
        Left = 69
        Top = 4
        Width = 48
        Height = 19
        Ctl3D = False
        DataField = 'FPCODIGO'
        DataSource = DM1.Src_FP
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 146
        Width = 484
        Height = 62
        Caption = 'Se Financeira ou Operadora de Cart'#245'es:'
        TabOrder = 7
        object Label1: TLabel
          Left = 8
          Top = 18
          Width = 122
          Height = 13
          Caption = 'Vinculado ao Cliente:'
        end
        object Label2: TLabel
          Left = 10
          Top = 36
          Width = 117
          Height = 13
          Caption = 'Prazo p/Pagamento:'
        end
        object Label8: TLabel
          Left = 209
          Top = 38
          Width = 55
          Height = 13
          Caption = 'Bandeira:'
        end
        object DBEdit3: TDBEdit
          Left = 130
          Top = 17
          Width = 80
          Height = 19
          Ctl3D = False
          DataField = 'FPCODCLI'
          DataSource = DM1.Src_FP
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBEdit3Exit
          OnKeyPress = DBEdit3KeyPress
        end
        object NOMCLI: TEdit
          Left = 209
          Top = 17
          Width = 264
          Height = 19
          TabStop = False
          Color = 16737457
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 130
          Top = 35
          Width = 80
          Height = 19
          Ctl3D = False
          DataField = 'FPPRAZO_FIN'
          DataSource = DM1.Src_FP
          ParentCtl3D = False
          TabOrder = 2
        end
        object RxDBCB_FPBANDEIRA_OPERADORA: TRxDBComboBox
          Left = 268
          Top = 37
          Width = 145
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          DataField = 'FPBANDEIRA_OPERADORA'
          DataSource = DM1.Src_FP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '01-Visa'
            '02-Mastercard'
            '03-American Express'
            '04-Sorocred'
            '99-Outros.')
          ParentCtl3D = False
          TabOrder = 3
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '99')
        end
      end
      object DBEdit5: TDBEdit
        Left = 241
        Top = 110
        Width = 48
        Height = 19
        Ctl3D = False
        DataField = 'FPCODIGO'
        DataSource = DM1.Src_FP
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBE_CODBCO: TDBEdit
        Left = 16
        Top = 227
        Width = 48
        Height = 19
        BiDiMode = bdLeftToRight
        Ctl3D = False
        DataField = 'FPCODBCO'
        DataSource = DM1.Src_FP
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = DBE_CODBCOExit
        OnKeyPress = DBE_CODBCOKeyPress
      end
      object NOMBCO: TEdit
        Left = 63
        Top = 227
        Width = 325
        Height = 19
        TabStop = False
        BevelInner = bvSpace
        BiDiMode = bdLeftToRight
        Color = 16737457
        Ctl3D = False
        ParentBiDiMode = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBCheckBox1: TDBCheckBox
        Left = 391
        Top = 228
        Width = 125
        Height = 17
        Caption = 'Permite Manipular'
        DataField = 'FPCODBCO_PM'
        DataSource = DM1.Src_FP
        TabOrder = 11
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object DBEdit6: TDBEdit
        Left = 200
        Top = 27
        Width = 106
        Height = 19
        Ctl3D = False
        DataField = 'FPDESCMAX'
        DataSource = DM1.Src_FP
        ParentCtl3D = False
        TabOrder = 2
      end
      object RxDBCB_FPVINCULO: TRxDBComboBox
        Left = 360
        Top = 27
        Width = 337
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'FPVINCULO'
        DataSource = DM1.Src_FP
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1-Dinheiro'
          '2-Cheque A Vista'
          '3-Cheque Rede'
          '4-Cartao Visa'
          '5-Cartao Amex'
          '6-Cartao RedeCard'
          '7-TecBan'
          '8-Devolu'#231#245'es'
          '9-Conv'#234'nio'
          '10-Troco'
          '11-Dep.C/C'
          '12-Ordem Pgto'
          '13-Financeira'
          '14-Outros'
          '15-Cheque Pre-Datado'
          '16-Outros Cartoes'
          '17-Cob.Bancaria'
          '18-Cart'#245'es Hipercard'
          '19-Cheque Terceiros'
          '20-Nota de Cr'#233'dito'
          '21-Cartao Credito'
          '22-Cartao Debito'
          '23-Cartao TEF/Pindad Credito'
          '24-Cartao TEF/Pindad Debito'
          '25-Credito Loja'
          '26-Vale Alimentacao'
          '27-Vale Refeicao'
          '28-Vale Presente'
          '29-Vale Combustivel'
          '30-Boleto Bancario'
          '31-PIX - Pagamento Instantaneo'
          '32-Transferencia Bancaria Carteira digital'
          '33-Programa Fidelidade, CashBack, Credito Virtual(TED)'
          '34-PIX - TEF/Pindad'
          '35-TED'
          '36-Cartao POS Credito'
          '37-Cartao POS Debito'
          '38-PIX - POS'
          '90-Sem Pagamento'
          '99-Outros'
          '')
        ParentCtl3D = False
        TabOrder = 3
        Values.Strings = (
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
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '33'
          '34'
          '35'
          '36'
          '37'
          '38'
          '90'
          '99'
          '')
      end
      object RxDBCb_FPVINCULO_TPAG: TRxDBComboBox
        Left = 360
        Top = 71
        Width = 337
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'FPVINCULO_TPAG'
        DataSource = DM1.Src_FP
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '1 Dinheiro'
          '2 Cheque'
          '3 Cart'#227'o de Cr'#233'dito '
          '4 Cart'#227'o de D'#233'bito '
          '5 Cart'#227'o da Loja (Private Label), Credi'#225'rio Digital'
          '10 Vale Alimenta'#231#227'o'
          '11 Vale Refei'#231#227'o'
          '12 Vale Presente '
          '13 Vale Combust'#237'vel'
          '14 Duplicata Mercantil'
          '15 Boleto Banc'#225'rio'
          '16 Dep'#243'sito Banc'#225'rio'
          '17 Pagamento Instant'#226'neo (PIX) '#8211' Din'#226'mico'
          '18 Transfer'#234'ncia Banc'#225'ria, Carteira Digital'
          '19 Programa de Fidelidade, Cashback, Cr'#233'dito Virtual'
          '20 Pagamento Instant'#226'neo (PIX) '#8211' Est'#225'tico'
          '21 Cr'#233'dito em Loja'
          '22 Pagamento Eletr'#244'nico n'#227'o Informado (Falha de Hardware)'
          '23 PIX Autom'#225'tico24TEF Book Transfer'
          '90 Sem Pagamento (Ex: Notas de Ajuste, Devolu'#231#227'o ou Brinde)'
          '91 Pagamento Posterior (Vendas faturadas / P'#243's-emiss'#227'o)'
          '99 Outros'
          '')
        ParentCtl3D = False
        TabOrder = 4
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '90'
          '91'
          '99'
          '')
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 706
        Height = 251
        DataSource = DM1.Src_FP
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FPCODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPDESC'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPTIPO'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPNUM'
            Width = 112
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 315
    Width = 722
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 368
    Width = 722
    inherited DBNavigator1: TDBNavigator
      DataSource = DM1.Src_FP
    end
  end
  object Src_FP: TDataSource
    DataSet = DM1.Tb_FP
    OnDataChange = Src_FPDataChange
    Left = 592
    Top = 192
  end
end

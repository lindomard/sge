inherited Frm_NE: TFrm_NE
  Left = 51
  Top = 139
  Width = 893
  Height = 558
  Caption = 'Manuten'#231#227'o no arquivo de notas de Entradas'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 37
    Width = 885
    Height = 40
    inherited lbl_emp: TLabel
      Left = 840
      Height = 38
    end
    inherited Pesquisapor: TLabel
      Top = 16
    end
    inherited BBnAtu: TBitBtn
      Top = 11
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 13
      ItemIndex = 0
      Text = 'N'#250'mero'
      Items.Strings = (
        'N'#250'mero'
        'Data de Emiss'#227'o'
        'C'#243'digo Fornecedor'
        'Chave Pedido')
    end
    inherited Edit1: TMaskEdit
      Top = 13
      OnExit = Edit1Exit
    end
  end
  inherited PC1: TPageControl
    Top = 77
    Width = 885
    Height = 412
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 66
        Top = 10
        Width = 130
        Height = 13
        Caption = 'C'#243'digo do Fornecedor:'
        FocusControl = DBEdit1
      end
      object Label6: TLabel
        Left = 434
        Top = 30
        Width = 60
        Height = 13
        Caption = 'Sub-S'#233'rie:'
        FocusControl = db_subserie
      end
      object Label2: TLabel
        Left = 146
        Top = 29
        Width = 48
        Height = 13
        Caption = 'N'#250'mero:'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 167
        Top = 47
        Width = 29
        Height = 13
        Caption = 'CFO:'
        FocusControl = DBE_CFOP
      end
      object Label5: TLabel
        Left = 114
        Top = 66
        Width = 82
        Height = 13
        Caption = 'Data Emiss'#227'o:'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 90
        Top = 85
        Width = 106
        Height = 13
        Caption = 'Base Icms Normal:'
        FocusControl = DBEdit7
      end
      object Label12: TLabel
        Left = 320
        Top = 82
        Width = 53
        Height = 13
        Caption = 'Al'#237'quota:'
      end
      object Label8: TLabel
        Left = 483
        Top = 89
        Width = 74
        Height = 13
        Caption = 'Icms Normal:'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 485
        Top = 105
        Width = 72
        Height = 13
        Caption = 'Icms Retido:'
        FocusControl = DBEdit10
      end
      object Label15: TLabel
        Left = 512
        Top = 119
        Width = 45
        Height = 13
        Caption = 'Seguro:'
        FocusControl = DBE_seg
      end
      object Label17: TLabel
        Left = 171
        Top = 189
        Width = 21
        Height = 13
        Caption = 'IPI:'
        FocusControl = DBEdit17
      end
      object Label18: TLabel
        Left = 450
        Top = 211
        Width = 107
        Height = 13
        Caption = 'Total Mercadorias:'
        FocusControl = DBEdit18
      end
      object Label23: TLabel
        Left = 462
        Top = 244
        Width = 95
        Height = 13
        Caption = 'Total Inalterado:'
        FocusControl = DBEdit23
      end
      object Label21: TLabel
        Left = 474
        Top = 229
        Width = 83
        Height = 13
        Caption = 'Total Positivo:'
        FocusControl = DBEdit21
      end
      object Label9: TLabel
        Left = 91
        Top = 102
        Width = 104
        Height = 13
        Caption = 'Base Icms Retido:'
        FocusControl = DBEdit9
      end
      object Label11: TLabel
        Left = 158
        Top = 119
        Width = 38
        Height = 13
        Caption = 'Frete.:'
        FocusControl = DBE_valfre
      end
      object Label16: TLabel
        Left = 10
        Top = 172
        Width = 185
        Height = 13
        Caption = 'Outras Desp/Aces c/Incidencia:'
        FocusControl = DBE_OUTRAS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 104
        Top = 211
        Width = 92
        Height = 13
        Caption = 'Total Desconto:'
        FocusControl = DBEdit20
      end
      object Label19: TLabel
        Left = 113
        Top = 232
        Width = 83
        Height = 13
        Caption = 'Total da Nota:'
        FocusControl = DBEdit19
      end
      object Label22: TLabel
        Left = 107
        Top = 250
        Width = 89
        Height = 13
        Caption = 'Total Negativo:'
        FocusControl = DBEdit22
      end
      object Label3: TLabel
        Left = 356
        Top = 31
        Width = 34
        Height = 13
        Caption = 'S'#233'rie:'
        FocusControl = DBEdit3
      end
      object Label13: TLabel
        Left = 477
        Top = 70
        Width = 80
        Height = 13
        Caption = 'Data Entrada:'
        FocusControl = DBEdit14
      end
      object Label14: TLabel
        Left = 456
        Top = 281
        Width = 102
        Height = 13
        Caption = 'Chave do Pedido:'
        FocusControl = DBEdit24
      end
      object Label24: TLabel
        Left = 92
        Top = 263
        Width = 103
        Height = 13
        Caption = 'Valor das Isentas:'
        FocusControl = DBEdit25
      end
      object Label25: TLabel
        Left = 267
        Top = 30
        Width = 46
        Height = 13
        Caption = 'Modelo:'
        FocusControl = DBEdit26
      end
      object Label26: TLabel
        Left = 8
        Top = 137
        Width = 190
        Height = 13
        Caption = 'Outras (Red.ICMS) s/Incidencia: '
        FocusControl = DBEdit27
      end
      object Label27: TLabel
        Left = 8
        Top = 154
        Width = 184
        Height = 13
        Caption = 'Outras Desp/Aces s/Incidencia:'
        FocusControl = DBEdit28
      end
      object Label28: TLabel
        Left = 276
        Top = 171
        Width = 10
        Height = 13
        Caption = '%'
        FocusControl = DBE_OUTRAS_ALIQ
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 362
        Top = 172
        Width = 49
        Height = 13
        Caption = 'Imposto:'
        FocusControl = DBE_OUTRAS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 267
        Top = 47
        Width = 5
        Height = 13
        Caption = '.'
        FocusControl = DBE_CFOP
      end
      object sbnAjustarItens: TSpeedButton
        Left = 313
        Top = 47
        Width = 101
        Height = 16
        Caption = 'Ajustar Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = sbnAjustarItensClick
      end
      object Label31: TLabel
        Left = 271
        Top = 192
        Width = 85
        Height = 13
        Caption = '% IPI do Frete:'
        FocusControl = DBE_PIPIFRETE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 428
        Top = 192
        Width = 91
        Height = 13
        Caption = 'Vlr.IPI do Frete:'
        FocusControl = DBE_OUTRAS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 533
        Top = 11
        Width = 28
        Height = 13
        Caption = 'Doc:'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label34: TLabel
        Left = 382
        Top = 155
        Width = 81
        Height = 13
        Caption = 'Tipo de Frete:'
        FocusControl = DBEdit1
      end
      object Label35: TLabel
        Left = 269
        Top = 119
        Width = 58
        Height = 13
        Caption = 'Al'#237'q.Icms:'
      end
      object Label36: TLabel
        Left = 374
        Top = 122
        Width = 68
        Height = 13
        Caption = 'ICMS Frete:'
        FocusControl = DBE_icmsfrete
      end
      object Label37: TLabel
        Left = 2
        Top = 306
        Width = 260
        Height = 13
        Caption = 'Chave do Danfe ou Conhecimento Eletronico:'
        FocusControl = DBEdit4
      end
      object Label38: TLabel
        Left = 483
        Top = 263
        Width = 73
        Height = 13
        Caption = 'Valor do Pis:'
        FocusControl = DBEdit6
      end
      object Label39: TLabel
        Left = 103
        Top = 281
        Width = 91
        Height = 13
        Caption = 'Valor do Cofins:'
        FocusControl = DBEdit11
      end
      object DBEdit1: TDBEdit
        Left = 200
        Top = 9
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NECODFOR'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 0
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 263
        Top = 9
        Width = 265
        Height = 19
        Ctl3D = False
        DataField = 'nomefor'
        DataSource = DM1.Src_NE
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 389
        Top = 27
        Width = 40
        Height = 19
        Ctl3D = False
        DataField = 'NESERIE'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 4
      end
      object db_subserie: TDBEdit
        Left = 493
        Top = 27
        Width = 35
        Height = 19
        Ctl3D = False
        DataField = 'NESUBSER'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 200
        Top = 27
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NENUMERO'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBE_CFOP: TDBEdit
        Left = 200
        Top = 45
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NECFO'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 200
        Top = 63
        Width = 112
        Height = 19
        Ctl3D = False
        DataField = 'NEDTEMIS'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 10
        OnExit = DBEdit5Exit
      end
      object DBEdit7: TDBEdit
        Left = 200
        Top = 81
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEBASEN'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 378
        Top = 81
        Width = 61
        Height = 19
        Ctl3D = False
        DataField = 'NEALIQ'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 13
        OnExit = DBEdit12Exit
      end
      object DBEdit8: TDBEdit
        Left = 562
        Top = 81
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEICMSN'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 14
      end
      object DBEdit10: TDBEdit
        Left = 562
        Top = 99
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEICMSR'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBE_seg: TDBEdit
        Left = 562
        Top = 117
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NESEG'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 20
      end
      object DBEdit17: TDBEdit
        Left = 200
        Top = 189
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEIPI'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 23
      end
      object DBEdit18: TDBEdit
        Left = 562
        Top = 207
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NETOTMER'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 25
        OnExit = DBEdit18Exit
      end
      object DBEdit21: TDBEdit
        Left = 562
        Top = 225
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NETOTPOS'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 27
      end
      object DBEdit23: TDBEdit
        Left = 562
        Top = 243
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NETOTINA'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 29
      end
      object DBEdit22: TDBEdit
        Left = 200
        Top = 243
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NETOTNEG'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 28
      end
      object DBEdit19: TDBEdit
        Left = 200
        Top = 225
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NETOTNOT'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 26
      end
      object DBEdit20: TDBEdit
        Left = 200
        Top = 207
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NETOTDES'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 24
      end
      object DBE_OUTRAS: TDBEdit
        Left = 200
        Top = 171
        Width = 64
        Height = 19
        Color = clBtnFace
        Ctl3D = False
        DataField = 'NEOUTRAS'
        DataSource = DM1.Src_NE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 32
      end
      object DBE_valfre: TDBEdit
        Left = 200
        Top = 117
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEFRETE'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit9: TDBEdit
        Left = 200
        Top = 99
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEBASER'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 15
      end
      object DBEdit14: TDBEdit
        Left = 562
        Top = 63
        Width = 112
        Height = 19
        Ctl3D = False
        DataField = 'NEDTENT'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 11
      end
      object DBEdit24: TDBEdit
        Left = 562
        Top = 279
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NECHAVEP'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 30
      end
      object DBEdit25: TDBEdit
        Left = 200
        Top = 261
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEISENTAS'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 31
        OnExit = DBEdit25Exit
      end
      object DBEdit26: TDBEdit
        Left = 313
        Top = 27
        Width = 40
        Height = 19
        Ctl3D = False
        DataField = 'NEMODELO'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit27: TDBEdit
        Left = 200
        Top = 135
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEOUTNINC'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 21
      end
      object DBEdit28: TDBEdit
        Left = 200
        Top = 153
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEOUTDESP'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 22
      end
      object DBCheckBox2: TDBCheckBox
        Left = 415
        Top = 48
        Width = 112
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Compra a Prazo'
        DataField = 'NEAVAP'
        DataSource = DM1.Src_NE
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBE_OUTRAS_ALIQ: TDBEdit
        Left = 291
        Top = 170
        Width = 64
        Height = 19
        Color = clBtnFace
        Ctl3D = False
        DataField = 'NEOUTRAS_ALIQ'
        DataSource = DM1.Src_NE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 33
      end
      object DBE_OUTRAS_IMP: TDBEdit
        Left = 415
        Top = 169
        Width = 64
        Height = 19
        Color = clBtnFace
        Ctl3D = False
        DataField = 'NEOUTRAS_IMP'
        DataSource = DM1.Src_NE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 34
      end
      object DBE_CFOP_comp: TDBEdit
        Left = 275
        Top = 45
        Width = 37
        Height = 19
        Ctl3D = False
        DataField = 'NECFOP_COMP'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 8
      end
      object DBE_PIPIFRETE: TDBEdit
        Left = 357
        Top = 190
        Width = 64
        Height = 19
        Color = clBtnFace
        Ctl3D = False
        DataField = 'NEIPIFRETE'
        DataSource = DM1.Src_NE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 35
      end
      object DBE_IPIFRETE: TDBEdit
        Left = 525
        Top = 189
        Width = 64
        Height = 19
        Color = clBtnFace
        Ctl3D = False
        DataField = 'NEOUTRAS_IMP'
        DataSource = DM1.Src_NE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421440
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 36
      end
      object RxDBCb_TIPO: TRxDBComboBox
        Left = 560
        Top = 9
        Width = 305
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'NETIPO'
        DataSource = DM1.Src_NE
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'Nota Fiscal [01-EFD]'
          'Nota Fiscal Avulsa [1B-EFD]'
          'Nota Fiscal de Venda a Consumidor'
          'Cupom Fiscal [2D-EFD]'
          'Nota Fiscal de Produtor'
          'Cupom Fiscal Bilhete de Passagem [2E-EFD]'
          'Nota Fiscal/Conta de Energia El'#233'trica'
          'Nota Fiscal de Servi'#231'o de Transporte'
          'Conhecimento de Transporte Rodovi'#225'rio de Cargas'
          'Conhecimento de Transporte Aquavi'#225'rio de Cargas'
          'Conhecimento A'#233'reo'
          'Conhecimento de Transporte Ferrovi'#225'rio de Cargas'
          'Conhecimento de Transporte de Cargas Avulso [8B-EFD]'
          'Bilhete de Passagem Rodovi'#225'rio'
          'Bilhete de Passagem Aquavi'#225'rio'
          'Bilhete de Passagem e Nota de Bagagem'
          'Bilhete de Passagem Ferrovi'#225'rio'
          'Despacho de Transporte'
          'Resumo de Movimento Di'#225'rio'
          'nao usado'
          'Ordem de Coleta de Cargas'
          'Nota Fiscal de Servi'#231'o de Comunica'#231#227'o'
          'Nota Fiscal de Servi'#231'o de Telecomunica'#231#227'o'
          'GNRE'
          'Autoriza'#231#227'o de Carregamento e Transporte'
          'Manifesto de Carga'
          'Conhecimento de Transporte Multimodal de Cargas'
          'Nota Fiscal De Transporte Ferrovi'#225'rio De Carga'
          'Nota Fiscal/Conta de Fornecimento de G'#225's Canalizado'
          'Nota Fiscal/Conta De Fornecimento D'#39#225'gua Canalizada'
          'Nota Fiscal Eletr'#244'nica  [55-EFD]'
          'Nota Fiscal Sevico Eletronica [56-EFD]'
          'Conhecimento de Transporte Eletr'#244'nico - CT-e [57-EFD]'
          'Cupom Fiscal Eletr'#244'nico - CF-e [59-EFD]')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
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
          '55'
          '56'
          '57'
          '59')
        Visible = False
      end
      object RxDBCb_frete: TRxDBComboBox
        Left = 479
        Top = 153
        Width = 142
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'NEFRETEPC'
        DataSource = DM1.Src_NE
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'CIF(Emitente)'
          'FOB(Destinatario)'
          'Outros')
        ParentCtl3D = False
        TabOrder = 37
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBE_aliq_frete: TDBEdit
        Left = 328
        Top = 117
        Width = 41
        Height = 19
        Ctl3D = False
        DataField = 'NEALIQ_FRETE'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 18
        OnExit = DBEdit12Exit
      end
      object DBE_icmsfrete: TDBEdit
        Left = 443
        Top = 117
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEICMS_FRETE'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 19
      end
      object DBEdit4: TDBEdit
        Left = 264
        Top = 301
        Width = 450
        Height = 19
        Ctl3D = False
        DataField = 'NENFE_CHAVE'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 38
      end
      object grupo_energia: TGroupBox
        Left = 634
        Top = 128
        Width = 213
        Height = 163
        Caption = 'Conta de Energia:'
        Color = 13434828
        ParentColor = False
        TabOrder = 39
        object Label40: TLabel
          Left = 2
          Top = 14
          Width = 111
          Height = 13
          Caption = 'Classe de Consumo'
        end
        object Label41: TLabel
          Left = 3
          Top = 53
          Width = 93
          Height = 13
          Caption = 'Tipo de Liga'#231#227'o'
        end
        object Label42: TLabel
          Left = 6
          Top = 93
          Width = 99
          Height = 13
          Caption = 'Grupo de Tens'#227'o'
        end
        object Label43: TLabel
          Left = 5
          Top = 139
          Width = 111
          Height = 13
          Caption = 'C'#243'digo Informa'#231#227'o:'
        end
        object RxDBCod_Cons: TRxDBComboBox
          Left = 3
          Top = 29
          Width = 205
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          DataField = 'NEENERGIA_COD_CONS'
          DataSource = DM1.Src_NE
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '01-Comercial'
            '02-Consumo Proprio'
            '03-Ilumina'#231#227'o Publica'
            '04-Industrial'
            '05-Poder Publico'
            '06-Residencial'
            '07-Rural'
            '08-Servico Publico')
          ParentCtl3D = False
          TabOrder = 0
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8')
        end
        object RxDBcb_tp_ligacao: TRxDBComboBox
          Left = 3
          Top = 68
          Width = 205
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          DataField = 'NEENERGIA_COD_CONS'
          DataSource = DM1.Src_NE
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '1-Monof'#225'sico'
            '2-Bif'#225'sico'
            '3-Trif'#225'sico')
          ParentCtl3D = False
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3')
        end
        object RxDBcb_Grupo_Tensao: TRxDBComboBox
          Left = 3
          Top = 108
          Width = 205
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          DataField = 'NEENERGIA_COD_CONS'
          DataSource = DM1.Src_NE
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '01-A1 Alta Tens'#227'o (230kv ou mais)'
            '02-A2 Alta Tens'#227'o (88 a 138kV)'
            '03-A3 Alta Tens'#227'o(69kv)'
            '04-A3a Alta Tensao(30kv a 44kv)'
            '05-A4 Alta Tens'#227'o(2,3 V a 25kV)'
            '06-AS Alta Tens'#227'o SubTerr'#226'neo) 06'
            '07-B1 Residencial'
            '08-B1 Residencial Baixa Renda'
            '09-B2 Cooperativa de Eletrificacao Rural'
            '10-B2 Rural '
            '11-B2 Servi'#231'o P'#250'blico de Irriga'#231#227'o'
            '12-B3 Demais Classes'
            '13-B4a - Ilimuna'#231#227'o P'#250'blica Rede de Distribui'#231#227'o'
            '14-B4b - Ilumina'#231#227'o P'#250'blica bulbo de l'#226'mpada')
          ParentCtl3D = False
          TabOrder = 2
          Values.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12'
            '13'
            '14')
        end
        object DBEdit15: TDBEdit
          Left = 125
          Top = 136
          Width = 64
          Height = 19
          Ctl3D = False
          DataField = 'NEENERGIA_COD_INF'
          DataSource = DM1.Src_NE
          ParentCtl3D = False
          TabOrder = 3
          OnExit = DBEdit18Exit
        end
      end
      object DBEdit6: TDBEdit
        Left = 562
        Top = 261
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEVL_PIS'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 40
        OnExit = DBEdit25Exit
      end
      object DBEdit11: TDBEdit
        Left = 200
        Top = 279
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'NEVL_COFINS'
        DataSource = DM1.Src_NE
        ParentCtl3D = False
        TabOrder = 41
        OnExit = DBEdit25Exit
      end
      object gb_locais: TGroupBox
        Left = 0
        Top = 336
        Width = 877
        Height = 48
        Align = alBottom
        Caption = 'Cidade/Locais:'
        TabOrder = 42
        object Label44: TLabel
          Left = 5
          Top = 21
          Width = 115
          Height = 13
          Caption = 'C'#243'digo Mun.Origem:'
        end
        object Label45: TLabel
          Left = 452
          Top = 21
          Width = 123
          Height = 13
          Caption = 'C'#243'digo Mun. Destino:'
        end
        object DBE_NECODLOC_ORI: TDBEdit
          Left = 120
          Top = 19
          Width = 64
          Height = 19
          Ctl3D = False
          DataField = 'NECODLOC_ORI'
          DataSource = DM1.Src_NE
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBE_NECODLOC_ORIExit
          OnKeyPress = DBE_NECODLOC_ORIKeyPress
        end
        object dbe_nomloc_ori: TDBEdit
          Left = 184
          Top = 19
          Width = 226
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'nomloc_ori'
          DataSource = DM1.Src_NE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421440
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBE_NECODLOC_DEST: TDBEdit
          Left = 576
          Top = 19
          Width = 64
          Height = 19
          Ctl3D = False
          DataField = 'NECODLOC_DEST'
          DataSource = DM1.Src_NE
          ParentCtl3D = False
          TabOrder = 2
          OnExit = DBE_NECODLOC_DESTExit
          OnKeyPress = DBE_NECODLOC_DESTKeyPress
        end
        object DBE_nomloc_dest: TDBEdit
          Left = 642
          Top = 19
          Width = 226
          Height = 19
          Color = clBtnFace
          Ctl3D = False
          DataField = 'nomloc_dest'
          DataSource = DM1.Src_NE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8421440
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 869
        Height = 324
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NENUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NESERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NECFO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomefor'
            Title.Caption = 'Nome do Fornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NEDTEMIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETOTNOT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NECODFOR'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 885
    Height = 37
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 6
      Width = 90
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 90
      Top = 6
      Width = 90
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 179
      Top = 6
      Width = 90
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 268
      Top = 6
      Width = 90
      Height = 29
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 357
      Top = 6
      Width = 90
      Height = 29
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object BitBtn1: TBitBtn
      Left = 699
      Top = 6
      Width = 93
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = SAIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object DBNavigator2: TDBNavigator
      Left = 447
      Top = 8
      Width = 252
      Height = 27
      Cursor = crHandPoint
      DataSource = DM1.Src_NE
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 489
    Width = 885
    Height = 38
    Caption = ''
    inherited DBNavigator1: TDBNavigator
      Top = 51
      Width = 360
      Visible = False
    end
    inherited SAIR: TBitBtn
      Left = 457
      Top = 50
      Width = 90
      Visible = False
    end
    object LANCAR: TBitBtn
      Left = 11
      Top = 6
      Width = 117
      Height = 29
      Cursor = crHandPoint
      Hint = 
        'Esta Op'#231#227'o Permite que se altere o Pedido'#13#10'para Ajustar erros no' +
        ' SINTEGRA'
      Caption = '&Corrigir Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = LANCARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
        FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
        FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
        FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C880733777777777733700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 131
      Top = 6
      Width = 117
      Height = 29
      Cursor = crHandPoint
      Hint = 
        'Esta Op'#231#227'o Permite que se altere o Pedido'#13#10'para Ajustar erros no' +
        ' SINTEGRA'
      Caption = '&Buscar XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 250
      Top = 6
      Width = 117
      Height = 29
      Cursor = crHandPoint
      Hint = 
        'Esta Op'#231#227'o Permite que se altere o Pedido'#13#10'para Ajustar erros no' +
        ' SINTEGRA'
      Caption = 'Exportar XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
  end
  object opd1: TOpenDialog
    Filter = '*.xml|*.xml'
    Left = 724
    Top = 175
  end
  object Src_NE: TDataSource
    DataSet = DM1.Tb_NE
    OnDataChange = Src_NEDataChange
    Left = 429
    Top = 268
  end
end

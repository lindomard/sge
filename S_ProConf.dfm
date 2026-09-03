inherited Frm_ProConf: TFrm_ProConf
  Left = 85
  Top = 85
  Width = 613
  Height = 485
  Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
  Font.Style = []
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 597
    inherited lbl_emp: TLabel
      Left = 560
      Width = 36
    end
    inherited Pesquisapor: TLabel
      Width = 67
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited Edit1: TMaskEdit
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl
    Width = 597
    Height = 312
    OnChange = PC1Change
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 56
        Top = 3
        Width = 36
        Height = 13
        Caption = 'C'#243'digo:'
      end
      object Label2: TLabel
        Left = 40
        Top = 24
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object Label3: TLabel
        Left = 49
        Top = 65
        Width = 43
        Height = 13
        Caption = 'Unidade:'
      end
      object Label4: TLabel
        Left = 35
        Top = 86
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object Label5: TLabel
        Left = 57
        Top = 45
        Width = 33
        Height = 13
        Caption = 'Marca:'
      end
      object Label6: TLabel
        Left = 60
        Top = 107
        Width = 32
        Height = 13
        Caption = 'Grupo:'
      end
      object Label7: TLabel
        Left = 2
        Top = 128
        Width = 92
        Height = 13
        Caption = 'Situa'#231#227'o Tribut'#225'ria:'
      end
      object Label30: TLabel
        Left = 62
        Top = 187
        Width = 29
        Height = 13
        Caption = 'N'#237'vel:'
      end
      object Dbedit1_10: TDBEdit
        Left = 98
        Top = 2
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'PDCODPRO'
        DataSource = DM1.Src_Pro
        ParentCtl3D = False
        TabOrder = 0
        OnExit = Dbedit1_10Exit
      end
      object DBEdit3_20: TDBEdit
        Left = 98
        Top = 23
        Width = 359
        Height = 19
        Ctl3D = False
        DataField = 'PDNOME'
        DataSource = DM1.Src_Pro
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 98
        Top = 64
        Width = 40
        Height = 19
        Ctl3D = False
        DataField = 'PDUND'
        DataSource = DM1.Src_Pro
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 98
        Top = 85
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'PDCODFOR'
        DataSource = DM1.Src_Pro
        ParentCtl3D = False
        TabOrder = 4
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 176
        Top = 85
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'PDNOMFOR'
        DataSource = DM1.Src_Pro
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 98
        Top = 44
        Width = 359
        Height = 19
        Ctl3D = False
        DataField = 'PDMARCA'
        DataSource = DM1.Src_Pro
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 98
        Top = 106
        Width = 78
        Height = 19
        Ctl3D = False
        DataField = 'PDCODGRU'
        DataSource = DM1.Src_Pro
        ParentCtl3D = False
        TabOrder = 6
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 176
        Top = 106
        Width = 282
        Height = 19
        Ctl3D = False
        DataField = 'PDNOMGRU'
        DataSource = DM1.Src_Pro
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit20: TDBEdit
        Left = 98
        Top = 127
        Width = 40
        Height = 19
        Ctl3D = False
        DataField = 'PDSIT'
        DataSource = DM1.Src_Pro
        ParentCtl3D = False
        TabOrder = 8
        OnEnter = DBEdit20Enter
        OnExit = DBEdit20Exit
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 98
        Top = 148
        Width = 257
        Height = 32
        Caption = 'Situa'#231'ao Produto:'
        Columns = 3
        Ctl3D = False
        DataField = 'PDSTATUS'
        DataSource = DM1.Src_Pro
        Items.Strings = (
          '&Ativo'
          '&Bloqueado '
          '&Inativo')
        ParentCtl3D = False
        TabOrder = 9
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBComboBox1_30: TDBComboBox
        Left = 99
        Top = 183
        Width = 42
        Height = 21
        DataField = 'PDNIVEL'
        DataSource = DM1.Src_Pro
        ItemHeight = 13
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
        TabOrder = 10
        OnEnter = DBComboBox1_30Enter
        OnExit = DBComboBox1_30Exit
      end
      object DBEdit30: TDBEdit
        Left = 144
        Top = 184
        Width = 211
        Height = 19
        Ctl3D = False
        DataField = 'n_nivel'
        DataSource = DM1.Src_Pro
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 11
      end
      object Panel5: TPanel
        Left = 140
        Top = 128
        Width = 448
        Height = 146
        BevelOuter = bvNone
        Ctl3D = True
        Enabled = False
        ParentCtl3D = False
        TabOrder = 12
        Visible = False
        object Panel6: TPanel
          Left = 140
          Top = 0
          Width = 308
          Height = 146
          Align = alLeft
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object Label32: TLabel
            Left = 46
            Top = 4
            Width = 176
            Height = 13
            Caption = 'Tributa'#231#227'o pelo ICMS (2'#186' e 3'#186' D'#237'gito)'
          end
          object ListBox2: TListBox
            Left = 3
            Top = 20
            Width = 299
            Height = 123
            Ctl3D = False
            ExtendedSelect = False
            ItemHeight = 13
            Items.Strings = (
              '00 - Tributado integralmente'
              '10 - Tributado e com cobr.  do ICMS por subs. trib.'
              '20 - Com redu'#231#227'o de base de c'#225'lculo'
              '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
              '40 - Isenta ou n'#227'o tributada'
              '50 - Com suspens'#227'o ou deferimento'
              '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
              '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
              '90 - Outras')
            ParentCtl3D = False
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 140
          Height = 146
          Align = alLeft
          TabOrder = 0
          object Label33: TLabel
            Left = 12
            Top = 6
            Width = 114
            Height = 13
            Caption = 'Origem Merc. (1'#186' D'#237'gito)'
          end
          object ListBox1: TListBox
            Left = 0
            Top = 20
            Width = 137
            Height = 123
            Ctl3D = False
            ExtendedSelect = False
            ItemHeight = 13
            Items.Strings = (
              '0 - Nacional'
              '1 - Estrang. - Imp. direta'
              '2 - Estrang. - Merc. Interno')
            ParentCtl3D = False
            TabOrder = 0
          end
        end
      end
      object Panel10: TPanel
        Left = 140
        Top = 128
        Width = 134
        Height = 138
        Enabled = False
        TabOrder = 13
        Visible = False
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 132
          Height = 26
          Align = alTop
          Caption = 'N'#237'veis dos Produtos:'
          TabOrder = 0
        end
        object ListBox3: TListBox
          Left = 1
          Top = 27
          Width = 132
          Height = 110
          Align = alClient
          ItemHeight = 13
          Items.Strings = (
            '0-Produto Acabado'
            '1-Servicos'
            '2-Materia Prima Revenda'
            '3-Produto Em Producao'
            '4-Materia Prima'
            '5-Insumos'
            '6-Acess'#243'rios'
            '7-Outros')
          TabOrder = 1
        end
      end
    end
    object TabSheet1: TTabSheet [1]
      Caption = '&Grades'
      ImageIndex = 2
      object Label8: TLabel
        Left = 7
        Top = 9
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label9: TLabel
        Left = 147
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object DBEdit1: TDBEdit
        Left = 6
        Top = 24
        Width = 121
        Height = 19
        Ctl3D = False
        DataField = 'PDCODPRO'
        DataSource = DM1.Src_Pro
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 146
        Top = 24
        Width = 399
        Height = 19
        Ctl3D = False
        DataField = 'PDNOME'
        DataSource = DM1.Src_Pro
        Enabled = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 55
        Width = 597
        Height = 233
        Align = alBottom
        Caption = 'Grade do Produto'
        TabOrder = 2
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 167
          Width = 593
          Height = 25
          DataSource = Src_GraPro
          Align = alBottom
          Enabled = False
          TabOrder = 0
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 192
          Width = 593
          Height = 39
          Align = alBottom
          Caption = 'Totaliza'#231#245'es dos '#237'tens:'
          TabOrder = 1
          object lbl_totgra: TLabel
            Left = 564
            Top = 15
            Width = 27
            Height = 13
            Align = alRight
            Caption = 'Total:'
          end
          object bbSalvarGrades: TBitBtn
            Left = 5
            Top = 13
            Width = 116
            Height = 25
            Caption = '&Salvar as Grades'
            Enabled = False
            TabOrder = 0
            OnClick = bbSalvarGradesClick
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
          object bbCancAlt: TBitBtn
            Left = 122
            Top = 13
            Width = 116
            Height = 25
            Caption = '&Cancelar Altera'#231#245'es'
            Enabled = False
            TabOrder = 1
            OnClick = bbCancAltClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
              993337777F777F3377F3393999707333993337F77737333337FF993399933333
              399377F3777FF333377F993339903333399377F33737FF33377F993333707333
              399377F333377FF3377F993333101933399377F333777FFF377F993333000993
              399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
              99333773FF777F777733339993707339933333773FF7FFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            NumGlyphs = 2
          end
        end
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 593
          Height = 152
          Align = alClient
          DataSource = Src_GraPro
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColExit = DBGrid2ColExit
          OnExit = DBGrid2Exit
          Columns = <
            item
              Expanded = False
              FieldName = 'MPNOMEMAS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GPGRADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GPNOMGRA'
              Width = 191
              Visible = True
            end>
        end
      end
    end
    inherited tsTab: TTabSheet
      ImageIndex = 3
      inherited DBGrid1: TDBGrid
        Width = 589
        Height = 91
        DataSource = DM1.Src_Pro
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnKeyPress = DBGrid3KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PDCODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDSIT'
            Visible = True
          end>
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 91
        Width = 589
        Height = 193
        Align = alBottom
        Caption = #205'tens de &Estoque:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object DBGrid3: TDBGrid
          Left = 1
          Top = 14
          Width = 587
          Height = 144
          Align = alClient
          DataSource = Src_LGC
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          OnExit = DBGrid3Exit
          OnKeyDown = DBGrid3KeyDown
          OnKeyPress = DBGrid3KeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'CLNUMERO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLQTD'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLQTDR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLQTDC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLPRECO1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLPRECO2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLPRECO3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLPRECOA1'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLPRECOA2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLPRECOA3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLPCUSTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLESTMAX'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLESTMIN'
              Visible = True
            end>
        end
        object GroupBox5: TGroupBox
          Left = 1
          Top = 158
          Width = 587
          Height = 34
          Align = alBottom
          Caption = 'Totaliza'#231#245'es dos '#237'tens:'
          TabOrder = 1
          object lbl_totitens: TLabel
            Left = 559
            Top = 14
            Width = 27
            Height = 19
            Align = alRight
            Caption = 'Total:'
          end
        end
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 341
    Width = 597
    inherited GRAVAR: TBitBtn
      OnClick = GRAVARClick
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 394
    Width = 597
    inherited DBNavigator1: TDBNavigator
      DataSource = DM1.Src_Pro
    end
  end
  object Src_Pro: TDataSource
    DataSet = DM1.Tb_Pro
    OnDataChange = Src_ProDataChange
    Left = 120
    Top = 40
  end
  object Qr_MPro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select MPNOMEMAS,MPCODMAS from CADMPRO')
    Left = 224
    Top = 32
    object Qr_MProMPNOMEMAS: TStringField
      FieldName = 'MPNOMEMAS'
      Origin = 'SG_ASSOC.CADMPRO.MPNOMEMAS'
    end
    object Qr_MProMPCODMAS: TStringField
      FieldName = 'MPCODMAS'
      Origin = 'SG_ASSOC.CADMPRO.MPCODMAS'
      Size = 2
    end
  end
  object Tb_GraPro: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_GraProBeforeInsert
    AfterInsert = Tb_GraProAfterInsert
    BeforeEdit = Tb_GraProBeforeEdit
    BeforePost = Tb_GraProBeforePost
    AfterPost = Tb_GraProAfterPost
    AfterDelete = Tb_GraProAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select GPCODEMP,'
      '       GPCODPRO,'
      '       GPCODMAS,'
      '       GPGRADE,'
      '       GPNOMGRA,'
      '       MPNOMEMAS'
      'from CADGPRO,CADMPRO where GPCODEMP is null'
      'and MPCODEMP=GPCODEMP'
      'and MPCODMAS=GPCODMAS')
    UpdateObject = U_GraPro
    Left = 328
    Top = 8
    object Tb_GraProGPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'GPCODEMP'
      Origin = 'SG_ASSOC.CADGPRO.GPCODEMP'
    end
    object Tb_GraProGPCODPRO: TFloatField
      DisplayLabel = 'Produto'
      FieldName = 'GPCODPRO'
      Origin = 'SG_ASSOC.CADGPRO.GPCODPRO'
    end
    object Tb_GraProGPCODMAS: TStringField
      DisplayLabel = 'C'#243'digo Propriedade'
      FieldName = 'GPCODMAS'
      Origin = 'SG_ASSOC.CADGPRO.GPCODMAS'
      Size = 2
    end
    object Tb_GraProGPGRADE: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'GPGRADE'
      Origin = 'SG_ASSOC.CADGPRO.GPGRADE'
    end
    object Tb_GraProMPNOMEMAS: TStringField
      DisplayLabel = 'Propriedade'
      FieldName = 'MPNOMEMAS'
      Origin = 'SG_ASSOC.CADMPRO.MPNOMEMAS'
    end
    object Tb_GraProGPNOMGRA: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'GPNOMGRA'
      Origin = 'SG_ASSOC.CADGPRO.GPNOMGRA'
      Size = 40
    end
  end
  object U_GraPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADGPRO'
      'set'
      '  GPCODEMP = :GPCODEMP,'
      '  GPCODPRO = :GPCODPRO,'
      '  GPCODMAS = :GPCODMAS,'
      '  GPGRADE = :GPGRADE,'
      '  GPNOMGRA = :GPNOMGRA'
      'where'
      '  GPCODEMP = :OLD_GPCODEMP and'
      '  GPCODPRO = :OLD_GPCODPRO and'
      '  GPCODMAS = :OLD_GPCODMAS')
    InsertSQL.Strings = (
      'insert into CADGPRO'
      '  (GPCODEMP, GPCODPRO, GPCODMAS, GPGRADE, GPNOMGRA)'
      'values'
      '  (:GPCODEMP, :GPCODPRO, :GPCODMAS, :GPGRADE, :GPNOMGRA)')
    DeleteSQL.Strings = (
      'delete from CADGPRO'
      'where'
      '  GPCODEMP = :OLD_GPCODEMP and'
      '  GPCODPRO = :OLD_GPCODPRO and'
      '  GPCODMAS = :OLD_GPCODMAS')
    Left = 356
    Top = 65535
  end
  object Src_GraPro: TDataSource
    DataSet = Tb_GraPro
    Left = 376
  end
  object Src_LGC: TDataSource
    DataSet = Tb_LGC
    Left = 528
    Top = 248
  end
  object Tb_LGC: TQuery
    CachedUpdates = True
    BeforeInsert = Tb_LGCBeforeInsert
    BeforeEdit = Tb_LGCBeforeEdit
    BeforePost = Tb_LGCBeforePost
    AfterPost = Tb_LGCAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADLGC where CLCODEMP is null')
    UpdateObject = U_LGC
    Left = 500
    Top = 248
    object Tb_LGCCLCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CLCODEMP'
      Origin = 'SG_ASSOC.CADLGC.CLCODEMP'
      ReadOnly = True
    end
    object Tb_LGCCLCODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'CLCODPRO'
      Origin = 'SG_ASSOC.CADLGC.CLCODPRO'
      ReadOnly = True
    end
    object Tb_LGCCLDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CLDTVCTO'
      Origin = 'SG_ASSOC.CADLGC.CLDTVCTO'
      ReadOnly = True
    end
    object Tb_LGCCLNUMERO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLNUMERO'
      Origin = 'SG_ASSOC.CADLGC.CLNUMERO'
      ReadOnly = True
    end
    object Tb_LGCCLQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CLQTD'
      Origin = 'SG_ASSOC.CADLGC.CLQTD'
      ReadOnly = True
    end
    object Tb_LGCCLQTDR: TFloatField
      DisplayLabel = 'Qtd.Revenda'
      FieldName = 'CLQTDR'
      Origin = 'SG_ASSOC.CADLGC.CLQTDR'
      ReadOnly = True
    end
    object Tb_LGCCLQTDC: TFloatField
      DisplayLabel = 'Qtd.Consignado'
      FieldName = 'CLQTDC'
      Origin = 'SG_ASSOC.CADLGC.CLQTDC'
      ReadOnly = True
    end
    object Tb_LGCCLPRECO1: TFloatField
      DisplayLabel = 'P'#231'o.Atual 01'
      FieldName = 'CLPRECO1'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO1'
    end
    object Tb_LGCCLPRECO2: TFloatField
      DisplayLabel = 'P'#231'o.Atual 02'
      FieldName = 'CLPRECO2'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO2'
    end
    object Tb_LGCCLPRECO3: TFloatField
      DisplayLabel = 'P'#231'o.Atual 03'
      FieldName = 'CLPRECO3'
      Origin = 'SG_ASSOC.CADLGC.CLPRECO3'
    end
    object Tb_LGCCLPRECOA1: TFloatField
      DisplayLabel = 'P'#231'o.Anterior 01'
      FieldName = 'CLPRECOA1'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA1'
    end
    object Tb_LGCCLPRECOA2: TFloatField
      DisplayLabel = 'P'#231'o.Anterior 02'
      FieldName = 'CLPRECOA2'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA2'
    end
    object Tb_LGCCLPRECOA3: TFloatField
      DisplayLabel = 'P'#231'o.Anterior 03'
      FieldName = 'CLPRECOA3'
      Origin = 'SG_ASSOC.CADLGC.CLPRECOA3'
    end
    object Tb_LGCCLPCUSTO: TFloatField
      DisplayLabel = 'P'#231'o.Custo'
      FieldName = 'CLPCUSTO'
      Origin = 'SG_ASSOC.CADLGC.CLPCUSTO'
    end
    object Tb_LGCCLESTMAX: TFloatField
      DisplayLabel = 'Est.M'#225'ximo'
      FieldName = 'CLESTMAX'
      Origin = 'SG_ASSOC.CADLGC.CLESTMAX'
    end
    object Tb_LGCCLESTMIN: TFloatField
      DisplayLabel = 'Est.M'#237'nimo'
      FieldName = 'CLESTMIN'
      Origin = 'SG_ASSOC.CADLGC.CLESTMIN'
    end
  end
  object U_LGC: TUpdateSQL
    ModifySQL.Strings = (
      'update CADLGC'
      'set'
      '  CLCODEMP = :CLCODEMP,'
      '  CLCODPRO = :CLCODPRO,'
      '  CLDTVCTO = :CLDTVCTO,'
      '  CLNUMERO = :CLNUMERO,'
      '  CLQTD = :CLQTD,'
      '  CLQTDR = :CLQTDR,'
      '  CLQTDC = :CLQTDC,'
      '  CLPRECO1 = :CLPRECO1,'
      '  CLPRECO2 = :CLPRECO2,'
      '  CLPRECO3 = :CLPRECO3,'
      '  CLPRECOA1 = :CLPRECOA1,'
      '  CLPRECOA2 = :CLPRECOA2,'
      '  CLPRECOA3 = :CLPRECOA3,'
      '  CLPCUSTO = :CLPCUSTO,'
      '  CLESTMAX = :CLESTMAX,'
      '  CLESTMIN = :CLESTMIN'
      'where'
      '  CLCODEMP = :OLD_CLCODEMP and'
      '  CLCODPRO = :OLD_CLCODPRO and'
      '  CLDTVCTO = :OLD_CLDTVCTO and'
      '  CLNUMERO = :OLD_CLNUMERO')
    InsertSQL.Strings = (
      'insert into CADLGC'
      
        '  (CLCODEMP, CLCODPRO, CLDTVCTO, CLNUMERO, CLQTD, CLQTDR, CLQTDC' +
        ', '
      'CLPRECO1, '
      
        '   CLPRECO2, CLPRECO3, CLPRECOA1, CLPRECOA2, CLPRECOA3, CLPCUSTO' +
        ', '
      'CLESTMAX, '
      '   CLESTMIN)'
      'values'
      '  (:CLCODEMP, :CLCODPRO, :CLDTVCTO, :CLNUMERO, :CLQTD, :CLQTDR, '
      ':CLQTDC, '
      '   :CLPRECO1, :CLPRECO2, :CLPRECO3, :CLPRECOA1, :CLPRECOA2, '
      ':CLPRECOA3, '
      '   :CLPCUSTO, :CLESTMAX, :CLESTMIN)')
    DeleteSQL.Strings = (
      'delete from CADLGC'
      'where'
      '  CLCODEMP = :OLD_CLCODEMP and'
      '  CLCODPRO = :OLD_CLCODPRO and'
      '  CLDTVCTO = :OLD_CLDTVCTO and'
      '  CLNUMERO = :OLD_CLNUMERO')
    Left = 556
    Top = 248
  end
end

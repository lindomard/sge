inherited Frm_Proc: TFrm_Proc
  Width = 574
  Caption = 'Manuten'#231#227'o no Cadastro de Procedimento'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 566
    inherited lbl_emp: TLabel
      Left = 521
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Width = 566
    inherited tsCad: TTabSheet
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 558
        Height = 71
        Align = alTop
        BorderStyle = bsSingle
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 8
          Width = 48
          Height = 13
          Caption = 'C'#243'digo.:'
        end
        object Label2: TLabel
          Left = 8
          Top = 27
          Width = 45
          Height = 13
          Caption = 'Nome..:'
        end
        object DBEdit1: TDBEdit
          Left = 59
          Top = 5
          Width = 77
          Height = 19
          Ctl3D = False
          DataField = 'CP_CODPRO'
          DataSource = DM3.Src_Proc
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBEdit1Exit
        end
        object DBEdit2: TDBEdit
          Left = 59
          Top = 25
          Width = 342
          Height = 19
          Ctl3D = False
          DataField = 'CP_NOME'
          DataSource = DM3.Src_Proc
          ParentCtl3D = False
          TabOrder = 1
        end
        object bbFonte: TBitBtn
          Left = 2
          Top = 44
          Width = 133
          Height = 23
          Hint = 'Seleciona a fonte'#13#10'para o texto'
          Caption = '&Fonte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bbFonteClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
            1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
            1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
            193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
            11155557F755F777777555000755033305555577755F75F77F55555555503335
            0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
            05555757F75F75557F5505000333555505557F777FF755557F55000000355557
            07557777777F55557F5555000005555707555577777FF5557F55553000075557
            0755557F7777FFF5755555335000005555555577577777555555}
          NumGlyphs = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 71
        Width = 558
        Height = 181
        Align = alClient
        Caption = 'Descri'#231#227'o:'
        TabOrder = 1
        object Texto: TRichEdit
          Left = 2
          Top = 15
          Width = 554
          Height = 164
          Align = alClient
          Lines.Strings = (
            'Texto')
          TabOrder = 0
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 550
        Height = 245
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CP_CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CP_NOME'
            Width = 436
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Width = 566
    inherited INCLUIR: TBitBtn
      Width = 110
    end
    inherited ALTERAR: TBitBtn
      Left = 115
      Width = 110
    end
    inherited EXCLUIR: TBitBtn
      Left = 227
      Width = 110
    end
    inherited GRAVAR: TBitBtn
      Left = 337
      Width = 110
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 449
      Width = 110
    end
  end
  inherited GroupBox2: TGroupBox
    Width = 566
    inherited DBNavigator1: TDBNavigator
      Left = 4
      Top = 15
      Width = 444
    end
    inherited SAIR: TBitBtn
      Left = 449
      Top = 15
      Width = 110
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 456
    Top = 56
  end
  object Src_Proc: TDataSource
    DataSet = DM3.Tb_Proc
    OnDataChange = Src_ProcDataChange
    Left = 488
    Top = 32
  end
end

object Frm_Ind_RegInv: TFrm_Ind_RegInv
  Left = 195
  Top = 145
  Width = 737
  Height = 457
  Caption = 'Relatorio de Inventario(Controle do Estoque)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 5
    Top = 226
    Width = 184
    Height = 13
    Caption = 'Produtos com vencimento entre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 276
    Top = 228
    Width = 8
    Height = 13
    Caption = 'e'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 105
    Top = 247
    Width = 81
    Height = 13
    Caption = 'Separado por:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 729
    Height = 210
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtros Primarios'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 721
        Height = 182
        Align = alClient
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label2: TLabel
          Left = 41
          Top = 89
          Width = 64
          Height = 13
          Caption = 'Tipo Produto:'
        end
        object StaticText2: TStaticText
          Left = 1
          Top = 9
          Width = 107
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Grupo de Fornecedor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object CODGFOR: TEdit
          Left = 109
          Top = 9
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = CODGFORExit
          OnKeyPress = CODGFORKeyPress
        end
        object lbx_codgfor: TListBox
          Left = 164
          Top = 9
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codgforKeyDown
        end
        object OMITIR_GFOR: TCheckBox
          Left = 108
          Top = 28
          Width = 50
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object StaticText10: TStaticText
          Left = 6
          Top = 47
          Width = 97
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fornecedor:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
        end
        object CODFOR: TEdit
          Left = 109
          Top = 48
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
          OnExit = CODFORExit
          OnKeyPress = CODFORKeyPress
        end
        object lbx_codfor: TListBox
          Left = 164
          Top = 47
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnKeyDown = lbx_codforKeyDown
        end
        object OMITIR_FOR: TCheckBox
          Left = 110
          Top = 68
          Width = 50
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object CODTIP: TEdit
          Left = 109
          Top = 85
          Width = 56
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnExit = CODTIPExit
          OnKeyPress = CODTIPKeyPress
        end
        object lbx_codtip: TListBox
          Left = 164
          Top = 85
          Width = 345
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnKeyDown = lbx_codtipKeyDown
        end
        object OMITIR_TPRO: TCheckBox
          Left = 108
          Top = 107
          Width = 53
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object GroupBox3: TGroupBox
          Left = 533
          Top = 14
          Width = 187
          Height = 167
          Align = alRight
          Caption = 'Grupos a Serem Listados:'
          TabOrder = 11
          object RG_CODGRU: TCheckListBox
            Left = 1
            Top = 14
            Width = 185
            Height = 152
            Cursor = crHandPoint
            Hint = 'Emitir Somente Os Selecionados'
            Align = alClient
            Color = 16777088
            Columns = 1
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'A1'
              'A2'
              'A3'
              'B1'
              'B2'
              'B3')
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style = lbOwnerDrawFixed
            TabOrder = 0
            OnClick = RG_CODGRUClick
          end
        end
      end
    end
    object TsFiltros2: TTabSheet
      Caption = 'Filtros Segundarios'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 721
        Height = 182
        Align = alClient
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label3: TLabel
          Left = 64
          Top = 10
          Width = 42
          Height = 13
          Caption = 'Controle:'
        end
        object Label6: TLabel
          Left = 73
          Top = 54
          Width = 31
          Height = 13
          Caption = 'Ramo:'
        end
        object CODCON: TEdit
          Left = 109
          Top = 10
          Width = 56
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = CODCONExit
          OnKeyPress = CODCONKeyPress
        end
        object lbx_codcon: TListBox
          Left = 164
          Top = 10
          Width = 345
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = lbx_codconKeyDown
        end
        object OMITIR_CON: TCheckBox
          Left = 111
          Top = 32
          Width = 53
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object CODRAM: TEdit
          Left = 109
          Top = 51
          Width = 56
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnExit = CODRAMExit
          OnKeyPress = CODRAMKeyPress
        end
        object lbx_codram: TListBox
          Left = 164
          Top = 51
          Width = 345
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = lbx_codramKeyDown
        end
        object OMITIR_RAM: TCheckBox
          Left = 110
          Top = 74
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object GroupBox4: TGroupBox
          Left = 571
          Top = 14
          Width = 149
          Height = 167
          Align = alRight
          Caption = 'N'#237'vel dos Produtos'
          TabOrder = 6
          object CLBNivel: TCheckListBox
            Left = 1
            Top = 14
            Width = 147
            Height = 152
            Cursor = crHandPoint
            Hint = 'Emitir Somente Os Selecionados'
            Align = alClient
            Color = 16777088
            Columns = 1
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'Acabado'
              'Servi'#231'o'
              'Mat'#233'ria Prima Revenda'
              'Produto em Produ'#231'ao'
              'Mat'#233'ria Prima'
              'Insumos'
              'Acessorios'
              'Outros'
              'Todos')
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style = lbOwnerDrawFixed
            TabOrder = 0
            OnClick = CLBNivelClick
          end
        end
        object GroupBox6: TGroupBox
          Left = 164
          Top = 94
          Width = 149
          Height = 86
          Caption = 'Listar Produtos:'
          TabOrder = 7
          object CLB_Bloqueios: TCheckListBox
            Left = 1
            Top = 14
            Width = 147
            Height = 71
            Cursor = crHandPoint
            Hint = 'Emitir Somente Os Selecionados'
            Align = alClient
            Color = 16777088
            Columns = 1
            Ctl3D = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              'Em Analise(aquisi'#231#227'o)'
              'Bloqueio CQ'
              'Sem Restri'#231#245'es'
              'Todos')
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style = lbOwnerDrawFixed
            TabOrder = 0
            OnClick = CLB_BloqueiosClick
          end
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 2
      object RLReport1: TRLReport
        Left = -410
        Top = -27
        Width = 1123
        Height = 794
        Background.Arrange = baCenter
        Background.Height = 105
        Background.Stretch = True
        Background.Width = 104
        Background.Picture.Data = {
          0A544A504547496D616765680B0000FFD8FFE000104A46494600010101012C01
          2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC00011080069006803012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800AF1CF89CC478B5464FF00C7B277F735EC75E37F13BFE46D5FFAF64FE6
          6B0C47C07AD937FBCFC99C76E6FEF1FCE9C82596411C61DDDBA2A8249FC0558D
          2F4DB8D5F5282C2D5732CCD804F451DC9F602BD06F759D17E1EC1FD9BA5C11DD
          EABB479D3487A1FF0068F5FF00808AE48C2EAEF447D0D7C4BA7254E0B9A4FA7E
          ACE02E34CD52D22F36E6C2F218FF00BF242C07E78AA7B8FF0078FE75D49F88FE
          23790B7DA6DB61EB18814AE3D3D7F5ACAD46EAC75546BB8EDA3B1BD1CCB145C4
          530FEF28FE16F6E869351FB2CAA752B2D2AC57C9DFEF32CB363EF1FCEBDEBC20
          49F08E97939FF475AF043D2BDEFC1FFF00228695FF005EEB5B61BE2679B9E7F0
          63EBFA1B745145769F30145145001451450015E41F11A259BC6688F3C7027D99
          0B48F9C0193D8724FB0AF5FAF1BF89DFF236AFFD7B27F3358623E03D5C9FFDE7
          E4CD5F0CCBA3E83E1DD47C43670DC4D2C43C8496E485F35B8E1546768C91DC9A
          C65F1FCEB2338D07470589663E49C927B939E6997B2F95F0BF4C857A4D7AECFF
          00867FFAD5CA5734A6D2491ED51C2D3A8E73A8AEEED7C968773178D341BEC47A
          CF862DB69EB2DBAA923F0C03FAD59B8F0468FAF5935F7856FC161D6DA562403E
          9CFCCA7EB9AF3DAB9A66A977A3DFC77B63298E54EBE8E3FBAC3B8A4AA5F49AB9
          73C1B87BD87938BED7BA7F2641756D3D9DC496D7313453C676BA38C106BDDBC1
          FF00F228695FF5EEB5C5F8CE2B5F11F846D7C516B1849E3016603AED27041FA1
          AED3C1FF00F228695FF5EEB5BD18F2CDAF23CBCCABFB6C3464D59A766BCD1B74
          5145751E085145140051451400578DFC4EFF0091B57FEBD93F99AF64AF1BF89D
          FF00236AFF00D7B27F3358623E03D6C9BFDE7E4CCC6905CF80123072F657FF00
          30F4575383F983581572C2EC5B8B8B794FFA3DD47E5C9EC73956FC08FCB34DD3
          F4EBAD52EC5A5A209262ACC01600600C9E4D71BD6C7D2C12A7CD7DAF7FEBE65B
          6F0EEA2BE1F1AD948FEC27A3799F375DBD3EB5955E8B37FC9168BFDE1FFA36BC
          FA1589E6513C8D1C5FC4CAB938F403D69CE295ADD8CB0D5E5514DCBA49AFB8EC
          20B9FB0FC249E394E1AF6E8A42A7B8C8C91FF7C9AF47F07FFC8A1A57FD7BAD78
          9EADAAC9A9BC2A1043696C9E5DB5B83911AFB9EEC7A935ED9E0FFF0091434AFF
          00AF75AE8A12BCBD11E466949C2826F7949BFC0DBA28A2BA8F0028A28A0028A2
          8A002BC6FE277FC8DABFF5EC9FCCD7B257957C42D0F55D43C4C27B2D3AE2E22F
          B3AAEF8D323393C561884DC343D4CA2518E22F276D19E7D5D2780FFE46B8BFEB
          84BFFA09AA5FF08AF883FE80B7BFF7EEB7FC1BE1FD62CBC491CD75A65D431086
          505DD303254E2B96117CCB43E83155A93A134A4B67D517E6FF00922D1FFBFF00
          FB54D79D57A8CBA46A27E1347A78B19CDE06E60DBF3FFACCF4FA570BFF0008AF
          883FE80B7BFF007EEAAA45E9A7431C0D5A6954BC97C4FA9907A57BDF83FF00E4
          50D2BFEBDD6BC6CF857C418FF902DEFF00DFBAF68F0BC135AF85F4E82E2268A6
          48155D1C60A9F4357874D49DCE4CEAA4254A2A2D3D4D7A28A2BB0F9C0A28A280
          0A2BC50FC64D77271A669E71E824FF001AEDBC09E3DFF84B4DC5ADCDB25BDEC2
          A1F11B128E9D3233C8C7F5A02C76B45145001451581E33D76E7C39E19B8D4ED2
          38A49A3640165CED39603B11401BF4561F84759B8F107862D353BA8E38E69836
          E58B3B46188E327DAB72800A28A2800A28A2800A28A2803E78F02F89ECFC2BAB
          5EDDDEC134C92C1E5AA440139C83CE48E2B4BC230DEADA78A7C516C86D2216D2
          AC0C87EEB93BB0BF403F5AABF0EAC744BFD6EFA3D752D5ADD6DF29F6970A036E
          1D0E4738A8F49922B7D57C5767A64ACFA63D8DC6CE490554FCA7FF00AFEF4865
          CD0FC41E31F114FA6DADADCDFCF1DACEAF75344D82CACC3EF918E001D3EB5AFA
          FE9BF115EE351D523BEB98ACE192478A28EE423794A4E0841C1E077E6B53E15C
          AB61E00D46F9501749A590FF00B5B50605723A5E9D75E32D2F57F10EAFE229A0
          36C5888F771F7738C64051D8002803A45F88B7DFF0ABCEA05D7FB57CFF00B189
          703938CEFC74CEDFD6B8CBDBFF0016FF00C228F26A8F7571A4EA25764B72DBF0
          C0E411DC6707D8D53313C9F0E16503E54D5486F6CC431FCABBBF15EB9A5DCFC2
          3D3E086789E695218D62561B95931BB23B6307F3A00A7FF0955DF87BE1768769
          A6B6CBEBE322AC8064A28739207A924015269DA978B7C17E25D2E1F10DEC9736
          5A8B046124A64084903A9E8412338E2B95D6E2917C2FE12B8DC523314CA24FEE
          B0949CFEA0D75137C3CD7EFBEC5737BE2AB4BA8BCC5681A699DC1248FBB9EE7D
          A801BAB6ADE2BF1678DB50D3343BF7B58EC99952349FC90429C162472C49FCAB
          6B5AF13EB9E11F0058C57F216D7AE1DE3F3242ADB0027E6E383C631F5ACAF1C7
          81CC535FF89B46D49008D8CB7112C9868DC7DEDAC0F5CF635CAF88755BED6FC2
          BA15F5F3B4CF04B35BB48DD5F1B48CFBE3F9500759E1293C65637B0EB9AD5C5F
          3E8A6092697CE9836404254EC272B9E31C0AC75D5FC75E2E7BED5F4DB9B98AD6
          D493E5413796A8319DA07F19C75CD7A36BDA9596B1F0E6ECE9F750B99EC898E3
          571B8E172571D72003C5607C27D52C6DBC19A8ACF3468D6F33CB286207C85460
          FE86981B7F0DFC5971E27D1A64BE21AF6CD82C92018F314E76B63D7820FD28AE
          73E0B7CD26BF205C233438FF00C8871FA8A28108DF04C31E7C41FF00925FFD9D
          6FE91F0CECB48D1353B38EF5E4BCBF84C0D74F18F914F60B9FEBCD7754500739
          E13F09A786740974992EBED892C8CECC62D9C300318C9F4AE417E0BDA2DEB39D
          624369B89583C8F980EC0B6EE71F4AF52A280385D2FE1ADBD9F85B50D0AEEFCD
          D4777209565587CB313003040DC73D2B16DFE0B411C571E76B26595D36C4E2D7
          688CE7EF11BFE6E38EA3AD7AA51401C6BFC3DB3B8F04DB7876EAE9A46B625A2B
          B58F6B2B124E76E4F1CE08CF358DA2FC24FEC9D6ACB50935C69D6D2512AC42DB
          6E48F7DE71F957A5D1401E63AAFC226D4B57BDBE5D78C42EA6694C7F64CE3273
          8CEF19FCABA13F0FB4A6F06A78759A42887CC171C6F12FF7FF00A63D38AEB68A
          00F39F0DFC2A5F0FEBF06A8DAB8B91106062FB26CDC1948E4EF3EBE955350F83
          16B717D2CB63ABB5ADBBB65616B7F3367B03B871F857A8D14018DE19F0DD9F85
          B485B0B42CE49DF2CAFF007A46F53FE1456CD1401FFFD9}
        DataSource = Src_Inv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        PageSetup.Orientation = poLandscape
        ShowProgress = False
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 37
          BandType = btColumnHeader
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLLabel1: TRLLabel
            Left = 935
            Top = 0
            Width = 35
            Height = 16
            Caption = 'Data:'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 1008
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
          end
          object RLLabel2: TRLLabel
            Left = 2
            Top = 18
            Width = 207
            Height = 16
            Caption = 'INVENTARIO DE MERCADORIAS.'
          end
          object RLLabel3: TRLLabel
            Left = 936
            Top = 18
            Width = 48
            Height = 16
            Caption = 'Pagina:'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 987
            Top = 18
            Width = 26
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
          end
          object RLLabel4: TRLLabel
            Left = 1013
            Top = 18
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 1019
            Top = 18
            Width = 26
            Height = 16
            AutoSize = False
            Info = itLastPageNumber
          end
        end
        object RLBand_filtros: TRLBand
          Left = 38
          Top = 75
          Width = 1047
          Height = 16
          BandType = btColumnHeader
          object filtros: TRLMemo
            Left = 0
            Top = 0
            Width = 1047
            Height = 16
            Align = faTop
            Alignment = taCenter
          end
        end
        object RLGroup1: TRLGroup
          Left = 38
          Top = 91
          Width = 1047
          Height = 59
          DataFields = 'GRUPO'
          object RLBand_grupo: TRLBand
            Left = 0
            Top = 0
            Width = 1047
            Height = 16
            BandType = btColumnHeader
            object RLDBText2: TRLDBText
              Left = 0
              Top = 0
              Width = 1047
              Height = 16
              Align = faClient
              Alignment = taCenter
              DataField = 'GRUPO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object rlband_cabgru: TRLBand
            Left = 0
            Top = 16
            Width = 1047
            Height = 31
            BandType = btColumnHeader
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            object lbl_codpro: TRLMemo
              Left = 2
              Top = 1
              Width = 36
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'C'#243'digo')
              ParentFont = False
            end
            object lbl_nompro: TRLMemo
              Left = 39
              Top = 1
              Width = 164
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Descri'#231#227'o')
              ParentFont = False
            end
            object lbl_und: TRLMemo
              Left = 205
              Top = 1
              Width = 18
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Und')
              ParentFont = False
            end
            object lbl_esttot: TRLMemo
              Left = 224
              Top = 1
              Width = 44
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Estoque Total')
              ParentFont = False
            end
            object lbl_estAna: TRLMemo
              Left = 271
              Top = 1
              Width = 44
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Em An'#225'lise')
              ParentFont = False
            end
            object lbl_bloqueados: TRLMemo
              Left = 316
              Top = 1
              Width = 50
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Outros Bloqueios')
              ParentFont = False
            end
            object lbl_loteFab: TRLMemo
              Left = 420
              Top = 1
              Width = 48
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Lote do Fabricante')
              ParentFont = False
            end
            object lbl_Dtvcto: TRLMemo
              Left = 470
              Top = 1
              Width = 46
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Data de Vencimento')
              ParentFont = False
            end
            object lbl_Lote_RE: TRLMemo
              Left = 517
              Top = 1
              Width = 54
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Registro de Entrada')
              ParentFont = False
            end
            object lbl_dtEntrada: TRLMemo
              Left = 573
              Top = 1
              Width = 48
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Data de Entrada')
              ParentFont = False
            end
            object lbl_est_disp: TRLMemo
              Left = 367
              Top = 1
              Width = 50
              Height = 28
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Lines.Strings = (
                'Estoque Disponivel')
              ParentFont = False
            end
            object rl_condicao: TRLMemo
              Left = 622
              Top = 1
              Width = 94
              Height = 24
              Alignment = taCenter
              Lines.Strings = (
                'Condi'#231#227'o de Armazenamento')
            end
            object rl_bruta: TRLMemo
              Left = 716
              Top = 1
              Width = 44
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Lines.Strings = (
                'Qtde Bruta')
            end
            object rl_liquida: TRLMemo
              Left = 760
              Top = 0
              Width = 44
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Lines.Strings = (
                'Qtde Liquida')
            end
            object rl_padrao: TRLMemo
              Left = 806
              Top = 1
              Width = 44
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Lines.Strings = (
                'Emb Padrao')
            end
            object rl_referencia: TRLMemo
              Left = 851
              Top = 1
              Width = 86
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Lines.Strings = (
                'Referencia')
            end
            object rl_fornecedor: TRLMemo
              Left = 938
              Top = 1
              Width = 108
              Height = 30
              Alignment = taCenter
              AutoSize = False
              Lines.Strings = (
                'Fornecedor')
            end
          end
          object band_det: TRLBand
            Left = 0
            Top = 47
            Width = 1047
            Height = 11
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            BeforePrint = band_detBeforePrint
            object txt_codpro: TRLDBText
              Left = 2
              Top = 0
              Width = 36
              Height = 12
              AutoSize = False
              DataField = 'CODPRO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_codpro
              ParentFont = False
              Transparent = False
            end
            object txt_nompro: TRLDBText
              Left = 39
              Top = 0
              Width = 164
              Height = 12
              AutoSize = False
              DataField = 'NOMPRO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_nompro
              ParentFont = False
              Transparent = False
            end
            object txt_und: TRLDBText
              Left = 205
              Top = 0
              Width = 18
              Height = 12
              AutoSize = False
              DataField = 'UND'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_und
              ParentFont = False
              Transparent = False
            end
            object txt_esttot: TRLDBText
              Left = 224
              Top = 0
              Width = 44
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'ESTOQUE'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_esttot
              ParentFont = False
              Transparent = False
            end
            object txt_est_disp: TRLDBText
              Left = 367
              Top = 0
              Width = 50
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'est_disp'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_est_disp
              ParentFont = False
              Transparent = False
            end
            object txt_estAna: TRLDBText
              Left = 271
              Top = 0
              Width = 44
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTDANA'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_estAna
              ParentFont = False
              Transparent = False
            end
            object txt_bloqueados: TRLDBText
              Left = 316
              Top = 0
              Width = 50
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'QTDBLQ'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_bloqueados
              ParentFont = False
              Transparent = False
            end
            object txt_loteFab: TRLDBText
              Left = 420
              Top = 0
              Width = 48
              Height = 12
              AutoSize = False
              DataField = 'LOTEFOR'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_loteFab
              ParentFont = False
              Transparent = False
            end
            object txt_Lote_RE: TRLDBText
              Left = 517
              Top = 0
              Width = 54
              Height = 12
              AutoSize = False
              DataField = 'LOTE_RE'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_Lote_RE
              ParentFont = False
              Transparent = False
            end
            object txt_Dtvcto: TRLDBText
              Left = 470
              Top = 0
              Width = 46
              Height = 12
              AutoSize = False
              DataField = 'DTVCTO'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_Dtvcto
              ParentFont = False
              Transparent = False
            end
            object txt_dtEntrada: TRLDBText
              Left = 573
              Top = 0
              Width = 48
              Height = 12
              AutoSize = False
              DataField = 'DTENTRADA'
              DataSource = Src_Inv
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'Arial'
              Font.Style = []
              Holder = lbl_dtEntrada
              ParentFont = False
              Transparent = False
            end
            object txt_condicao: TRLDBMemo
              Left = 622
              Top = 0
              Width = 94
              Height = 12
              DataField = 'CONDARMAZ'
              DataSource = Src_Inv
              Holder = rl_condicao
            end
            object txt_bruta: TRLDBText
              Left = 716
              Top = 0
              Width = 44
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PESOBRUTO'
              DataSource = Src_Inv
              Holder = rl_bruta
            end
            object txt_liquido: TRLDBText
              Left = 760
              Top = 0
              Width = 44
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'PESOLIQUIDO'
              DataSource = Src_Inv
              Holder = rl_liquida
            end
            object txt_padrao: TRLDBText
              Left = 806
              Top = 0
              Width = 44
              Height = 12
              Alignment = taRightJustify
              AutoSize = False
              DataField = 'EMBPADRAO'
              DataSource = Src_Inv
              Holder = rl_padrao
            end
            object txt_referencia: TRLDBText
              Left = 851
              Top = -1
              Width = 86
              Height = 12
              AutoSize = False
              DataField = 'REFERENCIA'
              DataSource = Src_Inv
              Holder = rl_referencia
            end
            object txt_fornecedor: TRLDBText
              Left = 938
              Top = -1
              Width = 108
              Height = 12
              AutoSize = False
              DataField = 'FORNECEDOR'
              DataSource = Src_Inv
              Holder = rl_fornecedor
            end
          end
        end
      end
    end
  end
  object MDT1: TMaskEdit
    Left = 188
    Top = 224
    Width = 81
    Height = 19
    Hint = 
      'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
      #13#10'digite a mesma.'
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 293
    Top = 224
    Width = 80
    Height = 19
    Hint = 
      'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
      '.'
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object CB_SEPAR: TComboBox
    Left = 189
    Top = 244
    Width = 272
    Height = 21
    BevelKind = bkSoft
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 3
    Text = 'Grupo de Produtos'
    Items.Strings = (
      'Controle de Produtos'
      'Fornecedor'
      'Grupo de Produtos'
      'Marca'
      'Ramo(Sub-Grupo)'
      'Sem Separar'
      'Tipo de Produtos')
  end
  object GroupBox5: TGroupBox
    Left = 514
    Top = 212
    Width = 149
    Height = 91
    Caption = 'Listar Produtos:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    object CLBEstoque: TCheckListBox
      Left = 1
      Top = 14
      Width = 147
      Height = 76
      Cursor = crHandPoint
      Hint = 'Emitir Somente Os Selecionados'
      Align = alClient
      Color = 16777088
      Columns = 1
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 16
      Items.Strings = (
        'c/Estoque'
        's/Estoque'
        'Estoque Negativo'
        'Todos')
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style = lbOwnerDrawFixed
      TabOrder = 0
      OnClick = CLBEstoqueClick
    end
  end
  object CB_PLANOFUNDO: TCheckBox
    Left = 190
    Top = 270
    Width = 195
    Height = 17
    Caption = 'Emitir Plano de Fundos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object bbImprimir: TBitBtn
    Left = 23
    Top = 309
    Width = 120
    Height = 40
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = bbImprimirClick
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
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 516
    Top = 309
    Width = 120
    Height = 40
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = bbSairClick
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
  object CB_BORDAS: TCheckBox
    Left = 191
    Top = 288
    Width = 195
    Height = 17
    Caption = 'Excluir Bordas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = CB_BORDASClick
  end
  object Src_Inv: TDataSource
    DataSet = Qr_Inv
    Left = 228
    Top = 176
  end
  object Qr_Inv: TQuery
    OnCalcFields = Qr_InvCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select PDCODPRO AS CODPRO,PDNOME AS NOMPRO,PDUND AS UND, PDMARCA' +
        ' AS MARCA,'
      '       PDPESOB AS PESOBRUTO,'
      '       PDPESOL AS PESOLIQUIDO,'
      '       PDEMBPAD2 AS EMBPADRAO,'
      '       PDMARCA AS REFERENCIA,'
      '       FRAZAO AS FORNECEDOR,'
      '       CLQTD AS ESTOQUE'
      '       ,0 AS QTDANA'
      '       ,0 AS QTDBLQ'
      '       ,CLNUMERO AS LOTEFOR'
      '       ,CLDTVCTO AS DTVCTO'
      '       ,CLNUMERO AS LOTE_RE'
      '       ,PDNOMGRU AS GRUPO'
      '       ,CLDTVCTO AS DTENTRADA'
      '       ,CIN_CONDARMAZ AS CONDARMAZ'
      'FROM CADPRO,CADLGC, CADPRO_CIN, CADFOR where'
      'CLCODPRO=PDCODPRO       ')
    Left = 260
    Top = 176
    object Qr_InvNOMPRO: TStringField
      FieldName = 'NOMPRO'
      Size = 53
    end
    object Qr_InvUND: TStringField
      FieldName = 'UND'
      Size = 3
    end
    object Qr_InvMARCA: TStringField
      FieldName = 'MARCA'
    end
    object Qr_InvESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object Qr_InvQTDANA: TFloatField
      FieldName = 'QTDANA'
    end
    object Qr_InvQTDBLQ: TFloatField
      FieldName = 'QTDBLQ'
    end
    object Qr_InvLOTEFOR: TStringField
      FieldName = 'LOTEFOR'
    end
    object Qr_InvDTVCTO: TDateTimeField
      FieldName = 'DTVCTO'
    end
    object Qr_InvLOTE_RE: TStringField
      FieldName = 'LOTE_RE'
    end
    object Qr_InvGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 40
    end
    object Qr_InvCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object Qr_Invest_disp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'est_disp'
      Calculated = True
    end
    object Qr_InvDTENTRADA: TDateTimeField
      FieldName = 'DTENTRADA'
    end
    object Qr_InvCONDARMAZ: TMemoField
      FieldName = 'CONDARMAZ'
      BlobType = ftMemo
      Size = 400
    end
    object Qr_InvPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object Qr_InvPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object Qr_InvEMBPADRAO: TStringField
      FieldName = 'EMBPADRAO'
      Size = 12
    end
    object Qr_InvREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object Qr_InvFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 40
    end
  end
end

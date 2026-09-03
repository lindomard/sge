object Frm_SPED_EFD: TFrm_SPED_EFD
  Left = 98
  Top = 93
  Width = 770
  Height = 589
  Caption = 'EFD - Escritura'#231#227'o Fiscal Digital (SPED)'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 122
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 9
      Top = 36
      Width = 63
      Height = 13
      Caption = 'Finalidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 194
      Top = 10
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 345
      Top = 33
      Width = 44
      Height = 13
      Caption = 'Vers'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 60
      Width = 181
      Height = 13
      Caption = 'Nome do Arquivo a Ser Gerado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object sbnsalvar: TSpeedButton
      Left = 726
      Top = 55
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = sbnsalvarClick
    end
    object Label47: TLabel
      Left = 125
      Top = 81
      Width = 62
      Height = 13
      Caption = 'Inventario:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label66: TLabel
      Left = 64
      Top = 103
      Width = 122
      Height = 13
      Caption = 'Motivo do Invent'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MDT1: TDateEdit
      Left = 76
      Top = 6
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnEnter = MDT1Enter
      OnExit = MDT1Exit
    end
    object MDT2: TDateEdit
      Left = 221
      Top = 5
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = MDT2Exit
    end
    object CODFIN: TComboBox
      Left = 76
      Top = 30
      Width = 248
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      MaxLength = 2
      TabOrder = 2
      Text = '0 - Remessa do Arquivo Original'
      Items.Strings = (
        '0 - Remessa do Arquivo Original'
        '1 - Remessa de arquivo substituto')
    end
    object VERS: TEdit
      Left = 389
      Top = 30
      Width = 58
      Height = 21
      TabOrder = 3
      Text = '007'
    end
    object edt_nomarq: TEdit
      Left = 196
      Top = 54
      Width = 529
      Height = 21
      TabOrder = 4
      Text = 'C:\SGE\EFD_012011.TXT'
    end
    object CB_INVENTARIO: TComboBox
      Left = 195
      Top = 77
      Width = 530
      Height = 21
      BevelKind = bkSoft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 5
    end
    object cb_familia300: TCheckBox
      Left = 600
      Top = 16
      Width = 129
      Height = 17
      Caption = 'incluir familia 300'
      TabOrder = 6
    end
    object CB_MOTINV: TComboBox
      Left = 195
      Top = 99
      Width = 530
      Height = 21
      BevelKind = bkSoft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = '01  No final no per'#237'odo;'
      Items.Strings = (
        '01  No final no per'#237'odo;'
        '02  Na mudan'#231'a de forma de tributa'#231#227'o da mercadoria (ICMS);'
        
          '03  Na solicita'#231#227'o da baixa cadastral, paralisa'#231#227'o tempor'#225'ria e ' +
          'outras situa'#231#245'es;'
        
          '04  Na altera'#231#227'o de regime de pagamento condi'#231#227'o do contribuinte' +
          ';'
        '05  Por determina'#231#227'o dos fiscos.')
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 122
    Width = 762
    Height = 351
    Align = alClient
    Caption = 'Ajustes:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 2
      Top = 15
      Width = 758
      Height = 334
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object tsE111: TTabSheet
        Caption = 'Ajuste ICMS E111'
        OnExit = tsE111Exit
        object Label3: TLabel
          Left = 5
          Top = 7
          Width = 114
          Height = 13
          Caption = 'Ajuste Selecionado:'
        end
        object Label4: TLabel
          Left = 37
          Top = 32
          Width = 80
          Height = 13
          Caption = 'Complemento:'
        end
        object Label6: TLabel
          Left = 374
          Top = 28
          Width = 87
          Height = 13
          Caption = 'Valor do Ajuste'
        end
        object Label5: TLabel
          Left = 571
          Top = 26
          Width = 56
          Height = 13
          Caption = 'Natureza:'
        end
        object CB_NOMAJUSTFISCAL: TComboBox
          Left = 130
          Top = 3
          Width = 607
          Height = 21
          BevelKind = bkSoft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 103
          ParentFont = False
          TabOrder = 0
          Text = 
            'GO020022|Cr. out. ao contrib.e comerciante equiparado a atacadis' +
            'ta (varejista), em 3%, na sa'#237'da interest. que destine merc. para' +
            ' comercializa'#231#227'o, produ'#231#227'o ou industrializa'#231#227'o, aplicado sobre o' +
            ' valor da correspondente opera'#231#227'o. - RCTE - Art. 11, III, "a" - ' +
            'Anexo IX|01012009|'
          OnChange = CB_NOMAJUSTFISCALChange
          Items.Strings = (
            'vers'#227'o=9.0'
            
              'GO000001|D'#233'bito referente ao valor compensado do ICMS de substit' +
              'ui'#231#227'o tribut'#225'ria.|01012009|'
            
              'GO000002|D'#233'bito referente ao valor da restitui'#231#227'o de cr'#233'dito de ' +
              'ICMS normal, concedida mediante processo (recebimento em moeda)|' +
              '01012009|'
            
              'GO000003|Baixa do cr. relativo ao valor adicional de 2% na al'#237'qu' +
              'ota de ICMS, utilizado para abater o ICMS Subst. Tribut'#225'ria. PRO' +
              'TEGE. - CTE - Art. 27, '#167' 5'#186' e IN 784/06 Art. 6|01012009|'
            
              'GO000004|D'#233'bito referente ao estorno do cheque-moradia por saldo' +
              ' insuficiente no campo "Observa'#231#245'es" do RAICMS - IN 575/02-GSF -' +
              ' Art. 1, '#167' 3'#186', II|01012009|'
            
              'GO000005|ICMS debitado qdo, conf. TARE, o imposto devido por ST ' +
              'pelas op anteriores seja apurado junt c/ aquele devido pela op s' +
              'a'#237'da pr'#243'pria do estab eleito substituto, resultando um s'#243' d'#233'b po' +
              'r per'#237'odo nas aquisi'#231#245'es  - RCTE - Art. 14, '#167' '#218'nico - Anexo VIII' +
              '|01012009|'
            
              'GO000006|ICMS debitado na sa'#237'da de mercadoria remetida sem desti' +
              'nat'#225'rio certo, por qualquer meio de transporte, para realiza'#231#227'o ' +
              'de opera'#231#227'o fora do estabelecimento - RCTE - Art. 28, '#167' 2'#186' - Ane' +
              'xo XII|01012009|'
            
              'GO000007|D'#233'b. do imposto relativo ao frete, quando n'#227'o tiver int' +
              'egrado a base de c'#225'lculo para efeito de reten'#231#227'o, exceto quanto ' +
              'ao ve'#237'culo automotor, apurado conforme Art. 42 do Anexo VII do R' +
              'CTE - RCTE - Art. 42, I, "a" e '#167' '#218'nico - Anexo VIII|01012009|'
            
              'GO000008|D'#233'bito do imposto relativo a embalagem ou acondicioname' +
              'nto, quando n'#227'o tiver integrado a base de c'#225'lculo para efeito de' +
              ' reten'#231#227'o, apurado conforme Art. 42 do Anexo VII do RCTE  - RCTE' +
              ' - Art. 42, II e '#167' '#218'nico - Anexo VIII|01012009|'
            
              'GO000009|D'#233'b. do imposto relativo a determinadas merc. n'#227'o sujei' +
              'ta ao regime de ST, qdo comercializada ou fornecida de forma ass' +
              'ociada a uma mercadoria submetida a este regime. - RCTE - Art. 4' +
              '2, III e '#167' '#218'nico - Anexo VIII|01012009|'
            
              'GO000010|D'#233'b. do imp. qdo o contrib estabel neste estado adquiri' +
              'r merc. suj. ao regime de ST de contrib com med. judicial limina' +
              'r, ou de contrib sediado em UF com den'#250'ncia de conv ou protoc - ' +
              'RCTE - Art. 42, IV; '#167' '#218'nico e Art. 34, '#167' '#218'nico, II, "a", 2 - Ane' +
              'xo VIII|01012009|'
            
              'GO000011|Comp. ICMS devido ST com o  saldo credor acumulado -  o' +
              'pera'#231#227'o com destino a contribuinte do imposto estabelecido em ou' +
              'tra UF e alcan'#231'ada pela substitui'#231#227'o tribut'#225'ria - RCTE - Art. 45' +
              ', II e Art.  46, '#167' 4'#186' - Anexo VIII|01012009|'
            
              'GO000012|Baixa pela restitui'#231#227'o do saldo credor acumulado -  ope' +
              'ra'#231#227'o com destino a contribuinte do imposto estabelecido em outr' +
              'a UF e alcan'#231'ada pela substitui'#231#227'o tribut'#225'ria - RCTE - Art. 45, ' +
              'II e Art.  46, '#167' 4'#186' - Anexo VIII|01012009|'
            
              'GO000013|Baixa pela restitui'#231#227'o do  saldo credor acumulado - des' +
              'fazimento do neg'#243'cio ou devolu'#231#227'o total ou parcial. - RCTE - Art' +
              '. 45, VI e Art.  46, '#167' 4'#186' - Anexo VIII|01012009|'
            
              'GO000014|Comp. ICMS devido ST com o  saldo credor acumulado - de' +
              'sfazimento do neg'#243'cio ou devolu'#231#227'o total ou parcial. - RCTE - Ar' +
              't. 45, VI e Art.  46, '#167' 4'#186' - Anexo VIII|01012009|'
            
              'GO000015|Comp. ICMS dev. por ST com saldo  credor acumulado - op' +
              ' interna realizada p/ contrib industr ou comerciante atac. c/ de' +
              'stino a empresa de const. civil, a '#243'rg'#227'o da adm pub direta/hospi' +
              'tal e cl'#237'nica de sa'#250'de - RCTE - Art. 45, X e Art.  46, '#167' 4'#186' - An' +
              'exo VIII|01012009|'
            
              'GO000016|Baixa pela restitui'#231#227'o do  saldo credor acumul - op int' +
              'erna realizada p/ contrib. indust. ou comerciante atac. c/ desti' +
              'no a empresa de const. civil, a '#243'rg'#227'o da adm pub. direta ou hosp' +
              'ital e cl'#237'nica de sa'#250'de - RCTE - Art. 45, X e Art. 46, '#167' 4'#186' - An' +
              'exo VIII|01012009|'
            
              'GO000017|ICMS d'#233'b. p/ compensar saldo credor ICMS acumulado, c/ ' +
              'imposto devido t'#237'tulo de retido na fonte, relativo a nova aquis ' +
              'de mercadoria sujeito a ST, cuja responsabilidade pela apura'#231#227'o ' +
              'e pgto '#233' do pr'#243'prio adq. - RCTE - Art. 49, '#167' 1'#186', I, "b" - Anexo ' +
              'VIII|01012009|'
            
              'GO000018|Compensa'#231#227'o de Auto de Infra'#231#227'o. - RCTE - Art. 494|0101' +
              '2009|'
            
              'GO000019|D'#233'bito do montante do imposto correspondente '#224' diferen'#231 +
              'a de al'#237'quotas - RCTE - Art. 73, '#167' 1'#186', I|01012009|'
            
              'GO000020|D'#233'bito, mediante TARE, correspondente ao imposto devido' +
              ' na importa'#231#227'o do exterior - RCTE - Art. 73, '#167' 3'#186'|01012009|'
            
              'GO000021|ICMS debitado pelo contrib. substitu'#237'do que mantiver es' +
              'toque de mercadoria sujeito '#224' ST e destinada '#224' comercializa'#231#227'o, ' +
              'e para a qual ocorra aumento da carga tribut'#225'ria na opera'#231#227'o int' +
              'erna  - RCTE - Art. 80, '#167' '#218'nico - Anexo VIII|01012009|'
            
              'GO000022|D'#233'bito referente ao valor '#224' aplica'#231#227'o da al'#237'quota pr'#243'pr' +
              'ia sobre a entrada de mercadorias para as empresas que possuam T' +
              'ARE e que devam a ter a sua sa'#237'da lan'#231'ada em outros d'#233'bitos - TA' +
              'RE 093/01-GSF|01012009|'
            
              'GO009999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS Pr'#243'prio|01012009|31072010|'
            
              'GO109999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS-ST|01012009|'
            
              'GO100001|Repasse de ICMS por dedu'#231#245'es efetuadas de outras UF - C' +
              'onv. ICMS 110/07, Cl'#225'usula 22'#170', III e Art. 61-D, III, '#8220'a'#8221', Anexo' +
              ' VIII do RCTE|01012009|'
            
              'GO010001|Ref. ao cr out pelo equip do ECF em que o contrib. q ce' +
              'sse o uso do ECF, em pzo. inf a 2 anos, a contar do in'#237'cio de su' +
              'a efetiva utiliz, no mesmo per. de apur. em que ocorrer a cess d' +
              'e uso ou em desacor. com a leg especif. - IN 495/01-GSF - Art. 7' +
              ', I e II|01012009|'
            
              'GO010002|Ref. cr. out. pela adquis. equip e software neces. p/in' +
              'tegr da oper com cart'#227'o de cr ou d'#233'b. ao ECF, em que o contrib. ' +
              'deixar de op c/cart'#227'o de cr ou d'#233'b, em prazo inf. a 2 anos, a co' +
              'ntar do in'#237'cio de sua efetiva utiliz. - IN 571/02-GSF - Art. 8, ' +
              'I e II|01012009|'
            
              'GO010003|Ref. a utiliz da red de b. de c'#225'lc prev no inc VIII do ' +
              'Art. 8'#186', An IX-RCTE. O benef pode ser utiliz, desde q, no final ' +
              'do per de apur, o contrib efetue o estorno do corresp cr. de ICM' +
              'S q tenha sido aprov em perc sup a 7%  - IN 899/08-GSF - Art.  2' +
              #186', '#167' 1'#186'|01012009|'
            
              'GO010004|Ref. '#224' entrada de mercadoria recebida em devolu'#231#227'o, o c' +
              'ontribuinte deve estornar o cr'#233'dito do imposto apropriado em fun' +
              #231#227'o de benef'#237'cio fiscal relacionado '#224' opera'#231#227'o de sa'#237'da. - Parec' +
              'er n'#186' 600/05 GOT|01012009|'
            
              'GO010005|Ref. '#224' decis'#227'o de restitui'#231#227'o de  ICMS denegat'#243'ria do p' +
              'agamento do mesmo, referente  '#224' substitui'#231#227'o tribut'#225'ria e cujo f' +
              'ato gerador n'#227'o se realizou e que foi aproveitado nos termos do ' +
              ' Art.   49, II do CTE  - RCTE - Art.  42, II|01012009|'
            
              'GO010006|Ref. '#224' decis'#227'o denegat'#243'ria de aprov de cr. prop ao imp ' +
              'estornado ou n'#227'o creditado em op. ou prest. anteriores, de oper.' +
              ' tributada realizada com prod. agrop, ..., e esta por sua vez, a' +
              'ntecedida de oper. ou prest tributada - RCTE - Art.  50, '#167' 2'#186'|01' +
              '012009|'
            
              'GO010007|Ref.  ao vl. corresp '#224' dif. constatada resultar cr. sup' +
              '. para o estab. remetente, entre o valor corresp '#224' dif. apurada,' +
              ' do confronto entre o cr. e o d'#233'b. do icms, na hip de transf. In' +
              'ter. de bem integrado ao at. imob.  - RCTE - Art. 11, II, '#8220'c'#8221' - ' +
              'ANEXO IX|01012009|'
            
              'GO010008|Ref. ao vl. corresp. '#224' dif. constatada resultar cr. sup' +
              '. para o estab. remetente, entre o valor corresp. '#224' dif. apurada' +
              ', do confronto entre o cr. e o d'#233'b. do icms, na hip. de transf. ' +
              'Inter.l de material de uso/consumo  - RCTE - Art. 11, II, '#8220'c'#8221' - ' +
              'ANEXO IX|01012009|'
            
              'GO010009|Ref. ao valor integral do cr. out. para o estab. Fab. o' +
              'u revendedor de combust'#237'vel, ao valor equivalente ao da aquisi'#231#227 +
              'o de equip. medidor eletr'#244'nico de vaz'#227'o - RCTE - Art. 11, XIV, "' +
              'g" e "j"  1 e 2 - Anexo IX|01012009|'
            
              'GO010010|Ref. ao cr. correspondente '#224' respectiva entrada, qdo o ' +
              'estabelecimento da construtora que efetuar venda ao p'#250'blico, rea' +
              'lizar remessa para a obra que executar,  - RCTE - Art. 28 '#167' '#250'nic' +
              'o - Anexo XIII|01012009|'
            
              'GO010011|Referente ao estorno de cr'#233'dito, mediante Notifica'#231#227'o F' +
              'iscal, sem preju'#237'zo da aplica'#231#227'o de penalidade cab'#237'vel, desde qu' +
              'e n'#227'o tenha havido omiss'#227'o do pagamento do imposto - RCTE - Art.' +
              ' 445-A|01012009|'
            
              'GO010012|Ref. '#224' decis'#227'o denegat'#243'ria de aproveitamento de cr'#233'dito' +
              ' perda ou extravio da 1'#170' (primeira) via do documento fiscal resp' +
              'ectivo - RCTE - Art. 53, '#167' 3'#186'|01012009|'
            
              'GO010013|Ref. '#224's entradas recebidas em transf e qdo a base de c'#225 +
              'lc. utilizada na opera'#231#227'o subsequente for inferior '#224' da respecti' +
              'va transf. - RCTE - Art. 58, '#167' 2'#186'|01012009|'
            
              'GO010014|Ref. servi'#231'o transporte cuja entradas recebidas em tran' +
              'sf e qdo a bc utilizada na op subseq'#252'ente for inferior '#224' da resp' +
              'ectiva transf - RCTE - Art. 58, '#167' 2'#186' e Art. 61|01012009|'
            
              'GO010015|Ref. entrada serv comunic cuja sa'#237'da ou prest serv seja' +
              ' isenta ou n'#227'o-trib ou seja utiliz como insumo proces industr ou' +
              ' prest serv, cuja sa'#237'da prod result ou serv prest for isento ou ' +
              'n'#227'o trib. - RCTE - Art. 58, I,  "a" e "c", 1 e Art. 61|01012009|'
            
              'GO010016|Ref. servi'#231'o transporte cuja sa'#237'da ou prest serv seja i' +
              'senta ou n'#227'o-trib ou seja utiliz como insumo proces de industr o' +
              'u prest de serv, cuja sa'#237'da prod result ou serv prestado for ise' +
              'nto ou n'#227'o trib - RCTE - Art. 58, I, "a" e "c", 1 e Art. 61|0101' +
              '2009|'
            
              'GO010017|Ref. entrada energia el'#233't cuja sa'#237'da ou prest serv seja' +
              ' isenta ou n'#227'o-tributada ou em que seja utiliz como insumo e cuj' +
              'a sa'#237'da do prod result ou do serv prest for isento ou n'#227'o tribut' +
              'ado - RCTE - Art. 58, I, "a" e "c", item 1 e Art.  61|01012009|'
            
              'GO010018|Ref. '#224' entrada de servi'#231'o de comunica'#231#227'o cuja sa'#237'da ou ' +
              'presta'#231#227'o de servi'#231'o seja contemplada com redu'#231#227'o de base de c'#225'l' +
              'culo, hip'#243'tese em que o estorno '#233' proporcional a essa redu'#231#227'o; -' +
              ' RCTE - Art. 58, I, "b" e Art. 61|01012009|'
            
              'GO010019|Ref. '#224' entrada e que tenha sido utiliz no consumo do pr' +
              #243'prio estabel., relativa e proporc. '#224' parcela das oper. ou prest' +
              '. isentas ou n'#227'o-tribut., considerando-se as sa'#237'das e as prest. ' +
              'com destino ao exterior como sendo tributadas - RCTE - Art. 58, ' +
              'I, "e"|01012009|'
            
              'GO010020|Ref. serv transp cuja entrada e que tenha sido utiliz n' +
              'o uso ou consumo final do pr'#243'prio estab, e houver sa'#237'da ou prest' +
              ' isen ou n'#227'o trib, na prop que estas sa'#237'das ou prest represent t' +
              'otal sa'#237'das e prest no mesmo per'#237'odo - RCTE - Art. 58, I, "e" e ' +
              'Art. 61|01012009|'
            
              'GO010021|Ref. entrada em que seja utilizada como insumo processo' +
              ' industr ou prest serv, e houver sa'#237'da ou prest isentas ou n'#227'o t' +
              'rib e sendo imposs'#237'vel determinar a qual delas corresponde a mer' +
              'cad ou o servi'#231'o. - RCTE - Art. 58, I, '#8220' c'#8221', 2|01012009|'
            
              'GO010022|Ref. '#224' entrada de mercadoria ou bem cuja sa'#237'da ou prest' +
              'a'#231#227'o de servi'#231'o seja isenta ou n'#227'o-tributada - RCTE - Art. 58, I' +
              ', '#8220'a'#8221'|01012009|'
            
              'GO010023|Ref. '#224' entrada cuja sa'#237'da ou presta'#231#227'o de servi'#231'o seja ' +
              'contemplada com redu'#231#227'o de base de c'#225'lculo, hip'#243'tese em que o es' +
              'torno '#233' proporcional a essa redu'#231#227'o. - RCTE - Art. 58, I, '#8220'b'#8221' e ' +
              #167'4'#186'|01012009|'
            
              'GO010024|Ref. a presta'#231#227'o de servi'#231'o de transporte correspondent' +
              'e seja contemplada com redu'#231#227'o de base de c'#225'lculo, hip'#243'tese em q' +
              'ue o estorno '#233' proporcional a essa redu'#231#227'o. - RCTE - Art. 58, I,' +
              ' '#8220'b'#8221' e '#167'4'#186', Art. 61|01012009|'
            
              'GO010025|Ref. '#224' entrada de energia el'#233'trica cuja sa'#237'da ou presta' +
              #231#227'o de servi'#231'o seja contemplada com redu'#231#227'o de base de c'#225'lculo, ' +
              'hip'#243'tese em que o estorno '#233' proporcional a essa redu'#231#227'o. - RCTE ' +
              '- Art. 58, I, '#8220'b'#8221' e '#167'4'#186', Art. 61|01012009|'
            
              'GO010026|Ref. '#224' entrada em que seja integrada ou consumida em pr' +
              'ocesso de produ'#231#227'o, industrializa'#231#227'o e cuja sa'#237'da da mercadoria ' +
              'resultante for isenta ou n'#227'o tributada - RCTE - Art. 58, I, '#8220'c'#8221',' +
              ' 1|01012009|'
            
              'GO010027|Ref. '#224' entrada em que seja utilizada como insumo em pro' +
              'cesso de produ'#231#227'o, industr ou prest de serv, e cuja sa'#237'da do pro' +
              'd result ou do serv prestado for isento ou n'#227'o tributado - RCTE ' +
              '- Art. 58, I, '#8220'c'#8221', 1|01012009|'
            
              'GO010028|Ref. '#224' entrada em que seja integrada ou consumida em pr' +
              'ocesso de industrializa'#231#227'o, e houver sa'#237'da ou prest isentas ou n' +
              #227'o trib e sendo imposs'#237'vel determinar a qual delas corresponde a' +
              ' mercadoria - RCTE - Art. 58, I, '#8220'c'#8221', 2|01012009|'
            
              'GO010029|Ref. '#224' entrada de mercadoria e integrada ao ativo imobi' +
              'lizado do estabelecimento, e houver perecimento, sinistro, furto' +
              ', roubo ou deteriora'#231#227'o do bem, para bens adquiridos at'#233' 31.12.0' +
              '0 - RCTE - Art. 58, I, '#8220'd'#8221',  2|01012009|'
            
              'GO010030|Ref. '#224' entrada de mercadoria e integrada ao ativo imobi' +
              'lizado do estabelecimento, e houver sa'#237'da de produto ou mercador' +
              'ia isentos ou n'#227'o tributados, para bens adquiridos at'#233' 31.12.00 ' +
              '- RCTE - Art. 58, I, '#8220'd'#8221', 1|01012009|'
            
              'GO010031|Ref. ao servi'#231'o de transporte cuja entrada de mercadori' +
              'a e integrada ao ativo imobilizado do estabelecimento, e houver ' +
              'sa'#237'da de produto ou mercadoria isentos ou n'#227'o tributados - RCTE ' +
              '- Art. 58, I, '#8220'd'#8221', 1 e Art. 61|01012009|'
            
              'GO010032|Ref. entrada utiliz no uso ou consumo final do pr'#243'prio ' +
              'estabel., e houver sa'#237'da ou prest isentas ou n'#227'o trib, na prop. ' +
              'em que estas sa'#237'das ou prest represent do total das sa'#237'das e pre' +
              'st no mesmo per'#237'odo (apl. a partir de 01.01.03) - RCTE - Art. 58' +
              ', I, '#8220'e'#8221'|01012009|'
            
              'GO010033|Ref. entrada servi'#231'o comunica'#231#227'o em que seja utilizada ' +
              'como insumo em processo industr ou prest serv, e houver sa'#237'da ou' +
              ' prest isentas ou n'#227'o trib e imposs'#237'vel determinar a qual corres' +
              'p a mercad ou o servi'#231'o - RCTE - Art. 58, I,'#8221' c'#8221', 2 e Art. 61|01' +
              '012009|'
            
              'GO010034|Ref. ao servi'#231'o transporte entrada seja utilizada como ' +
              'insumo processo industr ou prest serv, e houver sa'#237'da ou prest i' +
              'sentas ou n'#227'o trib e sendo imposs'#237'vel determinar a qual delas co' +
              'rresp mercad ou o serv - RCTE - Art. 58, I,'#8221' c'#8221', 2 e Art. 61|010' +
              '12009|'
            
              'GO010035|Ref. ao servi'#231'o de transporte cuja entrada de mercadori' +
              'a e integrada ao ativo imobilizado do estabelecimento, e houver ' +
              'perecimento, sinistro, furto, roubo ou que implique a deteriora'#231 +
              #227'o do bem - RCTE - Art. 58, I,'#8221' d'#8221', 2 e Art. 61|01012009|'
            
              'GO010036|Ref. entrada energia el'#233't utilizada como insumo proces ' +
              'industr ou prest serv, e houver sa'#237'da ou prest isentas ou n'#227'o tr' +
              'ib e sendo imposs'#237'vel determinar a qual delas corresp a mercad o' +
              'u o serv - RCTE - Art. 58, I,'#8221'c'#8221', 2 e Art. 61|01012009|'
            
              'GO010037|Ref. '#224's entradas e que forem utilizadas em fim alheio '#224 +
              ' atividade operacional do estabelecimento - RCTE - Art. 58, II|0' +
              '1012009|'
            
              'GO010038|Ref. '#224's entrada de energia el'#233'trica e que for utilizada' +
              ' em fim alheio '#224' atividade operacional do estabelecimento - RCTE' +
              ' - Art. 58, II e Art.  61|01012009|'
            
              'GO010039|Ref. ao servi'#231'o de transporte de entradas que forem uti' +
              'lizadas em fim alheio '#224' atividade operacional do estabelecimento' +
              ' - RCTE - Art. 58, II e Art. 61|01012009|'
            
              'GO010040|Ref. '#224's entrada de servi'#231'o de comunica'#231#227'o e que for uti' +
              'lizada em fim alheio '#224' atividade operacional do estabelecimento ' +
              '- RCTE - Art. 58, II e Art. 61|01012009|'
            
              'GO010041|Ref. entradas e que inexistir, por qualquer motivo, op ' +
              'ou prest posterior, em raz'#227'o de sinistro, furto, roubo, perecime' +
              'nto ou de qualquer outro motivo, desde de que devidamente compro' +
              'vados - RCTE - Art. 58, III|01012009|'
            
              'GO010042|Ref. entrada de energia el'#233'trica e que inexistir, por q' +
              'ualquer motivo, opera'#231#227'o ou presta'#231#227'o posterior, em raz'#227'o de sin' +
              'istro, furto, roubo, perecimento ou de qualquer outro motivo - R' +
              'CTE - Art. 58, III e Art. 61|01012009|'
            
              'GO010043|Ref. entrada servi'#231'o comunica'#231#227'o e que inexistir opera'#231 +
              #227'o ou presta'#231#227'o posterior, em raz'#227'o de sinistro, furto, roubo, p' +
              'erecimento ou de qualquer outro motivo - RCTE - Art. 58, III e A' +
              'rt. 61|01012009|'
            
              'GO010044|Ref. servi'#231'o transporte de entradas e que inexistir, po' +
              'r qualquer motivo, op ou prest posterior, em raz'#227'o de sinistro, ' +
              'furto, roubo, perecimento, ou de qualquer outro motivo - RCTE - ' +
              'Art. 58, III e Art. 61|01012009|'
            
              'GO010045|Ref. entradas de mercadorias, bem, energia el'#233'trica, se' +
              'rvi'#231'o de comunica'#231#227'o, e servi'#231'o de transporte e na conta mercad,' +
              ' no final do exerc ou no encer ativ estab, por seu valor bruto, ' +
              'apresentar preju'#237'zo - RCTE - Art. 58, IV e Art.  61|01012009|'
            
              'GO010046|Ref. '#224' entrada de merc. e houver sa'#237'da ou prest isentas' +
              ' ou n'#227'o trib. junt c/sa'#237'da ou prest tributadas, devendo o estorn' +
              'o ser feito na prop em q estas sa'#237'da ou prest isentas ou n'#227'o tri' +
              'b repres do total das sa'#237'das e prest no mesmo per'#237'odo. - RCTE - ' +
              'Art. 60|01012009|'
            
              'GO010047|Ref. '#224' entrada de mercad p/ a usina de alcool que utili' +
              'za o cred out previsto no Art.  11, inciso XXVI do RCTE e houver' +
              ' sa'#237'da ou presta'#231#245'es isentas ou n'#227'o trib juntamente com sa'#237'da ou' +
              ' prest trib - RCTE - Art. 60 e 61|01012009|'
            
              'GO010048|Ref. '#224' entrada de energia el'#233't. e houver sa'#237'da ou prest' +
              '. isentas ou n'#227'o trib junt c/sa'#237'da ou prest trib, dev o est ser ' +
              'feito na prop em q estas sa'#237'da ou prest isentas ou n'#227'o trib repr' +
              'es do total das sa'#237'das e prest no mesmo per'#237'odo - RCTE - Art. 60' +
              ' e 61|01012009|'
            
              'GO010049|Ref '#224' entrada de serv de comunic e houver sa'#237'da ou pres' +
              't isentas ou n'#227'o trib junt c/sa'#237'da ou prest trib, dev o est ser ' +
              'feito na prop em q estas sa'#237'da ou prest isentas ou n'#227'o trib repr' +
              'es do total das sa'#237'das e prest no mesmo per'#237'odo - RCTE - Art. 60' +
              ' e 61|01012009|'
            
              'GO010050|Ref. ao serv de transp qdo houver sa'#237'da/prest isentas/n' +
              #227'o trib junt c/sa'#237'da ou prest trib, consid as sa'#237'das p/o ext com' +
              'o trib, dev o est ser feito na prop em q estas sa'#237'da/prest repre' +
              's do total das sa'#237'das e prest no mesmo per'#237'odo - RCTE - Arts. 60' +
              ' e 61|01012009|'
            
              'GO010051|O contribuinte que efetuar oper interest com o produto ' +
              'result da mistura de '#243'leo diesel com B100 deve efetuar o estorno' +
              ' do cr do imposto correspondente ao vol de B100 remetido.  - RCT' +
              'E - Art. 61-A, '#167' 3'#186' - Anexo VIII|01012009|'
            
              'GO010052|Ref. ao cr. que superar o perc. de 58,33%, qdo a empres' +
              'a utilizar a red.da b. de c'#225'lc. sobre o vl. da op que resulte o ' +
              'perc. de 7% na sa'#237'da interna c/prod de inform'#225't., telecomun. ou ' +
              'aut.  relac. no Apend. IV do Anexo IX. - RCTE - Art. 8, XIII - A' +
              'nexo IX|01012009|'
            
              'GO019999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS Pr'#243'prio.|01012009|31072010|'
            
              'GO119999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS-ST.|01012009|'
            
              'GO110001|Cr. Referente a dedu'#231#227'o de ICMS por repasses a outras U' +
              'F efetuados por outro estabelecimento do sujeito passivo  - Conv' +
              '. ICMS 110/07, Cl'#225'usula 22'#170', '#167' 6'#186' e Art. 61-D, '#167' 6'#186', Anexo VIII ' +
              'do RCTE|01012009|'
            
              'GO010053|Estorno, pelo estabelec. remet., do imposto creditado, ' +
              'na hip'#243'tese em que a sa'#237'da subseq. da mercad. resultante do proc' +
              'esso de industr.ou de outro tratam., promovida pelo estabelec. d' +
              'est., tenha sido contemplada com benef. Fiscal - CTE - Art. 62, ' +
              #167' '#250'nico|01122009|'
            
              'GO020001|Cr. relativo ao adicional de 2% na al'#237'quota do ICMS, na' +
              ' opera'#231#227'o ou a presta'#231#227'o sujeitas ao regime normal de tributa'#231#227'o' +
              '. PROTEGE. - CTE - Art. 27, '#167' 5'#186' e Art. 6 -  IN  784/06|01012009' +
              '|'
            
              'GO020002|Cr. out. (COMEXPRODUZIR) para a empresa comercial imp. ' +
              'e exp., inclusive por "trading company", que opere, exclusiva ou' +
              ' prepond. com op. de com. ext. realiz. por interm'#233'dio de estrut.' +
              ' portu'#225'ria de zona sec. localiz. Em Goi'#225's - Dec. 5.686/02 - Art.' +
              ' 3, III|01012009|'
            
              'GO020003|Cr. Out. (LOGPRODUZIR) '#224' operadora de log'#237'stica, nos pe' +
              'rcentuais do Art. 4'#186' do Dec. 5.835/03 no saldo devedor do ICMS p' +
              'elas presta'#231#245'es interestaduais de servi'#231'o de transporte da benef' +
              'ici'#225'ria no per'#237'odo. - Dec. 5.835/03 - Art. 3 e 4|01012009|'
            
              'GO020004|Antecipa'#231#227'o de ICMS de imposto apropriado em decorr'#234'nci' +
              'a de pagamento antecipado pela futura opera'#231#227'o interna. - Dec. 6' +
              '.716/08 - Art. 8, '#167' '#250'nico e IN. 893/08|01012009|'
            
              'GO020005|Cr. do ICMS ao optante do Simples Nacional que deixar d' +
              'e ser optante do referido regime, correspondente '#224' aquisi'#231#227'o da ' +
              'mercadoria existente em seu estoque na mudan'#231'a do regime, observ' +
              'adas as regras da legisla'#231#227'o tribut'#225'ria.  - IN  894/08-GSF|01012' +
              '009|'
            
              'GO020006|Presumido ao produtor ou extrator ou ST, exceto o crede' +
              'nciado, nos percentuais de cr'#233'dito presumido, aplicados no impos' +
              'to devido, na opera'#231#227'o sujeita '#224's al'#237'quotas indicadas em lei. - ' +
              'IN 673/04-GSF - Art. 14|01012009|'
            
              'GO020007|Cr. do imposto relativo '#225' aquisi'#231#227'o do '#243'leo diesel pelo' +
              ' contribuinte, consumido em m'#225'quina agr'#237'cola. - IN 673/04-GSF - ' +
              'Art. 17 e  '#167' '#218'nico|01012009|'
            
              'GO020008|Pela diferen'#231'a a maior, entre o ICMS pago em parcelas, ' +
              'em percentuais do imposto apurado no per'#237'odo anterior, e o valor' +
              ' apurado para o per'#237'odo de refer'#234'ncia. Reg. 1200 - IN 709/05; 75' +
              '4/05; 768/06 e demais similares|01012009|'
            
              'GO020009|Outorgado ao produtor rural (repasse), apropriado pelo ' +
              'ST, em 75% do ICMS, no algod'#227'o em pluma.  - Lei n'#186' 13.506/99, Ar' +
              't. 2'#186'|01012009|'
            
              'GO020010|Cr. out. mediante TARE, relativo ao incentivo do TECNOP' +
              'RODUZIR, a ser compensado com o imposto devido pela empresa inve' +
              'stidora, por opera'#231#227'o pr'#243'pria ou de sua responsabilidade devido ' +
              'por ST. - Lei n'#186' 15.619/06|01012009|'
            
              'GO020011|Cr. out. qdo n'#227'o apropriado no per'#237'odo em que ocorrer a' +
              ' op. ou prest., cujo aproveitamento foi autorizado pelo Sup. da ' +
              'Receita Estadual, em caso de recurso ap'#243's decis'#227'o denegat'#243'ria do' +
              ' aproveitamento do cr'#233'dito. - RCTE - Art. 10, '#167' 2'#186' - Anexo IX|01' +
              '012009|'
            
              'GO020012|Cr. out. qdo n'#227'o apropriado no per'#237'odo em que ocorrer a' +
              ' opera'#231#227'o ou presta'#231#227'o, cujo aproveitamento foi autorizado pelo ' +
              'titular da Delegacia Regional de Fiscaliza'#231#227'o - RCTE - Art. 10, ' +
              #167' 1'#186' - Anexo IX|01012009|'
            
              'GO020013|Cr. Out. ao industrial alcooleiro do FOMENTAR ou PRODUZ' +
              'IR, na opera'#231#227'o com '#225'lcool et'#237'lico anidro combust'#237'vel. Reg. 1200' +
              ' - RCTE - Art. 11,  XXVI, anexo IX|01012009|'
            
              'GO020014|Cr. ao estabelecimento substituto na opera'#231#227'o interna d' +
              'e aquisi'#231#227'o de cana-de-a'#231#250'car, para industrializa'#231#227'o.(Cr. ST ant' +
              'erior).  - RCTE - Art. 11, '#167' 3'#186', I do Anexo VIII|01012009|'
            
              'GO020015|Cr. out. ao que receber de outra UF, com isen'#231#227'o do ICM' +
              'S as mercadorias Hortifrut'#237'colas - RCTE - Art. 11, I, "a" - Anex' +
              'o IX|01012009|'
            
              'GO020016|Cr. out. ao que receber de outra UF, com isen'#231#227'o do ICM' +
              'S as mercadorias Ave e produtos comest'#237'veis resultante de sua ma' +
              'tan'#231'a. - RCTE - Art. 11, I, "b" - Anexo IX|01012009|'
            
              'GO020017|Cr. out. ao que receber de outra UF, com isen'#231#227'o do ICM' +
              'S as mercadorias Caprino e produtos comest'#237'veis resultante de su' +
              'a matan'#231'a. - RCTE - Art. 11, I, "c" - Anexo IX|01012009|'
            
              'GO020018|Cr. out. ao remetente pela diferen'#231'a apurada a menor en' +
              'tre o cr'#233'dito e o d'#233'bito do ICMS, qdo da transfer'#234'ncia interesta' +
              'dual de bem integrado ao ativo imobilizado. - RCTE - Art. 11, II' +
              ' - Anexo IX|01012009|'
            
              'GO020019|Cr. out. ao remetente pela diferen'#231'a apurada a menor en' +
              'tre o cr'#233'dito e o d'#233'bito do ICMS, qdo da transfer'#234'ncia interesta' +
              'dual de material de uso ou consumo. - RCTE - Art. 11, II - Anexo' +
              ' IX|01012009|'
            
              'GO020020|Cr. out. ao comerciante atacadista equivalente a 3% na ' +
              'sa'#237'da interestadual de mercadoria para comercializa'#231#227'o, produ'#231#227'o' +
              ' ou industrializa'#231#227'o. - RCTE - Art. 11, III - Anexo IX|01012009|'
            
              'GO020021|Cr. out. ao industrial, equivalente a 2%, na sa'#237'da inte' +
              'restadual de mercadoria para comercio, produ'#231#227'o ou industrializa' +
              #231#227'o.  - RCTE - Art. 11, III - Anexo IX|01012009|'
            
              'GO020022|Cr. out. ao contrib.e comerciante equiparado a atacadis' +
              'ta (varejista), em 3%, na sa'#237'da interest. que destine merc. para' +
              ' comercializa'#231#227'o, produ'#231#227'o ou industrializa'#231#227'o, aplicado sobre o' +
              ' valor da correspondente opera'#231#227'o. - RCTE - Art. 11, III, "a" - ' +
              'Anexo IX|01012009|'
            
              'GO020023|Cr. out. ao fabricante de fertilizante, em 5%, na opera' +
              #231#227'o interestadual com esse insumo. - RCTE - Art. 11, IX - Anexo ' +
              'IX|01012009|'
            
              'GO020024|Cr. out. ao remetente em 5% da base de c'#225'lculo, na sa'#237'd' +
              'a interestadual com pedra-de-Piren'#243'polis,  vedado o aproveitamen' +
              'to de quaisquer cr'#233'ditos do ICMS relativos '#224' entrada e ao servi'#231 +
              'o utilizado.  - RCTE - Art. 11, LI - Anexo IX|01012009|'
            
              'GO020025|Cr. out. ao frigor'#237'fico ou abatedor, equivalente a 9%, ' +
              'na sa'#237'da de carne de asinino, bovino, bufalino, eq'#252'ino, muar, ov' +
              'ino, caprino, lepor'#237'deo e ran'#237'deo para comercializa'#231#227'o, produ'#231#227'o' +
              ' ou industrializa'#231#227'o. - RCTE - Art. 11, V - Anexo IX|01012009|'
            
              'GO020026|Cr. out. ao frigor'#237'fico ou abatedor, equivalente a 9%, ' +
              'na sa'#237'da de carnes de ave para comercializa'#231#227'o, produ'#231#227'o ou indu' +
              'strializa'#231#227'o.  Inclusive em transfer'#234'ncia interestadual mediante' +
              ' TARE. - RCTE - Art. 11, VI - Anexo IX|01012009|'
            
              'GO020027|Cr. out. ao frigor'#237'fico ou abatedor, equivalente a 9%, ' +
              'na sa'#237'da de carnes de su'#237'no para comercializa'#231#227'o, produ'#231#227'o ou in' +
              'dustrializa'#231#227'o.  Inclusive em transfer'#234'ncia interestadual median' +
              'te TARE. - RCTE - Art. 11, VI - Anexo IX|01012009|'
            
              'GO020028|Cr. out. ao produtor rural, no valor do ICMS, na sa'#237'da ' +
              'de alho. - RCTE - Art. 11, X - Anexo IX|01012009|'
            
              'GO020029|Cr. out. ao titular de projeto agroindustrial de suinoc' +
              'ultura, em 5%, na sa'#237'da de produto comest'#237'vel de su'#237'no para o N,' +
              ' NE, CO e ES. - RCTE - Art. 11, XII - Anexo IX|01012009|'
            
              'GO020030|Cr. out. ao titular de projeto agroindustrial de avicul' +
              'tura, em 5%, na sa'#237'da de produto comest'#237'vel de ave para o N, NE,' +
              ' CO e ES. - RCTE - Art. 11, XII - Anexo IX  (Red. Dec.6.547/06)|' +
              '01012009|'
            
              'GO020031|Cr. out. ao industrial, quando o produto for resultante' +
              ' do beneficiamento de sua produ'#231#227'o em Goi'#225's, em de 75% do ICMS n' +
              'a opera'#231#227'o de venda de algod'#227'o em pluma. - RCTE - Art. 11, XIII ' +
              '- Anexo IX|01012009|'
            
              'GO020032|Cr. out. ao fabricante ou revendedor de combust'#237'vel, no' +
              ' valor do medidor eletr'#244'nico de vaz'#227'o. - RCTE - Art. 11, XIV - A' +
              'nexo IX|01012009|'
            
              'GO020033|Cr. out. ao remetente, em 5% , na sa'#237'da interestadual c' +
              'om areia, saibro ou material britado.  - RCTE - Art. 11, XIX - A' +
              'nexo IX|01012009|'
            
              'GO020034|Cr. out. ao remetente, mediante TARE, em 5% , em transf' +
              'er'#234'ncia interestadual com areia, saibro ou material britado.  - ' +
              'RCTE - Art. 11, XIX, "f", 2 - Anexo IX|01012009|'
            
              'GO020035|Cr. out. ao remetente, na sa'#237'da interestadual de telha,' +
              ' tijolo, tijoleira e tapa-viga cer'#226'micos, n'#227'o esmaltados nem vit' +
              'rificados, em 5% da base de c'#225'lculo, at'#233' 7%, o cr'#233'dito da aquisi' +
              #231#227'o interestadual de mercadoria. - RCTE - Art. 11, XL - Anexo IX' +
              '|01012009|'
            
              'GO020036|Cr. out. p/ o industrial, em 5% sobre o valor de entrad' +
              'a de produto resultante de reciclagem realizada em GO utilizado ' +
              'como mat'#233'ria-prima no seu processo de industr.; e embalagem e pa' +
              'pel usados, sucata e aparas.RCTE - Art. 11, XLI - Anexo IX|01012' +
              '009|'
            
              'GO020037|Cr. out. mediante TARE, ao prestador de servi'#231'o de tele' +
              'comunica'#231#227'o, at'#233' 2% dos d'#233'bitos de ICMS pela telecomunica'#231#227'o, em' +
              ' substitui'#231#227'o ao estorno de d'#233'bito de situa'#231#245'es sem o fato gerad' +
              'or do ICMS. - RCTE - Art. 11, XLVII - Anexo IX|01012009|'
            
              'GO020038|Cr. out. ao industrial, benefici'#225'rio do PRODUZIR, que i' +
              'nstalou, at'#233' 31 de dezembro de 2007, na regi'#227'o Norte de Goi'#225's, i' +
              'ndustrializa'#231#227'o do biodiesel, no valor do investido em obras de ' +
              'infra-estrutura. - RCTE - Art. 11, XLIX - Anexo IX|01012009|'
            
              'GO020039|Cr. out. ao frigor'#237'fico, abatedor ou produtor rural na ' +
              'sa'#237'da de abate de animal silvestre e ex'#243'tico, para comercializa'#231 +
              #227'o ou industrializa'#231#227'o. Inclusive a transfer'#234'ncia interestadual ' +
              'mediante TARE. - RCTE - Art. 11, XV, "b", '#8220'e'#8221', 2 - Anexo IX|0101' +
              '2009|'
            
              'GO020040|Cr. out. '#224' PETROBRAS no valor do ICMS no fornecimento e' +
              'nergia el'#233'trica. - RCTE - Art. 11, XVII - Anexo IX|01012009|2803' +
              '2009|'
            
              'GO020041|Cr. out. ao remetente, em 9% , na opera'#231#227'o interestadua' +
              'l com arroz, exceto o em casca. Inclusive a transfer'#234'ncia intere' +
              'stadual mediante TARE. - RCTE - Art. 11, XVIII - Anexo IX|010120' +
              '09|'
            
              'GO020042|Cr. out. ao prestador do servi'#231'o de transporte de passa' +
              'geiro, em 4% e sujeita a 12% sobre a base de c'#225'lculo.  - RCTE - ' +
              'Art. 11, XX, "a" - Anexo IX|01012009|'
            
              'GO020043|Cr. out. ao prestador do servi'#231'o de transporte de passa' +
              'geiro, em 9% e sujeita a 17% sobre a base de c'#225'lculo.  - RCTE - ' +
              'Art. 11, XX, "b" - Anexo IX|01012009|'
            
              'GO020044|Cr. out. ao contribuinte participante projeto cultural ' +
              'da Lei GOYAZES.  - RCTE - Art. 11, XXII - Anexo IX|01012009|'
            
              'GO020045|Cr. out. ao atacadista de medicamento, mediante TARE, e' +
              'm 4% , na sa'#237'da interestadual de medicamento de uso humano. - RC' +
              'TE - Art. 11, XXIII - Anexo IX|01012009|'
            
              'GO020046|Cr. out. ao industrial e comerciante atacadista, em 5% ' +
              ', na sa'#237'da interestadual de '#243'leo vegetal comest'#237'vel. - RCTE - Ar' +
              't. 11, XXV - Anexo IX|01012009|'
            
              'GO020047|Cr. out. ref. ao valor constante do doc. denominado '#8220'Ch' +
              'eque Moradia'#8221', para o estabel. que fornecer a benefici'#225'rio do Pr' +
              'ograma Habitacional Morada Nova, merc. arroladas no anexo IX do ' +
              'RCTE. Reg. 1200 - RCTE - Art. 11, XXVII e '#167' 5'#186',  II, '#8220'e'#8221' - Anexo' +
              ' IX|01012009|'
            
              'GO020048|Cr. out. ao remetente, em 5%, na sa'#237'da interestadual de' +
              ' m'#225'quina e equipamentos rodovi'#225'rios. - RCTE - Art. 11, XXVIII - ' +
              'Anexo IX|01012009|'
            
              'GO020049|Cr. out. ao industrializador de produto agr'#237'cola, at'#233' 7' +
              '% do valor do produto agr'#237'cola produzido em Goi'#225's, e tamb'#233'm no E' +
              'stado industrializado em estabelecimento seu. - RCTE - Art. 11, ' +
              'XXXI -  Anexo IX|01012009|'
            
              'GO020050|Cr. Out. ao distrib. de prod. m'#233'dico-hospitalar, farmac' +
              #234'utico, de perfumaria e preparado cosm'#233'tico, em 5,6% da b. de c'#225 +
              'lc. na sa'#237'da interest. com prod. Imp. de sua empresa no ext. e t' +
              'b com prod. de fab. pr'#243'pria - RCTE - Art. 11, XXXII '#167' 11'#186'  - Ane' +
              'xo I X|01012009|'
            
              'GO020051|Cr. out. ao remetente, em 1% , na opera'#231#227'o interna de l' +
              'eite natural, pasteurizado ou esterilizado. - RCTE - Art. 11, XX' +
              'XIV, "a" - Anexo IX|01012009|'
            
              'GO020052|Cr. out. ao remetente, em 9%, na oper. interestadual c/' +
              ' feij'#227'o produzido neste Estado que n'#227'o tenha sido submetido a qu' +
              'alquer processo de industrializa'#231#227'o fora de GO. Inclusive a tran' +
              'sf. interestadual mediante TARE.RCTE - Art. 11, XXXIV, "b" - Ane' +
              'xo IX|01012009|'
            
              'GO020053|Cr. out. ao remetente, em 5%, na opera'#231#227'o interestadual' +
              ' de produtos derivativos do leite. Inclusive a transfer'#234'ncia med' +
              'iante TARE. - RCTE - Art. 11, XXXV - Anexo IX|01012009|'
            
              'GO020054|Cr. out. ao contribuinte de ICMS que apoiar financeiram' +
              'ente o PROTEGE - RCTE - Art. 11, XXXVI - Anexo IX e Art. 9,I -  ' +
              'Lei 14.469.|01012009|'
            
              'GO020055|Cr. out. ao contribuinte do ICMS que apoiar financeiram' +
              'ente o PROESPORTE. - RCTE - Art. 11, XXXVII - Anexo IX|01012009|'
            
              'GO020056|Cr. out. ao industrial de ve'#237'culo automotor benefici'#225'ri' +
              'o do PRODUZIR, em 92,53% da parcela n'#227'o incentivada pelo program' +
              'a. Reg. 1200 - RCTE - Art. 11, XXXVIII, "a",  '#167' 14 a 18 - Anexo ' +
              'IX|01012009|'
            
              'GO020057|Cr. out. ao industrial de ve'#237'culo automotor benefici'#225'ri' +
              'o do PRODUZIR, em 98% do saldo devedor da sa'#237'da do ve'#237'culo e pe'#231 +
              'as para o exterior. Reg. 1200 - RCTE - Art. 11, XXXVIII, "b" - A' +
              'nexo IX|01012009|'
            
              'GO020058|Cr. out. ao industrial de ve'#237'culo automotor com PRODUZI' +
              'R, a ser apropriado desde o inicio das atividades da industria e' +
              'm Goi'#225's, no valor investido em infra-estrutura. Reg. 1200 - RCTE' +
              ' - Art. 11, XXXVIII, "c" - Anexo IX|01012009|'
            
              'GO020059|Cr. out. ao industrial, em 60% para compensa'#231#227'o do ICMS' +
              ' devido, na sa'#237'da interna de adesivo hidroxilado, cuja mat'#233'ria-p' +
              'rima espec'#237'fica seja material resultante da moagem ou tritura'#231#227'o' +
              ' de garrafa PET.  - RCTE - Art. 12, VI, e '#167' 4'#186' - Anexo IX|010120' +
              '09|'
            
              'GO020060|Normal do ICMS do DARE pago, ao regularizar a opera'#231#227'o,' +
              ' n'#227'o se efetuar dentro do per'#237'odo de apura'#231#227'o e emitir o documen' +
              'to fiscal tamb'#233'm. - RCTE - Art. 141, '#167' 2'#186'|01012009|'
            
              'GO020061|Cr. especial/pr'#233'-operacional para investimento autoriza' +
              'do por TARE. REG. 1200 - RCTE - Art. 19 a 29 - Anexo IX e TARE|0' +
              '1012009|'
            
              'GO020062|Normal '#224' CONAB/PGPM no valor do ICMS pago, referente ao' +
              ' estoque de mercadoria existente no ultimo dia de cada m'#234's. Sem ' +
              'despensa o d'#233'bito na sa'#237'da.  - RCTE - Art. 20 - Anexo XIII|01012' +
              '009|'
            
              'GO020063|Cr. do imposto correspondente ao valor pago em outro Es' +
              'tado, nas vendas fora do estabelecimento. - RCTE - Art. 28, '#167' 3'#186 +
              ' e '#167' 4'#186', V, "b" - Anexo XII|01012009|'
            
              'GO020064|Pagamento antecipado do ICMS - sa'#237'da interestadual - Re' +
              'gistro 1200 - RCTE - Art. 340 '#167'1'#186' e IN  598/03|01012009|'
            
              'GO020065|Cr. relativo '#224' restitui'#231#227'o do valor do imposto pago, po' +
              'r for'#231'a da substitui'#231#227'o tribut'#225'ria, correspondente ao fato gerad' +
              'or presumido que n'#227'o se realizar - RCTE - Art. 42, I|01012009|'
            
              'GO020066|Cr. relativo '#224' restitui'#231#227'o do valor do imposto pago, po' +
              'r for'#231'a da substitui'#231#227'o tribut'#225'ria, correspondente ao fato gerad' +
              'or presumido que n'#227'o se realizar, quando n'#227'o houver  delibera'#231#227'o' +
              ' no prazo de 90 dias - RCTE - Art. 42, II|01012009|'
            
              'GO020067|Antecipa'#231#227'o de ICMS retido na aquisi'#231#227'o de '#225'lcool n'#227'o c' +
              'arburante procedente de outra UF.  - RCTE - Art. 45, I, "a"; Art' +
              '. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' e Art. 58, '#167' 1'#186' - Anexo VIII|0101200' +
              '9|28032009|'
            
              'GO020068|Antecipa'#231#227'o de ICMS retido na aquisi'#231#227'o de '#225'lcool n'#227'o c' +
              'arburante procedente do exterior. - RCTE - Art. 45, I, "a"; Art.' +
              ' 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' e Art. 58, '#167' 1'#186' - Anexo VIII|01012009' +
              '|28032009|'
            
              'GO020069|Cr. decorrente do imposto retido, por utilizar mercador' +
              'ia sujeita '#224' substitui'#231#227'o tribut'#225'ria em processo de produ'#231#227'o ou ' +
              'industrializa'#231#227'o, inclusive manipula'#231#227'o - RCTE - Art. 45, III,  ' +
              'e Art. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' -  Anexo VIII|01012009|'
            
              'GO020070|Cr. decorrente do imp. retido na aquis. de qualquer mer' +
              'c. ou contrata'#231#227'o de serv. de transp., por contrib. goiano signa' +
              't'#225'rio de TARE que lhe atribua a condi'#231#227'o de subst. tribut'#225'rio  -' +
              ' RCTE - Art. 45, I,'#8221'b'#8221' e Art. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' -  Anexo' +
              ' VIII|01012009|'
            
              'GO020071|Cr. decorrente do imposto retido,  por realizar opera'#231#227 +
              'o com mercadoria sujeita '#224' substitui'#231#227'o tribut'#225'ria,  destinada a' +
              ' contribuinte do imposto estabelecido em outra UF - RCTE - Art. ' +
              '45, II e Art. 46, I,  II e '#167' 1'#186', 4'#186' e 5'#186' - Anexo VIII|01012009|'
            
              'GO020072|Cr. decorrente do imposto retido   por destinar mercado' +
              'ria sujeita '#224' substitui'#231#227'o tribut'#225'ria ao ativo imobilizado - RCT' +
              'E - Art. 45, IV e Art. 46, I, II e '#167' 1'#186', 2'#186' e 3'#186' -  Anexo VIII|0' +
              '1012009|'
            
              'GO020073|Cr. decorrente do imposto retido, por realizar opera'#231#227'o' +
              ' subseq'#252'ente n'#227'o onerada pelo imposto com mercadoria sujeita '#224' s' +
              'ubstitui'#231#227'o tribut'#225'ria - RCTE - Art. 45, V e Art. 46, I, II e '#167' ' +
              '1'#186' - Anexo VIII|01012009|'
            
              'GO020074|Cr. decorrente do imposto retido devido ao desfazimento' +
              ' do neg'#243'cio ou devolu'#231#227'o total ou parcial - RCTE - Art. 45, VI e' +
              ' Art. 46, I,  II e '#167' 1'#186', 4'#186' e 5'#186' - Anexo VIII|01012009|'
            
              'GO020075|Cr. decorrente do imposto retido devido '#224' inexist'#234'ncia ' +
              'de opera'#231#227'o subseq'#252'ente em raz'#227'o de quebra, sinistro, furto, rou' +
              'bo, perecimento ou qualquer outro motivo - RCTE - Art. 45, VII e' +
              ' Art. 46, I, II e '#167' 1'#186' - Anexo VIII|01012009|'
            
              'GO020076|Cr. decorrente do imp. retido,  por realizar op. com me' +
              'rc. sujeita '#224' ST c/destino a contrib. detentor de med. Jud. limi' +
              'nar suspendendo a apl. do regime de subst. Tribut. - RCTE - Art.' +
              ' 45, VIII, Art. 46, I, II e '#167' 1'#186' e Art. 48 e 49, '#167' 1'#186', II - Anex' +
              'o VIII|01012009|'
            
              'GO020077|Cr. decorrente do imp. retido, dev. '#224' op. interna com m' +
              'erc. sujeita '#224' ST, realiz. por contrib. ind. ou comerc. atac. co' +
              'm destino a empresa de constr. civil ou a '#243'rg'#227'o da adm p'#250'b. dire' +
              'ta. - RCTE - Art. 45, X e Art. 46, I, II e V; '#167' 1'#186', 4'#186' e 5'#186' - An' +
              'exo VIII|01012009|'
            
              'GO020078|Cr. do imposto apropriado com base em documento de arre' +
              'cada'#231#227'o que excepcionalmente substituir o documento fiscal pr'#243'pr' +
              'io, estabelecido na legisla'#231#227'o tribut'#225'ria para a opera'#231#227'o ou pre' +
              'sta'#231#227'o - RCTE - Art. 46, '#167' 1'#186', III|01012009|'
            
              'GO020079|Cr. decorrente da entrada de bem destinado ao Ativo Imo' +
              'bilizado, '#224' raz'#227'o de 1/48 por m'#234's. - RCTE - Art. 46, '#167' 4'#186'|010120' +
              '09|'
            
              'GO020080|Cr. do imposto anteriormente cobrado em opera'#231#245'es resul' +
              'tantes de aquisi'#231#227'o de combust'#237'vel por estabelecimento prestador' +
              ' de servi'#231'o de transporte interestadual e intermunicipal. - RCTE' +
              ' - Art. 46, '#167' 6'#186'|01012009|'
            
              'GO020081|Cr. em rela'#231#227'o ao diferencial de al'#237'quotas devido em op' +
              'era'#231#245'es ou presta'#231#245'es resultantes de entrada de mercadoria, real' +
              ' ou simb'#243'lica, no seu estabelecimento destinada ao seu ativo imo' +
              'bilizado - RCTE - Art. 46, I e V|01012009|'
            
              'GO020082|Cr. em rela'#231#227'o ao diferencial de al'#237'quotas devido em op' +
              'era'#231#245'es ou presta'#231#245'es resultantes de entrada de mercadoria, real' +
              ' ou simb'#243'lica, no seu estabelecimento destinada ao seu uso ou co' +
              'nsumo final. - RCTE - Art. 46, I, V e Art. 522, I|01012009|'
            
              'GO020083|Cr. do imp. anteriormente cobrad. em op. ou prest resul' +
              't. de entrada de merc, real ou simb, no seu estab, inclusive a d' +
              'estin uso/consumo final/at imob, realiz s/ aproveit. de cr, face' +
              ' a ved, qdo ocorrer a sa'#237'da com d'#233'b. - RCTE - Art. 46, IV|010120' +
              '09|'
            
              'GO020084|Cr. em rela'#231#227'o ao dif. de al'#237'q. dev. em op. ou prest. R' +
              'esult. de entrada de merc, real ou simb. no seu estab. dest. seu' +
              ' uso ou consumo final e at. imob., realiz sem aproveit. de cr, f' +
              'ace a ved const. na legisla'#231#227'o. - RCTE - Art. 46, IV, V e Art. 5' +
              '22, I|01012009|'
            
              'GO020085|Cr. do imposto relativo '#224' restitui'#231#227'o do ind'#233'bito tribu' +
              't'#225'rio sob a forma de aproveitamento de cr'#233'dito, quando autorizad' +
              'o pela legisla'#231#227'o tribut'#225'ria - RCTE - Art. 47, I|01012009|'
            
              'GO020086|Relativo ao valor pago, indevidamente, pelo erro de fat' +
              'o ocorrido na escritura'#231#227'o livros fiscais ou no preparo do docum' +
              'ento de arrecada'#231#227'o, mediante escritura'#231#227'o no per'#237'odo de sua con' +
              'stata'#231#227'o. - RCTE - Art. 47, III, "a" e "b"|01012009|'
            
              'GO020087|Relativo imposto destacado na nota fiscal de remessa pa' +
              'ra usu'#225'rio do servi'#231'o de recep'#231#227'o de som e imagem por sat'#233'lite n' +
              'a devolu'#231#227'o do equipamento ao fornecedor. - RCTE - Art. 47, V|01' +
              '012009|'
            
              'GO020088|Cr. ao imposto relativo '#224' restitui'#231#227'o do valor do dep'#243's' +
              'ito extrajudicial sob a forma de aproveitamento de cr'#233'dito, quan' +
              'do autorizado pela legisla'#231#227'o tribut'#225'ria - RCTE - Art. 47, VI|01' +
              '012009|'
            
              'GO020089|Cr. do imp. result. da apl. da al'#237'q. interna sobre a b.' +
              ' de c'#225'lc., multip pelo tempo que faltar p/completar o quadri'#234'nio' +
              ', na raz'#227'o de 1/48 por m'#234's ou fra'#231#227'o, na transf de at imob cuja ' +
              'entrada no estab tenha ocor a partir de 01/01/01 - RCTE - Art. 4' +
              '7, VII|01012009|'
            
              'GO020090|Cr. aut por Del Fiscal, confir. por dilig. prop ao imp ' +
              'est. ou n'#227'o cred. em op ou prest ant. qdo da realiz de op trib c' +
              '/prod agrop, antecedida de op/prest isentas ou n'#227'o trib e estas,' +
              ' por sua vez, antecedida de op ou prest trib - RCTE - Art. 50, I' +
              'II, '#167' 1'#186'|01012009|'
            
              'GO020091|Cr. qdo da inexist de delib no praz. Estabel. p/manifes' +
              'ta'#231#227'o do del. fiscal, prop. ao imp. Estorn. ou n'#227'o cred. em op. ' +
              'ou prest. anteriores, qdo da realiz de op. trib. c/ prod. agrop.' +
              ' antecedida de op/prest isentas ou n'#227'o trib - RCTE - Art. 50, II' +
              'I, '#167' 2'#186'|01012009|'
            
              'GO020092|Cr. pela restitui'#231#227'o do dep'#243'sito do montante integral s' +
              'e a decis'#227'o em ultima inst'#226'ncia administrativa for favor'#225'vel ao ' +
              'contribuinte. - RCTE - Art. 505, '#167' 4'#186', I, "a"|01012009|'
            
              'GO020093|Cr. do imposto, exceto o outorgado, apropriado mediante' +
              ' autoriza'#231#227'o do Delegado Fiscal da circunscri'#231#227'o do contribuinte' +
              ', atrav'#233's de processo administrativo - RCTE - Art. 52  e outras ' +
              'situa'#231#245'es previstas na legisla'#231#227'o.|01012009|'
            
              'GO020094|Cr. do imposto pelo recebimento de servi'#231'o de comunica'#231 +
              #227'o utilizado no estabelecimento, at'#233' 31/12/2010 havendo opera'#231#227'o' +
              ' de sa'#237'da/presta'#231#227'o para o exterior, na propor'#231#227'o destas sobre a' +
              's sa'#237'das ou presta'#231#245'es totais.  - RCTE - Art. 522, II, "a", 3|01' +
              '012009|'
            
              'GO020095|Cr. relativo '#224' entrada de energia el'#233'trica no estabelec' +
              'imento, at'#233' 31/12/2010 quando houver opera'#231#227'o de sa'#237'da ou presta' +
              #231#227'o para o exterior, na propor'#231#227'o destas sobre as sa'#237'das ou pres' +
              'ta'#231#245'es totais.  - RCTE - Art. 522, II, "b", 2|01012009|'
            
              'GO020096|Cr. decor. do imp. cobrado na op. ou prest. anterior, n' +
              'o caso em que ocorreu a  perda, extrav. ou reten'#231#227'o da 1'#170' via do' +
              ' doc. fiscal respec. e n'#227'o houve deliber. no prazo estab. sobre ' +
              'a solic. aut. ao Del. Fiscal  p/aprov. do cr - RCTE - Art. 53, '#167 +
              ' 3'#186' e 4'#186'|01012009|'
            
              'GO020097|Cr. presumido ao estabelecimento prestador de servi'#231'o d' +
              'e transportes interestadual e intermunicipal, exceto o a'#233'reo, 20' +
              '% sobre o valor devido na presta'#231#227'o, em ST ao sistema normal de ' +
              'creditamento. - RCTE - Art. 64, I|01012009|'
            
              'GO020098|Cr. presumido ao estabel. prestador de serv. de transp.' +
              ' a'#233'reo, no perc. de 4% , aplicado sobre o valor da prest. intern' +
              'a, que deve ser adotado, opcionalmente, pelo contribuinte, em su' +
              'bstitui'#231#227'o ao sistema normal de creditamento - RCTE - Art. 64, I' +
              'I|01012009|'
            
              'GO020099|Regime de Estimativa relativo ao valor pago em excesso ' +
              'no regime de estimativa  - RCTE - Art. 70, I, "b", 1|01012009|'
            
              'GO020100|Cr. decor. do imp. retido qdo uma esp'#233'cie de merc for e' +
              'xclu'#237'da do reg. de ST (Tb p/registrar as parc. mensais corresp. ' +
              'ao vl do cr. do ICMS, conf. art. 3'#186', III do Dec. n'#186' 6663) - RCTE' +
              ' - Art. 81, I, II e III e '#167' 1'#186' - Anexo VIII e Art. 2 e 3 - Dec. ' +
              '6.663/07|01012009|'
            
              'GO020101|Cr. decor. do imp. retido qdo ocorrer red. da carga tri' +
              'b. na op interna c/merc. sujeita ao reg de ST, nos casos em que ' +
              'o contrib substitu'#237'do  mantiver estoque merc. dessa natureza, de' +
              'st. '#224' comercializa'#231#227'o. - RCTE - Art. 81, I, II e III e '#167' 2'#186' - An' +
              'exo VIII|01012009|'
            
              'GO020102|Cr. apropriado em fun'#231#227'o de concess'#227'o por meio de TARE ' +
              '(C'#243'digo exclusivo p/as quais n'#227'o exista previs'#227'o de nenhum outro' +
              ' c'#243'digo espec'#237'fico nesta tabela). - TARE'#39's diversos|01012009|'
            
              'GO029999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS Pr'#243'prio|01012009|31072010|'
            
              'GO129999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS-ST|01012009|'
            
              'GO020103|Cr. out. p/ ind. fab. de vestu'#225'rio ou p/ estab. atac. a' +
              ' ele pertencente, o equiv. '#224' aplic. do percentual de 12% sobre o' +
              ' valor da base de c'#225'lc. corresp. '#224' op. interest. com prod. de fa' +
              'b. pr'#243'pria destinado '#224' comerc. ou ind. - RCTE - Art. 11, LII - A' +
              'nexo IX|01052009|'
            
              'GO020104|Cr. out. p/ ind. fab. de vestu'#225'rio ou p/ estab. atac. a' +
              ' ele pertencente, o equiv. '#224' aplic. do perc. de 10% sobre o vl. ' +
              'da base de c'#225'lc. corresp. '#224' op. de venda interna com prod. de fa' +
              'b. pr'#243'pria destinado '#224' comerc. ou ind. - RCTE - Art. 11, LIII - ' +
              'Anexo IX|01052009|'
            
              'GO020105|Cr. out. p/ ind. fab. de vestu'#225'rio, o equiv. '#224' aplic. d' +
              'o percentual 10% sobre o valor da base de c'#225'lc. corresp. '#224' trans' +
              'fer'#234'ncia interna de produto de fab. pr'#243'pria destinado '#224' comerc. ' +
              'em estab. varejista a ele pertencente. - RCTE - Art. 11, LIV - A' +
              'nexo IX|01052009|'
            
              'GO020106|Cr. Referente a dedu'#231#227'o de ICMS Pr'#243'prio por repasses ef' +
              'etuados '#224' outras UF - Conv. ICMS 110/07, Cl'#225'usula 22'#170', III e Art' +
              '. 61-D, '#167' 1'#186', Anexo VIII do RCTE|01012009|'
            
              'GO120001|Cr. Referente a dedu'#231#227'o de ICMS Subst. Tribut'#225'ria por r' +
              'epasses efetuados '#224' outras UF - Conv. ICMS 110/07, Cl'#225'usula 22'#170',' +
              ' III e Art. 61-D, '#167' 1'#186', Anexo VIII do RCTE|01012009|'
            
              'GO120002|Ressarcimento de ICMS concedido '#224' distribuidoras - Conv' +
              '. ICMS 110/07, Cl'#225'usula 18'#170', '#167' 3'#186', II e Arts. 45, II; 46, II, '#8220'e' +
              #8221'; 47 e 61-A, '#167' 3'#186', II, Anexo VIII do RCTE|01012009|'
            
              'GO120003|Cr. Referente a dedu'#231#227'o de ICMS por repasses a outras U' +
              'F efetuados por outro estabelecimento do sujeito passivo  - Conv' +
              '. ICMS 110/07, Cl'#225'usula 22'#170', '#167' 6'#186' e Art. 61-D, '#167' 6'#186', Anexo VIII ' +
              'do RCTE|01012009|'
            
              'GO020107|Cr. decorrente do imposto normal, anteriormente estorna' +
              'do em fun'#231#227'o da sa'#237'da com benef'#237'cio, devido ao desfazimento do n' +
              'eg'#243'cio ou devolu'#231#227'o total ou parcial - RCTE - Art. 47, II.|01012' +
              '009|'
            
              'GO020108|Cr. para o estabelecimento remetente, o equiv. '#224' aplic.' +
              ' do perc. de 4% s/ o valor da base de c'#225'lculo correspondente '#224' o' +
              'per. interestadual com ve'#237'culo automotor caminh'#227'o com peso em ca' +
              'rga maxima superior a 5 toneladas. - RCTE - Art. 11, LV - Anexo ' +
              'IX|01112009|'
            
              'GO020109|Cr. para o estabelecimento remetente, o equiv. '#224' aplic.' +
              ' do percentual de 4% s/ o valor da base de c'#225'lculo correspondent' +
              'e '#224' oper.  interestadual com ve'#237'culo automotor '#244'nibus ou com cha' +
              'ssi com motor para '#244'nibus. - RCTE - Art. 11, LVI - Anexo IX|0111' +
              '2009|'
            
              'GO020110|Cr.  out. p/ o estabel. industrial N'#195'O benefic. do FOME' +
              'NTAR, nas sa'#237'das interna e interest. de '#243'leo vegetal comest'#237'vel,' +
              ' result. da industr. em GO de produto agr'#237'cola produzido e adqui' +
              'r. em GO, conf. TARE, equiv a 5% - RCTE - Art. 11, VIII , '#8220'a'#8221' - ' +
              'Anexo IX|01012009|'
            
              'GO020111|Cr.  out. p/ o estabel. industrial benefic. do FOMENTAR' +
              ', nas sa'#237'das interna e interest. de '#243'leo vegetal comest'#237'vel, res' +
              'ult. da industr. em  GO de produto agr'#237'cola produzido e adquirid' +
              'o em GO, conf. TARE, equiv. a 3% - RCTE - Art. 11, VIII , '#8220'c'#8221' - ' +
              'Anexo IX|01012009|'
            
              'GO020112|Cr. out. p/ efeito de compensa'#231#227'o c/ o ICMS devido, obs' +
              ' o '#167' 4'#186' qto. ao t'#233'rm.da vig. do benef., por empresa produtora de' +
              ' disco fonogr'#225'fico ou de outro suporte com som gravado, o valor ' +
              'do dir. autoral, art'#237'st. ou conexo. - RCTE - Art. 12, I e '#167'1'#186' - ' +
              'Anexo IX|01012009|'
            
              'GO020113|Cr. out. p/ o estabel. industrial q. realizar a op. int' +
              'erestadual, o eq. ao perc. de 9% s/ o vl. da b. de c'#225'lc, na sa'#237'd' +
              'a interest. com ave viva prov. de prod. rural goiano que a produ' +
              'ziu em sist. Integ/parceria c/ o indust|01012010|'
            
              'GO030001|Estorno de d'#233'bito referente ao ICMS lan'#231'ado na remessa ' +
              'para venda fora do estabelecimento (retorno de mercadorias n'#227'o v' +
              'endidas). RCTE - Art. 28, '#167' 4'#186', V, '#8220'a'#8221' - Anexo XII|01012009|'
            
              'GO030002|Estorno de d'#233'b. Ref. '#224' transf. de cr. pelo produtor rur' +
              'al, em que o adq. assume a condi'#231#227'o de substituto tribut'#225'rio, no' +
              ' per'#237'odo em que tomar ci'#234'ncia da decis'#227'o da n'#227'o aut. da transf. ' +
              'por parte da SEFAZ. RCTE - Art. 46, '#167' 1'#186', I|01012009|'
            
              'GO030003|Estorno de d'#233'bito nos casos autorizados por TARE ou des' +
              'pacho fundamentado do delegado ou superintendente.|01012009|'
            
              'GO030004|Estorno de d'#233'bito conforme previsto no Conv'#234'nio ICMS 84' +
              '/2005|01012009|'
            
              'GO030005|Estorno referente ao cancelamento de bilhete de passage' +
              'm rodovi'#225'rio, escriturado antes do in'#237'cio da presta'#231#227'o do servi'#231 +
              'o, havendo direito de restitui'#231#227'o do valor ao usu'#225'rio.|01012010|'
            
              'GO039999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS Pr'#243'prio|01012009|31072010|'
            
              'GO139999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS-ST|01012009|'
            
              'GO040001|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. relativo a' +
              'o val adicional de 2% na al'#237'q. de ICMS. PROTEGE. Reg. 1210. CTE ' +
              '- Art. 27,  '#167' 5'#186' e Art.  6 - IN 784/06|01012009|'
            
              'GO040002|Ded. ICMS m'#233'dia FOM/PROD, cr. relativo ao valor adicion' +
              'al de 2% na al'#237'q. de ICMS. PROTEGE. Reg. 1210. CTE - Art. 27,  '#167 +
              ' 5'#186' e Art.  6 - IN. 784/06|01012009|'
            
              'GO040003|Ded. ICMS parcela n'#227'o finan. FOM/PROD, cr. relativo ao ' +
              'val adicional de 2% na al'#237'q. de ICMS. PROTEGE. Reg. 1210. CTE - ' +
              'Art. 27,  '#167' 5'#186' e Art.  6 - IN. 784/06|01012009|'
            
              'GO040004|Ded. ICMS Pr'#243'prio/Oper n'#227'o Incenti-FOM/PROD, pela difer' +
              'en'#231'a a maior, entre o ICMS pago em parcelas, em percentuais do i' +
              'mposto apurado no per'#237'odo anterior, e o valor apurado para o per' +
              #237'odo de refer'#234'ncia. Reg. 1200. IN 768/06 - '#167' 2'#186'  I e demais simi' +
              'lares|01012009|'
            
              'GO040005|Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, pela diferen'#231'a a mai' +
              'or, entre o ICMS pago em parcelas, em percentuais do imposto apu' +
              'rado no per'#237'odo anterior, e o valor apurado para o per'#237'odo de re' +
              'fer'#234'ncia. Reg. 1200. IN 768/06 - '#167' 2'#186' I e demais similares|01012' +
              '009|'
            
              'GO040006|Ded. ICMS parcela n'#227'o financiada - FOM/PROD, pela difer' +
              'en'#231'a a maior, entre o ICMS pago em parcelas, em percentuais do i' +
              'mposto apurado no per'#237'odo anterior, e o valor apurado para o per' +
              #237'odo de refer'#234'ncia. Reg. 1200. IN 768/06 - '#167' 2'#186' I e demais simil' +
              'ares|01012009|'
            
              'GO040007|ICMS Financiado Oper. Incentivadas FOMENTAR/PRODUZIR. I' +
              'N 885/07|01012009|'
            
              'GO040008|ICMS financiado sobre opera'#231#245'es destinadas a contribuin' +
              'te - CENTROPRODUZIR. Lei N'#186' 13.844/01 Art.  3, I, '#8220'a'#8221'|01012009|'
            
              'GO040009|ICMS financiado sobre opera'#231#245'es destinadas a n'#227'o contri' +
              'buinte - CENTROPRODUZIR. Lei N'#186' 13.844/01 Art.  3, I, '#8220'b'#8221'.|01012' +
              '009|'
            
              'GO040010|Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, pgto antecipado ICMS' +
              ' sa'#237'da interestadual. Reg. 1210. RCTE - Art.  340 '#167' 1'#186' IV e IN 5' +
              '98/03|01012009|'
            
              'GO040011|Ded. ICMS parcela n'#227'o financiada - FOME/PROD,  pgto ant' +
              'ecipado ICMS sa'#237'da interestadual. Reg. 1210. RCTE - Art.  340 '#167' ' +
              '1'#186' IV e IN 598/03|01012009|'
            
              'GO040012|Ded. ICMS Pr'#243'prio/Oper n'#227'o Incenti-FOM/PROD,  pgto ante' +
              'cipado ICMS sa'#237'da interestadual. Reg. 1210. RCTE - Art.  340 '#167' 1' +
              #186' IV e IN 598/03|01012009|'
            
              'GO040013|Ded. ICMS m'#233'dia FOM/PROD, instalar Ind. Biodiesel. Reg.' +
              ' 1210. RCTE - Art. 11, XLIX - Anexo IX|01012009|'
            
              'GO040014|Ded. ICMS parcela n'#227'o financi FOM/PROD,instalar Ind bio' +
              'diesel. Reg. 1210. RCTE - Art. 11, XLIX - Anexo IX|01012009|'
            
              'GO040015|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD,instalar Ind bi' +
              'odiesel. Reg. 1210. RCTE - Art. 11, XLIX - Anexo IX|01012009|'
            
              'GO040016|Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, GOYAZES, origem reg.' +
              ' 1210. RCTE - Art. 11, XXII - Anexo IX|01012009|'
            
              'GO040017|Ded. ICMS parcela n'#227'o financiada - FOMENTAR/PRODUZIR, G' +
              'OYAZES. Reg. 1210. RCTE - Art. 11, XXII - Anexo IX|01012009|'
            
              'GO040018|Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRODU' +
              'ZIR, GOYAZES. Reg. 1210. RCTE - Art. 11, XXII - Anexo IX|0101200' +
              '9|'
            
              'GO040019|Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao ind. alcooleiro d' +
              'o FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro combust'#237'vel. Reg.' +
              ' 1210. RCTE - Art. 11, XXVI - Anexo  IX|01012009|'
            
              'GO040020|Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao ind. al' +
              'cooleiro do FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro combust' +
              #237'vel. Reg. 1210. RCTE - Art. 11, XXVI - Anexo  IX|01012009|'
            
              'GO040021|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out. ao in' +
              'd. alcooleiro do FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro co' +
              'mbust'#237'vel. Reg. 1210. RCTE - Art. 11, XXVI - Anexo  IX|01012009|'
            
              'GO040022|Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, cheque moradia, orig' +
              'em reg. 1210. RCTE - Art. 11, XXVII e '#167' 5'#186' II, '#8220'e'#8221'  - Anexo IX|0' +
              '1012009|'
            
              'GO040023|Ded. ICMS parcela n'#227'o financiada - FOMENTAR/PRODUZIR, c' +
              'heque moradia. Reg. 1210. RCTE - Art. 11, XXVII e '#167' 5'#186' II, '#8220'e'#8221'  ' +
              '- Anexo IX|01012009|'
            
              'GO040024|Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRODU' +
              'ZIR, cheque moradia. Reg. 1210. RCTE - Art. 11, XXVII e '#167' 5'#186' II,' +
              ' '#8220'e'#8221'  - Anexo IX|01012009|'
            
              'GO040025|Ded. ICMS parcela n'#227'o financida - FOMENTAR/PRODUZIR, PR' +
              'OTEGE apoio financeiro. Reg. 1210. RCTE - Art. 11, XXXVI  - Anex' +
              'o IX e Lei 14.469, Art. 9'#186', I.|01012009|'
            
              'GO040026|Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRODU' +
              'ZIR, PROTEGE apoio financeiro. Reg. 1210. RCTE - Art. 11, XXXVI ' +
              ' - Anexo IX e Lei 14.469, Art. 9'#186', I.|01012009|'
            
              'GO040027|Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, PROTEGE apoio financ' +
              'eiro, origem reg. 1210. RCTE - Art. 11, XXXVI - Anexo IX e Lei 1' +
              '4.469, Art. 9'#186', I.|01012009|'
            
              'GO040028|Ded. ICMS parcela n'#227'o financiada - FOMENTAR/PRODUZIR, P' +
              'ROESPORTE. Reg. 1210. RCTE - Art. 11, XXXVII -  Anexo IX|0101200' +
              '9|'
            
              'GO040029|Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada - FOMENTAR/PRODU' +
              'ZIR, PROESPORTE. Reg. 1210. RCTE - Art. 11, XXXVII -  Anexo IX|0' +
              '1012009|'
            
              'GO040030|Ded. ICMS m'#233'dia FOMENTAR/PRODUZIR, PROESPORTE, origem r' +
              'eg. 1210. RCTE - Art. 11, XXXVII - Anexo IX|01012009|'
            
              'GO040031|Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao industrial de ve'#237 +
              'culo automotor benefici'#225'rio do PRODUZIR, em 92,53% da parcela n'#227 +
              'o incentivada pelo programa. Reg. 1200. RCTE - Art. 11, XXXVIII,' +
              ' '#8220'a'#8221' -  Anexo IX|01012009|'
            
              'GO040032|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out.ao ind' +
              'ustrial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 92,53%' +
              ' da parcela n'#227'o incentivada pelo programa. Reg. 1200. RCTE - Art' +
              '. 11, XXXVIII, '#8220'a'#8221' -  Anexo IX|01012009|'
            
              'GO040033|Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao industr' +
              'ial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 92,53% da ' +
              'parcela n'#227'o incentivada pelo programa. Reg. 1200. RCTE - Art. 11' +
              ', XXXVIII, '#8220'a'#8221' -  Anexo IX|01012009|'
            
              'GO040034|Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao industr' +
              'ial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 98% do sal' +
              'do devedor da sa'#237'da do ve'#237'culo e pe'#231'as para o exterior.. RCTE - ' +
              'Art. 11, XXXVIII, '#8220'b'#8221' - Anexo IX|01012009|'
            
              'GO040035|Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao industrial de ve'#237 +
              'culo automotor benefici'#225'rio do PRODUZIR, em 98% do saldo devedor' +
              ' da sa'#237'da do ve'#237'culo e pe'#231'as para o exterior.. RCTE - Art. 11, X' +
              'XXVIII, '#8220'b'#8221' - Anexo IX|01012009|'
            
              'GO040036|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out. ao in' +
              'dustrial de ve'#237'culo automotor benefici'#225'rio do PRODUZIR, em 98% d' +
              'o saldo devedor da sa'#237'da do ve'#237'culo e pe'#231'as para o exterior.. RC' +
              'TE - Art. 11, XXXVIII, '#8220'b'#8221' - Anexo IX|01012009|'
            
              'GO040037|Ded. ICMS parc n'#227'o financ FOM/PROD, cr. out. ao industr' +
              'ial de ve'#237'culo automotor com PRODUZIR, a ser apropriado desde o ' +
              'inicio das atividades da industria em Goi'#225's, no valor investido ' +
              'em infra-estrutura. Reg. 1200. RCTE - Art. 11, XXXVIII, '#8220'c'#8221' -  A' +
              'nexo IX|01012009|'
            
              'GO040038|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. out. ao in' +
              'dustrial de ve'#237'culo automotor com PRODUZIR, a ser apropri. desde' +
              ' o inicio das ativid. da industria em Goi'#225's, no valor investido ' +
              'em infra-estrutura. Reg. 1200. RCTE - Art. 11, XXXVIII, '#8221'c'#8221' -  A' +
              'nexo IX|01012009|'
            
              'GO040039|Ded. ICMS m'#233'dia FOM/PROD, cr. out. ao industrial de ve'#237 +
              'culo automotor com PRODUZIR, a ser apropriado desde o inicio das' +
              ' atividades da industria em Goi'#225's, no valor investido em infra-e' +
              'strutura. Reg. 1200. RCTE - Art. 11, XXXVIII, '#8221'c'#8221' -  Anexo IX|01' +
              '012009|'
            
              'GO040040|Ded. ICMS m'#233'dia FOM/PROD, DARE p/ regularizar oper. for' +
              'a do per'#237'odo. Reg. 1210. RCTE - Art. 141, '#167' 2'#186'|01012009|'
            
              'GO040041|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD,DARE regul oper' +
              ' fora do per'#237'odo. Reg 1210. RCTE - Art. 141, '#167' 2'#186'|01012009|'
            
              'GO040042|Ded. ICMS parc n'#227'o financ FOM/PROD, DARE regulari oper.' +
              ' fora do per'#237'odo. Reg 1210. RCTE - Art. 141, '#167' 2'#186'|01012009|'
            
              'GO040043|Ded. ICMS m'#233'dia FOM/PROD, cr. especial/pr'#233'-operacional ' +
              'p/ investimento-autorir. TARE. RCTE - Art. 19 a 29 - Anexo IX e ' +
              'TARE|01012009|'
            
              'GO040044|Ded. ICMS parc n'#227'o financ FOM/PROD, cr. especial/pr'#233'-op' +
              'eracional p/ investimento-autorir. TARE. RCTE - Art. 19 a 29 - A' +
              'nexo IX e TARE|01012009|'
            
              'GO040045|Ded. ICMS Pr'#243'prio/Oper n'#227'o Inc FOM/PROD, cr. especial/p' +
              'r'#233'-operacional p/ investimento-autorir. TARE. RCTE - Art. 19 a 2' +
              '9 - Anexo IX e TARE|01012009|'
            
              'GO040046|Ded. ICMS m'#233'dia FOM/PROD, ICMS pago indevido em virtude' +
              ' de erro. Reg. 1210. RCTE - Art. 47, III, '#8220'a'#8221', 1|01012009|'
            
              'GO040047|Ded. ICMS parc n'#227'o financ FOM/PROD, ICMS pago indevido ' +
              'virtude erro. Reg. 1210. RCTE - Art. 47, III, '#8220'a'#8221', 1|01012009|'
            
              'GO040048|Ded. ICMS Pr'#243'prio/Oper n'#227'o Incentivada FOM/PROD,ICMS pa' +
              'go indevido virtude erro. Reg. 1210. RCTE - Art. 47, III, '#8220'a'#8221', 1' +
              '|01012009|'
            
              'GO049999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS Pr'#243'prio.|01012009|31072010|'
            
              'GO040049|Cr. out. p/ o industrial de ve'#237'culo automotor benef. do' +
              ' PRODUZIR, que implantar ou ampliar estabel. em GO, equiv. a 98%' +
              ' do saldo devedor do imposto correspondente '#224' sa'#237'da de ve'#237'culos,' +
              ' suas partes e pe'#231'as, import.do exterior. RCTE - Art. 11, LVII, ' +
              'Anexo IX|01042010|'
            
              'GO040050|Cr. out. p/ o industrial de ve'#237'culo automotor benef. do' +
              ' PRODUZIR, que implantar ou ampliar estabel. em GO, equiv. a 98%' +
              ' do valor da parcela n'#227'o incentivada do imposto corresp. '#224' sa'#237'da' +
              ' de ve'#237'culos, suas partes e pe'#231'as. RCTE - Art. 11, LVII, Anexo I' +
              'X|01042010|'
            
              'GO040051|Cr. out. p/ o industrial de ve'#237'culo automotor benef. do' +
              ' FOMENTAR, que ampliar estabel. em GO, equiv. a 98% do val. da p' +
              'arcela n'#227'o incentivada do ICMS corresp. '#224' sa'#237'da de ve'#237'culos, sua' +
              's partes e pe'#231'as, inclusive os import. RCTE - Art. 11, LVIII, An' +
              'exo IX|01042010|'
            
              'GO140001|Ded. ICMS ST, cr.rRelativo ao valor adicional de 2% na ' +
              'al'#237'quota de ICMS. PROTEGE.  CTE - Art. 27, '#167' 5'#186' e Art. 6 - IN 78' +
              '4/06|01012009|'
            
              'GO140002|Ded. ICMS ST, pela diferen'#231'a a maior, entre o ICMS pago' +
              ' em parcelas, em percentuais do imposto apurado no per'#237'odo anter' +
              'ior, e o valor apurado para o per'#237'odo de refer'#234'ncia. Reg. 1200. ' +
              'IN 768/06 - '#167' 2'#186' I e demais similares|01012009|'
            
              'GO140003|Ded. ICMS ST, ind. alcooleiro s/ cr. out. ao ind. alcoo' +
              'leiro do FOM/PROD, na oper. com '#225'lcool et'#237'lico anidro combust'#237've' +
              'l. Reg. 1210 RCTE - Art. 11 XXVI - Anexo IX|01012009|'
            
              'GO140004|Ded. ICMS ST, cheque moradia. Reg. 1210. RCTE - Art. 11' +
              ' XXVII e '#167' 5'#186' II, e - Anexo IX|01012009|'
            
              'GO140005|Ded. ICMS ST, instalar Ind. Biodiesel. Reg. 1210. RCTE ' +
              '- Art. 11, XLIX - Anexo IX|01012009|'
            
              'GO140006|Ded. ICMS ST, cr. out. ao industrial de ve'#237'culo automot' +
              'or com PRODUZIR, a ser apropriado desde o inicio das atividades ' +
              'da industria em Goi'#225's, no valor investido em infra-estrutura. Re' +
              'g. 1200. RCTE - Art. 11, XXXVIII, '#8220'c'#8221' - Anexo IX|01012009|'
            
              'GO140007|Ded. ICMS ST, cr. especial/pr'#233'-operacional p/ investime' +
              'nto-autorir. TARE TARE|01012009|'
            
              'GO149999|C'#243'digo gen'#233'rico em fun'#231#227'o da inexist'#234'ncia de c'#243'digo esp' +
              'ec'#237'fico previsto na tabela. ICMS-ST|01012009|'
            
              'GO059999|D'#233'bitos Especiais - valores extra-apura'#231#227'o. C'#243'digo gen'#233 +
              'rico p/ situa'#231#245'es n'#227'o previstas na tabela.|01012009|'
            
              'GO159999|D'#233'bitos Especiais ref. a subst. tribut.- valores extra-' +
              'apura'#231#227'o. C'#243'digo gen'#233'rico p/ situa'#231#245'es n'#227'o previstas na tabela.|' +
              '01012009|')
        end
        object EDT_compaju: TEdit
          Left = 130
          Top = 26
          Width = 233
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 1
        end
        object edt_VALAJUST: TCurrencyEdit
          Left = 466
          Top = 25
          Width = 99
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 2
        end
        object cb_e111_CredDeb: TComboBox
          Left = 631
          Top = 25
          Width = 106
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 2
          TabOrder = 3
          Text = 'Credito'
          Items.Strings = (
            'Credito'
            'D'#233'bito')
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 214
          Width = 750
          Height = 92
          Align = alBottom
          Color = 14286847
          DataSource = src_ajusE113
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'TABELA'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 459
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORAJUST'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOAJUST'
              Width = 73
              Visible = True
            end>
        end
        object bbe111Gravar: TBitBtn
          Left = 132
          Top = 48
          Width = 174
          Height = 21
          Caption = 'Adicionar'
          TabOrder = 4
          OnClick = bbe111GravarClick
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
        object bbE111Excluir: TBitBtn
          Left = 503
          Top = 47
          Width = 174
          Height = 21
          Caption = 'Excluir Selecionado'
          TabOrder = 5
          OnClick = bbE111ExcluirClick
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
        object GroupBox3: TGroupBox
          Left = 0
          Top = 118
          Width = 750
          Height = 96
          Align = alBottom
          Caption = 'Descri'#231#227'o Completa do Item:'
          TabOrder = 7
          object Memo_nome: TMemo
            Left = 2
            Top = 15
            Width = 746
            Height = 79
            Align = alClient
            Lines.Strings = (
              'Memo_nome')
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
      object tsAjusteE115: TTabSheet
        Caption = 'Ajuste E115'
        ImageIndex = 16
        OnExit = tsAjusteE115Exit
        object Label48: TLabel
          Left = 5
          Top = 7
          Width = 114
          Height = 13
          Caption = 'Ajuste Selecionado:'
        end
        object Label49: TLabel
          Left = 37
          Top = 32
          Width = 80
          Height = 13
          Caption = 'Complemento:'
        end
        object Label50: TLabel
          Left = 374
          Top = 28
          Width = 87
          Height = 13
          Caption = 'Valor do Ajuste'
        end
        object Label51: TLabel
          Left = 571
          Top = 26
          Width = 56
          Height = 13
          Caption = 'Natureza:'
        end
        object CB_E115_NOMEAJUSTE: TComboBox
          Left = 130
          Top = 3
          Width = 607
          Height = 21
          BevelKind = bkSoft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          Text = 
            'GO020022|Cr. out. ao contrib.e comerciante equiparado a atacadis' +
            'ta (varejista), em 3%, na sa'#237'da interest. que destine merc. para' +
            ' comercializa'#231#227'o, produ'#231#227'o ou industrializa'#231#227'o, aplicado sobre o' +
            ' valor da correspondente opera'#231#227'o. - RCTE - Art. 11, III, "a" - ' +
            'Anexo IX|01012009|'
          OnChange = CB_E115_NOMEAJUSTEChange
          Items.Strings = (
            'GO000001 1. Sa'#237'das das Opera'#231#245'es Incentivadas'
            'GO000002 2. Total das Sa'#237'das'
            
              'GO000003 3. Percentual das Sa'#237'das das Opera'#231#245'es Incentivadas [(1' +
              '/2)x100]'
            'GO000004 4. Cr'#233'ditos por Entradas'
            'GO000005 5. Outros Cr'#233'ditos'
            'GO000006 6. Estorno de D'#233'bitos'
            'GO000007 7. Saldo Credor do Per'#237'odo Anterior'
            'GO000008 8. Total dos Cr'#233'ditos do Per'#237'odo (4+5+6+7)'
            'GO000009 9. Cr'#233'dito para Opera'#231#245'es Incentivadas [(3x8)/100]'
            'GO000010 10. Cr'#233'dito para Opera'#231#245'es N'#227'o Incentivadas (8-9)'
            'GO000011 11. D'#233'bito do ICMS das Opera'#231#245'es Incentivadas'
            'GO000012 12. Outros D'#233'bitos das Opera'#231#245'es Incentivadas'
            'GO000013 13. Estorno de Cr'#233'ditos das Opera'#231#245'es Incentivadas'
            'GO000014 14. Cr'#233'dito para Opera'#231#245'es Incentivadas (9)'
            
              'GO000015 15. Dedu'#231#245'es das Oper. Incentivadas (Linha 14 do Quadro' +
              ' da Apura'#231#227'o dos Saldos - LRA)'
            
              'GO000016 16. Cr'#233'dito Referente a Saldo Credor do Per'#237'odo das Ope' +
              'ra'#231#245'es N'#227'o Incentivadas (43)'
            
              'GO000017 17. Saldo Devedor do ICMS das Opera'#231#245'es Incentivadas [(' +
              '11+12+13)-(14+15+16)]'
            'GO000018 18. ICMS por M'#233'dia'
            'GO000019 19. Dedu'#231#245'es/Compensa'#231#245'es - ICMS M'#233'dia'
            'GO000020 20. Saldo do ICMS a Pagar por M'#233'dia (18-19)'
            'GO000021 21. ICMS Base para Fomentar/Produzir (17-18)'
            'GO000022 22. Percentagem do Financiamento'
            'GO000023 23. ICMS Sujeito a Financiamento [(21x22)/100]'
            'GO000024 24. ICMS Excedente N'#227'o Sujeito ao Incentivo'
            'GO000025 25. ICMS Financiado (23-24)'
            'GO000026 26. Saldo do ICMS da Parcela N'#227'o Financiada (21-23)'
            'GO000027 27. Dedu'#231#245'es/Compensa'#231#245'es - parcela n'#227'o financiada'
            
              'GO000028 28. Saldo do ICMS a Pagar da Parcela N'#227'o Financiada (26' +
              '-27)'
            
              'GO000029 29. Saldo Credor do Per'#237'odo - Op. incentivadas [(14+15)' +
              '-(11+12+13)]'
            
              'GO000030 30. Saldo Credor do Per'#237'odo (Op. Incentivadas) Utilizad' +
              'o nas Opera'#231#245'es N'#227'o Incentivadas'
            
              'GO000031 31. Saldo Credor a Transportar para o Per'#237'odo Seguinte ' +
              '- Oper. incentivadas(29-30)'
            'GO000032 32. D'#233'bito do ICMS das Opera'#231#245'es N'#227'o Incentivadas'
            'GO000033 33. Outros D'#233'bitos das Opera'#231#245'es N'#227'o Incentivadas'
            'GO000034 34. Estorno de Cr'#233'ditos das Opera'#231#245'es N'#227'o Incentivadas'
            'GO000035 35. ICMS Excedente N'#227'o Sujeito ao Incentivo'
            'GO000036 36 .Cr'#233'dito para Opera'#231#245'es N'#227'o Incentivadas (10)'
            
              'GO000037 37. Dedu'#231#245'es das Oper. N'#227'o Incentivadas (Linha 14 do Qu' +
              'adro Apura'#231#227'o dos Saldos - LRA)'
            
              'GO000038 38. Cr'#233'dito Referente a Saldo Credor do Per'#237'odo das Ope' +
              'ra'#231#245'es Incentivadas (30)'
            
              'GO000039 39. Saldo Devedor do ICMS das Opera'#231#245'es N'#227'o Incentivada' +
              's [(32+33+34+35)-(36+37+38)]'
            
              'GO000040 40. Dedu'#231#245'es/Compensa'#231#245'es - Sd. Devedor do ICMS das Ope' +
              'r. N'#227'o Incentivadas'
            
              'GO000041 41. Saldo do ICMS a Pagar das Opera'#231#245'es N'#227'o Incentivada' +
              's (39-40)'
            
              'GO000042 42. Saldo Credor do Per'#237'odo - Op. N'#227'o Incentivadas [(36' +
              '+37)-(32+33+34+35)]'
            
              'GO000043 43. Saldo Credor do Per'#237'odo (Op. N'#227'o incentivadas) Util' +
              'izado nas Opera'#231#245'es Incentivadas'
            
              'GO000044 44. Saldo Credor a Transp para o Per'#237'odo Seguinte - Ope' +
              'r. N'#227'o incentivadas(42-43)'
            'GO000045 73. Total das Mercadorias Importadas'
            
              'GO000046 74. Outros Acr'#233'scimos sobre Importa'#231#227'o GUIA PR'#193'TICO DA ' +
              'ESCRITURA'#199#195'O FISCAL DIGITAL (EFD) DE GOI'#193'S SEFAZ/GO 24'
            'GO000047 75.Total das Opera'#231#245'es de Importa'#231#227'o (73+74)'
            'GO000048 76. Total das Entradas do Per'#237'odo'
            
              'GO000049 77. Percentual das Opera'#231#245'es de Importa'#231#227'o [(75/76)x100' +
              ']'
            'GO000050 78. ICMS sobre Importa'#231#227'o'
            
              'GO000051 79. Mercadorias Importadas Excedentes {[76x(77 - 30%)]/' +
              '100}'
            'GO000052 80. ICMS sobre Importa'#231#227'o Excedente [78x(79/75)]'
            
              'GO000053 81. ICMS sobre Importa'#231#227'o Excedente N'#227'o Sujeito a Incen' +
              'tivo [(80x22)/100]'
            'GO000054 82. ICMS sobre Importa'#231#227'o Sujeito ao Incentivo (78-80)'
            
              'GO000055 83. ICMS sobre Importa'#231#227'o da Parcela N'#227'o Financiada {[7' +
              '8x( 100%- 22)]/100}'
            
              'GO000056 84. Saldo do ICMS sobre Importa'#231#227'o a Pagar (81+83) GUIA' +
              ' PR'#193'TICO DA ESCRITURA'#199#195'O FISCAL DIGITAL (EFD) DE GOI'#193'S SEFAZ/GO ' +
              '25 ANEXO II '#8211' Tabela 5.2 '#8211' C'#243'digos para PROTEGE Goi'#225's. C'#243'digos a' +
              ' serem utilizados pelos estabelecimentos condicionados ao recolh' +
              'imento do PROTEGE GOI'#193'S. C'#243'digo Descri'#231#227'o'
            
              'GO000065 Cr'#233'dito Outorg., para o estabelecimento que efetuar ope' +
              'ra'#231#227'o interestadual com achocolatado em p'#243'; bebida l'#225'ctea; creme' +
              ' de leite; doce de leite; iogurte; leite aromatizado, esteriliza' +
              'do (UHT), pasteurizado ou em p'#243'; manteiga de leite; queijo, incl' +
              'usive requeij'#227'o; soro de leite em p'#243'; e '#243'leo but'#237'rico de manteig' +
              'a (butter oil), leite pr'#233'-concentrado integral e leite pr'#233'-conce' +
              'ntrado desnatado, o percentual de 5% aplicado sobre o valor da b' +
              'ase de c'#225'lculo. Art. 11, XXXV do Anexo IX do RCTE GO000066 Cr'#233'di' +
              'to Outorg., para o estabelecimento que efetuar as seguintes oper' +
              'a'#231#245'es, o percentual a seguir especificado aplicado sobre o valor' +
              ' da base de c'#225'lculo correspondente. a) opera'#231#227'o interna com leit' +
              'e em estado natural, pasteurizado ou esterilizado (UHT), 1% ; b)' +
              ' opera'#231#227'o interestadual com feij'#227'o, 9%. Art. 11, XXXIV do Anexo ' +
              'IX do RCTE '
            
              'GO000067 Cr'#233'dito Outorg., para o estabelecimento distribuidor de' +
              ' empresa fabricante de aparelho, m'#225'quina, equipamento ou instrum' +
              'ento m'#233'dico-hospitalar, produto farmac'#234'utico, de perfumaria ou d' +
              'e toucador, preparado e prepara'#231#227'o cosm'#233'tica, constantes dos c'#243'd' +
              'igos da NBM/SH, ..., 9603 na sa'#237'da interestadual com produto de ' +
              'fabrica'#231#227'o pr'#243'pria, o equivalente '#224' aplica'#231#227'o do percentual de 5' +
              ',6% sobre o valor da base de c'#225'lculo. Art. 11, XXXII do Anexo IX' +
              ' do RCTE '
            
              'GO000068 Cr'#233'dito Outorg., para o estabelecimento industrializado' +
              'r de produto agr'#237'cola, o equivalente '#224' aplica'#231#227'o de at'#233' 7% sobre' +
              ' o valor do produto agr'#237'cola produzido no Estado de Goi'#225's efetiv' +
              'amente industrializado em estabelecimento seu localizado neste E' +
              'stado. Art. 11, XXXI do Anexo IX do RCTE '
            
              'GO000069 Cr'#233'dito Outorg., para o estabelecimento remetente, na s' +
              'a'#237'da interestadual de m'#225'quinas e equipamentos rodovi'#225'rios, relac' +
              'ionados no Ap'#234'ndice XII do Anexo IX-RCTE, o equivalente '#224' aplica' +
              #231#227'o de 5% sobre o valor da base de c'#225'lculo. Art. 11, XXVIII do A' +
              'nexo IX do RCTE '
            
              'GO000070 Cr'#233'dito Outorg., para industrial e comerciante atacadis' +
              'ta na opera'#231#227'o de sa'#237'da de '#243'leo vegetal comest'#237'vel, em valor equ' +
              'ivalente a 5% da respectiva base de c'#225'lculo. Art. 11, XXV do Ane' +
              'xo IX do RCTE '
            
              'GO000071 Cr'#233'dito Outorg., para o comerciante atacadista de medic' +
              'amento, equivalente '#224' aplica'#231#227'o de 4% sobre o valor da correspon' +
              'dente base de c'#225'lculo na sa'#237'da interestadual com medicamento de ' +
              'uso humano destinado a comercializa'#231#227'o, produ'#231#227'o ou industrializ' +
              'a'#231#227'o, mantido o sistema normal de compensa'#231#227'o do imposto. Art. 1' +
              '1, XXIII do Anexo IX do RCTE '
            
              'GO000072 Cr'#233'dito Outorg., para o estabelecimento prestador do se' +
              'rvi'#231'o de transporte de passageiro, o valor equivalente '#224' aplica'#231 +
              #227'o dos percentuais previstos nas al'#237'neas "a" e "b" do Art. 11- A' +
              'nexo IX-RCTE, sobre o valor da respectiva base de c'#225'lculo na pre' +
              'sta'#231#227'o de servi'#231'o de transporte rodovi'#225'rio interestadual e inter' +
              'municipal de passageiro, inclusive de turismo e escolar. Art. 11' +
              ', XX do Anexo IX do RCTE '
            
              'GO000073 Cr'#233'dito Outorg., para o estabelecimento remetente na op' +
              'era'#231#227'o interestadual com arroz, exceto com o em casca, o equival' +
              'ente '#224' aplica'#231#227'o de 9% sobre o valor da base de c'#225'lculo. Art. 11' +
              ', XVIII do Anexo IX do RCTE '
            
              'GO000074 Cr'#233'dito Outorg., para o industrial fabricante de fertil' +
              'izante, na opera'#231#227'o interestadual que praticar com esse insumo a' +
              'gropecu'#225'rio, o valor equivalente a 5% da respectiva base de c'#225'lc' +
              'ulo. (Depende de TARE) Art. 11, IX do Anexo IX do RCTE '
            
              'GO000075 Cr'#233'dito Outorg., para o estabelecimento frigor'#237'fico ou ' +
              'abatedor, na sa'#237'da para comercializa'#231#227'o ou industrializa'#231#227'o, de ' +
              'carne fresca, resfriada, congelada, salgada, temperada ou salmou' +
              'rada e mi'#250'do comest'#237'vel resultantes do abate, em seu pr'#243'prio est' +
              'abelecimento de asinino, bovino, bufalino, eq'#252'ino e muar adquiri' +
              'do em opera'#231#227'o interna com a redu'#231#227'o de base de c'#225'lculo de que t' +
              'rata o inciso XIV do Art. 8'#186' do Anexo IX-RCTE, o equivalente '#224' a' +
              'plica'#231#227'o de 9%, sobre o valor da respectiva base de c'#225'lculo. Art' +
              '. 11, V do Anexo IX do RCTE '
            
              'GO000076 Cr'#233'dito Outorg., para os contribuintes industrial e com' +
              'erciante atacadista, o equivalente ao percentual de 2% e 3%, res' +
              'pectivamente, na sa'#237'da interestadual que destine mercadoria para' +
              ' comercializa'#231#227'o, produ'#231#227'o ou industrializa'#231#227'o, aplicado sobre o' +
              ' valor da correspondente opera'#231#227'o. Art. 11, III do Anexo IX do R' +
              'CTE GUIA PR'#193'TICO DA ESCRITURA'#199#195'O FISCAL DIGITAL (EFD) DE GOI'#193'S S' +
              'EFAZ/GO 26 '
            
              'GO000077 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
              'obre o valor da opera'#231#227'o do percentual equivalente a 15%, na sa'#237 +
              'da interna de gasolina de avia'#231#227'o, ficando mantido o cr'#233'dito. Ar' +
              't. 8, XXIX do Anexo IX do RCTE '
            
              'GO000078 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
              'obre o valor da opera'#231#227'o o percentual equivalente a 7%, na sa'#237'da' +
              ' interna de m'#225'quinas e equipamentos rodovi'#225'rios, relacionados no' +
              ' Ap'#234'ndice XII do Anexo IX-RCTE. Art. 8, XXVII do Anexo IX do RCT' +
              'E '
            
              'GO000079 Red. Base de Calc. na opera'#231#227'o interna com os produtos ' +
              'especificados, de tal forma que resulte a aplica'#231#227'o do percentua' +
              'l equivalente a 17% sobre o valor da opera'#231#227'o: b)-demais produto' +
              's constantes do Anexo I-RCTE, exceto armas e muni'#231#245'es, para o co' +
              'ntribuinte que aderir ao Programa Estadual de Combate '#224' Comercia' +
              'liza'#231#227'o ilegal de Mercadorias, mediante celebra'#231#227'o de TARE. Art.' +
              ' 8, XXIII do Anexo IX do RCTE '
            
              'GO000080 Red. Base de Calc. na sa'#237'da interna com produto de info' +
              'rm'#225'tica, telecomunica'#231#227'o ou automa'#231#227'o relacionado no Ap'#234'ndice IV' +
              ' deste Anexo, de tal forma que resulte a aplica'#231#227'o sobre o valor' +
              ' da opera'#231#227'o do equivalente ao percentual de 7%, ficando mantido' +
              ' o cr'#233'dito do imposto at'#233' o limite de 7%, devendo ser observado ' +
              'o disposto nas al'#237'neas do mesmo art. Art. 8, XIII do Anexo IX do' +
              ' RCTE '
            
              'GO000081 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
              'obre o valor da opera'#231#227'o do equivalente ao percentual de 7%, na ' +
              'opera'#231#227'o interna de fornecimento de refei'#231#227'o, ficando mantido o ' +
              'cr'#233'dito. Art. 8, XII do Anexo IX do RCTE '
            
              'GO000082 Red. Base de Calc. de tal forma que resulte aplica'#231#227'o s' +
              'obre o valor da opera'#231#227'o do equivalente ao percentual de 10%, na' +
              ' sa'#237'da interna realizada por contribuinte industrial ou comercia' +
              'nte atacadista que destine mercadoria para comercializa'#231#227'o, prod' +
              'u'#231#227'o ou industrializa'#231#227'o, ficando mantido o cr'#233'dito. Art. 8, VII' +
              'I do Anexo IX do RCTE '
            
              'GO000083 Isen'#231#227'o, mediante despacho individual concedido pelo Se' +
              'cret'#225'rio da Fazenda, a opera'#231#227'o de importa'#231#227'o do exterior, inclu' +
              'sive em doa'#231#227'o, dos bens relacionados nas al'#237'neas "a", "b" e "c"' +
              '- Art. 6'#186', LXXI-Anexo IX-RCTE, sem similar produzido no Pa'#237's, ou' +
              ' mesmo com similar para a entrada decorrente de doa'#231#227'o, quando d' +
              'estinados a atividade de ensino, pesquisa ou presta'#231#227'o de servi'#231 +
              'o m'#233'dico-hospitalar, adquiridos por pessoa natural ou jur'#237'dica. ' +
              'Art. 6, LXXI do Anexo IX do RCTE GUIA PR'#193'TICO DA ESCRITURA'#199#195'O FI' +
              'SCAL DIGITAL (EFD) DE GOI'#193'S SEFAZ/GO 27 ANEXO III '#8211' Tabela 5.2 '#8211 +
              ' Demonstrativo Mensal de Apura'#231#227'o do Cr'#233'dito Outorgado do '#193'lcool' +
              ' Et'#237'lico Anidro Combust'#237'vel. C'#243'digos a serem utilizados pelos es' +
              'tabelecimentos industriais produtores de '#225'lcool et'#237'lico anidro c' +
              'ombust'#237'vel para informa'#231#227'o dos valores relativos '#224' apura'#231#227'o do c' +
              'r'#233'dito outorgado apropriado pela ind'#250'stria sucroalcoleira.  C'#211'D.' +
              ' EFD DESCRI'#199#195'O '
            
              'GO000084 A - Somat'#243'rio dos valores de ICMS que seria debitado na' +
              's notas fiscais de sa'#237'da de '#225'lcool et'#237'lico anidro combust'#237'vel ca' +
              'so n'#227'o houvesse o diferimento do imposto. '
            
              'GO000085 B - Somat'#243'rio dos valores das opera'#231#245'es de sa'#237'da de '#225'lc' +
              'ool et'#237'lico anidro combust'#237'vel acrescido do valor do ICMS que se' +
              'ria debitado (A). '
            
              'GO000086 C - Valor total das opera'#231#245'es de sa'#237'das tributadas do p' +
              'er'#237'odo, excluindo-se as exporta'#231#245'es e qualquer outra sa'#237'da n'#227'o i' +
              'ncentivada pelos programas Fomentar/Produzir. '
            
              'GO000087 D=B/C - Coeficiente de proporcionalidade das sa'#237'das de ' +
              #225'lcool et'#237'lico anidro combust'#237'vel (B) em rela'#231#227'o '#224's sa'#237'das totai' +
              's (C). Ex.: B=50 C=1000 D=50/1000 D=0,05x100 D=5% (Informar 5,00' +
              ') '
            
              'GO000088 E - Valor correspondente ao total dos cr'#233'ditos constant' +
              'e no campo 12 (total de cr'#233'ditos) do Livro Registro de Apura'#231#227'o ' +
              'do ICMS deduzido os valores dos cr'#233'ditos outorgados referente '#224's' +
              ' sa'#237'das interestaduais previstas no Art. 11, III, do anexo IX do' +
              ' RCTE. '
            
              'GO000089 F - Valor total da m'#233'dia de ICMS a partir da qual se co' +
              'ncedeu o financiamento do Fomentar/Produzir, calculada e corrigi' +
              'da pelo '#237'ndice definido. '
            
              'GO000090 G - Cr'#233'dito do ICMS a ser deduzido (DxE) e lan'#231'ado no c' +
              #243'digo 49 como estorno de cr'#233'dito no Livro Registro de Apura'#231#227'o d' +
              'o ICMS. '
            
              'GO000091 H - Valor do ICMS m'#233'dio a ser deduzido do ICMS que seri' +
              'a debitado (A), mediante a multiplica'#231#227'o dos itens D e F. '
            
              'GO000092 H1 - Percentual do cr'#233'dito outorgado previsto na legisl' +
              'a'#231#227'o para o per'#237'odo. '
            
              'GO000093 I - Valor do cr'#233'dito outorgado de ICMS no per'#237'odo pelas' +
              ' sa'#237'das de '#225'lcool et'#237'lico anidro combust'#237'vel. '
            
              'GO000094 Valor do cr'#233'dito outorgado autorizado pela Sefaz/GO por' +
              ' processo. ')
        end
        object edt_e115_compl_desc: TEdit
          Left = 130
          Top = 26
          Width = 233
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 1
        end
        object edt_e115_valor: TCurrencyEdit
          Left = 466
          Top = 25
          Width = 99
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 2
        end
        object cb_e115_nat: TComboBox
          Left = 631
          Top = 25
          Width = 106
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 2
          TabOrder = 3
          Text = 'Credito'
          Items.Strings = (
            'Credito'
            'D'#233'bito')
        end
        object bbE115Adicionar: TBitBtn
          Left = 132
          Top = 48
          Width = 174
          Height = 21
          Caption = 'Adicionar'
          TabOrder = 4
          OnClick = bbE115AdicionarClick
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
        object bbE115Excluir: TBitBtn
          Left = 503
          Top = 47
          Width = 174
          Height = 21
          Caption = 'Excluir Selecionado'
          TabOrder = 5
          OnClick = bbE115ExcluirClick
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
        object GroupBox4: TGroupBox
          Left = 0
          Top = 118
          Width = 750
          Height = 96
          Align = alBottom
          Caption = 'Descri'#231#227'o Completa do Item:'
          TabOrder = 6
          object Memo_E115_DescAju: TMemo
            Left = 2
            Top = 15
            Width = 746
            Height = 79
            Align = alClient
            Lines.Strings = (
              'Memo_nome')
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object DBGrid_E115: TDBGrid
          Left = 0
          Top = 214
          Width = 750
          Height = 92
          Align = alBottom
          Color = 14286847
          DataSource = src_ajusE115
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'TABELA'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 459
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORAJUST'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOAJUST'
              Width = 73
              Visible = True
            end>
        end
      end
      object tsGuiaST: TTabSheet
        Caption = 'Guia de Recolhimento ST'
        ImageIndex = 1
        OnExit = tsGuiaSTExit
        object Label52: TLabel
          Left = 5
          Top = 7
          Width = 124
          Height = 13
          Caption = 'C'#243'digo da Obriga'#231#227'o:'
        end
        object Label53: TLabel
          Left = 93
          Top = 29
          Width = 34
          Height = 13
          Caption = 'Valor:'
        end
        object Label54: TLabel
          Left = 504
          Top = 29
          Width = 120
          Height = 13
          Caption = 'Data de Vencimento:'
        end
        object Label55: TLabel
          Left = 16
          Top = 51
          Width = 110
          Height = 13
          Caption = 'C'#243'digo da Receita:'
        end
        object Label56: TLabel
          Left = 21
          Top = 105
          Width = 110
          Height = 13
          Caption = 'C'#243'digo da Receita:'
        end
        object Label57: TLabel
          Left = 7
          Top = 75
          Width = 122
          Height = 13
          Caption = 'N'#250'mero do Processo:'
        end
        object Label58: TLabel
          Left = 36
          Top = 126
          Width = 93
          Height = 13
          Caption = 'Desc.Resumida:'
        end
        object Label59: TLabel
          Left = 375
          Top = 99
          Width = 94
          Height = 13
          Caption = 'Referencia M'#234's:'
        end
        object Label60: TLabel
          Left = 527
          Top = 103
          Width = 27
          Height = 13
          Caption = 'Ano:'
        end
        object Label61: TLabel
          Left = 3
          Top = 149
          Width = 145
          Height = 13
          Caption = 'Descri'#231#227'o Complementar:'
        end
        object Label65: TLabel
          Left = 581
          Top = 73
          Width = 82
          Height = 13
          Caption = 'UF das Notas:'
        end
        object CB_GUIAST_COD_OR: TComboBox
          Left = 133
          Top = 3
          Width = 600
          Height = 21
          BevelKind = bkSoft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = '000 ICMS a recolher'
          Items.Strings = (
            '000 ICMS a recolher'
            '001 ICMS da substitui'#231#227'o tribut'#225'ria pelas entradas'
            '002 ICMS da substitui'#231#227'o tribut'#225'ria pelas sa'#237'das para o Estado'
            '003 Antecipa'#231#227'o do diferencial de al'#237'quotas do ICMS'
            '004 Antecipa'#231#227'o do ICMS da importa'#231#227'o'
            '005 Antecipa'#231#227'o tribut'#225'ria'
            
              '006 ICMS resultante da al'#237'quota adicional dos itens inclu'#237'dos no' +
              ' Fundo de Combate '#224' Pobreza (FUNCEP)'
            '090 Outras obriga'#231#245'es do ICMS'
            
              '999 ICMS da substitui'#231#227'o tribut'#225'ria pelas sa'#237'das para outros est' +
              'ados'
            '')
        end
        object edtguiast_vl_or: TCurrencyEdit
          Left = 133
          Top = 28
          Width = 99
          Height = 21
          AutoSize = False
          DisplayFormat = ' ,0.00;- ,0.00'
          TabOrder = 1
        end
        object edtguiast_dt_vcto: TDateEdit
          Left = 629
          Top = 26
          Width = 103
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object edtguiast_cod_rec: TEdit
          Left = 133
          Top = 50
          Width = 598
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 300
          ParentFont = False
          TabOrder = 3
        end
        object cbguiast_ind_proc: TComboBox
          Left = 132
          Top = 102
          Width = 106
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 2
          TabOrder = 4
          Text = '0 - SEFAZ'
          Items.Strings = (
            '0 - SEFAZ'
            '1 - Justi'#231'a Federal'
            '2 - Justi'#231'a Estadual'
            '9 - Outros'
            ''
            ''
            ''
            '')
        end
        object edtguiast_num_proc: TEdit
          Left = 133
          Top = 74
          Width = 156
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          TabOrder = 5
        end
        object edtguiast_proc: TEdit
          Left = 132
          Top = 127
          Width = 598
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 300
          ParentFont = False
          TabOrder = 7
        end
        object edtguiast_mes: TEdit
          Left = 469
          Top = 98
          Width = 52
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          TabOrder = 8
          OnExit = edtguiast_mesExit
        end
        object edtguiast_ano: TEdit
          Left = 554
          Top = 97
          Width = 81
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 15
          ParentFont = False
          TabOrder = 9
          OnExit = edtguiast_anoExit
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 227
          Width = 750
          Height = 79
          Align = alBottom
          Color = 14286847
          DataSource = Src_GuiaST
          TabOrder = 13
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'COD_OR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_OR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_VCTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COD_REC'
              Width = 366
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_REC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IND_PROC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROC'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TXT_COMP'
              Width = 277
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MES_REF'
              Visible = True
            end>
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 197
          Width = 750
          Height = 30
          Align = alBottom
          Caption = 'Totais:'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 12
          object Label62: TLabel
            Left = 8
            Top = 13
            Width = 85
            Height = 13
            Caption = 'Valor Digitado:'
          end
          object Label63: TLabel
            Left = 224
            Top = 13
            Width = 91
            Height = 13
            Caption = 'Valor Esperado:'
          end
          object Label64: TLabel
            Left = 448
            Top = 13
            Width = 56
            Height = 13
            Caption = 'Restante:'
          end
          object sbnNotas: TSpeedButton
            Left = 638
            Top = 8
            Width = 96
            Height = 22
            Caption = 'Ver Notas'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33033333333333333F7F3333333333333000333333333333F777333333333333
              000333333333333F777333333333333000333333333333F77733333333333300
              033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
              33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
              3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
              33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
              333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
              333333773FF77333333333370007333333333333777333333333}
            NumGlyphs = 2
            OnClick = sbnNotasClick
          end
          object edtguiast_valordig: TCurrencyEdit
            Left = 105
            Top = 9
            Width = 99
            Height = 21
            AutoSize = False
            DisplayFormat = ' ,0.00;- ,0.00'
            ReadOnly = True
            TabOrder = 0
          end
          object edtguiast_valoresp: TCurrencyEdit
            Left = 321
            Top = 9
            Width = 99
            Height = 21
            AutoSize = False
            DisplayFormat = ' ,0.00;- ,0.00'
            ReadOnly = True
            TabOrder = 1
          end
          object edtguiast_valorResto: TCurrencyEdit
            Left = 509
            Top = 9
            Width = 99
            Height = 21
            AutoSize = False
            DisplayFormat = ' ,0.00;- ,0.00'
            ReadOnly = True
            TabOrder = 2
          end
        end
        object bbGuiaST_Incluir: TBitBtn
          Left = 132
          Top = 173
          Width = 174
          Height = 21
          Caption = 'Adicionar'
          TabOrder = 10
          OnClick = bbGuiaST_IncluirClick
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
        object bbGuiaST_Excluir: TBitBtn
          Left = 503
          Top = 172
          Width = 174
          Height = 21
          Caption = 'Excluir Selecionado'
          TabOrder = 11
          OnClick = bbGuiaST_ExcluirClick
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
        object edtguiast_txt_compl: TEdit
          Left = 152
          Top = 150
          Width = 578
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 300
          ParentFont = False
          TabOrder = 14
        end
        object cbguiast_uf: TComboBox
          Left = 669
          Top = 70
          Width = 61
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 2
          Sorted = True
          TabOrder = 6
          Text = 'AC'
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
        end
      end
      object tsDadosEmp: TTabSheet
        Caption = 'Dados da Empresa'
        ImageIndex = 2
        object Label17: TLabel
          Left = 327
          Top = 49
          Width = 138
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Inscricao SUFRAMA:'
        end
        object Label16: TLabel
          Left = 1
          Top = 76
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PIS/PASEP/CI/SUS:'
        end
        object Label15: TLabel
          Left = 215
          Top = 152
          Width = 61
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'd.Cid: '
        end
        object Label9: TLabel
          Left = 1
          Top = 52
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Inscri'#231#227'o Municipal:'
        end
        object Label10: TLabel
          Left = 1
          Top = 6
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Raz'#227'o Social:'
        end
        object Label11: TLabel
          Left = 1
          Top = 28
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNPJ:'
        end
        object Label12: TLabel
          Left = 526
          Top = 27
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Insc.Est:'
        end
        object Label13: TLabel
          Left = 1
          Top = 101
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Endere'#231'o:'
        end
        object Label14: TLabel
          Left = 567
          Top = 102
          Width = 84
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero:'
        end
        object Label18: TLabel
          Left = 1
          Top = 126
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Complemento:'
        end
        object Label19: TLabel
          Left = 473
          Top = 125
          Width = 84
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
        end
        object Label21: TLabel
          Left = 435
          Top = 4
          Width = 56
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fantasia:'
        end
        object Label22: TLabel
          Left = 1
          Top = 151
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CEP:'
        end
        object Label23: TLabel
          Left = 1
          Top = 174
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fone:'
        end
        object Label24: TLabel
          Left = 463
          Top = 174
          Width = 84
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fax:'
        end
        object Label37: TLabel
          Left = 1
          Top = 224
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Atividade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 523
          Top = 225
          Width = 34
          Height = 13
          Caption = 'Perfil:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 1
          Top = 196
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Email:'
        end
        object Label40: TLabel
          Left = 287
          Top = 27
          Width = 73
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CPF:'
        end
        object Label41: TLabel
          Left = 663
          Top = 151
          Width = 36
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'UF:'
        end
        object Label43: TLabel
          Left = 351
          Top = 150
          Width = 47
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cidade:'
        end
        object Label67: TLabel
          Left = 3
          Top = 248
          Width = 176
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'digo de receita (obriga'#231#227'o):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_suframa: TEdit
          Left = 469
          Top = 45
          Width = 154
          Height = 21
          TabOrder = 0
        end
        object edt_pisPasep: TEdit
          Left = 126
          Top = 73
          Width = 188
          Height = 21
          TabOrder = 1
        end
        object edt_codloc: TEdit
          Left = 276
          Top = 148
          Width = 61
          Height = 21
          TabOrder = 2
        end
        object edt_InscMun: TEdit
          Left = 126
          Top = 47
          Width = 188
          Height = 21
          TabOrder = 3
        end
        object edt_razsoc: TEdit
          Left = 126
          Top = 2
          Width = 305
          Height = 21
          TabOrder = 4
        end
        object edt_cnpj: TEdit
          Left = 126
          Top = 25
          Width = 154
          Height = 21
          TabOrder = 5
        end
        object Edt_InscEst: TEdit
          Left = 591
          Top = 24
          Width = 154
          Height = 21
          TabOrder = 6
        end
        object edt_endereco: TEdit
          Left = 126
          Top = 97
          Width = 434
          Height = 21
          TabOrder = 7
        end
        object edt_Numero: TEdit
          Left = 653
          Top = 98
          Width = 95
          Height = 21
          TabOrder = 8
        end
        object edt_compl_ender: TEdit
          Left = 126
          Top = 122
          Width = 218
          Height = 21
          TabOrder = 9
        end
        object edt_bairro: TEdit
          Left = 559
          Top = 121
          Width = 189
          Height = 21
          TabOrder = 10
        end
        object edt_Fantasia: TEdit
          Left = 495
          Top = 0
          Width = 250
          Height = 21
          TabOrder = 11
        end
        object edt_cep: TEdit
          Left = 126
          Top = 147
          Width = 88
          Height = 21
          TabOrder = 12
        end
        object edt_fone: TEdit
          Left = 126
          Top = 170
          Width = 218
          Height = 21
          TabOrder = 13
        end
        object edt_fax: TEdit
          Left = 559
          Top = 170
          Width = 191
          Height = 21
          TabOrder = 14
        end
        object CB_ATIVIDADE: TComboBox
          Left = 126
          Top = 221
          Width = 248
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 1
          MaxLength = 2
          TabOrder = 16
          Text = '1-Outros'
          Items.Strings = (
            '0-Industrial ou equiparado a industrial'
            '1-Outros')
        end
        object CB_PERFIL: TComboBox
          Left = 560
          Top = 221
          Width = 65
          Height = 21
          BevelKind = bkSoft
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 2
          TabOrder = 17
          Text = 'A'
          Items.Strings = (
            'A'
            'B'
            'C')
        end
        object edt_email: TEdit
          Left = 126
          Top = 193
          Width = 499
          Height = 21
          TabOrder = 15
        end
        object Edt_CPF: TEdit
          Left = 362
          Top = 24
          Width = 154
          Height = 21
          TabOrder = 18
        end
        object edt_uf: TEdit
          Left = 700
          Top = 145
          Width = 46
          Height = 21
          TabOrder = 19
        end
        object edt_cidade: TEdit
          Left = 403
          Top = 146
          Width = 218
          Height = 21
          TabOrder = 20
        end
        object CB_CODREC_OBRIGATORIO: TComboBox
          Left = 182
          Top = 245
          Width = 443
          Height = 21
          BevelKind = bkSoft
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          MaxLength = 2
          TabOrder = 21
          Text = '108 - ICMS normal'
          Items.Strings = (
            '108 - ICMS normal'
            '116 - ICMS Substitui'#231#227'o pela Opera'#231#227'o Anterior (entrada)'
            '124 - ICMS Substitui'#231#227'o pela Opera'#231#227'o Posterior (sa'#237'da)'
            '132 - ICMS Substitui'#231#227'o pelo Servi'#231'o de Transporte'
            '140 - ICMS Substitui'#231#227'o pelo Servi'#231'o de Comunica'#231#227'o'
            '159 - ICMS Diferencial de Al'#237'quota'
            '167 - ICMS Importa'#231#227'o'
            '4146 - Adicional ICMS 2% - Lei 15.505/2005'
            '4351 - ICMS Cr'#233'dito Especial para Investimento (liquida'#231#227'o)')
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Dados do Contador'
        ImageIndex = 3
        object Label25: TLabel
          Left = 1
          Top = 6
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nome:'
        end
        object Label26: TLabel
          Left = 1
          Top = 29
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CPF:'
        end
        object Label27: TLabel
          Left = 150
          Top = 30
          Width = 225
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CRC:'
        end
        object Label28: TLabel
          Left = 1
          Top = 53
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNPJ:'
        end
        object Label29: TLabel
          Left = 150
          Top = 54
          Width = 225
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CEP:'
        end
        object Label30: TLabel
          Left = 1
          Top = 77
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Endere'#231'o:'
        end
        object Label31: TLabel
          Left = 376
          Top = 78
          Width = 51
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero:'
        end
        object Label32: TLabel
          Left = 1
          Top = 101
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
        end
        object Label33: TLabel
          Left = 380
          Top = 101
          Width = 71
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'd.Cidade:'
        end
        object Label34: TLabel
          Left = 1
          Top = 123
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Telefone:'
        end
        object Label35: TLabel
          Left = 216
          Top = 123
          Width = 225
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fax:'
        end
        object Label36: TLabel
          Left = 0
          Top = 147
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'E-Mail:'
        end
        object Label42: TLabel
          Left = 493
          Top = 77
          Width = 83
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Complemento:'
        end
        object edt_Contador_Nome: TEdit
          Left = 76
          Top = 2
          Width = 499
          Height = 21
          TabOrder = 0
        end
        object edt_Contador_cpf: TEdit
          Left = 76
          Top = 25
          Width = 196
          Height = 21
          TabOrder = 1
        end
        object edt_Contador_CRC: TEdit
          Left = 380
          Top = 26
          Width = 196
          Height = 21
          TabOrder = 2
        end
        object edt_Contador_CNPJ: TEdit
          Left = 76
          Top = 49
          Width = 196
          Height = 21
          TabOrder = 3
        end
        object edt_Contador_CEP: TEdit
          Left = 380
          Top = 50
          Width = 196
          Height = 21
          TabOrder = 4
        end
        object edt_Contador_Ender: TEdit
          Left = 76
          Top = 73
          Width = 298
          Height = 21
          TabOrder = 5
        end
        object edt_Contador_Numero: TEdit
          Left = 427
          Top = 74
          Width = 59
          Height = 21
          TabOrder = 6
        end
        object edt_Contador_Bairro: TEdit
          Left = 76
          Top = 97
          Width = 298
          Height = 21
          TabOrder = 7
        end
        object edt_Contador_Codloc: TEdit
          Left = 451
          Top = 97
          Width = 57
          Height = 21
          TabOrder = 8
        end
        object edt_Contador_Fone: TEdit
          Left = 76
          Top = 119
          Width = 298
          Height = 21
          TabOrder = 9
        end
        object edt_Contador_Fax: TEdit
          Left = 446
          Top = 119
          Width = 298
          Height = 21
          TabOrder = 10
        end
        object edt_Contador_Email: TEdit
          Left = 75
          Top = 143
          Width = 298
          Height = 21
          TabOrder = 11
        end
        object edt_Contador_CompEnd: TEdit
          Left = 578
          Top = 73
          Width = 165
          Height = 21
          TabOrder = 12
        end
        object edt_Contador_Cidade: TEdit
          Left = 508
          Top = 97
          Width = 235
          Height = 21
          TabOrder = 13
        end
      end
      object tsErrosEFD: TTabSheet
        Caption = 'Erros'
        ImageIndex = 4
        object memo_erros: TRichEdit
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'memo_erros')
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Filtros'
        ImageIndex = 5
        object GroupBox2: TGroupBox
          Left = 16
          Top = 32
          Width = 393
          Height = 225
          Caption = 'Filtrar:'
          TabOrder = 0
          object Label44: TLabel
            Left = 8
            Top = 16
            Width = 98
            Height = 13
            Caption = 'Nota de Entrada:'
          end
          object Label45: TLabel
            Left = 8
            Top = 65
            Width = 86
            Height = 13
            Caption = 'Nota de Saida:'
          end
          object Label46: TLabel
            Left = 8
            Top = 113
            Width = 80
            Height = 13
            Caption = 'Cupom Fiscal:'
          end
          object edt_numnf_ent: TEdit
            Left = 111
            Top = 14
            Width = 81
            Height = 21
            TabOrder = 0
            OnExit = edt_numnf_entExit
          end
          object edt_numnf_sai: TEdit
            Left = 111
            Top = 63
            Width = 82
            Height = 21
            TabOrder = 1
            OnExit = edt_numnf_saiExit
          end
          object edt_num_ecf: TEdit
            Left = 110
            Top = 111
            Width = 81
            Height = 21
            TabOrder = 2
            OnExit = edt_num_ecfExit
          end
          object lbx_numnf_ent: TListBox
            Left = 193
            Top = 14
            Width = 100
            Height = 42
            Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
            Color = 13828095
            ItemHeight = 13
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnKeyDown = lbx_numnf_entKeyDown
          end
          object lbx_numnf_sai: TListBox
            Left = 193
            Top = 63
            Width = 100
            Height = 42
            Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
            Color = 13828095
            ItemHeight = 13
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnKeyDown = lbx_numnf_saiKeyDown
          end
          object lbx_numcf: TListBox
            Left = 193
            Top = 111
            Width = 100
            Height = 42
            Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
            Color = 13828095
            ItemHeight = 13
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnKeyDown = lbx_numcfKeyDown
          end
          object OMITIR_VEN: TCheckBox
            Left = 108
            Top = 36
            Width = 51
            Height = 17
            Caption = 'Omitir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            Visible = False
          end
        end
      end
      object tsTotais: TTabSheet
        Caption = 'Totais'
        ImageIndex = 6
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 740
          Height = 299
          Align = alClient
          DataSource = Src_totc420xc490
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'DT_DOC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SITALIQ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C420_VLR_ACUM_TOT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C490_VLR_OPER'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C490_BC_ICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'C490_ICMS'
              Visible = True
            end>
        end
      end
      object tsErros_Exp: TTabSheet
        Caption = 'Erros Exp Nosso Programa'
        ImageIndex = 7
        object memo_erros_nossoProg: TRichEdit
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'memo_erros')
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object tsItens: TTabSheet
        Caption = 'Itens'
        ImageIndex = 8
        object Memo_Itens: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'Memo_Itens')
          ScrollBars = ssHorizontal
          TabOrder = 0
          WantReturns = False
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'ICMS ST Saidas'
        ImageIndex = 9
        object Memo_ICMSST_Saidas: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'Memo_Itens')
          TabOrder = 0
          WantReturns = False
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Ent p/Aliq(DIF_ALIQ)'
        ImageIndex = 10
        object Memo_EntAliq: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'Memo_Itens')
          ScrollBars = ssHorizontal
          TabOrder = 0
          WantReturns = False
        end
      end
      object tsReg6_Dupl_NumCF: TTabSheet
        Caption = 'tsReg6_1_Dupl'
        ImageIndex = 11
        object Memo_Reg6_1: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'Memo_Itens')
          ScrollBars = ssHorizontal
          TabOrder = 0
          WantReturns = False
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Reg_6.2 (Titulos Baixados)'
        ImageIndex = 12
        object Memo_Reg6_2: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'Memo_Itens')
          ScrollBars = ssHorizontal
          TabOrder = 0
          WantReturns = False
        end
      end
      object tsReg_7_PgtoTrib: TTabSheet
        Caption = 'Reg_7_PgtoTrib'
        ImageIndex = 13
        object memo_Reg7: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'Memo_Itens')
          TabOrder = 0
        end
      end
      object tsFolha: TTabSheet
        Caption = 'tsFolha'
        ImageIndex = 14
        object Memo_Folha: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Lines.Strings = (
            'Memo_Itens')
          ScrollBars = ssHorizontal
          TabOrder = 0
          WantReturns = False
        end
      end
      object tsLayout_NP: TTabSheet
        Caption = 'Itens Exp Nosso Programa'
        ImageIndex = 15
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 750
          Height = 306
          Align = alClient
          Color = 14811076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Lines.Strings = (
            
              'EMPRESA    TAMANHO  78 dados da empresa                         ' +
              '        OK'
            
              'CF         TAMANHO 448 Conhecimento de Frete                    ' +
              '        NAO'
            
              'NF_do_CF   TAMANHO  48 Nota Fiscal do conhecimento de Frete     ' +
              '        NAO'
            
              'NF         TAMANHO 624 Nota Fiscal de Entrada/Saida             ' +
              '        OK '
            
              'ITEM_DOC   TAMANHO 507 Itens do documento fiscal                ' +
              '        OK'
            
              'DET_E_SERV TAMANHO 195 Detalhe entrada de Presta'#231#227'o de Servi'#231'o  ' +
              '        NAO'
            
              'S_ICMS_RET TAMANHO  82 iCMS Retido pelo Substituto              ' +
              '        OK'
            
              'DIF_ALIQ   TAMANHO  77 entrada com Diferen'#231'a de Aliquota        ' +
              '        OK'
            'SIMPLESNAC TAMANHO  64 Saida Simples Nacional                  '
            'S_PROTEGE  TAMANHO  78 Saida Protege Goias '
            
              'NF_SERV    TAMANHO 468 Nota Fiscal de Saida de Presta'#231'ao de Serv' +
              'ico     NAO'
            
              'MR_M       TAMANHO 138 Mapa Resumo Mestre                       ' +
              '        nao  '
            
              'MR_A       TAMANHO  78 Mapa Resumo Analitico                    ' +
              '        nao'
            
              'DUPL_NumCF/TAMANHO  46 Duplicatas NF ou CF                      ' +
              '        nao '
            
              'DUPL_NumNF                                                      ' +
              '        OK'
            
              'DUPL_PARC  TAMANHO  81 Duplicatas e Parcelas                    ' +
              '        OK '
            
              'DUPL_BAIXA TAMANHO 160 Baixa de Duplicatas                      ' +
              '        OK'
            
              'PAGTO_TRIB TAMANHO 430 Pagamento de Tributos                    ' +
              '        OK'
            
              'PAGTOFOLHA TAMANHO 430 Pagamento da Folha                       ' +
              '        OK'
            
              'CLI_FORN   TAMANHO 470 Cadastro de Clientes e Fornecedores      ' +
              '        OK '
            
              'CAD_ITEM   TAMANHO 301 Cadastro de Itens                        ' +
              '        OK '
            
              'ITENSCUPOM TAMANHO  56 Itens do Cupom Fiscal                    ' +
              '        nao'
            '')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssHorizontal
          TabOrder = 0
          WantReturns = False
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 517
    Width = 762
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbGerar: TBitBtn
      Left = 10
      Top = 4
      Width = 151
      Height = 32
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = bbGerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 574
      Top = 3
      Width = 151
      Height = 32
      Caption = 'Sair'
      TabOrder = 1
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
    object bbUpdate: TBitBtn
      Left = 196
      Top = 6
      Width = 151
      Height = 32
      Caption = 'Update Preventivos'
      TabOrder = 2
      OnClick = bbUpdateClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object bbNossoPrograma: TBitBtn
      Left = 347
      Top = 6
      Width = 151
      Height = 32
      Caption = 'Exportar Nosso Programa'
      TabOrder = 3
      OnClick = bbNossoProgramaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
  end
  object gb_informacoes: TGroupBox
    Left = 0
    Top = 473
    Width = 762
    Height = 44
    Align = alBottom
    Caption = 'Informa'#231#245'es'
    TabOrder = 3
    Visible = False
  end
  object Tb_AjusE111: TRxMemoryData
    FieldDefs = <
      item
        Name = 'TABELA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALORAJUST'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGOAJUST'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'INDICE'
        DataType = ftInteger
      end
      item
        Name = 'COMPL_DESCR'
        DataType = ftString
        Size = 200
      end>
    Left = 520
    Top = 3
    object Tb_AjusE111TABELA: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TABELA'
      Size = 4
    end
    object Tb_AjusE111DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Tb_AjusE111VALORAJUST: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALORAJUST'
    end
    object Tb_AjusE111TIPO: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'TIPO'
      Size = 1
    end
    object Tb_AjusE111CODIGOAJUST: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGOAJUST'
      Size = 8
    end
    object Tb_AjusE111INDICE: TIntegerField
      FieldName = 'INDICE'
    end
    object Tb_AjusE111COMPL_DESCR: TStringField
      FieldName = 'COMPL_DESCR'
      Size = 200
    end
  end
  object src_ajusE113: TDataSource
    DataSet = Tb_AjusE111
    Left = 544
    Top = 3
  end
  object SaveDialog1: TSaveDialog
    Left = 648
    Top = 3
  end
  object Qr_150A_CliFor: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '#39'F'#39' TIPO, '#39'F'#39' || FCODFOR AS CODIGO,'
      'FRAZAO AS RAZSOC,'
      'FCIDADE AS CIDADE,'
      'FUF AS UF,'
      'FIE AS INSCEST,'
      'TO_CHAR(FCGC) AS CNPJ,'
      '0    AS CPF,'
      'LCODMUN_IBGE AS CODMUN_IBGE,'
      'FNLOG AS ENDERECO,'
      'FBAIRRO AS BAIRRO ,FBAIRRO AS SUFRAMA'
      'FROM CADFOR,CADLOC'
      'WHERE FCODLOC=LCODLOC'
      'union'
      'SELECT '#39'C'#39' TIPO, '#39'C'#39' || CCODCLI AS CODIGO,'
      'CRAZAO AS RAZSOC,'
      'CCIDADE AS CIDADE,'
      'CUF AS UF,'
      'CIE AS INSCEST,'
      'TO_CHAR(CCNPJ) AS CNPJ,'
      'CCPF AS CPF,'
      'LCODMUN_IBGE AS CODMUN_IBGE,'
      'CLOG AS ENDERECO,'
      'CBAIRRO AS BAIRRO ,CBAIRRO AS SUFRAMA'
      'FROM CADCLI,CADLOC'
      'WHERE CCODLOC=LCODLOC'
      ''
      '')
    Left = 520
    Top = 33
    object Qr_150A_CliForTIPO: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Qr_150A_CliForRAZSOC: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'RAZSOC'
      Size = 60
    end
    object Qr_150A_CliForCIDADE: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'CIDADE'
      Size = 30
    end
    object Qr_150A_CliForUF: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'UF'
      Size = 2
    end
    object Qr_150A_CliForINSCEST: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'INSCEST'
      Size = 30
    end
    object Qr_150A_CliForCPF: TFloatField
      AutoGenerateValue = arAutoInc
      FieldName = 'CPF'
    end
    object Qr_150A_CliForCODMUN_IBGE: TFloatField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODMUN_IBGE'
    end
    object Qr_150A_CliForENDERECO: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Qr_150A_CliForBAIRRO: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Qr_150A_CliForSUFRAMA: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'SUFRAMA'
      Size = 30
    end
    object Qr_150A_CliForCODIGO: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Size = 41
    end
    object Qr_150A_CliForCNPJ: TStringField
      AutoGenerateValue = arAutoInc
      FieldName = 'CNPJ'
      Size = 40
    end
  end
  object Qr_0190_Unid: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SUBSTR(PDNOME,01,06) AS CODUNID,'
      'PDNOME AS DESCUNID FROM CADPRO')
    Left = 552
    Top = 41
    object Qr_0190_UnidCODUNID: TStringField
      FieldName = 'CODUNID'
      Size = 6
    end
    object Qr_0190_UnidDESCUNID: TStringField
      FieldName = 'DESCUNID'
      Size = 53
    end
  end
  object Qr_0200_Item: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'SELECT TO_CHAR(PDCODPRO) AS CODPRO,PDNOME AS NOMPRO,PDCODBAR AS ' +
        'CODBAR,'
      'PDUND AS UNID,PDNIVEL AS NIVEL,PDCLAS AS COD_NCM,PDTABICM'
      ',CASE '
      'WHEN PDTABICM='#39'A'#39' THEN PICMSA'
      'when PDTABICM='#39'B'#39' THEN PICMSB'
      'when PDTABICM='#39'C'#39' THEN PICMSC'
      'when PDTABICM='#39'D'#39' THEN PICMSD'
      'when PDTABICM='#39'E'#39' THEN PICMSNE'
      'when PDTABICM='#39'F'#39' THEN PICMSNF'
      'when PDTABICM='#39'G'#39' THEN PICMSNG'
      'when PDTABICM='#39'H'#39' THEN PICMSNH'
      'when PDTABICM='#39'I'#39' THEN PICMSNI'
      'else 0'
      'END ALIQ_ICM'
      '  '
      'FROM CADPRO,CADUF'
      'WHERE PUF='#39'GO'#39
      '')
    Left = 584
    Top = 11
    object Qr_0200_ItemCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 40
    end
    object Qr_0200_ItemNOMPRO: TStringField
      FieldName = 'NOMPRO'
      Size = 53
    end
    object Qr_0200_ItemCODBAR: TFloatField
      FieldName = 'CODBAR'
    end
    object Qr_0200_ItemUNID: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Qr_0200_ItemNIVEL: TFloatField
      FieldName = 'NIVEL'
    end
    object Qr_0200_ItemCOD_NCM: TStringField
      FieldName = 'COD_NCM'
    end
    object Qr_0200_ItemPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Size = 1
    end
    object Qr_0200_ItemALIQ_ICM: TFloatField
      FieldName = 'ALIQ_ICM'
    end
  end
  object Qr_0400_CFOP: TQuery
    OnCalcFields = Qr_0400_CFOPCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT TO_CHAR(CFCODCFO) as CFCODCFO'
      'FROM CADCFO'
      '')
    Left = 640
    Top = 51
    object Qr_0400_CFOPnomcfop: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcfop'
      Size = 50
      Calculated = True
    end
    object Qr_0400_CFOPCFCODCFO: TStringField
      FieldName = 'CFCODCFO'
      Size = 40
    end
  end
  object Qr_C100_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CASE WHEN NSCFO1>4999 THEN 1'
      'ELSE 0 END AS IND_OPER'
      '      ,0 AS IND_EMIT'
      '      ,'#39'F'#39'||NSCODCLI AS COD_PART'
      '      ,NSMODELO AS COD_MOD'
      '      ,DECODE(NSSTATUS,9,'#39'02'#39','#39'00'#39') AS COD_SIT'
      '      ,NSSERIE AS SER'
      '      ,NSNUMERO AS NUM_DOC'
      '      ,NSNFE_CHAVEACESSO || NSNFE_DCHAVEACESSO AS CHV_NFE'
      '      ,NSDTEMIS AS DT_DOC'
      '      ,NSDTEMIS AS DT_E_S'
      '      ,NSTOTNOTA AS VL_DOC'
      '      ,NSAVAP AS IND_PGTO'
      '      , 0 as VL_DESC'
      '      , 0 as VL_ABAT_NT'
      '      , 0 as VL_MERC'
      '      ,DECODE(NSFRETE,0,9,NSFRETEPC) AS IND_FRT'
      '      ,NSFRETE AS VL_FRT'
      '      ,0 AS VL_SEG'
      '      ,0 AS VL_OUT_DA'
      '      ,NSBASEN+NSBASENRP+NSBASENRN+NSBASENRI AS VL_BC_ICMS'
      '      ,NSICMSN+NSICMSNRP+NSICMSNRN+NSICMSNRI AS VL_ICMS'
      '      ,NSBASERP+NSBASERN+NSBASERI AS VL_BC_ICMS_ST'
      '      ,NSICMSRP+NSICMSRN+NSICMSRI AS VL_ICMS_ST'
      '      ,NSIPIP+NSIPIN+NSIPII AS VL_IPI'
      '      ,0 AS VL_PIS'
      '      ,0 AS VL_COFINS'
      '      ,0 AS VL_PIS_ST'
      '      ,0 AS VL_COFINS_ST'
      '      ,NSCODEMP AS CODEMP'
      '      ,NSLOTSEQ_CP AS LOTSEQ'
      '      ,NSCHAVEP AS CHAVE'
      '      ,NSORDEMP AS ORDEM'
      '      ,NSICMS_BCFRE AS ICMS_BCFRE'
      '      ,NSICMS_ALFRE AS ICMS_ALFRE'
      '      ,NSICMS_VLFRE AS ICMS_VLFRE'
      '      ,NSNUMERO AS NUM_CUP'
      '      ,NSCFO1 AS CFOP'
      '      ,'#39'GO'#39' AS UF'
      '      FROM CADNS'
      '')
    Left = 672
    Top = 43
    object Qr_C100_NotasIND_OPER: TFloatField
      FieldName = 'IND_OPER'
    end
    object Qr_C100_NotasIND_EMIT: TFloatField
      FieldName = 'IND_EMIT'
    end
    object Qr_C100_NotasCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 3
    end
    object Qr_C100_NotasCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 2
    end
    object Qr_C100_NotasSER: TStringField
      FieldName = 'SER'
      Size = 6
    end
    object Qr_C100_NotasNUM_DOC: TFloatField
      FieldName = 'NUM_DOC'
    end
    object Qr_C100_NotasCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 51
    end
    object Qr_C100_NotasDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object Qr_C100_NotasDT_E_S: TDateTimeField
      FieldName = 'DT_E_S'
    end
    object Qr_C100_NotasVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Qr_C100_NotasIND_PGTO: TFloatField
      FieldName = 'IND_PGTO'
    end
    object Qr_C100_NotasIND_FRT: TFloatField
      FieldName = 'IND_FRT'
    end
    object Qr_C100_NotasVL_FRT: TFloatField
      FieldName = 'VL_FRT'
    end
    object Qr_C100_NotasVL_SEG: TFloatField
      FieldName = 'VL_SEG'
    end
    object Qr_C100_NotasVL_OUT_DA: TFloatField
      FieldName = 'VL_OUT_DA'
    end
    object Qr_C100_NotasVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C100_NotasVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C100_NotasVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
    end
    object Qr_C100_NotasVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
    end
    object Qr_C100_NotasVL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object Qr_C100_NotasVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C100_NotasVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qr_C100_NotasVL_COFINS_ST: TFloatField
      FieldName = 'VL_COFINS_ST'
    end
    object Qr_C100_NotasCOD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 41
    end
    object Qr_C100_NotasVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_C100_NotasVL_ABAT_NT: TFloatField
      FieldName = 'VL_ABAT_NT'
    end
    object Qr_C100_NotasVL_MERC: TFloatField
      FieldName = 'VL_MERC'
    end
    object Qr_C100_NotasVL_PIS_ST: TFloatField
      FieldName = 'VL_PIS_ST'
    end
    object Qr_C100_NotasCODEMP: TFloatField
      FieldName = 'CODEMP'
    end
    object Qr_C100_NotasLOTSEQ: TFloatField
      FieldName = 'LOTSEQ'
    end
    object Qr_C100_NotasCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object Qr_C100_NotasORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object Qr_C100_NotasNUM_CUP: TFloatField
      FieldName = 'NUM_CUP'
    end
    object Qr_C100_NotasICMS_BCFRE: TFloatField
      FieldName = 'ICMS_BCFRE'
    end
    object Qr_C100_NotasICMS_ALFRE: TFloatField
      FieldName = 'ICMS_ALFRE'
    end
    object Qr_C100_NotasICMS_VLFRE: TFloatField
      FieldName = 'ICMS_VLFRE'
    end
    object Qr_C100_NotasCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object Qr_C100_NotasUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object Qr_C170_ItensPed: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT P2ITEM AS NUM_ITEM,TO_CHAR(PDCODPRO) AS COD_ITEM,'
      'PDNOME AS DESCR_COMPL, P2QTD AS QTD'
      ',PDUND AS UNID, (P2PRECO*P2QTD) AS VL_ITEM'
      ',P2TOTDES AS VL_DESC'
      ',0 AS IND_MOV'
      ',P2SIT AS CST_ICMS'
      ',P2CFO AS COD_NAT'
      ',P2BASEN+P2BCINR AS VL_BC_ICMS'
      ',P2ICMSN+P2ICMSNR AS VL_ICMS'
      ',P2BASER AS VL_BC_ICMS_ST'
      ',P2ICMSR AS VL_ICMS_ST'
      ',P2ALIQ AS ALIQ_ICMS'
      ',P2ST_ICMDEB AS ALIQ_ST'
      ', 0 AS IND_APUR'
      ',P2SIT AS CST_IPI'
      ','#39' '#39' AS COD_ENQ'
      ',DECODE(P2VALIPI,0,0,P2VALIPI) AS BL_BC_IPI'
      ',P2ALIPI AS ALIQ_IPI'
      ',P2VALIPI as VL_IPI'
      ',P2SIT AS CST_PIS'
      ',0 AS VL_BC_PIS'
      ',0 AS ALIQ_PIS'
      ',0 AS QUANT_BC_PIS'
      ',0 ALIQ_PIS_REAIS'
      ',0 AS VL_PIS'
      ',P2SIT AS CST_COFINS'
      ',0 AS VL_BC_COFINS'
      ',0 AS ALIQ_COFINS'
      ',0 AS QUANT_BC_COFINS'
      ',0 AS VL_COFINS'
      ','#39' '#39' COD_CTA'
      ',0 AS ALIQ_COFINS_REAIS'
      ',PDPRZVAL_DIAS,PDPRZVAL,PDPRZVAL_ANOS'
      ',P2LOTE AS C173_LOTE_MED'
      ',P2QTD  AS C173_QTD_ITEM'
      ',P2DTVCTO AS C173_DT_VAL'
      ',DECODE(PDLISTA,NULL,4'
      '        ,0,4'
      '        ,1,3'
      '        ,2,2'
      '        ,4) AS IND_MED'
      ',P2PCOMAX AS VL_TAB_MAX'
      ',DECODE(PDCODTIP,3,0'
      '        ,2,1'
      '        ,2) AS TP_PROD'
      ',0 as  OUTRAS_SICMS'
      ',0 as OUTRAS_CICMS'
      ',0 as OUTRAS_VL_ICMS'
      ',0 as OUTRAS_ALIQ'
      ',0 as ICMS_FRETE'
      ',0 as ICMS_ALIQ_FRETE'
      ',0 as VALOR_FRETE'
      'FROM CADP02,CADPRO'
      'WHERE PDCODPRO=P2CODPRO')
    Left = 696
    Top = 11
    object Qr_C170_ItensPedNUM_ITEM: TFloatField
      FieldName = 'NUM_ITEM'
    end
    object Qr_C170_ItensPedDESCR_COMPL: TStringField
      FieldName = 'DESCR_COMPL'
      Size = 120
    end
    object Qr_C170_ItensPedQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_C170_ItensPedUNID: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Qr_C170_ItensPedVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
    end
    object Qr_C170_ItensPedVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_C170_ItensPedIND_MOV: TFloatField
      FieldName = 'IND_MOV'
    end
    object Qr_C170_ItensPedCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object Qr_C170_ItensPedCOD_NAT: TFloatField
      FieldName = 'COD_NAT'
    end
    object Qr_C170_ItensPedVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C170_ItensPedVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C170_ItensPedVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
    end
    object Qr_C170_ItensPedVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
    end
    object Qr_C170_ItensPedALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qr_C170_ItensPedALIQ_ST: TFloatField
      FieldName = 'ALIQ_ST'
    end
    object Qr_C170_ItensPedIND_APUR: TFloatField
      FieldName = 'IND_APUR'
    end
    object Qr_C170_ItensPedCST_IPI: TStringField
      FieldName = 'CST_IPI'
      Size = 3
    end
    object Qr_C170_ItensPedCOD_ENQ: TStringField
      FieldName = 'COD_ENQ'
      FixedChar = True
      Size = 1
    end
    object Qr_C170_ItensPedBL_BC_IPI: TFloatField
      FieldName = 'BL_BC_IPI'
    end
    object Qr_C170_ItensPedALIQ_IPI: TFloatField
      FieldName = 'ALIQ_IPI'
    end
    object Qr_C170_ItensPedCST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 3
    end
    object Qr_C170_ItensPedVL_BC_PIS: TFloatField
      FieldName = 'VL_BC_PIS'
    end
    object Qr_C170_ItensPedALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
    end
    object Qr_C170_ItensPedQUANT_BC_PIS: TFloatField
      FieldName = 'QUANT_BC_PIS'
    end
    object Qr_C170_ItensPedALIQ_PIS_REAIS: TFloatField
      FieldName = 'ALIQ_PIS_REAIS'
    end
    object Qr_C170_ItensPedVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C170_ItensPedCST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 3
    end
    object Qr_C170_ItensPedVL_BC_COFINS: TFloatField
      FieldName = 'VL_BC_COFINS'
    end
    object Qr_C170_ItensPedALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
    end
    object Qr_C170_ItensPedQUANT_BC_COFINS: TFloatField
      FieldName = 'QUANT_BC_COFINS'
    end
    object Qr_C170_ItensPedVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qr_C170_ItensPedCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      FixedChar = True
      Size = 1
    end
    object Qr_C170_ItensPedVL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object Qr_C170_ItensPedALIQ_COFINS_REAIS: TFloatField
      FieldName = 'ALIQ_COFINS_REAIS'
    end
    object Qr_C170_ItensPedPDPRZVAL_DIAS: TFloatField
      FieldName = 'PDPRZVAL_DIAS'
    end
    object Qr_C170_ItensPedPDPRZVAL: TFloatField
      FieldName = 'PDPRZVAL'
    end
    object Qr_C170_ItensPedPDPRZVAL_ANOS: TFloatField
      FieldName = 'PDPRZVAL_ANOS'
    end
    object Qr_C170_ItensPedC173_LOTE_MED: TStringField
      FieldName = 'C173_LOTE_MED'
    end
    object Qr_C170_ItensPedC173_QTD_ITEM: TFloatField
      FieldName = 'C173_QTD_ITEM'
    end
    object Qr_C170_ItensPedC173_DT_VAL: TDateTimeField
      FieldName = 'C173_DT_VAL'
    end
    object Qr_C170_ItensPedIND_MED: TFloatField
      FieldName = 'IND_MED'
    end
    object Qr_C170_ItensPedVL_TAB_MAX: TFloatField
      FieldName = 'VL_TAB_MAX'
    end
    object Qr_C170_ItensPedTP_PROD: TFloatField
      FieldName = 'TP_PROD'
    end
    object Qr_C170_ItensPedOUTRAS_SICMS: TFloatField
      FieldName = 'OUTRAS_SICMS'
    end
    object Qr_C170_ItensPedOUTRAS_CICMS: TFloatField
      FieldName = 'OUTRAS_CICMS'
    end
    object Qr_C170_ItensPedOUTRAS_VL_ICMS: TFloatField
      FieldName = 'OUTRAS_VL_ICMS'
    end
    object Qr_C170_ItensPedOUTRAS_ALIQ: TFloatField
      FieldName = 'OUTRAS_ALIQ'
    end
    object Qr_C170_ItensPedICMS_FRETE: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object Qr_C170_ItensPedICMS_ALIQ_FRETE: TFloatField
      FieldName = 'ICMS_ALIQ_FRETE'
    end
    object Qr_C170_ItensPedVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object Qr_C170_ItensPedCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 40
    end
  end
  object Qr_C190_RegAnal: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select PF2SIT  AS CST_ICMS,TO_CHAR(PF2CFO) AS CFOP,PF2ALIQ AS AL' +
        'IQ_ICMS'
      
        ',sum((PF2QTDP*PF2PU)-PF2TOTDES) AS VL_OPR,sum(PF2BASEN) AS VL_BC' +
        '_ICMS'
      ',sum(PF2ICMSN) AS VL_ICMS,sum(PF2BASER) AS VL_BC_ICMS_ST'
      
        ',sum(PF2ICMSR) AS VL_ICMS_ST,sum(PF2OUTRAS) AS VL_RED_BC,sum(PF2' +
        'IPI) AS VL_IPI'
      ','#39'      '#39' AS COD_OBS'
      ',max(NEOUTDESP) as  OUTRAS_SICMS'
      ''
      ',max(NEOUTRAS) as OUTRAS_CICMS'
      ',max(NEOUTRAS_IMP) as OUTRAS_VL_ICMS'
      ',max(NEOUTRAS_ALIQ) as OUTRAS_ALIQ'
      ''
      ',max(NEICMS_FRETE) as ICMS_FRETE'
      ',max(NEALIQ_FRETE) as ICMS_ALIQ_FRETE'
      ',max(NEFRETE) as  VALOR_FRETE'
      ''
      ''
      'FROM CADPF2,CADNE'
      'where NECHAVEP=PF2CHAVE'
      'and   NECODEMP=PF2CODEMP'
      'GROUP BY PF2SIT,PF2CFO,PF2ALIQ'
      '')
    Left = 584
    Top = 43
    object Qr_C190_RegAnalCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object Qr_C190_RegAnalALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qr_C190_RegAnalVL_OPR: TFloatField
      FieldName = 'VL_OPR'
    end
    object Qr_C190_RegAnalVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C190_RegAnalVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C190_RegAnalVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
    end
    object Qr_C190_RegAnalVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
    end
    object Qr_C190_RegAnalVL_RED_BC: TFloatField
      FieldName = 'VL_RED_BC'
    end
    object Qr_C190_RegAnalVL_IPI: TFloatField
      FieldName = 'VL_IPI'
    end
    object Qr_C190_RegAnalCOD_OBS: TStringField
      FieldName = 'COD_OBS'
      FixedChar = True
      Size = 6
    end
    object Qr_C190_RegAnalOUTRAS_SICMS: TFloatField
      FieldName = 'OUTRAS_SICMS'
    end
    object Qr_C190_RegAnalOUTRAS_CICMS: TFloatField
      FieldName = 'OUTRAS_CICMS'
    end
    object Qr_C190_RegAnalOUTRAS_VL_ICMS: TFloatField
      FieldName = 'OUTRAS_VL_ICMS'
    end
    object Qr_C190_RegAnalOUTRAS_ALIQ: TFloatField
      FieldName = 'OUTRAS_ALIQ'
    end
    object Qr_C190_RegAnalICMS_FRETE: TFloatField
      FieldName = 'ICMS_FRETE'
    end
    object Qr_C190_RegAnalICMS_ALIQ_FRETE: TFloatField
      FieldName = 'ICMS_ALIQ_FRETE'
    end
    object Qr_C190_RegAnalVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object Qr_C190_RegAnalCFOP: TStringField
      FieldName = 'CFOP'
      Size = 40
    end
  end
  object Qr_C400_ECF: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select CFMODDOC AS COD_MOD'
      '      ,DECODE(CFMODELO,0,'#39'BEMATECH'#39','#39'DARUMA'#39') AS ECF_MOD'
      '      ,CFSERIE AS ECF_FAB'
      '      ,CFCAIXA as COD_CX'
      '       from'
      'CADMI01, cadecf'
      'where CFCAIXA=CMCODIMP'
      'AND CMDATA>='#39'01/01/2010'#39
      
        'GROUP BY CFCAIXA,CFSERIE,CFMODDOC,DECODE(CFMODELO,0,'#39'BEMATECH'#39','#39 +
        'DARUMA'#39')')
    Left = 304
    object Qr_C400_ECFCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 2
    end
    object Qr_C400_ECFECF_MOD: TStringField
      FieldName = 'ECF_MOD'
      Size = 8
    end
    object Qr_C400_ECFECF_FAB: TStringField
      FieldName = 'ECF_FAB'
    end
    object Qr_C400_ECFCOD_CX: TFloatField
      FieldName = 'COD_CX'
    end
  end
  object Qr_C405_ReducaoZ: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select CFSERIE,CFMODDOC,CMDATA as DT_DOC, CMCRO AS CRO'
      '      , CMCOO_FINAL as NUM_COO_FIN,'
      
        '      DECODE(CMVDABACUM,NULL,CMVDABRUT,0,CMVDABRUT,CMVDABACUM) a' +
        's GT_FIN'
      '      ,CMVDABRUT as VL_BRT,'
      '      CMCODIMP,'
      '      CMCOO,'
      '      CMCONRED as CRZ,'
      '      CMVDALIQ,CMCUPCAN,'
      '      CMACRECUP,CMDESCUP,'
      '      CMISENTAS,CMNAOINC,'
      '          CMSUBTRI,CMISSCUP'
      '      from CADECF,CADMI01 '
      
        '                       where  CMCODEMP=01 and CFCODEMP=CMCODEMP ' +
        'and '
      '                       CFCAIXA=CMCODIMP '
      '   and CMDATA>='#39'01/05/2010'#39
      ' and CMDATA<='#39'01/06/2010'#39)
    Left = 360
    object Qr_C405_ReducaoZCFSERIE: TStringField
      FieldName = 'CFSERIE'
    end
    object Qr_C405_ReducaoZCFMODDOC: TStringField
      FieldName = 'CFMODDOC'
      Size = 2
    end
    object Qr_C405_ReducaoZDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object Qr_C405_ReducaoZCRO: TFloatField
      FieldName = 'CRO'
    end
    object Qr_C405_ReducaoZNUM_COO_FIN: TFloatField
      FieldName = 'NUM_COO_FIN'
    end
    object Qr_C405_ReducaoZGT_FIN: TFloatField
      FieldName = 'GT_FIN'
    end
    object Qr_C405_ReducaoZVL_BRT: TFloatField
      FieldName = 'VL_BRT'
    end
    object Qr_C405_ReducaoZCMCODIMP: TFloatField
      FieldName = 'CMCODIMP'
    end
    object Qr_C405_ReducaoZCMCOO: TFloatField
      FieldName = 'CMCOO'
    end
    object Qr_C405_ReducaoZCMVDALIQ: TFloatField
      FieldName = 'CMVDALIQ'
    end
    object Qr_C405_ReducaoZCMCUPCAN: TFloatField
      FieldName = 'CMCUPCAN'
    end
    object Qr_C405_ReducaoZCMACRECUP: TFloatField
      FieldName = 'CMACRECUP'
    end
    object Qr_C405_ReducaoZCMDESCUP: TFloatField
      FieldName = 'CMDESCUP'
    end
    object Qr_C405_ReducaoZCMISENTAS: TFloatField
      FieldName = 'CMISENTAS'
    end
    object Qr_C405_ReducaoZCMNAOINC: TFloatField
      FieldName = 'CMNAOINC'
    end
    object Qr_C405_ReducaoZCMSUBTRI: TFloatField
      FieldName = 'CMSUBTRI'
    end
    object Qr_C405_ReducaoZCMISSCUP: TFloatField
      FieldName = 'CMISSCUP'
    end
    object Qr_C405_ReducaoZCRZ: TFloatField
      FieldName = 'CRZ'
    end
  end
  object Qr_C420_TotParcRedZ: TQuery
    OnCalcFields = Qr_C420_TotParcRedZCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CM2ALIQ AS COD_TOT_PAR'
      '      ,sum(CM2VALOR) AS VLR_ACUM_TOT'
      '      ,COUNT(*) AS NR_TOT'
      '      ,'#39' '#39' as DESCR_NR_TOT'
      '      from CADMI02'
      '      GROUP BY CM2ALIQ')
    Left = 392
    object Qr_C420_TotParcRedZCOD_TOT_PAR: TFloatField
      FieldName = 'COD_TOT_PAR'
    end
    object Qr_C420_TotParcRedZVLR_ACUM_TOT: TFloatField
      FieldName = 'VLR_ACUM_TOT'
    end
    object Qr_C420_TotParcRedZnr_tot: TStringField
      FieldKind = fkCalculated
      FieldName = 'nr_tot'
      Size = 2
      Calculated = True
    end
    object Qr_C420_TotParcRedZdescr_nr_tot: TStringField
      FieldKind = fkCalculated
      FieldName = 'descr_nr_tot'
      Calculated = True
    end
  end
  object Qr_C425_ResItensDiario: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CODPRO AS COD_ITEM,sum(P2QTD) AS QTD,'
      '           max(PDUND) AS UNID,'
      '           sum((P2PRECO*P2QTD)-P2TOTDES) AS VL_ITEM'
      '           ,0 AS VL_PIS, 0 AS VL_COFINS'
      '      from CADP02,CADPRO'
      '     WHERE PDCODPRO=P2CODPRO'
      '      GROUP BY P2CODPRO')
    Left = 560
    Top = 123
    object Qr_C425_ResItensDiarioCOD_ITEM: TFloatField
      FieldName = 'COD_ITEM'
    end
    object Qr_C425_ResItensDiarioQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_C425_ResItensDiarioUNID: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Qr_C425_ResItensDiarioVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
    end
    object Qr_C425_ResItensDiarioVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C425_ResItensDiarioVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
  end
  object Qr_C460_Cupom: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select NSMODECF AS COD_MOD,'
      'CASE WHEN'
      'SUBSTR(P2SIT,2,1)='#39'4'#39' THEN '#39'II'#39
      'WHEN P2ALIQ>0 THEN TO_CHAR(P2ALIQ*100,'#39'0000'#39')'
      'ELSE '#39'FF'#39
      'END AS COD_SIT'
      ',NSNUMCUP AS NUM_DOC'
      ',NSDTEMIS AS DT_DOC'
      ',sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_DOC'
      ',0 AS VL_PIS'
      ',0 AS VL_COFINS'
      ',0 AS CPF_CNPJ'
      ',0 AS TIPODOC'
      ','#39' '#39' AS NOM_ADQ'
      ',max(NSLOTSEQ_CP) AS  NSLOTSEQ_CP'
      ',max(NSCHAVEP) as NSCHAVEP'
      ',max(NSORDEMP) as NSORDEMP'
      ',max(NSCODEMP) as  NSCODEMP'
      'from CADNS,CADP02'
      'where P2LOTSEQ=NSLOTSEQ_CP'
      'AND P2CHAVE=NSCHAVEP'
      'AND P2ORDEM=NSORDEMP'
      'AND P2CODEMP=NSCODEMP'
      'GROUP BY NSMODECF,'
      'CASE WHEN'
      'SUBSTR(P2SIT,2,1)='#39'4'#39' THEN '#39'II'#39
      'WHEN P2ALIQ>0 THEN TO_CHAR(P2ALIQ*100,'#39'0000'#39')'
      'ELSE '#39'FF'#39
      'END'
      ',NSNUMCUP'
      ',NSDTEMIS'
      '')
    Left = 600
    Top = 123
    object Qr_C460_CupomCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 2
    end
    object Qr_C460_CupomCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 5
    end
    object Qr_C460_CupomNUM_DOC: TFloatField
      FieldName = 'NUM_DOC'
    end
    object Qr_C460_CupomDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object Qr_C460_CupomVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Qr_C460_CupomVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C460_CupomVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qr_C460_CupomCPF_CNPJ: TFloatField
      FieldName = 'CPF_CNPJ'
    end
    object Qr_C460_CupomNOM_ADQ: TStringField
      FieldName = 'NOM_ADQ'
      FixedChar = True
      Size = 1
    end
    object Qr_C460_CupomNSLOTSEQ_CP: TFloatField
      FieldName = 'NSLOTSEQ_CP'
    end
    object Qr_C460_CupomNSCHAVEP: TFloatField
      FieldName = 'NSCHAVEP'
    end
    object Qr_C460_CupomNSORDEMP: TFloatField
      FieldName = 'NSORDEMP'
    end
    object Qr_C460_CupomNSCODEMP: TFloatField
      FieldName = 'NSCODEMP'
    end
    object Qr_C460_CupomTIPODOC: TFloatField
      FieldName = 'TIPODOC'
    end
  end
  object Qr_C470_Itens: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CODPRO AS COD_ITEM'
      '      ,P2QTD AS QTD'
      '      ,0 AS QTD_CANC'
      '      ,PDUND AS UNID'
      '      ,((P2PRECO*P2QTD)-P2TOTDES) AS VL_ITEM'
      '      ,P2SIT AS CST_ICMS'
      '      ,P2CFO AS CFOP'
      '      ,P2ALIQ AS ALIQ_ICMS'
      '      ,P2VALPIS as VL_PIS'
      '      ,P2COFINS as VL_COFINS'
      'from CADNS,CADP02,CADPRO'
      'where P2LOTSEQ=NSLOTSEQ_CP'
      'AND P2CHAVE=NSCHAVEP'
      'AND P2ORDEM=NSORDEMP'
      'AND P2CODEMP=NSCODEMP'
      'AND PDCODPRO=P2CODPRO'
      '')
    Left = 624
    Top = 123
    object Qr_C470_ItensCOD_ITEM: TFloatField
      FieldName = 'COD_ITEM'
    end
    object Qr_C470_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_C470_ItensQTD_CANC: TFloatField
      FieldName = 'QTD_CANC'
    end
    object Qr_C470_ItensUNID: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Qr_C470_ItensVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
    end
    object Qr_C470_ItensCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object Qr_C470_ItensCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object Qr_C470_ItensALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qr_C470_ItensVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C470_ItensVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
  end
  object Qr_C490_CstCfopAliq: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      'P2SIT AS CST_ICMS'
      ',P2CFO AS CFOP'
      ',P2ALIQ AS ALIQ_ICMS'
      ',sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_OPR'
      ',SUM(P2BASEN+P2BCINR) AS VL_BC_ICMS'
      ',SUM(P2ICMSN+P2ICMSNR) AS VL_ICMS'
      ','#39' '#39' AS COD_OBS'
      'from CADNS,CADP02'
      'where P2LOTSEQ=NSLOTSEQ_CP'
      'AND P2CHAVE=NSCHAVEP'
      'AND P2ORDEM=NSORDEMP'
      'AND P2CODEMP=NSCODEMP'
      'GROUP BY'
      'P2SIT,P2CFO,P2ALIQ')
    Left = 696
    Top = 107
    object Qr_C490_CstCfopAliqCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object Qr_C490_CstCfopAliqALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qr_C490_CstCfopAliqVL_OPR: TFloatField
      FieldName = 'VL_OPR'
    end
    object Qr_C490_CstCfopAliqVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C490_CstCfopAliqVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C490_CstCfopAliqCOD_OBS: TStringField
      FieldName = 'COD_OBS'
      FixedChar = True
      Size = 1
    end
    object Qr_C490_CstCfopAliqCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
  end
  object Qr_C495_ResMesItemBA: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2ALIQ AS ALIQ_ICMS'
      ',P2CODPRO AS COD_ITEM'
      ',sum(P2QTD) as QTD'
      ',0 as QTD_CANC'
      ',PDUND AS UNID '
      ',sum((P2QTD*P2PRECO)-P2TOTDES) AS VL_ITEM'
      ',0 AS VL_DESC'
      ',0 AS VL_CANC'
      ',0 AS VL_ACMO'
      ',SUM(P2BASEN+P2BCINR) AS VL_BC_ICMS'
      ',SUM(P2ICMSN+P2ICMSNR) AS VL_ICMS'
      
        ',sum(DECODE(SUBSTR(P2SIT,2,1),'#39'4'#39',((P2QTD*P2PRECO)-P2TOTDES),0))' +
        ' as VL_ISEN'
      
        ',sum( DECODE((P2ICMSN+P2ICMSNR),0,((P2QTD*P2PRECO)-P2TOTDES))) A' +
        'S VL_NT'
      ''
      ',sum(P2ICMSR) as VL_ICMS_ST'
      'from CADNS,CADP02,CADPRO'
      'where P2LOTSEQ=NSLOTSEQ_CP'
      'AND P2CHAVE=NSCHAVEP'
      'AND P2ORDEM=NSORDEMP'
      'AND P2CODEMP=NSCODEMP'
      'AND PDCODPRO=P2CODPRO'
      'GROUP BY P2ALIQ,P2CODPRO,PDUND')
    Left = 680
    Top = 3
    object Qr_C495_ResMesItemBAALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qr_C495_ResMesItemBACOD_ITEM: TFloatField
      FieldName = 'COD_ITEM'
    end
    object Qr_C495_ResMesItemBAQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_C495_ResMesItemBAQTD_CANC: TFloatField
      FieldName = 'QTD_CANC'
    end
    object Qr_C495_ResMesItemBAUNID: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Qr_C495_ResMesItemBAVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
    end
    object Qr_C495_ResMesItemBAVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_C495_ResMesItemBAVL_CANC: TFloatField
      FieldName = 'VL_CANC'
    end
    object Qr_C495_ResMesItemBAVL_ACMO: TFloatField
      FieldName = 'VL_ACMO'
    end
    object Qr_C495_ResMesItemBAVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C495_ResMesItemBAVL_ISEN: TFloatField
      FieldName = 'VL_ISEN'
    end
    object Qr_C495_ResMesItemBAVL_NT: TFloatField
      FieldName = 'VL_NT'
    end
    object Qr_C495_ResMesItemBAVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
    end
    object Qr_C495_ResMesItemBAVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
  end
  object Qr_D100_ConhFrete: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select 0 IND_OPER '
      '                           ,1 AS IND_EMIT '
      '                     ,'#39'F'#39'||NECODFOR AS COD_PART '
      '                           ,NeMODELO AS COD_MOD '
      ''
      
        '                           ,DECODE(NESTATUS,9,'#39'02'#39','#39'00'#39') AS COD_' +
        'SIT '
      '                           ,NESERIE AS SER '
      '                           ,NESUBSER AS SUB'
      '                           ,NENUMERO AS NUM_DOC'
      '                           ,NENFE_CHAVE  AS CHV_NFE '
      '                           ,NEDTEMIS AS DT_DOC '
      '                           ,NEDTENT AS DT_A_P'
      '                           ,0 AS TP_CT_E'
      '                           ,NENFE_CHAVE AS  CHV_CTE_RED'
      '                           ,NETOTNOT AS VL_DOC '
      '                           , 0 as VL_DESC '
      
        '                           ,DECODE(NEFRETE,0,9,NEFRETEPC) AS IND' +
        '_FRT '
      '                           ,NEFRETE AS VL_SERV '
      '                           ,NEBASEN AS VL_BC_ICMS '
      '                           ,NEICMSN AS VL_ICMS '
      '                           ,0 AS VL_NT '
      '                           ,'#39'     '#39' AS COD_INF '
      '                           ,'#39'     '#39' AS COD_CTA '
      '                           ,NECODEMP AS CODEMP '
      '                           ,NELOTSEQ_CP AS LOTSEQ '
      '                           ,NECHAVEP AS CHAVE '
      '                           ,0 AS ORDEM'
      '                           ,'#39'000'#39' AS D190_CST_ICMS'
      '                           ,NECFO AS D190_CFOP'
      '                           ,NEALIQ AS D190_ALIQ_ICMS'
      '                           ,NETOTNOT AS D190_VL_OPR'
      '                           ,NEBASEN AS D190_VL_BC_ICMS'
      '                           ,NEICMSN AS D190_VL_ICMS'
      '                           ,NEOUTNINC AS D190_VL_RED_BC'
      '                           ,'#39'   '#39' AS D190_COD_OBS'
      '                           FROM CADNE where NESTATUS<>-9'
      '')
    Left = 424
    Top = 304
    object Qr_D100_ConhFreteIND_OPER: TFloatField
      FieldName = 'IND_OPER'
    end
    object Qr_D100_ConhFreteIND_EMIT: TFloatField
      FieldName = 'IND_EMIT'
    end
    object Qr_D100_ConhFreteCOD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 41
    end
    object Qr_D100_ConhFreteCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 3
    end
    object Qr_D100_ConhFreteCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 2
    end
    object Qr_D100_ConhFreteSER: TStringField
      FieldName = 'SER'
      Size = 6
    end
    object Qr_D100_ConhFreteNUM_DOC: TFloatField
      FieldName = 'NUM_DOC'
    end
    object Qr_D100_ConhFreteCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 44
    end
    object Qr_D100_ConhFreteDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object Qr_D100_ConhFreteDT_A_P: TDateTimeField
      FieldName = 'DT_A_P'
    end
    object Qr_D100_ConhFreteTP_CT_E: TFloatField
      FieldName = 'TP_CT_E'
    end
    object Qr_D100_ConhFreteCHV_CTE_RED: TStringField
      FieldName = 'CHV_CTE_RED'
      Size = 44
    end
    object Qr_D100_ConhFreteVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Qr_D100_ConhFreteVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_D100_ConhFreteIND_FRT: TFloatField
      FieldName = 'IND_FRT'
    end
    object Qr_D100_ConhFreteVL_SERV: TFloatField
      FieldName = 'VL_SERV'
    end
    object Qr_D100_ConhFreteVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_D100_ConhFreteVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_D100_ConhFreteVL_NT: TFloatField
      FieldName = 'VL_NT'
    end
    object Qr_D100_ConhFreteCOD_INF: TStringField
      FieldName = 'COD_INF'
      FixedChar = True
      Size = 5
    end
    object Qr_D100_ConhFreteCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      FixedChar = True
      Size = 5
    end
    object Qr_D100_ConhFreteCODEMP: TFloatField
      FieldName = 'CODEMP'
    end
    object Qr_D100_ConhFreteLOTSEQ: TFloatField
      FieldName = 'LOTSEQ'
    end
    object Qr_D100_ConhFreteCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object Qr_D100_ConhFreteORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object Qr_D100_ConhFreteSUB: TStringField
      FieldName = 'SUB'
      Size = 6
    end
    object Qr_D100_ConhFreteD190_CST_ICMS: TStringField
      FieldName = 'D190_CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object Qr_D100_ConhFreteD190_CFOP: TFloatField
      FieldName = 'D190_CFOP'
    end
    object Qr_D100_ConhFreteD190_ALIQ_ICMS: TFloatField
      FieldName = 'D190_ALIQ_ICMS'
    end
    object Qr_D100_ConhFreteD190_VL_OPR: TFloatField
      FieldName = 'D190_VL_OPR'
    end
    object Qr_D100_ConhFreteD190_VL_BC_ICMS: TFloatField
      FieldName = 'D190_VL_BC_ICMS'
    end
    object Qr_D100_ConhFreteD190_VL_ICMS: TFloatField
      FieldName = 'D190_VL_ICMS'
    end
    object Qr_D100_ConhFreteD190_VL_RED_BC: TFloatField
      FieldName = 'D190_VL_RED_BC'
    end
    object Qr_D100_ConhFreteD190_COD_OBS: TStringField
      FieldName = 'D190_COD_OBS'
      FixedChar = True
      Size = 3
    end
  end
  object Qr_D500_NF_Comun: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select 0 IND_OPER '
      '                           ,1 AS IND_EMIT '
      '                     ,'#39'F'#39'||NECODFOR AS COD_PART '
      '                           ,NeMODELO AS COD_MOD '
      ''
      
        '                           ,DECODE(NESTATUS,9,'#39'02'#39','#39'00'#39') AS COD_' +
        'SIT '
      '                           ,NESERIE AS SER '
      '                           ,NESUBSER AS SUB'
      '                           ,NENUMERO AS NUM_DOC '
      '                           ,NEDTEMIS AS DT_DOC '
      '                           ,NEDTENT AS DT_A_P'
      '                           ,NETOTNOT AS VL_DOC '
      '                           , 0 as VL_DESC '
      '                           ,NEFRETE AS VL_SERV '
      '                           ,NEOUTNINC AS VL_SERV_NT'
      '                           ,0 AS VL_TERC '
      '                           ,0 AS VL_DA'
      '                           ,NEBASEN AS VL_BC_ICMS '
      '                           ,NEICMSN AS VL_ICMS '
      '                           ,'#39'     '#39' AS COD_INF '
      '                           ,0 AS VL_PIS'
      '                           ,0 AS VL_COFINS'
      '                           ,'#39'     '#39' AS COD_CTA '
      '                           ,1 AS TP_ASSINANTE'
      ''
      '                           ,'#39'000'#39' AS D590_CST_ICMS'
      '                           ,NECFO AS D590_CFOP'
      '                           ,NEALIQ AS D590_ALIQ_ICMS'
      '                           ,NETOTNOT AS D590_VL_OPR'
      '                           ,NEBASEN AS D590_VL_BC_ICMS'
      '                           ,NEICMSN AS D590_VL_ICMS'
      '                           ,NEBASER AS D590_VL_BC_ICMS_ST'
      '                           ,NEICMSR AS D590_VL_ICMS_ST'
      '                           ,NEOUTNINC AS D590_VL_RED_BC'
      '                           ,'#39'   '#39' AS D590_COD_OBS'
      ''
      '                           ,NECODEMP AS CODEMP'
      '                           ,NELOTSEQ_CP AS LOTSEQ'
      '                           ,NECHAVEP AS CHAVE'
      '                           ,0 AS ORDEM'
      '                           FROM CADNE where NESTATUS<>-9')
    Left = 472
    Top = 304
    object Qr_D500_NF_ComunIND_OPER: TFloatField
      FieldName = 'IND_OPER'
    end
    object Qr_D500_NF_ComunIND_EMIT: TFloatField
      FieldName = 'IND_EMIT'
    end
    object Qr_D500_NF_ComunCOD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 41
    end
    object Qr_D500_NF_ComunCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 3
    end
    object Qr_D500_NF_ComunCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 2
    end
    object Qr_D500_NF_ComunSER: TStringField
      FieldName = 'SER'
      Size = 6
    end
    object Qr_D500_NF_ComunSUB: TStringField
      FieldName = 'SUB'
      Size = 6
    end
    object Qr_D500_NF_ComunNUM_DOC: TFloatField
      FieldName = 'NUM_DOC'
    end
    object Qr_D500_NF_ComunDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object Qr_D500_NF_ComunDT_A_P: TDateTimeField
      FieldName = 'DT_A_P'
    end
    object Qr_D500_NF_ComunVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Qr_D500_NF_ComunVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_D500_NF_ComunVL_SERV: TFloatField
      FieldName = 'VL_SERV'
    end
    object Qr_D500_NF_ComunVL_SERV_NT: TFloatField
      FieldName = 'VL_SERV_NT'
    end
    object Qr_D500_NF_ComunVL_TERC: TFloatField
      FieldName = 'VL_TERC'
    end
    object Qr_D500_NF_ComunVL_DA: TFloatField
      FieldName = 'VL_DA'
    end
    object Qr_D500_NF_ComunVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_D500_NF_ComunVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_D500_NF_ComunCOD_INF: TStringField
      FieldName = 'COD_INF'
      FixedChar = True
      Size = 5
    end
    object Qr_D500_NF_ComunVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_D500_NF_ComunVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qr_D500_NF_ComunCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      FixedChar = True
      Size = 5
    end
    object Qr_D500_NF_ComunTP_ASSINANTE: TFloatField
      FieldName = 'TP_ASSINANTE'
    end
    object Qr_D500_NF_ComunCODEMP: TFloatField
      FieldName = 'CODEMP'
    end
    object Qr_D500_NF_ComunLOTSEQ: TFloatField
      FieldName = 'LOTSEQ'
    end
    object Qr_D500_NF_ComunCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object Qr_D500_NF_ComunORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object Qr_D500_NF_ComunD590_CST_ICMS: TStringField
      FieldName = 'D590_CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object Qr_D500_NF_ComunD590_CFOP: TFloatField
      FieldName = 'D590_CFOP'
    end
    object Qr_D500_NF_ComunD590_ALIQ_ICMS: TFloatField
      FieldName = 'D590_ALIQ_ICMS'
    end
    object Qr_D500_NF_ComunD590_VL_OPR: TFloatField
      FieldName = 'D590_VL_OPR'
    end
    object Qr_D500_NF_ComunD590_VL_BC_ICMS: TFloatField
      FieldName = 'D590_VL_BC_ICMS'
    end
    object Qr_D500_NF_ComunD590_VL_ICMS: TFloatField
      FieldName = 'D590_VL_ICMS'
    end
    object Qr_D500_NF_ComunD590_VL_BC_ICMS_ST: TFloatField
      FieldName = 'D590_VL_BC_ICMS_ST'
    end
    object Qr_D500_NF_ComunD590_VL_ICMS_ST: TFloatField
      FieldName = 'D590_VL_ICMS_ST'
    end
    object Qr_D500_NF_ComunD590_VL_RED_BC: TFloatField
      FieldName = 'D590_VL_RED_BC'
    end
    object Qr_D500_NF_ComunD590_COD_OBS: TStringField
      FieldName = 'D590_COD_OBS'
      FixedChar = True
      Size = 3
    end
  end
  object Qr_C500_Energia: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select 0 IND_OPER'
      '                           ,1 AS IND_EMIT'
      '                     ,'#39'F'#39'||NECODFOR AS COD_PART'
      '                           ,NeMODELO AS COD_MOD'
      ''
      
        '                           ,DECODE(NESTATUS,9,'#39'02'#39','#39'00'#39') AS COD_' +
        'SIT'
      '                           ,NESERIE AS SER'
      '                           ,NESUBSER AS SUB'
      '                           ,NEENERGIA_COD_CONS AS COD_CONS'
      '                           ,NENUMERO AS NUM_DOC'
      '                           ,NEDTEMIS AS DT_DOC'
      '                           ,NEDTENT AS DT_E_S'
      '                           ,NETOTNOT AS VL_DOC'
      '                           , 0 as VL_DESC'
      '                           ,NETOTNOT AS VL_FORN'
      '                           ,NEOUTNINC AS VL_SERV_NT'
      '                           ,0 AS VL_TERC'
      '                           ,NEOUTDESP AS VL_DA'
      '                           ,NEBASEN AS VL_BC_ICMS'
      '                           ,NEICMSN AS VL_ICMS'
      '                           ,NEBASER AS VL_BC_ICMS_ST'
      '                           ,NEICMSR AS VL_ICMS_ST'
      '                           ,'#39'     '#39' AS COD_INF'
      '                           ,NEVL_PIS AS VL_PIS'
      '                           ,NEVL_COFINS AS VL_COFINS'
      '                           ,'#39'     '#39' AS COD_CTA'
      '                           ,NEENERGIA_TP_LIGACAO AS TP_LIGACAO'
      
        '                           ,NEENERGIA_GRUPO_TENSAO AS COD_GRUPO_' +
        'TENSAO'
      ''
      '                           ,'#39'000'#39' AS C590_CST_ICMS'
      '                           ,NECFO AS C590_CFOP'
      '                           ,NEALIQ AS C590_ALIQ_ICMS'
      '                           ,NETOTNOT AS C590_VL_OPR'
      '                           ,NEBASEN AS C590_VL_BC_ICMS'
      '                           ,NEICMSN AS C590_VL_ICMS'
      '                           ,NEBASER AS C590_VL_BC_ICMS_ST'
      '                           ,NEICMSR AS C590_VL_ICMS_ST'
      '                           ,NEOUTNINC AS C590_VL_RED_BC'
      '                           ,'#39'   '#39' AS C590_COD_OBS'
      ''
      '                           ,NECODEMP AS CODEMP'
      '                           ,NELOTSEQ_CP AS LOTSEQ'
      '                           ,NECHAVEP AS CHAVE'
      '                           ,0 AS ORDEM'
      '                           FROM CADNE where NESTATUS<>-9'
      '')
    Left = 616
    Top = 43
    object Qr_C500_EnergiaIND_OPER: TFloatField
      FieldName = 'IND_OPER'
    end
    object Qr_C500_EnergiaIND_EMIT: TFloatField
      FieldName = 'IND_EMIT'
    end
    object Qr_C500_EnergiaCOD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 41
    end
    object Qr_C500_EnergiaCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 3
    end
    object Qr_C500_EnergiaCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Size = 2
    end
    object Qr_C500_EnergiaSER: TStringField
      FieldName = 'SER'
      Size = 6
    end
    object Qr_C500_EnergiaSUB: TStringField
      FieldName = 'SUB'
      Size = 6
    end
    object Qr_C500_EnergiaCOD_CONS: TFloatField
      FieldName = 'COD_CONS'
    end
    object Qr_C500_EnergiaNUM_DOC: TFloatField
      FieldName = 'NUM_DOC'
    end
    object Qr_C500_EnergiaDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object Qr_C500_EnergiaDT_E_S: TDateTimeField
      FieldName = 'DT_E_S'
    end
    object Qr_C500_EnergiaVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Qr_C500_EnergiaVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_C500_EnergiaVL_FORN: TFloatField
      FieldName = 'VL_FORN'
    end
    object Qr_C500_EnergiaVL_SERV_NT: TFloatField
      FieldName = 'VL_SERV_NT'
    end
    object Qr_C500_EnergiaVL_TERC: TFloatField
      FieldName = 'VL_TERC'
    end
    object Qr_C500_EnergiaVL_DA: TFloatField
      FieldName = 'VL_DA'
    end
    object Qr_C500_EnergiaVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C500_EnergiaVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C500_EnergiaVL_BC_ICMS_ST: TFloatField
      FieldName = 'VL_BC_ICMS_ST'
    end
    object Qr_C500_EnergiaVL_ICMS_ST: TFloatField
      FieldName = 'VL_ICMS_ST'
    end
    object Qr_C500_EnergiaCOD_INF: TStringField
      FieldName = 'COD_INF'
      FixedChar = True
      Size = 5
    end
    object Qr_C500_EnergiaVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C500_EnergiaVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qr_C500_EnergiaCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      FixedChar = True
      Size = 5
    end
    object Qr_C500_EnergiaTP_LIGACAO: TFloatField
      FieldName = 'TP_LIGACAO'
    end
    object Qr_C500_EnergiaCOD_GRUPO_TENSAO: TFloatField
      FieldName = 'COD_GRUPO_TENSAO'
    end
    object Qr_C500_EnergiaC590_CST_ICMS: TStringField
      FieldName = 'C590_CST_ICMS'
      FixedChar = True
      Size = 3
    end
    object Qr_C500_EnergiaC590_CFOP: TFloatField
      FieldName = 'C590_CFOP'
    end
    object Qr_C500_EnergiaC590_ALIQ_ICMS: TFloatField
      FieldName = 'C590_ALIQ_ICMS'
    end
    object Qr_C500_EnergiaC590_VL_OPR: TFloatField
      FieldName = 'C590_VL_OPR'
    end
    object Qr_C500_EnergiaC590_VL_BC_ICMS: TFloatField
      FieldName = 'C590_VL_BC_ICMS'
    end
    object Qr_C500_EnergiaC590_VL_ICMS: TFloatField
      FieldName = 'C590_VL_ICMS'
    end
    object Qr_C500_EnergiaC590_VL_BC_ICMS_ST: TFloatField
      FieldName = 'C590_VL_BC_ICMS_ST'
    end
    object Qr_C500_EnergiaC590_VL_ICMS_ST: TFloatField
      FieldName = 'C590_VL_ICMS_ST'
    end
    object Qr_C500_EnergiaC590_VL_RED_BC: TFloatField
      FieldName = 'C590_VL_RED_BC'
    end
    object Qr_C500_EnergiaC590_COD_OBS: TStringField
      FieldName = 'C590_COD_OBS'
      FixedChar = True
      Size = 3
    end
    object Qr_C500_EnergiaCODEMP: TFloatField
      FieldName = 'CODEMP'
    end
    object Qr_C500_EnergiaLOTSEQ: TFloatField
      FieldName = 'LOTSEQ'
    end
    object Qr_C500_EnergiaCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object Qr_C500_EnergiaORDEM: TFloatField
      FieldName = 'ORDEM'
    end
  end
  object Qr_E200_Subst_Trib_retirado: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select sum(NEBASER) AS BASER_SAIDA, sum(NEICMSR) AS ICMSR_SAIDA'
      
        '       ,sum(NEBASER) AS BASER_ENTRADA, sum(NEICMSR) AS ICMSR_ENT' +
        'RADA,FUF AS UF'
      'from CADNE,CADFOR'
      'where FCODFOR=NECODFOR'
      'group by FUF')
    Left = 424
    Top = 336
    object Qr_E200_Subst_Trib_retiradoBASER_SAIDA: TFloatField
      FieldName = 'BASER_SAIDA'
      Origin = 'SG_ASSOC.CADNE.NEBASER'
    end
    object Qr_E200_Subst_Trib_retiradoICMSR_SAIDA: TFloatField
      FieldName = 'ICMSR_SAIDA'
      Origin = 'SG_ASSOC.CADNE.NEICMSR'
    end
    object Qr_E200_Subst_Trib_retiradoBASER_ENTRADA: TFloatField
      FieldName = 'BASER_ENTRADA'
      Origin = 'SG_ASSOC.CADNE.NEBASER'
    end
    object Qr_E200_Subst_Trib_retiradoICMSR_ENTRADA: TFloatField
      FieldName = 'ICMSR_ENTRADA'
      Origin = 'SG_ASSOC.CADNE.NEICMSR'
    end
    object Qr_E200_Subst_Trib_retiradoUF: TStringField
      FieldName = 'UF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
  end
  object Qr_E210_ApuracaoST_retirado: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select NEBASER AS BASER'
      ',DECODE(NEICMSR,0,0,1) AS IND_MOV_ST'
      ', NEICMSR AS VL_SLD_CRED_ANT_ST'
      ',0 AS VL_DEVOL_ST'
      ',0 AS VL_RESSARC_ST'
      ',0 AS VL_OUT_CRED_ST'
      ',0 AS VL_AJ_CREDITOS_ST'
      ',0 AS VL_RETENCAO_ST'
      ',0 AS VL_OUT_DEB_ST'
      ',0 AS VL_AJ_DEBITOS_ST'
      ',0 AS VL_SLD_DEV_ANT_ST'
      ',0 AS VL_DEDUCOES_ST'
      ',0 AS VL_ICMS_RECOL_ST'
      ', NEICMSR AS VL_SLD_CRED_ST_TRANSPORTAR'
      ',0 AS DEB_ESP_ST'
      'from CADNE'
      '')
    Left = 472
    Top = 336
    object Qr_E210_ApuracaoST_retiradoBASER: TFloatField
      FieldName = 'BASER'
    end
    object Qr_E210_ApuracaoST_retiradoIND_MOV_ST: TFloatField
      FieldName = 'IND_MOV_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_SLD_CRED_ANT_ST: TFloatField
      FieldName = 'VL_SLD_CRED_ANT_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_DEVOL_ST: TFloatField
      FieldName = 'VL_DEVOL_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_RESSARC_ST: TFloatField
      FieldName = 'VL_RESSARC_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_OUT_CRED_ST: TFloatField
      FieldName = 'VL_OUT_CRED_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_AJ_CREDITOS_ST: TFloatField
      FieldName = 'VL_AJ_CREDITOS_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_RETENCAO_ST: TFloatField
      FieldName = 'VL_RETENCAO_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_OUT_DEB_ST: TFloatField
      FieldName = 'VL_OUT_DEB_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_AJ_DEBITOS_ST: TFloatField
      FieldName = 'VL_AJ_DEBITOS_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_SLD_DEV_ANT_ST: TFloatField
      FieldName = 'VL_SLD_DEV_ANT_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_DEDUCOES_ST: TFloatField
      FieldName = 'VL_DEDUCOES_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_ICMS_RECOL_ST: TFloatField
      FieldName = 'VL_ICMS_RECOL_ST'
    end
    object Qr_E210_ApuracaoST_retiradoVL_SLD_CRED_ST_TRANSPORTAR: TFloatField
      FieldName = 'VL_SLD_CRED_ST_TRANSPORTAR'
    end
    object Qr_E210_ApuracaoST_retiradoDEB_ESP_ST: TFloatField
      FieldName = 'DEB_ESP_ST'
    end
  end
  object Qr_E510_ApuracaoIPI: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 480
    Top = 368
    object FloatField1: TFloatField
      FieldName = 'CODPRO'
    end
    object StringField1: TStringField
      FieldName = 'NOMPRO'
      Size = 53
    end
    object FloatField2: TFloatField
      FieldName = 'CODBAR'
    end
    object StringField2: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object FloatField3: TFloatField
      FieldName = 'NIVEL'
    end
    object StringField3: TStringField
      FieldName = 'COD_NCM'
    end
    object StringField4: TStringField
      FieldName = 'PDTABICM'
      Size = 1
    end
    object FloatField4: TFloatField
      FieldName = 'ALIQ_ICM'
    end
  end
  object Qr_E500_ApuracaoIPI: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select sum(NEBASER) AS BASER, sum(NEICMSR) AS ICMSR,FUF AS UF'
      'from CADNE,CADFOR'
      'where FCODFOR=NECODFOR'
      'group by FUF')
    Left = 424
    Top = 368
    object FloatField5: TFloatField
      FieldName = 'BASER'
      Origin = 'SG_ASSOC.CADNE.NEBASER'
    end
    object FloatField6: TFloatField
      FieldName = 'ICMSR'
      Origin = 'SG_ASSOC.CADNE.NEICMSR'
    end
    object StringField5: TStringField
      FieldName = 'UF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
  end
  object Qr_C420_Desconto: TQuery
    OnCalcFields = Qr_C420_DescontoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CM2ALIQ AS COD_TOT_PAR'
      '      ,sum(CM2VALOR) AS VLR_ACUM_TOT'
      '      ,COUNT(*) AS NR_TOT'
      '      ,'#39' '#39' as DESCR_NR_TOT'
      '      from CADMI02'
      '      GROUP BY CM2ALIQ')
    Left = 312
    Top = 136
    object Qr_C420_DescontoCOD_TOT_PAR: TFloatField
      FieldName = 'COD_TOT_PAR'
    end
    object Qr_C420_DescontoVLR_ACUM_TOT: TFloatField
      FieldName = 'VLR_ACUM_TOT'
    end
    object Qr_C420_Descontodescr_nr_tot: TStringField
      FieldKind = fkCalculated
      FieldName = 'descr_nr_tot'
      Calculated = True
    end
    object Qr_C420_Descontonr_tot: TFloatField
      FieldKind = fkCalculated
      FieldName = 'nr_tot'
      Calculated = True
    end
  end
  object mem_totc420xc490: TRxMemoryData
    FieldDefs = <
      item
        Name = 'DT_DOC'
        DataType = ftDateTime
      end
      item
        Name = 'SITALIQ'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'C420_VLR_ACUM_TOT'
        DataType = ftFloat
      end
      item
        Name = 'C490_VLR_OPER'
        DataType = ftFloat
      end
      item
        Name = 'C490_BC_ICMS'
        DataType = ftFloat
      end
      item
        Name = 'C490_ICMS'
        DataType = ftFloat
      end>
    Left = 288
    Top = 160
    object mem_totc420xc490DT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object mem_totc420xc490SITALIQ: TStringField
      FieldName = 'SITALIQ'
      Size = 7
    end
    object mem_totc420xc490C420_VLR_ACUM_TOT: TFloatField
      FieldName = 'C420_VLR_ACUM_TOT'
    end
    object mem_totc420xc490C490_VLR_OPER: TFloatField
      FieldName = 'C490_VLR_OPER'
    end
    object mem_totc420xc490C490_BC_ICMS: TFloatField
      FieldName = 'C490_BC_ICMS'
    end
    object mem_totc420xc490C490_ICMS: TFloatField
      FieldName = 'C490_ICMS'
    end
  end
  object Src_totc420xc490: TDataSource
    DataSet = mem_totc420xc490
    Left = 318
    Top = 169
  end
  object Qr_H010_Inventario: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  IGCODPRO AS COD_ITEM,PDUND AS UNID,'
      'IGQTD AS QTD, IGPRECO AS VL_UNIT'
      ',IGQTD*IGPRECO AS VL_ITEM'
      ',0 AS IND_PROP'
      ','#39'  '#39' AS COD_PART'
      ','#39' '#39' AS TXT_COMPL'
      ','#39'000'#39' AS COD_CTA'
      '         from INVGRA,CADPRO where IGCODEMP is null'
      'AND PDCODPRO=IGCODPRO')
    Left = 576
    Top = 256
    object Qr_H010_InventarioCOD_ITEM: TFloatField
      FieldName = 'COD_ITEM'
    end
    object Qr_H010_InventarioUNID: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Qr_H010_InventarioQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_H010_InventarioVL_UNIT: TFloatField
      FieldName = 'VL_UNIT'
    end
    object Qr_H010_InventarioVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
    end
    object Qr_H010_InventarioIND_PROP: TFloatField
      FieldName = 'IND_PROP'
    end
    object Qr_H010_InventarioCOD_PART: TStringField
      FieldName = 'COD_PART'
      FixedChar = True
      Size = 2
    end
    object Qr_H010_InventarioTXT_COMPL: TStringField
      FieldName = 'TXT_COMPL'
      FixedChar = True
      Size = 1
    end
    object Qr_H010_InventarioCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      FixedChar = True
      Size = 3
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 544
    Top = 445
  end
  object Qr_ExpNP_DUP: TQuery
    OnCalcFields = Qr_C420_DescontoCalcFields
    DatabaseName = 'SG_ASSOC'
    Left = 504
    Top = 184
    object FloatField7: TFloatField
      FieldName = 'COD_TOT_PAR'
    end
    object FloatField8: TFloatField
      FieldName = 'VLR_ACUM_TOT'
    end
    object StringField6: TStringField
      FieldKind = fkCalculated
      FieldName = 'descr_nr_tot'
      Calculated = True
    end
    object FloatField9: TFloatField
      FieldKind = fkCalculated
      FieldName = 'nr_tot'
      Calculated = True
    end
  end
  object Tb_AjusE115: TRxMemoryData
    FieldDefs = <
      item
        Name = 'TABELA'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALORAJUST'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGOAJUST'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'INDICE'
        DataType = ftInteger
      end
      item
        Name = 'COMPL_DESCR'
        DataType = ftString
        Size = 200
      end>
    Left = 464
    Top = 65531
    object Tb_AjusE115TABELA: TStringField
      FieldName = 'TABELA'
      Size = 4
    end
    object Tb_AjusE115DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Tb_AjusE115VALORAJUST: TFloatField
      FieldName = 'VALORAJUST'
    end
    object Tb_AjusE115TIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object Tb_AjusE115CODIGOAJUST: TStringField
      FieldName = 'CODIGOAJUST'
      Size = 8
    end
    object Tb_AjusE115INDICE: TIntegerField
      FieldName = 'INDICE'
    end
    object Tb_AjusE115COMPL_DESCR: TStringField
      FieldName = 'COMPL_DESCR'
      Size = 200
    end
  end
  object src_ajusE115: TDataSource
    DataSet = Tb_AjusE115
    Left = 488
    Top = 65531
  end
  object Tb_GuiaST: TRxMemoryData
    FieldDefs = <
      item
        Name = 'COD_OR'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'VL_OR'
        DataType = ftFloat
      end
      item
        Name = 'DT_VCTO'
        DataType = ftDateTime
      end
      item
        Name = 'COD_REC'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NUM_PROC'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'IND_PROC'
        DataType = ftInteger
      end
      item
        Name = 'PROC'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'TXT_COMP'
        DataType = ftString
        Size = 300
      end
      item
        Name = 'MES_REF'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end>
    Left = 456
    Top = 19
    object Tb_GuiaSTCOD_OR: TStringField
      DisplayLabel = 'C'#243'd.Obriga'#231#227'o'
      FieldName = 'COD_OR'
      Size = 4
    end
    object Tb_GuiaSTVL_OR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VL_OR'
    end
    object Tb_GuiaSTDT_VCTO: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'DT_VCTO'
    end
    object Tb_GuiaSTCOD_REC: TStringField
      DisplayLabel = 'C'#243'd. da Receita'
      FieldName = 'COD_REC'
      Size = 100
    end
    object Tb_GuiaSTIND_PROC: TIntegerField
      FieldName = 'IND_PROC'
    end
    object Tb_GuiaSTPROC: TStringField
      FieldName = 'PROC'
      Size = 300
    end
    object Tb_GuiaSTTXT_COMP: TStringField
      FieldName = 'TXT_COMP'
      Size = 300
    end
    object Tb_GuiaSTMES_REF: TStringField
      FieldName = 'MES_REF'
      Size = 6
    end
    object Tb_GuiaSTNUM_PROC: TStringField
      FieldName = 'NUM_PROC'
      Size = 15
    end
    object Tb_GuiaSTUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object Src_GuiaST: TDataSource
    DataSet = Tb_GuiaST
    Left = 480
    Top = 19
  end
  object Qr_C300_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select NSMODELO AS COD_MOD'
      '      ,NSSERIE AS SER'
      '      ,NSSUBSER AS SUBSER'
      '      ,NSNUMERO AS NUM_DOC_INI'
      '      ,NSNUMERO AS NUM_DOC_FIN'
      '      ,NSDTEMIS AS DT_DOC'
      '      ,NSTOTNOTA AS VL_DOC'
      '      ,0 AS VL_PIS'
      '      ,0 AS VL_COFINS'
      '      ,'#39' '#39' AS CODCTA'
      '      FROM CADNS'
      '')
    Left = 296
    Top = 224
    object Qr_C300_NotasCOD_MOD: TStringField
      FieldName = 'COD_MOD'
      Size = 3
    end
    object Qr_C300_NotasSER: TStringField
      FieldName = 'SER'
      Size = 6
    end
    object Qr_C300_NotasSUBSER: TStringField
      FieldName = 'SUBSER'
      Size = 3
    end
    object Qr_C300_NotasNUM_DOC_INI: TFloatField
      FieldName = 'NUM_DOC_INI'
    end
    object Qr_C300_NotasNUM_DOC_FIN: TFloatField
      FieldName = 'NUM_DOC_FIN'
    end
    object Qr_C300_NotasVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Qr_C300_NotasVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C300_NotasVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qr_C300_NotasCODCTA: TStringField
      FieldName = 'CODCTA'
      FixedChar = True
      Size = 1
    end
    object Qr_C300_NotasDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
  end
  object Qr_C320_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '
      ' P2SIT AS CST_ICMS'
      ',P2CFO AS CFOP'
      ',P2ALIQ AS ALIQ_ICMS'
      ',P2TOTLIQ AS VL_OPER'
      ',P2BASEN+P2BCINR AS VL_BC_ICMS'
      ',P2ICMSN+P2ICMSNR AS VL_ICMS'
      
        ',CASE WHEN P2BASEN+NVL(P2BCINR,0) >0 THEN P2TOTLIQ-P2BASEN+NVL(P' +
        '2BCINR,0) '
      'ELSE 0 END AS VL_RED_BC'
      ','#39' '#39' AS COD_OBS'
      'FROM CADP02,CADPRO'
      'WHERE PDCODPRO=P2CODPRO')
    Left = 352
    Top = 224
    object Qr_C320_NotasCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object Qr_C320_NotasCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object Qr_C320_NotasALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qr_C320_NotasVL_OPER: TFloatField
      FieldName = 'VL_OPER'
    end
    object Qr_C320_NotasVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C320_NotasVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C320_NotasVL_RED_BC: TFloatField
      FieldName = 'VL_RED_BC'
    end
    object Qr_C320_NotasCOD_OBS: TStringField
      FieldName = 'COD_OBS'
      FixedChar = True
      Size = 1
    end
  end
  object Qr_C321_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2CODPRO as COD_ITEM '
      '                         ,sum(P2QTD) as QTD '
      '                         ,max(PDUND) AS UNID '
      '                         ,sum(P2TOTLIQ) as VL_ITEM '
      '                         ,sum(P2TOTDES) as VL_DESC '
      
        '                         ,sum(P2BASEN+NVL(P2BCINR,0)) as VL_BC_I' +
        'CMS '
      
        '                         ,sum(P2ICMSN+NVL(P2ICMSNR,0)) AS VL_ICM' +
        'S '
      '                         ,sum(P2VALPIS) AS VL_PIS '
      '                         ,sum(P2COFINS) AS VL_COFINS '
      '                         FROM CADNS,CADP02,CADPRO'
      '                           where '
      '                           P2CODEMP=NSCODEMP'
      '                           AND P2CHAVE=NSCHAVEP'
      '                           AND P2ORDEM=NSORDEMP'
      '                           AND PDCODPRO=P2CODPRO'
      '                           AND'
      '                          NSCODEMP=01'
      '                          and NSSTATUS<>9'
      '                          and NSDTEMIS='#39'21/06/2012'#39
      'GROUP BY P2CODPRO')
    Left = 384
    Top = 224
    object Qr_C321_NotasCOD_ITEM: TFloatField
      FieldName = 'COD_ITEM'
    end
    object Qr_C321_NotasQTD: TFloatField
      FieldName = 'QTD'
    end
    object Qr_C321_NotasUNID: TStringField
      FieldName = 'UNID'
      Size = 3
    end
    object Qr_C321_NotasVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
    end
    object Qr_C321_NotasVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_C321_NotasVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C321_NotasVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C321_NotasVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C321_NotasVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
  end
  object Qr_C350_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select NSSERIE AS SER'
      '      ,NSSUBSER AS SUB_SER'
      '      ,NSNUMERO AS NUM_DOC'
      '      ,NSDTEMIS AS DT_DOC'
      '      ,NSTOTNOTA AS VL_DOC'
      '      ,CASE WHEN CCNPJ=0 THEN CCPF ELSE CCNPJ END AS  CPF_CNPJ '
      '      ,sum(P2QTD*P2PRECO) AS VL_MERC'
      '      ,sum(P2TOTDES) AS VL_DESC'
      '      ,0 as VL_PIS'
      '      ,0 AS VL_COFINS'
      '      ,'#39' '#39' AS COD_CTA'
      '      ,NSCODEMP AS CODEMP'
      '      ,NSCHAVEP AS CHAVE'
      '      ,NSORDEMP AS ORDEM'
      '      ,NSLOTSEQ_CP AS LOTSEQ'
      '      from  CADNS,CADP02,CADPRO,CADCLI'
      '                           where'
      '                           P2CODEMP=NSCODEMP'
      '                           AND P2CHAVE=NSCHAVEP'
      '                           AND P2ORDEM=NSORDEMP'
      '                           AND PDCODPRO=P2CODPRO'
      '                           AND'
      '                          NSCODEMP=01'
      '                          and NSSTATUS<>9'
      '                          and NSDTEMIS='#39'21/06/2012'#39
      '                          and CCODCLI=NSCODCLI'
      'GROUP BY NSSERIE'
      '      ,NSSUBSER'
      '      ,NSNUMERO'
      '      ,NSDTEMIS'
      '      ,NSTOTNOTA'
      '      ,CASE WHEN CCNPJ=0 THEN CCPF ELSE CCNPJ END'
      '      ,NSCODEMP'
      '      ,NSCHAVEP'
      '      ,NSORDEMP'
      '      ,NSLOTSEQ_CP'
      '')
    Left = 408
    Top = 224
    object Qr_C350_NotasSER: TStringField
      FieldName = 'SER'
      Size = 6
    end
    object Qr_C350_NotasSUB_SER: TStringField
      FieldName = 'SUB_SER'
      Size = 3
    end
    object Qr_C350_NotasNUM_DOC: TFloatField
      FieldName = 'NUM_DOC'
    end
    object Qr_C350_NotasDT_DOC: TDateTimeField
      FieldName = 'DT_DOC'
    end
    object Qr_C350_NotasVL_DOC: TFloatField
      FieldName = 'VL_DOC'
    end
    object Qr_C350_NotasCPF_CNPJ: TFloatField
      FieldName = 'CPF_CNPJ'
    end
    object Qr_C350_NotasVL_MERC: TFloatField
      FieldName = 'VL_MERC'
    end
    object Qr_C350_NotasVL_DESC: TFloatField
      FieldName = 'VL_DESC'
    end
    object Qr_C350_NotasVL_PIS: TFloatField
      FieldName = 'VL_PIS'
    end
    object Qr_C350_NotasVL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
    end
    object Qr_C350_NotasCOD_CTA: TStringField
      FieldName = 'COD_CTA'
      FixedChar = True
      Size = 1
    end
    object Qr_C350_NotasCODEMP: TFloatField
      FieldName = 'CODEMP'
    end
    object Qr_C350_NotasCHAVE: TFloatField
      FieldName = 'CHAVE'
    end
    object Qr_C350_NotasORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object Qr_C350_NotasLOTSEQ: TFloatField
      FieldName = 'LOTSEQ'
    end
  end
  object Qr_C370_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2ITEM AS NUM_ITEM'
      '      ,P2CODPRO AS COD_ITEM'
      '      ,P2QTD AS QTD'
      '      ,PDUND AS UNID'
      '      ,P2TOTLIQ AS VL_ITEM'
      '      ,P2TOTDES AS VL_DESC'
      'FROM CADNS,CADP02,CADPRO'
      'WHERE '
      'P2CODEMP=NSCODEMP AND P2CHAVE=NSCHAVEP'
      ' AND P2LOTSEQ=NSLOTSEQ_CP AND '
      'PDCODPRO=P2CODPRO'
      '')
    Left = 432
    Top = 224
    object Qr_C370_NotasNUM_ITEM: TFloatField
      FieldName = 'NUM_ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_C370_NotasCOD_ITEM: TFloatField
      FieldName = 'COD_ITEM'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_C370_NotasQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_C370_NotasUNID: TStringField
      FieldName = 'UNID'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_C370_NotasVL_ITEM: TFloatField
      FieldName = 'VL_ITEM'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_C370_NotasVL_DESC: TFloatField
      FieldName = 'VL_DESC'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
  end
  object Qr_C390_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P2SIT AS CST_ICMS'
      '       ,P2CFO AS CFOP'
      '       ,P2ALIQ AS ALIQ_ICMS'
      '      ,P2TOTLIQ AS VL_OPER'
      '      ,P2BASEN+NVL(P2BCINR,0) AS VL_BC_ICMS'
      '      ,P2ICMSN+NVL(P2ICMSNR,0) AS VL_ICMS'
      
        ',CASE WHEN P2BASEN+NVL(P2BCINR,0) >0 THEN P2TOTLIQ-P2BASEN+NVL(P' +
        '2BCINR,0) '
      'ELSE 0 END AS VL_RED_BC'
      ','#39' '#39' AS COD_OBS'
      'FROM CADNS,CADP02,CADPRO'
      'WHERE '
      'P2CODEMP=NSCODEMP AND P2CHAVE=NSCHAVEP'
      ' AND P2LOTSEQ=NSLOTSEQ_CP AND '
      'PDCODPRO=P2CODPRO')
    Left = 456
    Top = 224
    object Qr_C390_NotasCST_ICMS: TStringField
      FieldName = 'CST_ICMS'
      Size = 3
    end
    object Qr_C390_NotasCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object Qr_C390_NotasALIQ_ICMS: TFloatField
      FieldName = 'ALIQ_ICMS'
    end
    object Qr_C390_NotasVL_OPER: TFloatField
      FieldName = 'VL_OPER'
    end
    object Qr_C390_NotasVL_BC_ICMS: TFloatField
      FieldName = 'VL_BC_ICMS'
    end
    object Qr_C390_NotasVL_ICMS: TFloatField
      FieldName = 'VL_ICMS'
    end
    object Qr_C390_NotasVL_RED_BC: TFloatField
      FieldName = 'VL_RED_BC'
    end
    object Qr_C390_NotasCOD_OBS: TStringField
      FieldName = 'COD_OBS'
      FixedChar = True
      Size = 1
    end
  end
  object Qr_C310_Notas: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select NSNUMERO AS NUM_DOC_CANC'
      '      FROM CADNS'
      '')
    Left = 320
    Top = 224
    object Qr_C310_NotasNUM_DOC_CANC: TFloatField
      FieldName = 'NUM_DOC_CANC'
      Origin = 'SG_ASSOC.CADNS.NSNUMERO'
    end
  end
  object Qr_1010: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT '#39'1010'#39' AS REG, '#39'N'#39' AS IND_EXP'
      ','#39'N'#39' AS IND_CCRF'
      ','#39'N'#39' AS IND_COMB'
      ','#39'N'#39' AS IND_USINA'
      ','#39'N'#39' AS IND_VA'
      ','#39'N'#39' AS IND_EE'
      ','#39'N'#39' AS IND_CART'
      ','#39'N'#39' AS IND_FORM'
      ','#39'N'#39' AS IND_AER'
      'from dual')
    Left = 512
    Top = 224
    object Qr_1010REG: TStringField
      FieldName = 'REG'
      FixedChar = True
      Size = 4
    end
    object Qr_1010IND_EXP: TStringField
      FieldName = 'IND_EXP'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_CCRF: TStringField
      FieldName = 'IND_CCRF'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_COMB: TStringField
      FieldName = 'IND_COMB'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_USINA: TStringField
      FieldName = 'IND_USINA'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_VA: TStringField
      FieldName = 'IND_VA'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_EE: TStringField
      FieldName = 'IND_EE'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_CART: TStringField
      FieldName = 'IND_CART'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_FORM: TStringField
      FieldName = 'IND_FORM'
      FixedChar = True
      Size = 1
    end
    object Qr_1010IND_AER: TStringField
      FieldName = 'IND_AER'
      FixedChar = True
      Size = 1
    end
  end
  object mem_e200: TRxMemoryData
    FieldDefs = <>
    Left = 176
    Top = 256
    object mem_e200E200_UF: TStringField
      FieldName = 'E200_UF'
      Size = 2
    end
    object mem_e200E200_DT_INI: TDateField
      FieldName = 'E200_DT_INI'
    end
    object mem_e200E200_DT_FIN: TDateField
      FieldName = 'E200_DT_FIN'
    end
  end
  object mem_e210: TRxMemoryData
    FieldDefs = <>
    Left = 248
    Top = 256
    object mem_e210E210_IND_MOV_ST: TStringField
      FieldName = 'E210_IND_MOV_ST'
      Size = 1
    end
    object mem_e210E210_VL_SLD_CRED_ANT_ST: TFloatField
      FieldName = 'E210_VL_SLD_CRED_ANT_ST'
    end
    object mem_e210E210_VL_DEVOL_ST: TFloatField
      FieldName = 'E210_VL_DEVOL_ST'
    end
    object mem_e210E210_VL_RESSARC_ST: TFloatField
      FieldName = 'E210_VL_RESSARC_ST'
    end
    object mem_e210E210_VL_OUT_CRED_ST: TFloatField
      FieldName = 'E210_VL_OUT_CRED_ST'
    end
    object mem_e210E210_VL_AJ_CREDITOS_ST: TFloatField
      FieldName = 'E210_VL_AJ_CREDITOS_ST'
    end
    object mem_e210E210_VL_RETENAO_ST: TFloatField
      FieldName = 'E210_VL_RETEN'#199'AO_ST'
    end
    object mem_e210E210_VL_OUT_DEB_ST: TFloatField
      FieldName = 'E210_VL_OUT_DEB_ST'
    end
    object mem_e210E210_VL_AJ_DEBITOS_ST: TFloatField
      FieldName = 'E210_VL_AJ_DEBITOS_ST'
    end
    object mem_e210E210_VL_SLD_DEV_ANT_ST: TFloatField
      FieldName = 'E210_VL_SLD_DEV_ANT_ST'
    end
    object mem_e210E210_VL_DEDUCOES_ST: TFloatField
      FieldName = 'E210_VL_DEDUCOES_ST'
    end
    object mem_e210E210_VL_ICMS_RECOL_ST: TFloatField
      FieldName = 'E210_VL_ICMS_RECOL_ST'
    end
    object mem_e210E210_VL_SLD_CRED_ST_TRAN: TFloatField
      FieldName = 'E210_VL_SLD_CRED_ST_TRAN'
    end
    object mem_e210E210_DEB_ESP_ST: TFloatField
      FieldName = 'E210_DEB_ESP_ST'
    end
    object mem_e210E210_UF: TStringField
      FieldName = 'E210_UF'
      Size = 2
    end
  end
end

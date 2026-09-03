unit S_Chq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Buttons, S_DM1, S_Cli, db, dbtables, S_Impres, func,
  lerarq,variants, S_SelEmp;

type
  TFrm_Chq = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Chq: TQuery;
    Qr_ChqCHNUMERO: TFloatField;
    Qr_ChqCHBANCO: TFloatField;
    Qr_ChqCHSERIE: TStringField;
    Qr_ChqCHEMIT: TStringField;
    Qr_ChqCHCPF: TFloatField;
    Qr_ChqCHRG: TStringField;
    Qr_ChqCHCC: TStringField;
    Qr_ChqCHDTNAS: TDateTimeField;
    Qr_ChqCHVALOR: TFloatField;
    Qr_ChqCHDTEMIS: TDateTimeField;
    Qr_ChqCHDTDEP: TDateTimeField;
    Qr_ChqCHAGENCIA: TStringField;
    Qr_ChqCHLOTE: TFloatField;
    Qr_ChqCHTIPO: TFloatField;
    Qr_ChqCHCODCLI: TFloatField;
    Qr_ChqCHCOMP: TStringField;
    Qr_ChqCRAZAO: TStringField;
    RG_TIPO: TRadioGroup;
    RG_TPREL: TRadioGroup;
    Qr_ChqCHDTBX: TDateTimeField;
    RG_DEPOSITO: TRadioGroup;
    CB_OMITIRDIA: TCheckBox;
    sb_SalvarPadrao: TSpeedButton;
    Label4: TLabel;
    CB_ORDEM: TComboBox;
    lbl_codcli: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    form_impres_chq: TFrm_Impres;
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp; 

  end;

var
  Frm_Chq: TFrm_Chq;

implementation

uses S_DM4;

{$R *.DFM}

procedure TFrm_Chq.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Chq.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text))
   except
      Fmensagem('Data Invalida',0,['0'],0);
      MDT1.SetFocus;
      Abort;
      end;
   end;
end;

procedure TFrm_Chq.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text))
   except
      Fmensagem('Data Invalida',0,['0'],0);
      MDT2.SetFocus;
      Abort;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      Begin
      Fmensagem('Data Inicial Maior que Data Final. Invalido',0,['0'],0);
      MDT1.SetFocus;
      abort;
      end;
   end;

end;

procedure TFrm_Chq.bbImprimirClick(Sender: TObject);
var
mdatabx,mdataa: String;
mtotd, mtotg: Real;
mcomp: String;
begin

la_tabelas  :='';



la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);

fInnerJoin(0,'CADCLI','CCODEMP','CHCODEMP','CCODCLI','CHCODCLI');

mcomp:=' where ';
Qr_Chq.Close;
Qr_Chq.SQL.Clear;
Qr_Chq.SQL.Add('Select CHNUMERO,CHBANCO,CHSERIE, CHCODCLI, '
              +'       CHEMIT, CHCPF, CHRG, CHCC, CHDTNAS, CHDTBX, '
              +'       CHVALOR, CHDTEMIS, CHDTDEP, CHAGENCIA,'
              +'       CHLOTE, CHTIPO,CHCOMP, CRAZAO '
              +'       from CADCHQ  '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CHSTATUS<9 ');


mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   Qr_Chq.sql.Add(' and CHCODCLI '+mcinst2);


if Trim(MDT1.Text)<>'/  /' then
   begin
   if RG_TPREL.ItemIndex=0 then
      Qr_Chq.SQL.Add(' and CHDTDEP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
   else if RG_TPREL.ItemIndex=2 then
      Qr_Chq.SQL.Add(' and CHDTBX>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
   else
      Qr_Chq.SQL.Add(' and CHDTEMIS>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   if RG_TPREL.ItemIndex=0 then
      Qr_Chq.SQL.Add(' and CHDTDEP<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39))
   else if RG_TPREL.ItemIndex=2 then
      Qr_Chq.SQL.Add(' and CHDTBX<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39))
   else
      Qr_Chq.SQL.Add(' and CHDTEMIS<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
   end;

if RG_TIPO.ItemIndex=1 then
   Qr_Chq.Sql.add(' and CHSTATUS=0');
if RG_TIPO.ItemIndex=2 then
   Qr_Chq.Sql.add(' and CHSTATUS<>0');

if RG_DEPOSITO.ItemIndex=0 then
   Qr_Chq.Sql.add(' and CHDEPOSITO<>1')
else if RG_DEPOSITO.ItemIndex=10 then
   Qr_Chq.Sql.add(' and CHDEPOSITO=1');
if CB_OMITIRDIA.Checked then
   Qr_Chq.SQL.Add(' and CHDTDEP>CHDTEMIS');
if CB_ORDEM.ItemIndex=0 then
   Qr_Chq.SQL.Add(' Order by CHDTDEP,CHEMIT ')
else if CB_ORDEM.ItemIndex=1 then
   Qr_Chq.SQL.Add(' Order by CHDTDEP,CRAZAO ')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Chq.SQL.Add(' Order by CHDTEMIS,CHEMIT ')
else if CB_ORDEM.ItemIndex=3 then
   Qr_Chq.SQL.Add(' Order by CHDTEMIS,CRAZAO ')
else if CB_ORDEM.ItemIndex=4 then
   Qr_Chq.SQL.Add(' Order by CHDTBX,CHEMIT ')
else if CB_ORDEM.ItemIndex=5 then
   Qr_Chq.SQL.Add(' Order by CHDTBX,CRAZAO ')
else if CB_ORDEM.ItemIndex=6 then
   Qr_Chq.SQL.Add(' Order by CHVALOR ')
else if CB_ORDEM.ItemIndex=7 then
   Qr_Chq.SQL.Add(' Order by CHVALOR DESC ')
else if CB_ORDEM.ItemIndex=8 then
   Qr_Chq.SQL.Add(' Order by CRAZAO,CHDTDEP ')
else if CB_ORDEM.ItemIndex=9 then
   Qr_Chq.SQL.Add(' Order by CHEMIT,CHDTEMIS ')
else if CB_ORDEM.ItemIndex=10 then
   Qr_Chq.SQL.Add(' Order by CHSEQ ');


Qr_Chq.Open;
if Qr_Chq.Eof then
   begin
   MessageDlg('nao ha nada a ser impresso.',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;
testeform := TFrm_Chq(FindGlobalComponent('form_impres_chq'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_chq);
   end;


form_impres_chq.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_chq.mlin:=0;
form_impres_chq.mpag:=0;
mtotd:=0;
mtotg:=0;
mdataa:=Qr_ChqCHDTDEP.AsString;
while not Qr_Chq.Eof do
   begin
   if form_impres_chq.mlin=0 then
      begin
      form_impres_chq.mlin:=form_impres_chq.fImprimirCabecalho(136,'Relatorio de Cheques.');
      form_impres_chq.mlin:=form_impres_chq.mlin+1;
      form_impres_chq.Rdprint1.Impf(03,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mneg);
      form_impres_chq.RDprint1.ImpF(04,01,'+----------------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      form_impres_chq.Rdprint1.Impf(05,01,'|Cliente                                       |      Valor|Dt.Emiss|Dt.Deposit|Numero |Bco|Data Baixa|Emitente                      |',mreduz);
      form_impres_chq.mlin:=5;
      end;
   if CB_ORDEM.ItemIndex<2 then
      begin
      if mdataa<>Qr_ChqCHDTDEP.AsString then
         begin
         form_impres_chq.mlin:=form_impres_chq.mlin+1;
         form_impres_chq.Rdprint1.Impf(form_impres_chq.mlin,01,'| - Total do dia...............................|'
                                 +insere(Formatfloat('###,##0.00',mtotd),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         mtotd:=0;
         mdataa:=Qr_ChqCHDTDEP.AsString;
         end;
      end
   else if CB_ORDEM.ItemIndex<4 then
      begin
      if mdataa<>Qr_ChqCHDTEMIS.AsString then
         begin
         form_impres_chq.mlin:=form_impres_chq.mlin+1;
         form_impres_chq.Rdprint1.Impf(form_impres_chq.mlin,01,'| - Total do dia...............................|'
                                 +insere(Formatfloat('###,##0.00',mtotd),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         mtotd:=0;
         mdataa:=Qr_ChqCHDTEMIS.AsString;
         end;
      end
   else if CB_ORDEM.ItemIndex<6 then
      begin
      if mdataa<>Qr_ChqCHDTBX.AsString then
         begin
         form_impres_chq.mlin:=form_impres_chq.mlin+1;
         form_impres_chq.Rdprint1.Impf(form_impres_chq.mlin,01,'| - Total do dia...............................|'
                                 +insere(Formatfloat('###,##0.00',mtotd),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         mtotd:=0;
         mdataa:=Qr_ChqCHDTBX.AsString;
         end;
      end;

   if (Qr_ChqCHDTBX.Value<=pdatanula) or (Qr_ChqCHDTBX.IsNull) then
      mdatabx:=''
   else
      mdatabx:=FormatDateTime(fdt2, Qr_ChqCHDTBX.Value);
   form_impres_chq.mlin:=form_impres_chq.mlin+1;
   form_impres_chq.Rdprint1.Impf(form_impres_chq.mlin,01,'|'+insere2(FormatFloat('00000',Qr_ChqCHCODCLI.Value)+'-'
                                   +Qr_ChqCRAZAO.Value,' ',46)
                                   +'|'+insere(Formatfloat('###,##0.00',Qr_ChqCHVALOR.Value),' ',11)+'|'
                                   +FormatDateTime('dd/mm/yy',Qr_ChqCHDTEMIS.Value)+'|'+FormatDateTime('dd/mm/yyyy',Qr_ChqCHDTDEP.Value)
                                   +'|'+insere(Qr_ChqCHNUMERO.AsString,' ',7)+'|'
                                   +insere(Qr_ChqCHBANCO.AsString,' ',3)+'|'
                                   +insere2(mdatabx,' ',10)+'|'
                                   +insere2(Qr_ChqCHEMIT.Value,' ',30)+'|',mreduz);
   mtotd:=mtotd+Qr_ChqCHVALOR.Value;
   mtotg:=mtotg+Qr_ChqCHVALOR.Value;
   Qr_Chq.Next;
   if Qr_Chq.Eof then
      begin
      if (mtotd>0) and (CB_ORDEM.ItemIndex<6) then
         begin
         form_impres_chq.mlin:=form_impres_chq.mlin+1;
         form_impres_chq.Rdprint1.Impf(form_impres_chq.mlin,01,'| - Total do dia...............................|'
                                 +insere(Formatfloat('###,##0.00',mtotd),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         end;

      if mtotg>0 then
         begin
         form_impres_chq.mlin:=form_impres_chq.mlin+1;
         form_impres_chq.Rdprint1.Impf(form_impres_chq.mlin,01,'| - Total Geral................................|'
                                 +insere(Formatfloat('###,##0.00',mtotg),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         end;

      form_impres_chq.mlin:=form_impres_chq.mlin+1;
      form_impres_chq.RDprint1.ImpF(form_impres_chq.mlin,01,'+Fim.------------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      end
   else if form_impres_chq.mlin>60 then
      begin
      form_impres_chq.mlin:=form_impres_chq.mlin+1;
      form_impres_chq.RDprint1.ImpF(form_impres_chq.mlin,01,'+Continua.-------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      form_impres_chq.Rdprint1.Novapagina;
      form_impres_chq.mlin:=0;
      end;
   end;
if form_impres_chq.Rdprint1.Setup then form_impres_chq.Rdprint1.Fechar;
form_impres_chq.free;
form_impres_chq:=nil;

end;

procedure TFrm_Chq.FormCreate(Sender: TObject);
begin

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQ','CB_OMITIRDIA']),[]) then
   CB_OMITIRDIA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_OMITIRDIA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQ','RG_TIPO']),[]) then
   RG_TIPO.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   RG_TIPO.ItemIndex:=1;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQ','RG_TPREL']),[]) then
   RG_TPREL.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   RG_TPREL.ItemIndex:=1;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQ','CB_ORDEM']),[]) then
   CB_ORDEM.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   CB_ORDEM.ItemIndex:=0;

end;

procedure TFrm_Chq.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_CHQ','');
fGravaPadroes(codusr,'CB_OMITIRDIA'   ,'checked'    ,'_CHQ',iif(CB_OMITIRDIA.Checked,'true','false'));
fGravaPadroes(codusr,'RG_TIPO'        ,'itemindex'  ,'_CHQ',IntToStr(RG_TIPO.ItemIndex));
fGravaPadroes(codusr,'RG_TPREL'       ,'itemindex'  ,'_CHQ',IntToStr(RG_TPREL.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'       ,'itemindex'  ,'_CHQ',IntToStr(CB_ORDEM.ItemIndex));
Fmensagem('Gravado',0,['0'],0);
end;

procedure TFrm_Chq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Chq.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
   BEGIN
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.fields[0].AsString);
      codcli.text := '';
      codcli.SetFocus;
   END else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      codcli.text := '';
      CODCLI.SetFocus;
      end;
   end;

end;

procedure TFrm_Chq.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_RCliC',key);
if trim(CODCLI.Text)<>'' then
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Chq.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_Chq.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

end.

unit S_ChqCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Buttons, S_DM1, S_Cli, db, dbtables, S_Impres, func,
  lerarq,variants, S_SelEmp;

type
  TFrm_ChqCP = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
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
    Qr_ChqCHCOMP: TStringField;
    RG_TIPO: TRadioGroup;
    RG_TPREL: TRadioGroup;
    Qr_ChqCHDTBX: TDateTimeField;
    RG_DEPOSITO: TRadioGroup;
    CB_OMITIRDIA: TCheckBox;
    sb_SalvarPadrao: TSpeedButton;
    Label4: TLabel;
    CB_ORDEM: TComboBox;
    Qr_ChqCHCODFOR: TFloatField;
    Qr_ChqFRAZAO: TStringField;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_Impres_ChqCP: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;     
  end;

var
  Frm_ChqCP: TFrm_ChqCP;

implementation

uses S_DM4;

{$R *.DFM}

procedure TFrm_ChqCP.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ChqCP.MDT1Exit(Sender: TObject);
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

procedure TFrm_ChqCP.MDT2Exit(Sender: TObject);
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

procedure TFrm_ChqCP.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'Frm_Chq',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
end;

procedure TFrm_ChqCP.CODFORExit(Sender: TObject);
begin
if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else
   begin
   CODFOR.Text:=fdeixanum(CODFOR.Text);
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',trim(CODFOR.Text)) then
      begin
      Fmensagem('Cliente nao cadastrado!',0,['0'],0);
      CODFOR.SetFocus;
      exit;
      end
   else
      NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value;
   end;
end;

procedure TFrm_ChqCP.bbImprimirClick(Sender: TObject);
var
mdatabx,mdataa: String;
mtotd, mtotg: Real;
mcomp: String;
begin

la_tabelas  :='';

la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADCHCP','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
fInnerJoin(0,'CADFOR','FCODEMP','CHCODEMP','FCODFOR','CHCODFOR');

mcomp:=' where ';
Qr_Chq.Close;
Qr_Chq.SQL.Clear;
Qr_Chq.SQL.Add('Select CHNUMERO,CHBANCO,CHSERIE, CHCODFOR, '
              +'       CHEMIT, CHCPF, CHRG, CHCC, CHDTNAS, CHDTBX, '
              +'       CHVALOR, CHDTEMIS, CHDTDEP, CHAGENCIA,'
              +'       CHLOTE, CHTIPO,CHCOMP, FRAZAO '
              +'       from CADCHCP  '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' CHSTATUS<9 ');

if (CODFOR.Text)<>'' then
   Qr_Chq.SQL.Add(' and CHCODFOR=0'+CODFOR.Text);

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
   Qr_Chq.SQL.Add(' Order by CHDTDEP,FRAZAO ')
else if CB_ORDEM.ItemIndex=2 then
   Qr_Chq.SQL.Add(' Order by CHDTEMIS,CHEMIT ')
else if CB_ORDEM.ItemIndex=3 then
   Qr_Chq.SQL.Add(' Order by CHDTEMIS,FRAZAO ')
else if CB_ORDEM.ItemIndex=4 then
   Qr_Chq.SQL.Add(' Order by CHDTBX,CHEMIT ')
else if CB_ORDEM.ItemIndex=5 then
   Qr_Chq.SQL.Add(' Order by CHDTBX,FRAZAO ')
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
testeform := TFrm_ChqCP(FindGlobalComponent('form_impres_pfor01'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_ChqCP);

form_Impres_ChqCP.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_Impres_ChqCP.mlin:=0;
form_Impres_ChqCP.mpag:=0;
mtotd:=0;
mtotg:=0;
mdataa:=Qr_ChqCHDTDEP.AsString;
while not Qr_Chq.Eof do
   begin
   if form_Impres_ChqCP.mlin=0 then
      begin
      form_Impres_ChqCP.mlin:=form_Impres_ChqCP.fImprimirCabecalho(136,'Relatorio de Cheques Emitidos.');
      form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
      form_Impres_ChqCP.Rdprint1.Impf(03,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mneg);
      form_Impres_ChqCP.RDprint1.ImpF(04,01,'+----------------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      form_Impres_ChqCP.Rdprint1.Impf(05,01,'|Emitente                                      |      Valor|Dt.Emiss|Dt.Deposit|Numero |Bco|Data Baixa|Emitente                      |',mreduz);
      form_Impres_ChqCP.mlin:=5;
      end;
   if CB_ORDEM.ItemIndex<2 then
      begin
      if mdataa<>Qr_ChqCHDTDEP.AsString then
         begin
         form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
         form_Impres_ChqCP.Rdprint1.Impf(form_Impres_ChqCP.mlin,01,'| - Total do dia...............................|'
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
         form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
         form_Impres_ChqCP.Rdprint1.Impf(form_Impres_ChqCP.mlin,01,'| - Total do dia...............................|'
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
         form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
         form_Impres_ChqCP.Rdprint1.Impf(form_Impres_ChqCP.mlin,01,'| - Total do dia...............................|'
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
   form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
   form_Impres_ChqCP.Rdprint1.Impf(form_Impres_ChqCP.mlin,01,'|'+insere2(FormatFloat('00000',Qr_ChqCHCODFOR.Value)+'-'
                                   +Qr_ChqFRAZAO.Value,' ',46)
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
         form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
         form_Impres_ChqCP.Rdprint1.Impf(form_Impres_ChqCP.mlin,01,'| - Total do dia...............................|'
                                 +insere(Formatfloat('###,##0.00',mtotd),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         end;

      if mtotg>0 then
         begin
         form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
         form_Impres_ChqCP.Rdprint1.Impf(form_Impres_ChqCP.mlin,01,'| - Total Geral................................|'
                                 +insere(Formatfloat('###,##0.00',mtotg),' ',11)
                                 +'|        |          |       |   |          |                              |',mreduz);
         end;

      form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
      form_Impres_ChqCP.RDprint1.ImpF(form_Impres_ChqCP.mlin,01,'+Fim.------------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      end
   else if form_Impres_ChqCP.mlin>60 then
      begin
      form_Impres_ChqCP.mlin:=form_Impres_ChqCP.mlin+1;
      form_Impres_ChqCP.RDprint1.ImpF(form_Impres_ChqCP.mlin,01,'+Continua.-------------------------------------+-----------+--------+----------+-------+---+----------+------------------------------+',mreduz);
      form_Impres_ChqCP.Rdprint1.Novapagina;
      form_Impres_ChqCP.mlin:=0;
      end;
   end;
if form_Impres_ChqCP.Rdprint1.Setup then form_Impres_ChqCP.Rdprint1.Fechar;
form_Impres_ChqCP.free;
form_Impres_ChqCP:=nil;
end;

procedure TFrm_ChqCP.FormCreate(Sender: TObject);
begin
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQCP','CB_OMITIRDIA']),[]) then
   CB_OMITIRDIA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_OMITIRDIA.Checked:=false;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQCP','RG_TIPO']),[]) then
   RG_TIPO.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   RG_TIPO.ItemIndex:=1;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQCP','RG_TPREL']),[]) then
   RG_TPREL.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   RG_TPREL.ItemIndex:=1;


if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_CHQCP','CB_ORDEM']),[]) then
   CB_ORDEM.itemIndex:=valint(DM4.Tb_FilPadFPVALOR.Value)
else
   CB_ORDEM.ItemIndex:=0;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_ChqCP.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_CHQCP','');
fGravaPadroes(codusr,'CB_OMITIRDIA'   ,'checked'    ,'_CHQCP',iif(CB_OMITIRDIA.Checked,'true','false'));
fGravaPadroes(codusr,'RG_TIPO'        ,'itemindex'  ,'_CHQCP',IntToStr(RG_TIPO.ItemIndex));
fGravaPadroes(codusr,'RG_TPREL'       ,'itemindex'  ,'_CHQCP',IntToStr(RG_TPREL.ItemIndex));
fGravaPadroes(codusr,'CB_ORDEM'       ,'itemindex'  ,'_CHQCP',IntToStr(CB_ORDEM.ItemIndex));
Fmensagem('Gravado',0,['0'],0);
end;

procedure TFrm_ChqCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ChqCP.FormKeyDown(Sender: TObject; var Key: Word;
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

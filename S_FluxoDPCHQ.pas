unit S_FluxoDPCHQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,func,db,dbtables,S_DM5,lerarq,S_DM1,
  s_Impres, ExtCtrls, S_SelEmp;

type
  TFrm_FluxoDPCHQ = class(TForm)
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    Label1: TLabel;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CB_DIAS: TCheckBox;
    Rg_EstDoc: TRadioGroup;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_fluxoDPCHQ: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_FluxoDPCHQ: TFrm_FluxoDPCHQ;

implementation

uses S_DM2;

{$R *.dfm}

procedure TFrm_FluxoDPCHQ.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_FluxoDPCHQ.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_FluxoDPCHQ.bbImprimirClick(Sender: TObject);
var
mtabTemp: String;
mtotpag, mtotdep: Real;
mDataFim,mDataTeste: TDateTime;
mDatapChq, mDatapDap: String;
mCpoValChq, mCpoValDap: String;

begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if Rg_EstDoc.ItemIndex=0 then
   begin
   mDatapChq:='CHDTBX';
   mDatapDap:='CADTBX';
   mCpoValChq:='CHVALOR';
   mCpoValDap:='CAVALPAG';

   end
else
   begin
   mDatapChq:='CHDTDEP';
   mDatapDap:='CADTVCTO';
   mCpoValChq:='CHVALOR';
   mCpoValDap:='CAVALOR';
   end;
DM5.Query1.Close;
DM5.Query2.Close;
DM5.Query1.DatabaseName:='\SGE\TEMP';
DM5.Query2.DatabaseName:='\SGE\TEMP';
mtabTemp:=fProcTemp(11);
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Create Table '+mtabTemp+'('
                  +'FPDATA '+pTmpcData
                  +',FPPAG '+pTmpcFloat
                  +',FPDEP '+pTmpcFloat+')');
try
   DM5.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar a Tabela: '+mtabTemp,mtWarning,[mbOk],0);
   exit;
   end;
DM5.Table1.Close;
DM5.Table1.DatabaseName:='\SGE\TEMP';
DM5.Table1.TableName:=mtabTemp;
DM5.Table1.Open;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select '+mDatapDap+',sum('+mCpoValDap+') as VALPAG from '
                  +' CADDAP where '+la_Empresas
                  +' CASTATUS<9');
if Rg_EstDoc.ItemIndex=0 then
   DM1.Query2.SQL.Add('and  CASTATUS=2')
else if Rg_EstDoc.ItemIndex=1 then
   DM1.Query2.SQL.Add('and  CASTATUS<>2');

if Trim(MDT1.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and '+mDatapDap+'>='+chr(39)+FormatDatetime(Fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and '+mDatapDap+'<='+chr(39)+FormatDatetime(Fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query2.SQL.Add(' group by '+mDatapDap);
DM1.Query2.Open;
While not DM1.Query2.Eof do
   begin
   if not DM5.Table1.Locate('FPDATA',DM1.Query2.FieldByName(mDatapDap).AsDateTime,[]) then
      begin
      DM5.Table1.Append;
      DM5.Table1.fieldbyName('FPDATA').AsDateTime:=DM1.Query2.fieldByName(mDatapDap).AsDateTime;
      DM5.Table1.FieldByName('FPPAG').AsFloat    :=0;
      DM5.Table1.FieldByName('FPDEP').AsFloat    :=0;
      end
   else
      DM5.Table1.Edit;
   DM5.Table1.FieldByName('FPPAG').AsFloat := DM5.Table1.FieldByName('FPPAG').AsFloat
                                            + DM1.Query2.FieldByName('VALPAG').AsFloat;
   DM5.Table1.Post;
   DM1.Query2.Next;
   end;

// cheques


la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);

if Trim(la_Empresas)<>'' then
   la_Empresas:=la_Empresas+' and ';

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select '+mDatapChq+',sum('+mCpoValChq+') as VALCHQ from '
                  +' CADCHQ where '+la_Empresas);
//                  +' ('+mDatapChq+'>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)
//                  +' or not '+mDatapChq+' is null) ');
if Rg_EstDoc.ItemIndex=0 then
   DM1.Query2.SQL.Add(' CHSTATUS<>0')
else if Rg_EstDoc.ItemIndex=1 then
   DM1.Query2.SQL.Add(' CHSTATUS=0');


if Trim(MDT1.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and '+mDatapChq+'>='+chr(39)+FormatDatetime(Fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   DM1.Query2.SQL.Add(' and '+mDatapChq+'<='+chr(39)+FormatDatetime(Fdt, StrtoDate(MDT2.Text))+chr(39));
DM1.Query2.SQL.Add(' group by '+mDatapChq);
DM1.Query2.Open;
While not DM1.Query2.Eof do
   begin
   if not DM5.Table1.Locate('FPDATA',DM1.Query2.FieldByName(mDatapChq).AsDateTime,[]) then
      begin
      DM5.Table1.Append;
      DM5.Table1.fieldbyName('FPDATA').AsDateTime:=DM1.Query2.fieldByName(mDatapChq).AsDateTime;
      DM5.Table1.FieldByName('FPPAG').AsFloat    :=0;
      DM5.Table1.FieldByName('FPDEP').AsFloat    :=0;
      end
   else
      DM5.Table1.Edit;
   DM5.Table1.FieldByName('FPDEP').AsFloat := DM5.Table1.FieldByName('FPDEP').AsFloat
                                            + DM1.Query2.FieldByName('VALCHQ').AsFloat;
   DM5.Table1.Post;
   DM1.Query2.Next;
   end;


// INICIO DOS CHEQUES



//JA CRIEI A TABLE 01

testeform := TFrm_FluxoDPCHQ(FindGlobalComponent('form_impres_fluxoDPCHQ'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_fluxoDPCHQ);

form_impres_fluxoDPCHQ.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
DM5.Table1.Last;
mDataFim:=DM5.Table1.fieldByName('FPDATA').AsDateTime;
DM5.Table1.First;
if (CB_DIAS.Checked) and not (DM5.Table1.Eof) then
   begin
   if Trim(MDT1.Text)<>'/  /' then
      mDataTeste:=StrToDate(MDT1.Text)
   else
      begin
      DM5.Table1.First;
      if Not DM5.Table1.Eof then
         mDataTeste:=DM5.Table1.fieldbyName('FPDATA').AsDateTime;
      end;
   DM5.Table1.First;
   if not DM5.Table1.Eof then
      begin
      While mDataTeste<mDataFim do
         begin
         if not DM5.Table1.Locate('FPDATA',mDataTeste,[]) then
            begin
            DM5.Table1.Append;
            DM5.Table1.fieldbyName('FPDATA').AsDateTime:=mDataTeste;
            DM5.Table1.FieldByName('FPPAG').AsFloat    :=0;
            DM5.Table1.FieldByName('FPDEP').AsFloat    :=0;
            DM5.Table1.Post;
            end;
         mDataTeste:=mDataTeste+1;
         end;
      end;
   end;

form_impres_fluxoDPCHQ.mlin:=0;
form_impres_fluxoDPCHQ.mpag:=0;
DM5.Table1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Create index '+mtabTemp+'0 on '+mTabTemp+' (FPDATA) ');
try
   DM5.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar Indice da Tabela: '+mtabTemp,mtWarning,[mbOk],0);
   exit;
   end;

DM5.Table1.Open;
DM5.Table1.IndexName:=mtabTemp+'0';

mtotdep:=0;
mtotpag:=0;
While not DM5.Table1.Eof do
   begin
   if form_impres_fluxoDPCHQ.mlin=0 then
      begin
      form_impres_fluxoDPCHQ.mpag:=form_impres_fluxoDPCHQ.mpag+1;
      form_impres_fluxoDPCHQ.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',60)+'Pagina: '+FormatFloat('0000',form_impres_fluxoDPCHQ.mpag),mnormal);
      form_impres_fluxoDPCHQ.RDprint1.ImpF(02,01,Insere2('Fluxo de Pagamentos e Cheques p/Deposito.',' ',60)+'Data: '+FormatDatetime(fdt2, date),mnormal);
      form_impres_fluxoDPCHQ.RDprint1.ImpF(03,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mneg);
      form_impres_fluxoDPCHQ.RDprint1.ImpF(04,01,Centra('Somente os Documentos: '+iif(Rg_EstDoc.ItemIndex=0,'Efetuados','Pendentes'),' ',80),mneg);
      form_impres_fluxoDPCHQ.RDprint1.ImpF(05,01,insere2('-','-',80),mnormal);
      form_impres_fluxoDPCHQ.RDprint1.ImpF(06,01,'+------------+---------------------+---------------------+---------------------+',mnormal);
      form_impres_fluxoDPCHQ.RDprint1.ImpF(07,01,'|   d a t a  |          Pagamentos |           Depositos |               Saldo |',mnormal);
      form_impres_fluxoDPCHQ.mlin:=7;
      end;
    form_impres_fluxoDPCHQ.mlin:=form_impres_fluxoDPCHQ.mlin+1;
    form_impres_fluxoDPCHQ.RDprint1.ImpF(form_impres_fluxoDPCHQ.mlin,01,'| '+FormatDateTime(fdt2, DM5.Table1.fieldbyName('FPDATA').AsDateTime)+' |'
                            +insere(FormatFloat(mcasas, DM5.Table1.FieldByName('FPPAG').AsFloat),' ',20)+' |'
                            +insere(FormatFloat(mcasas, DM5.Table1.FieldByName('FPDEP').AsFloat),' ',20)+' |'
                            +insere(FormatFloat(mcasas, (DM5.Table1.FieldByName('FPDEP').AsFloat
                                                        -DM5.Table1.FieldByName('FPPAG').AsFloat)),' ',20)+' |',mnormal);

    mtotdep:=mtotdep+DM5.Table1.FieldByName('FPDEP').AsFloat;
    mtotpag:=mtotpag+DM5.Table1.FieldByName('FPPAG').AsFloat;
    DM5.Table1.Next;
    if DM5.Table1.Eof then
       begin
       form_impres_fluxoDPCHQ.mlin:=form_impres_fluxoDPCHQ.mlin+1;
       form_impres_fluxoDPCHQ.RDprint1.ImpF(form_impres_fluxoDPCHQ.mlin,01,'| Totais.... |'
                            +insere(FormatFloat(mcasas, mtotpag),' ',20)+' |'
                            +insere(FormatFloat(mcasas, mtotdep),' ',20)+' |'
                            +insere(FormatFloat(mcasas, mtotdep-mtotpag),' ',20)+' |',mnormal);
       form_impres_fluxoDPCHQ.mlin:=form_impres_fluxoDPCHQ.mlin+1;
       form_impres_fluxoDPCHQ.RDprint1.ImpF(form_impres_fluxoDPCHQ.mlin,01,insere2('Fim...','-',80),mnormal);
       if form_impres_fluxoDPCHQ.RDprint1.Setup then form_impres_fluxoDPCHQ.RDprint1.Fechar;
       form_impres_fluxoDPCHQ.free;
       form_impres_fluxoDPCHQ:=nil;
       end
    else if form_impres_fluxoDPCHQ.mlin>57 then
       begin
       form_impres_fluxoDPCHQ.mlin:=form_impres_fluxoDPCHQ.mlin+1;
       form_impres_fluxoDPCHQ.RDprint1.ImpF(form_impres_fluxoDPCHQ.mlin,01,insere2('Continua...','-',80),mnormal);
       form_impres_fluxoDPCHQ.RDprint1.Novapagina;
       form_impres_fluxoDPCHQ.mlin:=0;
       end;
   end;

DM5.Table1.Close;
DM5.Table1.DeleteTable;
DM5.Table1.IndexName:='';

end;

procedure TFrm_FluxoDPCHQ.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_FluxoDPCHQ.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_FluxoDPCHQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_FluxoDPCHQ.FormKeyDown(Sender: TObject; var Key: Word;
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

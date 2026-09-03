unit S_RPfor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,S_DM1,Func,lerarq,S_For, DB,
  DBTables,S_Impres, CheckLst, S_SelEmp;

type
  TFrm_RPFor = class(TForm)
    Tb_Pfor: TQuery;
    Tb_PforPF1CODFOR: TFloatField;
    Tb_PforPF1DATA: TDateTimeField;
    Tb_PforPF1TOTLIQ: TFloatField;
    Tb_PforPF1STATUS: TFloatField;
    Tb_PforFRAZAO: TStringField;
    Tb_PforPF1CHAVE: TFloatField;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RG_SIT: TRadioGroup;
    MDT2: TMaskEdit;
    Label3: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    CLB_TIPOPFOR: TCheckListBox;
    ST_TIPOPFOR: TStaticText;
    Tb_PforPF1NUMNF: TFloatField;
    rg_data: TRadioGroup;
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CLB_TIPOPFORClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;

  public
    { Public declarations }
    form_impres_rpfor: tFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_RPFor: TFrm_RPFor;

implementation

{$R *.dfm}

procedure TFrm_RPFor.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RPFor.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
       MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   Except
       fmensagem('Data Invalida!',0,['0'],0);
       MDT1.SetFocus;
       end;
   end;

end;

procedure TFrm_RPFor.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
       MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   Except
       fmensagem('Data Invalida!',0,['0'],0);
       MDT2.SetFocus;
       end;
   end;

end;

procedure TFrm_RPFor.bbImprimirClick(Sender: TObject);
var
  x,mlin,mpag: Integer;
  mTotalGer: Real;
  CMP_DATA: String;
begin

if rg_data.ItemIndex=0 then
  CMP_DATA:='PF1DATA'
else if rg_data.ItemIndex=1 then
  CMP_DATA:='PF1DATANF'
else if rg_data.ItemIndex=2 then
  CMP_DATA:='PF1DATAENT';

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial Maior que Final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
la_Empresas:=fEmpresas_Selecionadas('CADPFOR','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');


Tb_Pfor.Close;
Tb_Pfor.Sql.Clear;
Tb_Pfor.SQL.Add(' Select PF1CHAVE,PF1CODFOR, ');
Tb_Pfor.SQL.Add(CMP_DATA+' AS  PF1DATA, ');
Tb_Pfor.SQL.Add(' PF1TOTLIQ,PF1STATUS,FRAZAO,PF1NUMNF '
               +' from CADPF1'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS<>9 '+iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
if RG_SIT.ItemIndex<>2 then
   begin
   Tb_Pfor.SQL.Add(' and PF1STATUS=0'+InttoStr(RG_SIT.ItemIndex));
   end;


mcinst2:=fItenstCheckListBox(0,CLB_TIPOPFOR);
if trim(mcinst2)<>'' then
  Tb_Pfor.SQL.Add(' and PF1TIPO '+mcinst2);
{
if trim(mcinst2)<>'' then
   begin
   mcinst:='';
   for x:=0 to length(mcinst2) do
     begin
     if mcinst2[x]='2' then
        mcinst:=iif(mcinst='','10',mcinst+'10')
     else
        mcinst:=iif(mcinst='',mcinst2[x],mcinst+mcinst2[x]);
     end;
   mcinst:=trim(mcinst);

   Tb_Pfor.SQL.Add(' and PF1TIPO '+mcinst);
   end;
}
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then Tb_Pfor.sql.Add(' and PF1CODFOR '+mcinst2);

if Trim(MDT1.Text)<>'/  /' then
   Tb_Pfor.SQL.Add(' and '+CMP_DATA+'>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Tb_Pfor.SQL.Add(' and '+CMP_DATA+'<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
Tb_Pfor.SQL.Add(' Order by '+CMP_DATA);
Tb_Pfor.Open;
if Tb_Pfor.Eof then
   begin
   fmensagem('Não foi Encontrado nada em sua solicitação!',0,['0'],0);
   exit;
   end;
mpag:=0;
mlin:=0;
mTotalGer:=0;
testeform := TFrm_RPFor(FindGlobalComponent('form_impres_rpfor'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_rpfor);

form_impres_rpfor.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
While not Tb_Pfor.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_impres_rpfor.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_impres_rpfor.RDprint1.ImpF(01,65,'Pagina:     '+FormatFloat('0000',mpag),mnormal);
      form_impres_rpfor.RDprint1.ImpF(02,01,'Relatorio de Pedidos de Fornecedores Resumido.',mnormal);
      form_impres_rpfor.RDprint1.ImpF(02,65,'Data: '+FormatDateTime(fdt2, date),mnormal);
      form_impres_rpfor.RDprint1.ImpF(03,01,centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',60),mneg);
      mlin:=4;

      if lbx_codfor.Count>0 then
         FImprimeTitulo('Fornecedor',lbx_codfor,OMITIR_FOR);

      form_impres_rpfor.RDprint1.ImpF(05,01,'+--------+-------+------+--------------------------------+----------+----------+',mnormal);
      form_impres_rpfor.RDprint1.ImpF(06,01,'|D a t a | Chave | N.F. |Fornecedor                      |   Valor  |Situacao  |',mnormal);
      mlin:=6;
      end;
   mlin:=mlin+1;
   form_impres_rpfor.RDprint1.ImpF(mlin,01,'|'+FormatDateTime('dd/mm/yy',Tb_PforPF1DATA.Value)+'|'
                           +Formatfloat('0000000',Tb_PforPF1CHAVE.Value)+'|'
                           +Formatfloat('000000',Tb_PforPF1NUMNF.Value)+'|'
                           +FormatFloat('00000',Tb_PforPF1CODFOR.Value)+'-'
                           +insere2(Tb_PforFRAZAO.Value,' ',26)+'|'
                           +insere(FormatFloat(mcasas, Tb_PforPF1TOTLIQ.Value),' ',10)+'|'
                           +iif(Tb_PforPF1STATUS.Value=1,'Confirmado','          ')+'|',mnormal);
   mTotalGer:=mTotalGer+Tb_PforPF1TOTLIQ.AsFloat;
   Tb_Pfor.Next;
   if Tb_Pfor.Eof then
      begin
      mlin:=mlin+1;
      form_impres_rpfor.RDprint1.ImpF(mlin,01,'|-Total..|'
                           +insere2(' ',' ',05)+'|'
                           +insere2(' ',' ',05)+'|'
                           +insere2('-Total Geral','.',34)+'|'
                           +insere(FormatFloat(mcasas, mTotalGer),' ',10)+'|'
                           +'          '
                           +'|',mnormal);

      mlin:=mlin+1;
      form_impres_rpfor.RDprint1.ImpF(mlin,01,'+-Fim...-+-------+------+--------------------------------+----------+----------+',mnormal);
      mlin:=mlin+1;
      form_impres_rpfor.RDprint1.ImpF(mlin,01,'Relatorio emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),mreduz);
      if form_impres_rpfor.RDprint1.Setup then form_impres_rpfor.RDprint1.Fechar;
      form_impres_rpfor.free;
      form_impres_rpfor:=nil;
      end
   else if mlin>56 then
      begin
      mlin:=mlin+1;
      form_impres_rpfor.RDprint1.ImpF(mlin,01,'+Continua+------+----------------------------------------+----------+----------+',mnormal);
      form_impres_rpfor.RDprint1.Novapagina;      
      mlin:=0;
      end;
   end;
{
+--------+------+----------------------------------------+----------+----------+
|D a t a | Chave|Fornecedor                              |   Valor  |Situacao  |
|10/09/00|123456|00999-1234567890123456789012345678901234|zzz.zz9,99|Confirmado|
}

end;

procedure TFrm_RPFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_RPFor.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)='' then
   CODFOR.Text:=''
else
   begin
   if not flcadfor(1,0,CODFOR.Text) then
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.TEXT := '';
      CODfor.SetFocus;
      end
   else
      begin
      Lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_RPFor.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
      CODFOR.Text:=fChamaFor(0,'frm_RPlor',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_RPFor.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

CLB_TIPOPFOR.Checked[0]:=True;

end;

function tFrm_RPFor.FImprimeTitulo(pTitulo: String; pListBox: TListBox;pOmitir:TCheckBox): Boolean;
var
x:Integer;
begin
if pListBox.Count>0 then
   begin
   for x:=0 to pListBox.items.count-1 do
      begin
      form_impres_rpfor.mlin:=form_impres_rpfor.mlin+1;
      form_impres_rpfor.RDprint1.ImpF(form_impres_rpfor.mlin,01,Centra(iif(pOmitir.Checked,'Sem o ','')+pTitulo+': '+pListBox.Items[x],' ',80),mneg);
      end;
   end;
result:=true;

end;

procedure TFrm_RPFor.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_RPFor.CLB_TIPOPFORClick(Sender: TObject);
begin
CLB_TIPOPFOR:=Valida_CheckList(CLB_TIPOPFOR);

end;

procedure TFrm_RPFor.FormKeyDown(Sender: TObject; var Key: Word;
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

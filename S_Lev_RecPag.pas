unit S_Lev_RecPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1, S_Impres,
  s_DM2,lerarq, S_SelEmp;

type
  TFrm_Lev_RecPag = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_LDR: TQuery;
    RGTD: TRadioGroup;
    RG_TIPORES: TRadioGroup;
    CB_CHQBAI: TCheckBox;
    Qr_LDRTOTRECAB: TFloatField;
    Qr_LDRTOTAPAG: TFloatField;
    Qr_LDRTOTCHQ: TFloatField;
    Qr_LDRGRUPO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_lev_recpag: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Lev_RecPag: TFrm_Lev_RecPag;

implementation

{$R *.dfm}

procedure TFrm_Lev_RecPag.BitBtn1Click(Sender: TObject);
var
mNomeView: String;
mNomeGrupo: String;
mTotGPag,mTotGRec,mTotGChq,mSaldod,mSaldog,mTotPag,mTotRec,mTotChq: Real;

begin
mNomeView:=fProcTemp(22);

if RG_TIPORES.ItemIndex=2 then
   mNomeGrupo:='to_char(CRDTVCTO, '+chr(39)+'yyyy'+chr(39)+')'
else if RG_TIPORES.ItemIndex=1 then
   mNomeGrupo:='to_char(CRDTVCTO, '+chr(39)+'yyyy/mm'+chr(39)+')'
else
   mNomeGrupo:='to_char(CRDTVCTO, '+chr(39)+'yyyy/mm/dd'+chr(39)+')';
   
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Create or replace view '+mNomeView+' as ');
DM1.Query1.SQL.Add('Select sum(CRVALOR) as TOTRECAB, '
                  +' 0 AS TOTAPAG, '
                  +' 0 AS TOTCHQ, '
                  +mNomeGrupo+' as grupo from CADDAR where '
                  +iif(la_Empresas='','',la_Empresas+' and ')
                  +' CRSTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CRDTVCTO>='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CRDTVCTO<='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt2.Text))+chr(39));
if RGTD.ItemIndex=1 then
   DM1.Query1.SQL.add(' and CRSTATUS=2')
else if RGTD.ItemIndex=2 then
   DM1.Query1.SQL.add(' and CRSTATUS<>2');
DM1.Query1.SQL.add(' group by '+mNomeGrupo);

if RG_TIPORES.ItemIndex=2 then
   mNomeGrupo:='to_char(CADTVCTO, '+chr(39)+'yyyy'+chr(39)+')'
else if RG_TIPORES.ItemIndex=1 then
   mNomeGrupo:='to_char(CADTVCTO, '+chr(39)+'yyyy/mm'+chr(39)+')'
else
   mNomeGrupo:='to_char(CADTVCTO, '+chr(39)+'yyyy/mm/dd'+chr(39)+')';

la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add('Select 0 as TOTARECAB,'
                  +' sum(CAVALOR) as TOTAPAG, '
                  +' 0 AS TOTCHQ, '
                  +mNomeGrupo+' as grupo from CADDAP where '
                  +iif(la_Empresas='','',la_Empresas+' and ')
                  +' CASTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CADTVCTO>='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CADTVCTO<='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt2.Text))+chr(39));
if RGTD.ItemIndex=1 then
   DM1.Query1.SQL.add(' and CASTATUS=2')
else if RGTD.ItemIndex=2 then
   DM1.Query1.SQL.add(' and CASTATUS<>2');
DM1.Query1.SQL.add(' group by '+mNomeGrupo);

if RG_TIPORES.ItemIndex=2 then
   mNomeGrupo:='to_char(CHDTDEP, '+chr(39)+'yyyy'+chr(39)+')'
else if RG_TIPORES.ItemIndex=1 then
   mNomeGrupo:='to_char(CHDTDEP, '+chr(39)+'yyyy/mm'+chr(39)+')'
else
   mNomeGrupo:='to_char(CHDTDEP, '+chr(39)+'yyyy/mm/dd'+chr(39)+')';

la_Empresas:=fEmpresas_Selecionadas('CADCHQ','CHCODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.SQL.Add(' union ');
DM1.Query1.SQL.Add('Select 0 as TOTARECAB,'
                  +' 0 as TOTAPAG, '
                  +' sum(CHVALOR) AS TOTCHQ, '
                  +mNomeGrupo+' as grupo from CADCHQ where '
                  +iif(la_Empresas='','',la_Empresas+' and ')
                  +' CHSTATUS<9 ');
if trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CHDTDEP>='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Query1.SQL.add(' and CHDTDEP<='+chr(39)+FormatDateTime(fdt, StrtoDate(mdt2.Text))+chr(39));
if not CB_CHQBAI.Checked then
   DM1.Query1.SQL.add(' and CHSTATUS=0');
DM1.Query1.SQL.add(' group by '+mNomeGrupo);
try
   DM1.Query1.ExecSql;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
//DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');

Qr_ldr.Close;
Qr_ldr.sql.clear;
Qr_ldr.sql.Add('Select GRUPO, sum(TOTRECAB) as TOTRECAB,'
              +'       sum(TOTAPAG) as TOTAPAG '
              +'      ,sum(TOTCHQ) as TOTCHQ '
              +' from '+mNomeView
              +' group by GRUPO '
              +' order by GRUPO ');
Qr_ldr.Open;
mTotPag:=0;
mTotRec :=0;
mTotChq :=0;
mSaldod :=0;
mSaldog :=0;
mTotGPag:=0;
mTotGRec:=0;
mTotGChq:=0;

testeform := TFrm_Lev_RecPag(FindGlobalComponent('form_impres_lev_recpag'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_lev_recpag);
form_impres_lev_recpag.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_lev_recpag.mpag:=0;
form_impres_lev_recpag.mlin:=0;
While not Qr_Ldr.Eof do
   begin
   if form_impres_lev_recpag.mlin=0 then
      begin
      mcinst:='Levantamento Financeiro. ';
      if RG_TIPORES.ItemIndex=2 then
         begin
         mcinst:=mcinst+' Anual. ';
         mcinst2:='Ano';
         end
      else if RG_TIPORES.ItemIndex=1 then
         begin
         mcinst:=mcinst+' Mensal. ';
         mcinst2:='Mes/Ano';
         end
      else if RG_TIPORES.ItemIndex=1 then
         begin
         mcinst:=mcinst+' Diario. ';
         mcinst2:='Data';
         end;
      mcinst:=mcinst+fperiodo(0,MDT1.Text,MDT2.Text);
      form_impres_lev_recpag.mlin:=form_impres_lev_recpag.fImprimirCabecalho(80,mcinst);
      form_impres_lev_recpag.mlin:=form_impres_lev_recpag.mlin+1;
      form_impres_lev_recpag.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);


      if RGTD.ItemIndex=1 then
         begin
         form_impres_lev_recpag.RDprint1.ImpF(04,01,insere(mcinst2,' ',14)
                              +'(-) Pagas       (+)Recebidas     (+)Ch. Deposito    '
                              +'(=) Sub Total        Acumulado',m12ccp);
         end
      else
         begin
         form_impres_lev_recpag.RDprint1.ImpF(04,01,insere(mcinst2,' ',14)
                              +'(-) Pagamentos  (+)Recebimentos  (+)Ch. Deposito    '
                              +'(=) Sub Total        Acumulado',m12ccp);
         end;
      form_impres_lev_recpag.mlin:=4;
      end;
   form_impres_lev_recpag.mlin :=form_impres_lev_recpag.mlin+1;
   mTotpag   :=mTotpag+Qr_LDRTOTAPAG.Value;
   mTotRec   :=mTotRec+Qr_LDRTOTRECAB.Value;
   mTotChq   :=mTotChq+Qr_LDRTOTCHQ.Value;
   mTotGPag  :=mTotGPag+Qr_LDRTOTAPAG.Value;
   mTotGRec  :=mTotGRec+Qr_LDRTOTRECAB.Value;
   mTotGChq  :=mTotGChq+Qr_LDRTOTCHQ.Value;
   mSaldod   :=(Qr_LDRTOTCHQ.Value+Qr_LDRTOTRECAB.Value)
              -Qr_LDRTOTAPAG.Value;
   mSaldog   :=mSaldog+mSaldod;
   if RG_TIPORES.ItemIndex=2 then
      mcinst4:=Qr_LDRGRUPO.AsString
   else if RG_TIPORES.ItemIndex=1 then
      mcinst4:=copy(Qr_LDRGRUPO.AsString,6,2)+'/'+copy(Qr_LDRGRUPO.AsString,1,4)
   else
      mcinst4:=copy(Qr_LDRGRUPO.AsString,9,2)+'/'+copy(Qr_LDRGRUPO.AsString,6,2)+'/'+copy(Qr_LDRGRUPO.AsString,1,4);


   form_impres_lev_recpag.RDprint1.ImpF(form_impres_lev_recpag.mlin,01,insere(mcinst4,' ',14)
                           +insere(FormatFloat(mcasas,Qr_LDRTOTAPAG.Value),' ',14)
                           +insere(FormatFloat(mcasas,Qr_LDRTOTRECAB.Value),' ',17)
                           +insere(FormatFloat(mcasas,Qr_LDRTOTCHQ.Value),' ',17)
                           +insere(FormatFloat(mcasas, mSaldod),' ',17)
                           +insere(FormatFloat(mcasas, mSaldog),' ',17),m12ccp);
{
Data          (-) Pagamentos  (+)Recebimentos  (+)Ch. Deposito    (=) Sub Total        Acumulado
01/05/2007    zzz.zzz.zz9,99   zzz.zzz.zz9,99   zzz.zzz.zz9,99   zzz.zzz.zz9,99   zzz.zzz.zz9,99
}


   Qr_ldr.Next;
   if Qr_Ldr.Eof then
      begin
      form_impres_lev_recpag.mlin:=form_impres_lev_recpag.mlin+1;
      form_impres_lev_recpag.RDprint1.ImpF(form_impres_lev_recpag.mlin,01,insere('-','-',80),mnormal);
      form_impres_lev_recpag.mlin:=form_impres_lev_recpag.mlin+1;
      mSaldod   :=(mTotGChq+mTotGRec)
                 -mTotGPag;
      form_impres_lev_recpag.RDprint1.ImpF(form_impres_lev_recpag.mlin,01,insere2('Totais','.',14)
                           +insere(FormatFloat(mcasas, mTotGPag),' ',14)
                           +insere(FormatFloat(mcasas, mTotGRec),' ',17)
                           +insere(FormatFloat(mcasas, mTotGChq),' ',17)
                           +insere(FormatFloat(mcasas, mSaldod),' ',17)
                           +insere(FormatFloat(mcasas, mSaldog),' ',17),m12ccp);
      form_impres_lev_recpag.mlin:=form_impres_lev_recpag.mlin+1;
      form_impres_lev_recpag.RDprint1.ImpF(form_impres_lev_recpag.mlin,01,'Fim.'+insere(femitido(0),'-',76),mnormal);
      if form_impres_lev_recpag.RDprint1.Setup then form_impres_lev_recpag.RDprint1.Fechar;
      form_impres_lev_recpag.free;
      form_impres_lev_recpag:=nil;
      end
   else if form_impres_lev_recpag.mlin>58 then
      begin
      form_impres_lev_recpag.mlin:=form_impres_lev_recpag.mlin+1;
      form_impres_lev_recpag.RDprint1.ImpF(form_impres_lev_recpag.mlin,01,insere2('Continua...','-',80),mnormal);
      form_impres_lev_recpag.RDprint1.Novapagina;
      form_impres_lev_recpag.mlin:=0;
      end;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Drop VIEW '+mNomeView);
try
   DM1.Query1.ExecSQL;
Except
   DM1.query1.SQL.SaveToFile(mpastatemp +'sql.txt');
   end;

end;

procedure TFrm_Lev_RecPag.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Lev_RecPag.FormCreate(Sender: TObject);
begin
//if ValInt(FormatDateTime('dd', pdatasis))>20 then
//   MDT1.Text:=FormatDatetime(fdt2, pdatasis)
//else
//   MDT1.Text:=FormatDatetime(fdt2, fdatafinal(1,pdatasis-28));
//MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrToDate(MDT1.Text))));
MDT1.Text:=FormatDatetime(fdt2, date);
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrToDate(MDT1.Text)));

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_Lev_RecPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Lev_RecPag.FormKeyDown(Sender: TObject; var Key: Word;
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

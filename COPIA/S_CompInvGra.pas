unit S_CompInvGra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, StdCtrls, Buttons,lerarq,S_Agde,S_Impres;

type
  TFrm_CompInvGra = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CB_INV01: TComboBox;
    CB_INV02: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_compInvGra: Tfrm_Impres;
  end;

var
  Frm_CompInvGra: TFrm_CompInvGra;
  inv_casqtd: String;
implementation

uses S_DM5, func_excecoes;

{$R *.dfm}

procedure TFrm_CompInvGra.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CompInvGra.BitBtn1Click(Sender: TObject);
var
mtabtemp: String;
mtotinv01, mtotinv02: Real;
mvalinv01, mvalinv02: Real;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP','PDCODEMP','FCODFOR','PDCODFOR');

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Sql.add('Select PDNOME,PDMARCA,PDUND,PDCLAS,PDCODFOR,FRAZAO,');
DM1.Query3.SQL.add(' IGCODTIP AS CODTIP, IGSIT AS PDSIT, ');
DM1.Query3.SQL.Add(' IGPRECO AS PDPRECO, ');
DM1.Query3.SQL.Add(' IGQTD AS CLQTD, '
                  +' IGCODPRO AS CLCODPRO, '
                  +' IGQTD*IGPRECO AS CLVALOR, '
                  +' IGDATAEMI AS CLDATAEMI'
                  +' from INVGRA,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where  '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+CB_INV01.Text+chr(39)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                  +' and PDCODPRO=IGCODPRO '
                  +iif(la_instrucao='','',' and '+la_instrucao));
DM1.Query3.SQL.add(' Order by PDCODPRO,PDNOME ');
DM1.Query3.Open;
if DM1.Query3.Eof then
   begin
   MessageDlg('o Inventário 01: '+CB_INV01.Text+' não foi encontrado!',mtWarning,[mbOk],0);
   exit;
   end;


DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.Sql.add('Select PDNOME,PDMARCA,PDUND,PDCLAS,PDCODFOR,FRAZAO,');
DM1.Query4.SQL.add(' IGCODTIP AS CODTIP, IGSIT AS PDSIT, ');
DM1.Query4.SQL.Add(' IGPRECO AS PDPRECO, ');
DM1.Query4.SQL.Add(' IGQTD AS CLQTD, '
                  +' IGCODPRO AS CLCODPRO, '
                  +' IGQTD*IGPRECO AS CLVALOR, '
                  +' IGDATAEMI AS CLDATAEMI'
                  +' from INVGRA,CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where  '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntToStr(codemp)+' and ')
                  +' IGNOMEINV='+chr(39)+CB_INV02.Text+chr(39)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
                  +' and PDCODPRO=IGCODPRO '
                  +iif(la_instrucao='','',' and '+la_instrucao));
DM1.Query4.SQL.add(' Order by PDCODPRO,PDNOME');
DM1.Query4.Open;
if DM1.Query4.Eof then
   begin
   MessageDlg('o Inventário 01: '+CB_INV02.Text+' não foi encontrado!',mtWarning,[mbOk],0);
   exit;
   end;

mpqtd:=DM1.Query4.RecordCount;
mpqtd:=mpqtd+DM1.Query3.RecordCount;
mplid:=0;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Fazendo Comparações, aguarde!';
Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Show;
verteclado(0);
DM5.Query2.Close;
DM5.Query2.DatabaseName:='C:\SGE\TEMP';

DM5.Query1.Close;
DM5.Query1.DatabaseName:='C:\SGE\TEMP';
DM5.Query1.Close;
DM5.Query1.DatabaseName:='C:\SGE\TEMP';
mtabTemp:=fProcTemp(11);
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Create Table '+mtabTemp+'('
                  +'TPNOME '+pTmpcString+'(40)'
                  +',TPMARCA '+pTmpcString+'(40)'
                  +',TPUND '+pTmpcString+'(40)'
                  +',TPCLAS '+pTmpcString+'(40)'
                  +',TPFRAZAO '+pTmpcString+'(40)'
                  +',TPSIT '+pTmpcString+'(03)'
                  +',TPCODFOR '+pTmpcFloat
                  +',TPCODTIP '+pTmpcFloat
                  +',TPPRECO '+pTmpcFloat
                  +',TPQTDINV01 '+pTmpcFloat
                  +',TPQTDINV02 '+pTmpcFloat
                  +',TPCODPRO '+pTmpcFloat
                  +',TPVALOR01 '+pTmpcFloat
                  +',TPVALOR02 '+pTmpcFloat                  
                  +',TPDATAEMI '+pTmpcDataHora+')');
try
   DM5.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro ao Criar a Tabela: '+mtabTemp,mtWarning,[mbOk],0);
   exit;
   end;

DM5.Query2.Close;
DM5.Query2.SQL.clear;
DM5.Query2.Params.Clear;
DM5.Query2.Params.CreateParam(ftString,'TPNOME',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPMARCA',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPUND',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPCLAS',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPFRAZAO',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPSIT',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPCODFOR',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPCODTIP',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPPRECO',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPQTDINV01',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPQTDINV02',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPCODPRO',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPVALOR01',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPVALOR02',ptinput);
DM5.Query2.Params.CreateParam(ftString,'TPDATAEMI',ptinput);
DM5.Query2.SQL.add('insert into '+mtabtemp+' (');
DM5.Query2.SQL.add(' TPNOME');
DM5.Query2.SQL.add(',TPMARCA');
DM5.Query2.SQL.add(',TPUND');
DM5.Query2.SQL.add(',TPCLAS');
DM5.Query2.SQL.add(',TPFRAZAO');
DM5.Query2.SQL.add(',TPSIT');
DM5.Query2.SQL.add(',TPCODFOR');
DM5.Query2.SQL.add(',TPCODTIP');
DM5.Query2.SQL.add(',TPPRECO');
DM5.Query2.SQL.add(',TPQTDINV01');
DM5.Query2.SQL.add(',TPQTDINV02');
DM5.Query2.SQL.add(',TPCODPRO');
DM5.Query2.SQL.add(',TPVALOR01');
DM5.Query2.SQL.add(',TPVALOR02');
DM5.Query2.SQL.add(',TPDATAEMI) Values (');
DM5.Query2.SQL.add(' :TPNOME');
DM5.Query2.SQL.add(',:TPMARCA');
DM5.Query2.SQL.add(',:TPUND');
DM5.Query2.SQL.add(',:TPCLAS');
DM5.Query2.SQL.add(',:TPFRAZAO');
DM5.Query2.SQL.add(',:TPSIT');
DM5.Query2.SQL.add(',:TPCODFOR');
DM5.Query2.SQL.add(',:TPCODTIP');
DM5.Query2.SQL.add(',:TPPRECO');
DM5.Query2.SQL.add(',:TPQTDINV01');
DM5.Query2.SQL.add(',:TPQTDINV02');
DM5.Query2.SQL.add(',:TPCODPRO');
DM5.Query2.SQL.add(',:TPVALOR01');
DM5.Query2.SQL.add(',:TPVALOR02');
DM5.Query2.SQL.add(',:TPDATAEMI)');

mtotinv01:=0;
mvalinv01:=0;
mtotinv02:=0;
mvalinv02:=0;

While not DM1.Query3.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   if DM1.Query4.Locate('CLCODPRO',DM1.Query3.fieldbyName('CLCODPRO').AsString,[]) then
      begin
      if (DM1.Query4.FieldByName('CLQTD').AsFloat<>DM1.Query3.FieldByName('CLQTD').AsFloat)
      or (DM1.Query4.FieldByName('CLVALOR').AsFloat<>DM1.Query3.FieldByName('CLVALOR').AsFloat) then
         begin
         DM5.Query2.ParamByName('TPNOME').AsString    :=DM1.Query3.fieldbyName('PDNOME').AsString;
         DM5.Query2.ParamByName('TPMARCA').AsString   :=DM1.Query3.fieldbyName('PDMARCA').AsString;
         DM5.Query2.ParamByName('TPUND').AsString     :=DM1.Query3.fieldbyName('PDUND').AsString;
         DM5.Query2.ParamByName('TPCLAS').AsString    :=DM1.Query3.fieldbyName('PDCLAS').AsString;
         DM5.Query2.ParamByName('TPFRAZAO').AsString  :=DM1.Query3.fieldbyName('FRAZAO').AsString;
         DM5.Query2.ParamByName('TPSIT').AsString     :=DM1.Query3.fieldbyName('PDSIT').AsString;
         DM5.Query2.ParamByName('TPCODFOR').AsFloat   :=DM1.Query3.fieldbyName('PDCODFOR').AsFloat;
         DM5.Query2.ParamByName('TPCODTIP').AsFloat   :=DM1.Query3.fieldbyName('CODTIP').AsFloat;
         DM5.Query2.ParamByName('TPPRECO').AsFloat    :=DM1.Query3.fieldbyName('PDPRECO').AsFloat;
         DM5.Query2.ParamByName('TPQTDINV01').AsFloat :=DM1.Query3.fieldbyName('CLQTD').AsFloat;
         DM5.Query2.ParamByName('TPQTDINV02').AsFloat :=DM1.Query4.fieldbyName('CLQTD').AsFloat;
         DM5.Query2.ParamByName('TPCODPRO').AsFloat   :=DM1.Query3.fieldbyName('CLCODPRO').AsFloat;
         DM5.Query2.ParamByName('TPVALOR01').AsFloat :=DM1.Query3.fieldbyName('CLVALOR').AsFloat;
         DM5.Query2.ParamByName('TPVALOR02').AsFloat :=DM1.Query4.fieldbyName('CLVALOR').AsFloat;
         DM5.Query2.ParamByName('TPDATAEMI').AsDateTime:=DM1.Query3.fieldbyName('CLDATAEMI').AsDateTime;
         try
            DM5.Query2.ExecSQL;
            fdm1StartCommit;
         except
            MessageDlg('Erro ao Criar arquivo de comparações: 215',mtError,[mbOk],0);
            ex_erroSql(01,735,'Frm_CompInvGra','Query');
            end;
         end;
      end
   else
      begin
      DM5.Query2.ParamByName('TPNOME').AsString    :=DM1.Query3.fieldbyName('PDNOME').AsString;
      DM5.Query2.ParamByName('TPMARCA').AsString   :=DM1.Query3.fieldbyName('PDMARCA').AsString;
      DM5.Query2.ParamByName('TPUND').AsString     :=DM1.Query3.fieldbyName('PDUND').AsString;
      DM5.Query2.ParamByName('TPCLAS').AsString    :=DM1.Query3.fieldbyName('PDCLAS').AsString;
      DM5.Query2.ParamByName('TPFRAZAO').AsString  :=DM1.Query3.fieldbyName('FRAZAO').AsString;
      DM5.Query2.ParamByName('TPSIT').AsString     :=DM1.Query3.fieldbyName('PDSIT').AsString;
      DM5.Query2.ParamByName('TPCODFOR').AsFloat   :=DM1.Query3.fieldbyName('PDCODFOR').AsFloat;
      DM5.Query2.ParamByName('TPCODTIP').AsFloat   :=DM1.Query3.fieldbyName('CODTIP').AsFloat;
      DM5.Query2.ParamByName('TPPRECO').AsFloat    :=DM1.Query3.fieldbyName('PDPRECO').AsFloat;
      DM5.Query2.ParamByName('TPQTDINV01').AsFloat :=DM1.Query3.fieldbyName('CLQTD').AsFloat;
      DM5.Query2.ParamByName('TPQTDINV02').AsFloat :=0;
      DM5.Query2.ParamByName('TPCODPRO').AsFloat   :=DM1.Query3.fieldbyName('CLCODPRO').AsFloat;
      DM5.Query2.ParamByName('TPVALOR01').AsFloat :=DM1.Query3.fieldbyName('CLVALOR').AsFloat;
      DM5.Query2.ParamByName('TPVALOR02').AsFloat :=0;
      DM5.Query2.ParamByName('TPDATAEMI').AsDateTime:=DM1.Query3.fieldbyName('CLDATAEMI').AsDateTime;
      try
         DM5.Query2.ExecSQL;
         fdm1StartCommit;
      except
         MessageDlg('Erro ao Criar arquivo de comparações: 239',mtError,[mbOk],0);
         ex_erroSql(01,735,'Frm_CompInvGra','Query');
         end;
      end;
   DM1.Query3.Next;
   end;
// segunda comparação
DM1.Query4.First;
DM1.Query3.First;
While not DM1.Query4.Eof do
   begin
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);
   if not DM1.Query3.Locate('CLCODPRO',DM1.Query4.fieldbyName('CLCODPRO').asfloat,[]) then
      begin
      DM5.Query2.ParamByName('TPNOME').AsString    :=DM1.Query4.fieldbyName('PDNOME').AsString;
      DM5.Query2.ParamByName('TPMARCA').AsString   :=DM1.Query4.fieldbyName('PDMARCA').AsString;
      DM5.Query2.ParamByName('TPUND').AsString     :=DM1.Query4.fieldbyName('PDUND').AsString;
      DM5.Query2.ParamByName('TPCLAS').AsString    :=DM1.Query4.fieldbyName('PDCLAS').AsString;
      DM5.Query2.ParamByName('TPFRAZAO').AsString  :=DM1.Query4.fieldbyName('FRAZAO').AsString;
      DM5.Query2.ParamByName('TPSIT').AsString     :=DM1.Query4.fieldbyName('PDSIT').AsString;
      DM5.Query2.ParamByName('TPCODFOR').AsFloat   :=DM1.Query4.fieldbyName('PDCODFOR').AsFloat;
      DM5.Query2.ParamByName('TPCODTIP').AsFloat   :=DM1.Query4.fieldbyName('CODTIP').AsFloat;
      DM5.Query2.ParamByName('TPPRECO').AsFloat    :=DM1.Query4.fieldbyName('PDPRECO').AsFloat;
      DM5.Query2.ParamByName('TPQTDINV01').AsFloat :=0;
      DM5.Query2.ParamByName('TPQTDINV02').AsFloat :=DM1.Query4.fieldbyName('CLQTD').AsFloat;
      DM5.Query2.ParamByName('TPCODPRO').AsFloat   :=DM1.Query4.fieldbyName('CLCODPRO').AsFloat;
      DM5.Query2.ParamByName('TPVALOR01').AsFloat :=0;
      DM5.Query2.ParamByName('TPVALOR02').AsFloat :=DM1.Query4.fieldbyName('CLVALOR').AsFloat;
      DM5.Query2.ParamByName('TPDATAEMI').AsDateTime:=DM1.Query4.fieldbyName('CLDATAEMI').AsDateTime;
      try
         DM5.Query2.ExecSQL;
         fdm1StartCommit;
      except
         MessageDlg('Erro ao Criar arquivo de comparações: 239',mtError,[mbOk],0);
         end;
      end;
   DM1.Query4.Next;
   end;

// fim da segunda

testeform := TFrm_CompInvGra(FindGlobalComponent('form_impres_compInvGra'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_compInvGra);

form_impres_compInvGra.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
DM5.Query2.Close;
DM5.Query2.sql.Clear;
DM5.Query2.SQL.add('Select * from '+mtabtemp+' Order by TPCODPRO,TPNOME');
DM5.Query2.Open;
if DM5.Query2.Eof then
   form_impres_compInvGra.RDprint1.ImpF(10,01,Centra('NÃO FOI ENCONTRADO NENHUMA DIFERENÇA',' ',80),mneg);
form_impres_compInvGra.mlin:=0;
form_impres_compInvGra.mpag:=0;
While not DM5.Query2.Eof do
   begin
   if form_impres_compInvGra.mlin=0 then
      begin
      form_impres_compInvGra.mlin:=01;
      form_impres_compInvGra.mpag:=form_impres_compInvGra.mpag+1;
      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',61)+'Pagina:     '+Formatfloat('0000', form_impres_compInvGra.mpag),mnormal);
      form_impres_compInvGra.mlin:=form_impres_compInvGra.mlin+1;
      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,insere2('Comparaçao de Inventário.',' ',61)+'Data: '+FormatDateTime(fdt2, date),mnormal);
      form_impres_compInvGra.mlin:=form_impres_compInvGra.mlin+1;
//      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'+-------------------+----------------------------------------------+-------+------------------+------------------+------------------+',mreduz);
      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'+-------------+-----------------------------------------+-----+--------------+--------------+--------------+--------------+---------+',mreduz);
      form_impres_compInvGra.mlin:=form_impres_compInvGra.mlin+1;
//      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'|  Codigo           |  Descricao                                   |  Und  |                         '+insere(CB_INV01.Text,' ',16)+'  |'                         +insere(CB_INV02.Text,' ',16)+'  |'                         +'       Diferenca  |',mreduz);
      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'|  Codigo     |  Descricao                              | Und |'+insere('Inv. '+CB_INV01.Text,' ',14)+'|'+insere('Inv. '+CB_INV02.Text,' ',14)+'| Valor Inv. 01| Valor Inv. 02|   Dif.  |',mreduz);
      end;
   form_impres_compInvGra.mlin:=form_impres_compInvGra.mlin+1;
   mtotinv01:=mtotinv01+DM5.Query2.FieldbyName('TPQTDINV01').AsFloat;
   mvalinv01:=mvalinv01+DM5.Query2.FieldbyName('TPVALOR01').AsFloat;
   mtotinv02:=mtotinv02+DM5.Query2.FieldbyName('TPQTDINV02').AsFloat;
   mvalinv02:=mvalinv02+DM5.Query2.FieldbyName('TPVALOR02').AsFloat;   
   form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'|'
                                   +insere2(DM5.Query2.FieldbyName('TPCODPRO').AsString,' ',13)+'|'
                                   +insere2(DM5.Query2.FieldbyName('TPNOME').AsString,' ',41)+'|'
                                   +Centra(DM5.Query2.FieldbyName('TPUND').AsString,' ',05)+'|'
                                   +insere(FormatFloat(inv_casqtd,  DM5.Query2.FieldbyName('TPQTDINV01').AsFloat),' ',14)+'|'
                                   +insere(FormatFloat(inv_casqtd,  DM5.Query2.FieldbyName('TPQTDINV02').AsFloat),' ',14)+'|'
                                   +insere(FormatFloat(mcasaspu,  DM5.Query2.FieldbyName('TPVALOR01').AsFloat),' ',14)+'|'
                                   +insere(FormatFloat(mcasaspu,  DM5.Query2.FieldbyName('TPVALOR02').AsFloat),' ',14)+'|'
                                   +insere(FormatFloat(inv_casqtd,  (DM5.Query2.FieldbyName('TPQTDINV01').AsFloat-DM5.Query2.FieldbyName('TPQTDINV02').AsFloat)),' ',07)+'  |',mreduz);
   DM5.Query2.Next;
   if DM5.Query2.Eof then
      begin
      form_impres_compInvGra.mlin:=form_impres_compInvGra.mlin+1;
      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'|'+insere2(' ',' ',13)+'|'
                                   +insere2('-Totais','.',41)+'|'
                                   +insere2('.',' ',05)+'|'
                                   +insere(FormatFloat(inv_casqtd,  mtotinv01),' ',14)+'|'
                                   +insere(FormatFloat(inv_casqtd,  mtotinv02),' ',14)+'|'
                                   +insere(FormatFloat(mcasaspu,  mvalinv01),' ',14)+'|'
                                   +insere(FormatFloat(mcasaspu,  mvalinv02),' ',14)+'|'
                                   +insere(FormatFloat(inv_casqtd,  (mtotinv01-mtotinv02)),' ',07)+'  |',mreduz);
      form_impres_compInvGra.mlin:=form_impres_compInvGra.mlin+1;
      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'+Fim.---------------+----------------------------------------------+-------+------------------+------------------+------------------+',mreduz);
      end
   else if form_impres_compInvGra.mlin>57 then
      begin
      form_impres_compInvGra.mlin:=form_impres_compInvGra.mlin+1;
      form_impres_compInvGra.RDprint1.ImpF(form_impres_compInvGra.mlin,01,'+Continua...--------+----------------------------------------------+-------+------------------+------------------+------------------+',mreduz);
      form_impres_compInvGra.mlin:=0;
      form_impres_compInvGra.RDprint1.Novapagina;
      end;
   end;
Frm_Agde.Free;
if form_impres_compInvGra.RDprint1.Setup then form_impres_compInvGra.RDprint1.Fechar;
form_impres_compInvGra.free;
form_impres_compInvGra:=nil;

end;

procedure TFrm_CompInvGra.FormCreate(Sender: TObject);
begin
if DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value then
   inv_casqtd:=mcasind
else
   inv_casqtd:=mcasqtd;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select IGNOMEINV from INVGRA '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntTostr(codemp))
                  +' Group by IGNOMEINV ');
DM1.Query2.Open;
CB_INV01.Items.Clear;
While not DM1.Query2.Eof do
   begin
   CB_INV01.Items.Add(DM1.Query2.fieldbyName('IGNOMEINV').AsString);
   DM1.Query2.Next;
   end;

CB_INV02.Items.Clear;
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   CB_INV02.Items.Add(DM1.Query2.fieldbyName('IGNOMEINV').AsString);
   DM1.Query2.Next;
   end;


end;

procedure TFrm_CompInvGra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;
end;

end.

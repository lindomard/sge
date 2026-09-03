unit S_VdaXComp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,lerarq,s_DM1,func, DB, DBTables,S_Impres;

type
  TFrm_VdaXComp = class(TForm)
    Label3: TLabel;
    MES: TEdit;
    Label1: TLabel;
    ANO: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Ped: TQuery;
    Qr_Pedtotliq: TFloatField;
    Qr_Pedporml: TFloatField;
    Qr_Pedtotdesp: TFloatField;
    Qr_Pedtotdescf: TFloatField;
    Qr_Pedtotjur: TFloatField;
    Qr_Pedtotcred: TFloatField;
    Qr_Pedlucliq: TFloatField;
    Qr_PedP1DATDOC: TDateTimeField;
    Qr_PedTOTPED: TFloatField;
    Qr_PedTAXENT: TFloatField;
    Qr_PedTAXADM: TFloatField;
    Qr_PedTOTCPR: TFloatField;
    GroupBox1: TGroupBox;
    CODCAI01: TEdit;
    CODCAI02: TEdit;
    CODCAI03: TEdit;
    CODCAI04: TEdit;
    CODCAI05: TEdit;
    CODCAI06: TEdit;
    CODCAI08: TEdit;
    CODCAI07: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ANOExit(Sender: TObject);
    procedure Qr_PedCalcFields(DataSet: TDataSet);
    procedure CODCAI01Exit(Sender: TObject);
    procedure CODCAI02Exit(Sender: TObject);
    procedure CODCAI03Exit(Sender: TObject);
    procedure CODCAI04Exit(Sender: TObject);
    procedure CODCAI05Exit(Sender: TObject);
    procedure CODCAI06Exit(Sender: TObject);
    procedure CODCAI07Exit(Sender: TObject);
    procedure CODCAI08Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    form_Impres_VdaXComp: TFrm_Impres;
  end;

var
  Frm_VdaXComp: TFrm_VdaXComp;
  mdti, mdtf: TDateTime;
  mcompldr: String;
implementation

{$R *.dfm}

procedure TFrm_VdaXComp.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_VdaXComp.BitBtn1Click(Sender: TObject);
var
mlin, mpag: Integer;
mtotped, mtaxent, mtaxadm: Real;
mtotliq, mtotcpr, mtotdesp, mtotdescf: Real;
mtotjur, mtotcred, mlucliq: Real;

begin
mdti:=StrToDate('01/'+mes.Text+'/'+ano.Text);
mdtf:=mdti;
While FormatDateTime('mm',mdtf)=MES.Text do
   begin
   mdtf:=mdtf+1;
   end;
mdtf:=mdtf-1;
Qr_Ped.SQL.Clear;
Qr_Ped.SQL.Add(' Select P1DATDOC, '
              +' sum(P1TOTALL)  as TOTPED, '
              +' sum(P1VALFRE)  as TAXENT, '
              +' sum(P1ACRECONV+P1ACREGER)   as TAXADM, '
              +' sum(P1TOTUCPR) as TOTCPR  from cadp01 '
              +' where '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
              +' P1DATDOC>='+chr(39)+FormatDateTime(fdt, mdti)+chr(39)
              +' and P1DATDOC<='+chr(39)+FormatDateTime(fdt, mdtf)+chr(39)
              +' and P1STATUS<'+mstatus_excluido+' '
              +' group by P1DATDOC ');

Qr_Ped.Open;
if Qr_Ped.Eof then
   begin
   MessageDlg('Nada ha ser impresso no período!',mtWarning,[mbOk],0);
   exit;
   end;
mcompldr:='';
mcinst:='((';
if (Trim(CODCAI01.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI01.Text);
   mcinst:=') or (';
   end;
if (Trim(CODCAI02.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI02.Text);
   mcinst:=') or (';
   end;
if (Trim(CODCAI03.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI03.Text);
   mcinst:=') or (';
   end;

if (Trim(CODCAI04.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI04.Text);
   mcinst:=') or (';
   end;
if (Trim(CODCAI05.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI05.Text);
   mcinst:=') or (';
   end;
if (Trim(CODCAI06.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI06.Text);
   mcinst:=') or (';
   end;
if (Trim(CODCAI07.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI07.Text);
   mcinst:=') or (';
   end;
if (Trim(CODCAI08.Text)<>'') then
   begin
   mcompldr:=mcompldr+mcinst+' CODBCO=0'+Trim(CODCAI08.Text);
   mcinst:=') or (';
   end;
if mcinst=') or (' then
   begin
   mcompldr:=' and '+mcompldr+'))';
   end;


testeform := TFrm_VdaXComp(FindGlobalComponent('form_Impres_VdaXComp'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_VdaXComp);

form_Impres_VdaXComp.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
While not Qr_Ped.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      form_Impres_VdaXComp.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      form_Impres_VdaXComp.RDprint1.ImpF(01,66,'Pagina: '+FormatFloat('0000',mpag),mnormal);
      form_Impres_VdaXComp.RDprint1.Impf(02,01,'Relatorio demonstrativo. Competencia '+MES.Text+'/'+ANO.Text,mnormal);
      form_Impres_VdaXComp.RDprint1.ImpF(02,66,'Data: '+FormatDateTime(fdt, date),mnormal);
      form_Impres_VdaXComp.RDprint1.ImpF(03,01,'+--+------------+------------+------------+------------+------------+-------+----------+----------+----------+----------+----------+',mreduz);
      form_Impres_VdaXComp.RDprint1.ImpF(04,01,':dd:Tot Pedidos :   Vlr.Frete:V.Acrescimos:Tot.Liquido : Total Custo:       :Despesas  :Desc.Finan:Jur. Pagos:Outras Rec:Lucro Liq.:',mreduz);
      mlin:=4;
      end;
   mlin:=mlin+1;
   form_Impres_VdaXComp.RDprint1.ImpF(mlin,01,':'+FormatDateTime('dd',Qr_PedP1DATDOC.Value)+':'
                           +insere(FormatFloat(mcasas, Qr_PedTOTPED.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Qr_PedTAXENT.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Qr_PedTAXADM.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Qr_Pedtotliq.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Qr_PedTOTCPR.Value),' ',12)+':'
                           +insere(FormatFloat(mcasas, Qr_Pedporml.Value),' ',07)+':'
                           +insere(FormatFloat(mcasas, Qr_Pedtotdesp.Value),' ',10)+':'
                           +insere(FormatFloat(mcasas, Qr_Pedtotdescf.Value),' ',10)+':'
                           +insere(FormatFloat(mcasas, Qr_Pedtotjur.Value),' ',10)+':'
                           +insere(FormatFloat(mcasas, Qr_Pedtotcred.Value),' ',10)+':'
                           +insere(FormatFloat(mcasas, Qr_Pedlucliq.Value),' ',10)+':',mreduz);

  mtotped  :=mtotped  +Qr_PedTOTPED.Value;
  mtaxent  :=mtaxent  +Qr_PedTAXENT.Value;
  mtaxadm  :=mtaxadm  +Qr_PedTAXADM.Value;
  mtotliq  :=mtotliq  +Qr_Pedtotliq.Value;
  mtotcpr  :=mtotcpr  +Qr_PedTOTCPR.Value;
  mtotdesp :=mtotdesp +Qr_Pedtotdesp.Value;
  mtotdescf:=mtotdescf+Qr_Pedtotdescf.Value;
  mtotjur  :=mtotjur  +Qr_Pedtotjur.Value;
  mtotcred :=mtotcred +Qr_Pedtotcred.Value;
  mlucliq  :=mlucliq  +Qr_Pedlucliq.Value;


   Qr_Ped.Next;
   if Qr_Ped.Eof then
      begin
      mlin:=mlin+1;
      form_Impres_VdaXComp.RDprint1.ImpF(mlin,01,':tt:'
                           +insere(FormatFloat(mcasas, mtotped),' ',12)+':'
                           +insere(FormatFloat(mcasas, mtaxent),' ',12)+':'
                           +insere(FormatFloat(mcasas, mtaxadm),' ',12)+':'
                           +insere(FormatFloat(mcasas, mtotliq),' ',12)+':'
                           +insere(FormatFloat(mcasas, mtotcpr),' ',12)+':'
                           +insere(FormatFloat(mcasas, 0),' ',07)+':'
                           +insere(FormatFloat(mcasas, mtotdesp),' ',10)+':'
                           +insere(FormatFloat(mcasas, mtotdescf),' ',10)+':'
                           +insere(FormatFloat(mcasas, mtotjur),' ',10)+':'
                           +insere(FormatFloat(mcasas, mtotcred),' ',10)+':'
                           +insere(FormatFloat(mcasas, mlucliq),' ',10)+':',mreduz);
      mlin:=mlin+1;
      form_Impres_VdaXComp.RDprint1.ImpF(mlin,01,'+--+------------+------------+------------+------------+------------+-------+----------+----------+----------+----------+----------+',mreduz);
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_Impres_VdaXComp.RDprint1.ImpF(mlin,01,'+--+------------+------------+------------+------------+------------+-------+----------+----------+----------+----------+----------+',mreduz);
      form_Impres_VdaXComp.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
if form_Impres_VdaXComp.RDprint1.setup then form_Impres_VdaXComp.RDprint1.Fechar;
form_Impres_VdaXComp.free;
form_Impres_VdaXComp:=nil;

{
:dd:Tot Pedidos :Tx.Entrega  :Tx.Administ.:Tot.Liquido : Total Custo:       :Despesas  :Desc.Finan:Jur. Pagos:Outras Rec:Lucro Liq.:
:01:zzzzz.zz9,99:zzzzz.zz9,99:zzzzz.zz9,99:zzzzz.zz9,99:z.zzz.zz9,99:1233.11:zzzzzz9,99:zzzzzz9,99:zzzzzz9,99:zzzzzz9,99:zzzzzz9,99:

}

end;

procedure TFrm_VdaXComp.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<1) or (ValFloat(mes.Text)>12) then
   begin
   MessageDlg('Mês Invalido!',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;
end;

procedure TFrm_VdaXComp.FormCreate(Sender: TObject);
begin
MES.Text:=FormatDateTime('mm',Date);
ANO.Text:=FormatDateTime('yyyy',Date);
end;

procedure TFrm_VdaXComp.ANOExit(Sender: TObject);
begin
ANO.Text:=FormatFloat('0000',valfloat(ANO.Text));
end;

procedure TFrm_VdaXComp.Qr_PedCalcFields(DataSet: TDataSet);
begin
Qr_Pedtotliq.Value:=Qr_PedTOTPED.Value-Qr_PedTAXENT.Value-Qr_PedTAXADM.Value;
Qr_Pedporml.Value:=(Qr_Pedporml.Value*100)/Qr_Pedtotliq.Value;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.add('Select sum(VALORR) as total from CADLDR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                  +' NATDC<>''C'' and  DATAREAL='+chr(39)+FormatDateTime(fdt, Qr_PedP1DATDOC.Value)+chr(39)
                  +mcompldr);

DM1.Query1.Open;
Qr_Pedtotdesp.Value:=DM1.Query1.Fields[0].AsFloat;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.add('Select sum(CADESC) as total from CADDAP where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and ')
                  +' CADTBX='+chr(39)+FormatDateTime(fdt, Qr_PedP1DATDOC.Value)+chr(39));
DM1.Query1.Open;
Qr_Pedtotdescf.Value:=DM1.Query1.Fields[0].AsFloat;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.add('Select sum(CAJUROS) as total from CADDAP where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and ')
                  +' CADTBX='+chr(39)+FormatDateTime(fdt, Qr_PedP1DATDOC.Value)+chr(39));
DM1.Query1.Open;
Qr_Pedtotjur.Value:=DM1.Query1.Fields[0].AsFloat;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.add('Select sum(VALORR) as total from CADLDR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                  +' NATDC=''C'' and  DATAREAL='+chr(39)+FormatDateTime(fdt, Qr_PedP1DATDOC.Value)+chr(39)
                  +mcompldr);

DM1.Query1.Open;
Qr_Pedtotcred.Value:=DM1.Query1.Fields[0].AsFloat;


end;

procedure TFrm_VdaXComp.CODCAI01Exit(Sender: TObject);
begin
CODCAI01.Text:=IntToStr(ValInt(CODCAI01.text));
if ValInt(CODCAI01.Text)<=0 then
   CODCAI01.Text:='';

end;

procedure TFrm_VdaXComp.CODCAI02Exit(Sender: TObject);
begin
CODCAI02.Text:=IntToStr(ValInt(CODCAI02.text));
if ValInt(CODCAI02.Text)<=0 then
   CODCAI02.Text:='';

end;

procedure TFrm_VdaXComp.CODCAI03Exit(Sender: TObject);
begin
CODCAI03.Text:=IntToStr(ValInt(CODCAI03.text));
if ValInt(CODCAI03.Text)<=0 then
   CODCAI03.Text:='';

end;

procedure TFrm_VdaXComp.CODCAI04Exit(Sender: TObject);
begin
CODCAI04.Text:=IntToStr(ValInt(CODCAI04.text));
if ValInt(CODCAI04.Text)<=0 then
   CODCAI04.Text:='';

end;

procedure TFrm_VdaXComp.CODCAI05Exit(Sender: TObject);
begin
CODCAI05.Text:=IntToStr(ValInt(CODCAI05.text));
if ValInt(CODCAI05.Text)<=0 then
   CODCAI05.Text:='';

end;

procedure TFrm_VdaXComp.CODCAI06Exit(Sender: TObject);
begin
CODCAI06.Text:=IntToStr(ValInt(CODCAI06.text));
if ValInt(CODCAI06.Text)<=0 then
   CODCAI06.Text:='';

end;

procedure TFrm_VdaXComp.CODCAI07Exit(Sender: TObject);
begin
CODCAI07.Text:=IntToStr(ValInt(CODCAI07.text));
if ValInt(CODCAI07.Text)<=0 then
   CODCAI07.Text:='';

end;

procedure TFrm_VdaXComp.CODCAI08Exit(Sender: TObject);
begin
CODCAI08.Text:=IntToStr(ValInt(CODCAI08.text));
if ValInt(CODCAI08.Text)<=0 then
   CODCAI08.Text:='';

end;

procedure TFrm_VdaXComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_Sintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, S_DM1, S_DM5, func, db, dbtables, Grids, DBGrids,
  StdCtrls, Mask, Buttons, S_LRS, S_LRE, S_Pgb,lerarq,S_Stru,S_UF,S_Sintegra_Advert,
  CheckLst, S_Impres;

type
  TFrm_Sintegra = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label2: TLabel;
    RGTNF: TRadioGroup;
    Label3: TLabel;
    UF: TEdit;
    Label4: TLabel;
    NARQ: TEdit;
    bbSair: TBitBtn;
    bbLayout: TBitBtn;
    NOMUF: TEdit;
    bbGerarSintegra: TBitBtn;
    Qr_Tempor: TQuery;
    Label5: TLabel;
    MPASTA: TEdit;
    RG_DOC: TRadioGroup;
    rg_oper: TRadioGroup;
    Label13: TLabel;
    NUMNF: TEdit;
    CB_TIPO74: TCheckBox;
    CB_NOMEINV: TComboBox;
    lbl_inventar: TLabel;
    CB_FINALIDADE: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    CB_CODNATOP: TComboBox;
    Label8: TLabel;
    CB_CONVENIO: TComboBox;
    gb_registros: TGroupBox;
    CLBRegistros: TCheckListBox;
    CB_IPIICMS: TCheckBox;
    CB_USACUPOM: TCheckBox;
    RG_NFCANC: TRadioGroup;
    cb_protocolo: TComboBox;
    Label15: TLabel;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure UFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UFExit(Sender: TObject);
    procedure bbLayoutClick(Sender: TObject);
    procedure bbGerarSintegraClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CB_TIPO74Click(Sender: TObject);
    procedure CB_NOMEINVExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CLBRegistrosClick(Sender: TObject);
  private
    { Private declarations }
    Function fSintegraCab(ptipo: Integer): Boolean;
    Function fSintegraImp(ptipo: Integer): Boolean;
    function fsintegraGera(pTipo: String): Boolean;
    function fsintegratesta90(ptipo: Integer): Boolean;
    function fsintegraGeraMAID(pTipo: String): Boolean;


    function fsintegraGeraClientDataSet(pTabela: tdataset; pTipo: String): Boolean;


  public

    { Public declarations }
    form_impres_sintegra: tfrm_impres;
  end;

var
  Frm_Sintegra: TFrm_Sintegra;
  form_lrs: TFrm_LRS;
  mRegistro: array[1..22] of string;
  mlinha,mcam,marq: String;
  mtot10, mtot11, mtot50, mtot51, mtot53,mtot54: Real;
  mtot55, mtot60, mtot61, mtot70, mtot71,mtot74: Real;
  mtot75, mtot90: Real;

  mtot60M, mtot60A, mtot60D, mtot60I, mtot60R: Real;

  mcodcon: Integer;
  mdatai, mdataf: TDateTime;
  f: TextFile;
  fdt4: String;
const
  mitemreg10 = 0;
  mitemreg11 = 1;
  mitemreg50 = 2;
  mitemreg51 = 3;
  mitemreg53 = 4;
  mitemreg54 = 5;
  mitemreg55 = 6;
  mitemreg60 = 7;
  mitemreg61 = 8;
  mitemreg70 = 9;
  mitemreg71 = 10;
  mitemreg74 = 11;
  mitemreg75 = 12;
  mitemreg90 = 13;
  mitemtodos = 14;





implementation

uses func_excecoes, S_Agde, S_DM4;


{$R *.dfm}

procedure TFrm_Sintegra.bbSairClick(Sender: TObject);
begin
   close;
end;

procedure TFrm_Sintegra.FormCreate(Sender: TObject);
var
dia,mes,ano : Word;
begin
Application.createform(tfrm_lrs, form_lrs);
{
// --> Formação do Hints
RxHints.SetHintStyle(hsEllipse, 15, true, taLeftJustify ); // Forma de Balão
Application.HintColor := $005BFFAD ; // muda a cor de fundo
Application.HintHidePause := 100000 ; // Sustenta o Hint em quase 2min

// --> mostra o Hint com mais de uma linha
}
DecodeDate(date, ano,mes,dia);
if dia<28 then
   begin
   mes:=mes-1;
   if mes<1 then
      begin
      mes:=12;
      ano:=ano-1;
      end;
   end;
mdt1.Text:='01/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano);
mdt2.Text:=FormatDateTime(fdt2, fdatafinal(1,StrToDate(mdt1.Text)));
NARQ.Text:='SINT'+FormatDatetime('mmyyyy', StrtoDate(MDT2.Text))+'.TXT';
if Frm_Stru=nil then
   Application.CreateForm(TFrm_Stru, Frm_Stru);
DM5.Qr_NS.Close;
DM5.Qr_NE.Close;
CLBRegistros.ItemIndex:=14;
CLBRegistros.Checked[14]:=true;
CLBRegistrosClick(self);
if flfilpad(0,'_LRE','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_IPIICMS',[]) then
      CB_IPIICMS.Checked:=DM4.Tb_FilPad2FPVALOR.Value='true';
   end;
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Select count(*) from CADECF');
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   RG_DOC.ItemIndex:=0
else
   RG_DOC.ItemIndex:=1;



end;

procedure TFrm_Sintegra.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Frm_Stru.Free;
Frm_Stru:=nil;
end;

procedure TFrm_Sintegra.UFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   UF.Text:=fChamauf(0,'frm_sintrega','');
   if trim(uf.Text)<>'' then
      UFExit(self);
   end;

end;

procedure TFrm_Sintegra.UFExit(Sender: TObject);
begin
if Trim(UF.Text)='' then
   NOMUF.Text:='Todos...'
else
   begin
   if not flcaduf(0,0,0,UF.Text) then
      begin
      fmensagem('Estado Não Cadastrado!',0,['0'],0);
      UF.SetFocus;
      end;
   end;

end;

procedure TFrm_Sintegra.bbLayoutClick(Sender: TObject);
var
mreg: Integer;
mdatcon: TDateTime;
begin
mRegistro[01]:='Registro do tipo 10';
mRegistro[02]:='Registro do tipo 11';
mRegistro[03]:='Registro do tipo 50';
mRegistro[04]:='Registro do tipo 51';
mRegistro[05]:='Registro do tipo 53';
mRegistro[06]:='Registro do tipo 54';
mRegistro[07]:='Registro do tipo 55';
mRegistro[08]:='Registro do tipo 56';
mRegistro[09]:='Registro do tipo 60A';
mRegistro[10]:='Registro do tipo 60D';
mRegistro[11]:='Registro do tipo 60I';
mRegistro[12]:='Registro do tipo 60M';
mRegistro[13]:='Registro do tipo 60R';
mRegistro[14]:='Registro do tipo 61';
mRegistro[15]:='Registro do tipo 61R';
mRegistro[16]:='Registro do tipo 70';
mRegistro[17]:='Registro do tipo 71';
mRegistro[18]:='Registro do tipo 74';
mRegistro[19]:='Registro do tipo 75';
mRegistro[20]:='Registro do tipo 76';
mRegistro[21]:='Registro do tipo 77';
mRegistro[22]:='Registro do tipo 90';

testeform := TFrm_Sintegra(FindGlobalComponent('form_impres_sintegra'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_sintegra);
   end;

form_impres_sintegra.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
if CB_CONVENIO.ItemIndex=1 then
   mdatcon:=StrToDate('31/12/2002')
else if CB_CONVENIO.ItemIndex=2 then
   mdatcon:=StrToDate('31/12/2003')
else if CB_CONVENIO.ItemIndex=3 then
   mdatcon:=StrToDate('31/12/2004')
else
   mdatcon:=date;



fSintegraCab(0);
mcodcon:=CB_CONVENIO.ItemIndex;
mcodcon:=mcodcon+1;
Frm_Stru.fsintTipo10(mcodcon-1,mdatcon);
mreg:=1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo11(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo50(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo51(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo53(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo54(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo55(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo56(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo60M(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);


Frm_Stru.fsintTipo60A(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo60D(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo60I(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);


Frm_Stru.fsintTipo60R(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo61(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo61R(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo70(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo71(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo74(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo75(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo76(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

Frm_Stru.fsintTipo77(mcodcon-1,mdatcon);
mreg:=mreg+1;
fSintegraImp(mreg);

FSintegraImp(90);
if form_impres_sintegra.RDprint1.Setup then form_impres_sintegra.RDprint1.Fechar;
form_impres_sintegra:=nil;
form_impres_sintegra.free;



end;

Function TFrm_Sintegra.fSintegraCab(ptipo: Integer): Boolean;
begin
if mlin>58 then
   begin
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
   form_impres_sintegra.RDprint1.Novapagina;
   mlin:=0;
   end;
if mlin=0 then
   begin
   mpag:=mpag+1;
   mlin:=1;
   mcinst4:='Layout do Arquivo Magnético.'+'SGE Versão: '+pversao+'.';
   mlin:=form_impres_sintegra.fImprimirCabecalho(136,mcinst4);
   mlin:=mlin+1;


   form_impres_sintegra.RDprint1.impf(mlin,01,Centra('Convenio: '+CB_CONVENIO.Items[CB_CONVENIO.ITEMINDEX],' ',80),mneg);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,insere2('-','-',80),mnormal);
   mlin:=mlin+1;
   end;
result:=True;

end;


Function TFrm_Sintegra.fSintegraImp(ptipo: Integer): Boolean;
var
x: Integer;
begin
if ptipo=90 then
   begin
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,Centra('Registro do tipo 90',' ',80),mneg);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|Sequencia|Campo                 | Tipo    |Inicio  | Tamanho |Termino|Decimais|',mnormal);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    01   | T90_TIPO             |  I      |  01    |   02    |  02   |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    02   | CNPJ                 |  I      |  03    |   14    |  16   |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);

   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    03   | INSCRICAO            |  S      |  17    |   14    |  30   |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);

   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    04   | TIPO A SER TOTALIZADO|  I      |  31    |   02    |  32   |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);

   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    05...| TOTAL REG. N         |  I      |  33    |   08    |  40   |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);


   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    ...  | regitros N...        |  I      |  seg   |   seg   |  seg  |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);

   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    ...  | NUM.REG.TIPO 90      |   I     |  01    |   126   |  126  |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);


   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    N2...| 99                   |  I      |  ...   |   09    |  ...  |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|    ...  | 0                    |  I      |  126   |    01   |  126  |        |',mnormal);
   mlin:=mlin+1;
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
   end
else
   begin
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,Centra(mRegistro[ptipo],' ',80),mneg);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'|Sequencia|Campo                 | Tipo    |Inicio  | Tamanho |Termino|Decimais|',mnormal);
   mlin:=mlin+1;
   fSintegraCab(0);
   form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
   for x:=0 to Frm_Stru.STG1.RowCount-1 do
      begin
      if Trim(Frm_Stru.STG1.Cells[0,x])='' then
         Continue;
      mlin:=mlin+1;
      fSintegraCab(0);
      form_impres_sintegra.RDprint1.ImpF(mlin,01,'|'+Centra(IntTostr(x+1),' ',08)+'|'
                              +Insere2(Frm_Stru.STG1.Cells[0,x],' ',22)+'|'
                              +Centra(Frm_Stru.STG1.Cells[1,x],' ',08)+'|'
                              +Centra(Frm_Stru.STG1.Cells[3,x],' ',07)+'|'
                              +Centra(Frm_Stru.STG1.Cells[2,x],' ',08)+'|'
                              +Centra(FloatToStr(ValFloat(Frm_Stru.STG1.Cells[3,x])
                                                 +ValFloat(Frm_Stru.STG1.Cells[2,x])-1)
                                                 ,' ',06)+'|'
                              +Centra(Frm_Stru.STG1.Cells[4,x],' ',07)+'|',mnormal);
      mlin:=mlin+1;
      form_impres_sintegra.RDprint1.ImpF(mlin,01,'+---------+----------------------+---------+--------+---------+-------+--------+',mnormal);
      end;
   end;
Result:=True;
end;





procedure TFrm_Sintegra.bbGerarSintegraClick(Sender: TObject);
var
x: Integer;
Query_temp: TQuery;
minstrucao_qrns: string;
pcanc: integer;
begin
pcanc:=0;
bbGerarSintegra.Enabled:=false;

Query_temp:=TQuery.Create(nil);
Query_temp.DatabaseName:='SG_ASSOC';
Query_temp.SQL.Add('update CADNS set NSCFO1 '
                  +' = (select min(P2CFO) from CADP02 where P2CHAVE=NSCHAVEP AND P2ORDEM=NSORDEMP AND P2CODEMP=NSCODEMP AND P2LOTSEQ=NSLOTSEQ_CP) '
                  +' where NSCFO1 is null '
                  +' AND nschavep>0 '
                  +' AND NSDTEMIS>'+QuotedStr('01/05/2012'));
try
   Query_temp.ExecSQL;
   fdm1StartCommit;
except
   end;
FreeAndNil(Query_temp);

if CB_TIPO74.Checked then
   begin
   if Trim(CB_NOMEINV.Text)='' then
      begin
      fmensagem('Favor Selecionar um inventário válido!',0,['0'],0);
      CB_NOMEINV.SetFocus;
      bbGerarSintegra.Enabled:=true;
      exit;
      end;
   end;
if Frm_Sintegra_Advert=nil then
   Application.Createform(Tfrm_Sintegra_Advert, Frm_Sintegra_Advert)
else
   begin
   Frm_Sintegra_Advert.Free;
   Frm_Sintegra_Advert:=nil;
   Application.Createform(Tfrm_Sintegra_Advert, Frm_Sintegra_Advert);
   end;
Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Clear;
if CB_USACUPOM.Checked then
   form_lrs.mTabelaItens_Cupom:='CADP02_VDACF'
else
   form_lrs.mTabelaItens_Cupom:='CADP02';

DM5.Qr_NS.Close;
DM5.Qr_NE.Close;
fdt4:='MM/DD/YYYY';
if trim(MDT1.Text)='/  /' then
   begin
   fmensagem('Data Inicial tem que ser preenchida!',0,['0'],0);
   MDT1.SetFocus;
   bbGerarSintegra.Enabled:=true;
   exit;
   end;
if trim(MDT2.Text)='/  /' then
   begin
   fmensagem('Data Final tem que ser preenchida!',0,['0'],0);
   bbGerarSintegra.Enabled:=true;
   MDT2.SetFocus;
   exit;
   end;

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text) > StrToDate(MDT2.Text) then
      begin
      fmensagem('Invalido!. Data Inicial Maior que Final',0,['0'],0);
      MDT1.SetFocus;
      bbGerarSintegra.Enabled:=true;
      exit;
      end;
   end;
if Trim(NARQ.Text)='' then
   begin
   fmensagem('Favor Digitar um Nome de Saida Valido!',0,['0'],0);
   NARQ.SetFocus;
   bbGerarSintegra.Enabled:=true;
   exit;
   end;
marq:=NARQ.Text;
mcam:=MPASTA.Text+NARQ.Text;

if FileExists(mcam) then
   begin
   mcinst:='Ja Existe um arquivo com este nome'+#13
           +'Nome: '+NARQ.Text+'!'+#13
           +'Deseja Sobrepor?';
   if fMensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
      begin
      bbGerarSintegra.Enabled:=true;
      exit;
      end;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Show;
Frm_Agde.Update;

fAbrirClientDataSet(DM5.TB_LRS);
fAbrirClientDataSet(DM5.TB_RUF);

fAbrirClientDataSet(DM5.cds_tipo61);
fAbrirClientDataSet(DM5.cds_tipo61r);



mtmp_R10 :=fProcTemp(13);
if DM5.Tb_R10.Active then
   DM5.Tb_R10.Close;
if DM5.Tb_R10.Exists then
   DM5.Tb_R10.DeleteTable;
DM5.Tb_R10.TableName:=mtmp_R10;
DM5.Tb_R10.CreateTable;
DM5.Tb_R10.Open;
DM5.Tb_R10.Append;
DM5.Tb_R10T10_TIPO.Value       :='10';
DM5.Tb_R10T10_CNPJ.Value       :=FormatFloat('00000000000000', DM1.Tb_EmpCGC.Value);
if UpperCase(DM1.Tb_EmpINSCRICAO.Value)='ISENTO' then
   DM5.Tb_R10T10_IE.Value      :='ISENTO'
else
   DM5.Tb_R10T10_IE.Value         := fdeixanum(DM1.Tb_EmpINSCRICAO.Value);
DM5.Tb_R10T10_RAZAOSOCIAL.Value:=insere2(DM1.Tb_EmpRAZAO.Value,' ',35);
DM5.Tb_R10T10_MUNICIPIO.Value  :=insere2(DM1.Tb_EmpCIDADE.Value,' ',30);
DM5.Tb_R10T10_UF.Value         :=insere2(DM1.Tb_EmpUF.Value,' ',2);
DM5.Tb_R10T10_FAX.Value        :=FormatFloat('0000000000', fsonumero(DM1.Tb_EmpFAX.Value));
DM5.Tb_R10T10_DATAINICIAL.Value:=StrtoDate(MDT1.Text);
DM5.Tb_R10T10_DATAFINAL.Value  :=StrtoDate(MDT2.Text);
DM5.Tb_R10T10_CODCONV.Value    :=IntTostr(CB_CONVENIO.ItemIndex+1);
DM5.Tb_R10T10_CODNATOP.Value   :=IntTostr(CB_CODNATOP.ItemIndex+1);
DM5.Tb_R10T10_CODFIN.Value     :=IntTostr(CB_FINALIDADE.ItemIndex+1);
DM5.Tb_R10.Post;
DM5.Tb_R10.Close;


mtmp_R11 :=fProcTemp(13);
if DM5.Tb_R11.Active then
   DM5.Tb_R11.Close;
if DM5.Tb_R11.Exists then
   DM5.Tb_R11.DeleteTable;
DM5.Tb_R11.TableName:=mtmp_R11;
DM5.Tb_R11.CreateTable;
DM5.Tb_R11.Open;
DM5.Tb_R11.Append;
DM5.Tb_R11T11_TIPO.Value        :='11';
DM5.Tb_R11T11_LOGRADOURO.Value  :=insere2(DM1.Tb_EmpENDERECO.Value,' ',34);
DM5.Tb_R11T11_NUMERO.Value      :=insere(DM1.Tb_EmpNUMERO.AsString,'0',5);
DM5.Tb_R11T11_COMPLEMENTO.Value :=' ';
DM5.Tb_R11T11_BAIRRO.Value      :=insere2(DM1.Tb_EmpBAIRRO.Value,' ',15);
DM5.Tb_R11T11_CEP.Value         :=fdeixanum(DM1.Tb_EmpCEP.Value);
DM5.Tb_R11T11_NOMECONTATO.Value :=DM1.Tb_EmpRESPONS.Value;
DM5.Tb_R11T11_TELEFONE.Value    :=insere(fdeixanum(DM1.Tb_EmpFONERES.Value),'0',12);
DM5.Tb_R11.Post;
DM5.Tb_R11.Close;

mtmp_R70 :=fProcTemp(11);
if DM5.TB_R70.Active then
   DM5.TB_R70.Close;
if DM5.TB_R70.Exists then
   DM5.TB_R70.DeleteTable;
DM5.TB_R70.TableName:=mtmp_R70;
DM5.TB_R70.CreateTable;
DM5.Tb_R70.Open;

mtmp_R74 :=fProcTemp(12);
if DM5.TB_R74.Active then
   DM5.TB_R74.Close;
if DM5.TB_R74.Exists then
   DM5.TB_R74.DeleteTable;
DM5.TB_R74.TableName:=mtmp_R74;
DM5.TB_R74.CreateTable;
DM5.Tb_R74.Open;


mtmp_R71 :=fProcTemp(12);
if DM5.TB_R71.Active then
   DM5.TB_R71.Close;
if DM5.TB_R71.Exists then
   DM5.TB_R71.DeleteTable;
DM5.TB_R71.TableName:=mtmp_R71;
DM5.TB_R71.CreateTable;
DM5.Tb_R71.Open;


mtmp_R50 :=fProcTemp(11);
if DM5.TB_R50.Active then
   DM5.TB_R50.Close;
if DM5.TB_R50.Exists then
   DM5.TB_R50.DeleteTable;
DM5.TB_R50.TableName:=mtmp_R50;
DM5.TB_R50.CreateTable;
DM5.Tb_R50.Open;


mtmp_R51 :=fProcTemp(13);
if DM5.TB_R51.Active then
   DM5.TB_R51.Close;
if DM5.TB_R51.Exists then
   DM5.TB_R51.DeleteTable;
DM5.TB_R51.TableName:=mtmp_R51;
DM5.TB_R51.CreateTable;
DM5.TB_R51.Open;
mtmp_R53 :=fProcTemp(13);
if DM5.TB_R53.Active then
   DM5.TB_R53.Close;
if DM5.TB_R53.Exists then
   DM5.TB_R53.DeleteTable;
DM5.TB_R53.TableName:=mtmp_R53;
DM5.TB_R53.CreateTable;
DM5.TB_R53.Open;

mtmp_R54 :=fProcTemp(13);
if DM5.TB_R54.Active then
   DM5.TB_R54.Close;
if DM5.TB_R54.Exists then
   DM5.TB_R54.DeleteTable;
DM5.TB_R54.TableName:=mtmp_R54;
DM5.TB_R54.CreateTable;
DM5.TB_R54.Open;

mtmp_R55 :=fProcTemp(13);
if DM5.TB_R55.Active then
   DM5.TB_R55.Close;
if DM5.TB_R55.Exists then
   DM5.TB_R55.DeleteTable;
DM5.TB_R55.TableName:=mtmp_R55;
DM5.TB_R55.CreateTable;
DM5.TB_R55.Open;


mtmp_R60M :=fProcTemp(13);
if DM5.Tb_R60M.Active then
   DM5.Tb_R60M.Close;
if DM5.TB_R60M.Exists then
   DM5.TB_R60M.DeleteTable;
DM5.TB_R60M.TableName:=mtmp_R60M;
DM5.TB_R60M.CreateTable;
DM5.TB_R60M.Open;

mtmp_R60A :=fProcTemp(13);
if DM5.Tb_R60A.Active then
   DM5.Tb_R60A.Close;
if DM5.TB_R60A.Exists then
   DM5.TB_R60A.DeleteTable;
DM5.TB_R60A.TableName:=mtmp_R60A;
DM5.TB_R60A.CreateTable;
DM5.TB_R60A.Open;

mtmp_R60D :=fProcTemp(13);
if DM5.Tb_R60D.Active then
   DM5.Tb_R60D.Close;
if DM5.TB_R60D.Exists then
   DM5.TB_R60D.DeleteTable;
DM5.TB_R60D.TableName:=mtmp_R60D;
DM5.TB_R60D.CreateTable;
DM5.TB_R60D.Open;

mtmp_R60I :=fProcTemp(13);
if DM5.Tb_R60I.Active then
   DM5.Tb_R60I.Close;
if DM5.TB_R60I.Exists then
   DM5.TB_R60I.DeleteTable;
DM5.TB_R60I.TableName:=mtmp_R60I;
DM5.TB_R60I.CreateTable;
DM5.TB_R60I.Open;

mtmp_R60R :=fProcTemp(13);
if DM5.Tb_R60R.Active then
   DM5.Tb_R60R.Close;
if DM5.TB_R60R.Exists then
   DM5.TB_R60R.DeleteTable;
DM5.TB_R60R.TableName:=mtmp_R60R;
DM5.TB_R60R.CreateTable;
DM5.TB_R60R.Open;

mtmp_R75 :=fProcTemp(13);
if DM5.TB_R75.Active then
   DM5.TB_R75.Close;
if DM5.TB_R75.Exists then
   DM5.TB_R75.DeleteTable;
DM5.TB_R75.TableName:=mtmp_R75;
DM5.TB_R75.CreateTable;
DM5.TB_R75.Open;
mtmp_RE :=fProcTemp(13);
if DM5.TB_RE.Active then
   DM5.TB_RE.Close;
if DM5.TB_RE.Exists then
   DM5.TB_RE.DeleteTable;
DM5.TB_RE.TableName:=mtmp_RE;
DM5.TB_RE.CreateTable;
DM5.TB_RE.Open;




mtmp_RsCfo :=fProcTemp(13);
if DM5.Tb_RsCFO.Active then
   DM5.TB_RsCFO.Close;
if DM5.TB_RsCFO.Exists then
   DM5.TB_RsCFO.DeleteTable;
DM5.TB_RsCFO.TableName:=mtmp_RsCFO;
DM5.TB_RsCFO.CreateTable;
DM5.Tb_RsCFO.Open;

fAbrirClientDataSet(DM5.Tb_RSint);


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.Sql.add('Update CADP02 set P2ALIPI=0 WHERE P2ALIPI<>0 AND P2VALIPI=0 ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;


DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.Sql.add('Update CADP02 set P2ALIQ=0 WHERE (P2ICMSN=0 AND P2ICMSNR=0) AND P2ALIQ>0 ');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.Sql.add('Update CADP02 set P2BASEN=0 WHERE P2BASEN<0');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   end;

DM5.Qr_Ns.close;
DM5.Qr_Ns.SQL.Clear;
minstrucao_qrns:='';

if RGTNF.ItemIndex<>2 then
   begin

   form_lrs.FAbrirBanco_ns(valint(NUMNF.Text),RG_DOC.ItemIndex
                           ,rg_oper.ItemIndex
                           ,RG_NFCANC.ItemIndex
                           ,fStringtodate(MDT1.Text)
                           ,fStringtodate(MDT2.Text),uf.Text,cb_protocolo.Text);


{


   if RG_DOC.ItemIndex<>2 then
      begin
      minstrucao_qrns:=
      fLerdm5qrns(iif(RG_DOC.ItemIndex=1,true,false)
                 ,minstrucao_qrns
                 ,rg_oper.ItemIndex
                 ,RG_DOC.ItemIndex
                 ,pcanc // todas as notas canceladas e outras
                 ,fsonumero(NUMNF.text)
                 ,fStringtodate(MDT1.Text)
                 ,fStringtodate(MDT2.Text)
                 ,uf.text);


      end;


   if (RG_DOC.ItemIndex=2) OR (RG_DOC.ItemIndex=0) then
      begin
      if RG_DOC.ItemIndex=0 then
         minstrucao_qrns:=minstrucao_qrns+' union all ';
      minstrucao_qrns:=
      fLerdm5qrns(true,minstrucao_qrns, rg_oper.ItemIndex,RG_DOC.ItemIndex,pcanc,fsonumero(NUMNF.text),fStringtodate(MDT1.Text),fStringtodate(MDT2.Text),uf.text);
      end;
}
   form_lrs.GeraLFS(1,0,RG_DOC.ItemIndex,0,StrToDate(MDT1.Text),StrToDate(MDT2.Text),true,'');
   end;

if RGTNF.ItemIndex<>1 then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADFOR' ,'FCODEMP','NECODEMP' ,'FCODFOR' ,'NECODFOR');

   DM5.QR_NE.Close;
   DM5.Qr_NE.SQL.Clear;
   DM5.Qr_Ne.SQL.Add('Select  NECODEMP, NECODFOR '
                    +'       ,NENUMERO '
                    +'       ,NESERIE '
                    +'       ,TO_CHAR(NECFO) AS NECFO '
                    +'       ,NEDTENT '
                    +'       ,NEDTEMIS '
                    +'       ,NESUBSER '
                    +'        ,NEBASEN '
                    +'       ,NEICMSN '
                    +'       ,NEBASER '
                    +'       ,NEICMSR '
                    +'       ,NEFRETE '
                    +'       ,NEALIQ_FRETE '
                    +'       ,NEICMS_FRETE '
                    +'       ,NESEG '
                    +'       ,NEOUTRAS '
                    +'       ,NEOUTRAS_ALIQ '
                    +'       ,NEOUTRAS_IMP '
                    +'       ,NEIPI '
                    +'       ,NETOTMER '
                    +'       ,NETOTNOT '
                    +'        ,NETOTDES '
                    +'       ,NETOTPOS '
                    +'       ,NETOTNEG '
                    +'       ,NETOTINA '
                    +'       ,NECHAVEP '
                    +'       ,(NECHAVEP-NECHAVEP) AS NEORDEM '
                    +'       ,NEALIQ '
                    +'        ,NETIPO '
                    +'       ,NEMODELO '
                    +'       ,FUF '
                    +'       ,NESTATUS '
                    +'        ,FRAZAO '
                    +'       ,to_char(FCGC) as FCGC '
                    +'       ,FIE '
                    +'       ,NEIPIFRETE '
                    +'       ,NELOTSEQ_CP '
                    +'       ,NEISENTAS '
                    +'       ,NEFRETEPC '
                    +'       ,NEAVAP '
                    +'       ,NEOUTNINC+NEOUTDESP AS NEOUTNINC  '
                    +'       ,NEOUTDESP '
                    +'       ,'+chr(39)+'E'+chr(39)+' AS ORIGEM '
                    +'        FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                 +' NESTATUS<9 ');
   if (rg_oper.ItemIndex<>2) or (trim(UF.Text)<>'') then
      begin
       if rg_oper.ItemIndex=0 then
         DM5.Qr_Ne.SQL.add(' and FUF='+chr(39)+DM1.Tb_EmpUF.Text+chr(39))
      else if rg_oper.ItemIndex=1 then
         DM5.Qr_NE.SQL.add(' and FUF<>'+chr(39)+DM1.Tb_EmpUF.Text+chr(39));
      If Trim(UF.Text)<>'' then
         begin
         DM5.Qr_NE.SQL.Add(' and  FUF='+chr(39)+UF.Text+chr(39));
         end;
      end;
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NEDTENT',true,StrToDate(MDT1.Text)));

   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NEDTENT',false,StrToDate(MDT2.Text)));

   NUMNF.Text:=fdeixanum(NUMNF.Text);
   if ValInt(NUMNF.Text)>0 then
      DM5.Qr_NE.SQL.Add(' and NENUMERO=0'+Trim(NUMNF.Text));
   //DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');

   DM5.Qr_Ne.SQL.add(' union ');

   // inicio das saidas

   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

   DM5.Qr_Ne.SQL.Add('Select  NSCODEMP AS  NECODEMP, NSCODCLI AS NECODFOR '
                    +'       ,NSNUMERO AS NENUMERO '
                    +'       ,NSSERIE AS NESERIE '
                    +'       ,NSCFO1 AS NECFO '
                    +'       ,NSDTEMIS AS NEDTENT '
                    +'       ,NSDTEMIS AS NEDTEMIS '
                    +'       ,NSSUBSER AS NESUBSER '
                    +'       ,NSBASEN AS NEBASEN '
                    +'       ,NSICMSN AS NEICMSN '
                    +'       ,(NSBASERP+NSBASERN+NSBASERI) AS NEBASER '
                    +'       ,(NSICMSRP+NSICMSRN+NSICMSRI) AS NEICMSR '
                    +'       ,NSFRETE AS NEFRETE '
                    +'       ,0 AS NEALIQ_FRETE '
                    +'       ,0 AS NEICMS_FRETE '
                    +'       ,NSICMS_BCSEG AS NESEG '
                    +'       ,0 AS NEOUTRAS '
                    +'       ,0 AS NEOUTRAS_ALIQ '
                    +'       ,0 AS NEOUTRAS_IMP '
                    +'       ,(NSIPIP+NSIPIN+NSIPII) AS NEIPI '
                    +'       ,(NSTOTPROP+NSTOTPRON+NSTOTPROI) AS NETOTMER '
                    +'       ,NSTOTNOTA AS NETOTNOT '
                    +'       ,(NSTOTNOTA-NSTOTNOTA) AS  NETOTDES '
                    +'       ,NSTOTPROP AS NETOTPOS '
                    +'       ,NSTOTPRON AS  NETOTNEG '
                    +'       ,NSTOTPROI AS  NETOTINA '
                    +'       ,NSCHAVEP  AS NECHAVEP '
                    +'       ,NSORDEMP  AS NEORDEM '
                    +'       ,NSALIQ   AS NEALIQ '
                    +'       ,NSTIPO  AS NETIPO '
                    +'       ,NSMODELO AS NEMODELO '
                    +'       ,CUF AS  FUF '
                    +'       ,NSSTATUS AS NESTATUS '
                    +'       ,CRAZAO AS  FRAZAO '
                    +'       ,TO_CHAR(DECODE(CCNPJ,0,CCPF,CCNPJ)) AS  FCGC '
                    +'       ,CIE AS FIE '
                    +'       ,(NSTOTNOTA-NSTOTNOTA) AS NEIPIFRETE '
                    +'       ,NSLOTSEQ_CP AS  NELOTSEQ_CP '
                    +'       ,NSTOTISEN AS  NEISENTAS '
                    +'       ,NSFRETEPC AS NEFRETEPC '
                    +'       ,NSAVAP AS NEAVAP '

                    +'       ,(NSTOTOUT) AS NEOUTNINC '
                    +'       ,0 AS NEOUTDESP '
                    +'       ,'+chr(39)+'S'+chr(39)+' AS ORIGEM '
                    +'        FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                 +' NSSTATUS<10 ');
   if (rg_oper.ItemIndex<>2) or (trim(UF.Text)<>'') then
      begin
       if rg_oper.ItemIndex=0 then
         DM5.Qr_Ne.SQL.add(' and CUF='+chr(39)+DM1.Tb_EmpUF.Text+chr(39))
      else if rg_oper.ItemIndex=1 then
         DM5.Qr_NE.SQL.add(' and CUF<>'+chr(39)+DM1.Tb_EmpUF.Text+chr(39));
      If Trim(UF.Text)<>'' then
         begin
         DM5.Qr_NE.SQL.Add(' and  CUF='+chr(39)+UF.Text+chr(39));
         end;
      end;
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',true,StrToDate(MDT1.Text)));


   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_NE.SQL.Add(fFormatdatetimeParaConsulta('NSDTEMIS',false,StrToDate(MDT2.Text)));
   NUMNF.Text:=fdeixanum(NUMNF.Text);
   if ValInt(NUMNF.Text)>0 then
      DM5.Qr_NE.SQL.Add(' and NSNUMERO=0'+Trim(NUMNF.Text));
   DM5.Qr_Ne.SQL.Add(' and NSTIPO=1 ');


   // termino das saidas




   DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');
//   DM5.Qr_Ne.Sql.savetoFile('c:\sql.txt');
  try
    DM5.Qr_NE.Open;
  except
    DM5.Qr_Ne.Sql.savetoFile('c:\sql.txt');
    end;
   mOrigem_Integer:=2;
   GeraLFE(1,StrToDate(MDT1.Text),StrToDate(MDT2.Text),CB_IPIICMS.Checked,'');
   mOrigem_Integer:=0;

   end;
// inicio das GNRE
if CLBRegistros.Checked[6] then
   begin
   DM5.Tb_GNRE01.Close;
   DM5.Tb_GNRE01.SQL.Clear;
   DM5.Tb_GNRE01.SQL.Add('Select * from CADGNRE01 where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADNS',[]),'',' GN1CODEMP=0'+IntToStr(codemp)+' and ')
                        +' GN1STATUS=2 '
                        +' and GN1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39)
                        +' and GN1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   DM5.Tb_GNRE01.Open;
   While not DM5.Tb_GNRE01.Eof do
      begin
      flrsgrava55(0,DM5.Tb_GNRE01GN1VALOR.Value,
                    Formatfloat('00000000000000',DM5.Tb_GNRE01GN1CNPJ.Value),
                    DM5.Tb_GNRE01GN1UF.Value,
                    DM5.Tb_GNRE01GN1UFST.Value,
                    fdeixanum(DM5.Tb_GNRE01GN1IE.Value),
                    FormatFloat('000',DM5.Tb_GNRE01GN1CODBCO.Value),
                    FormatFloat('0000',fSonumero(DM5.Tb_GNRE01GN1AGENCIA.Value)),
                    DM5.Tb_GNRE01GN1NUMAUT.Value,
                    FormatFloat('00',DM5.Tb_GNRE01GN1MESREF.Value),
                    FormatFloat('0000',DM5.Tb_GNRE01GN1ANOREF.Value),
                    fdeixanum(DM5.Tb_GNRE01GN1MUMCONV.Value),
                    DM5.Tb_GNRE01GN1DATA.Value,
                    DM5.Tb_GNRE01GN1DATVEN.Value);

      DM5.Tb_GNRE01.Next;
      end;
   end;
if CB_TIPO74.Checked then
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.add('Select IGCODPRO,sum(IGQTD) as IGQTD, max(IGPRECO) as IGPRECO  from INVGRA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' IGCODEMP=0'+IntTostr(codemp)+' and ')
                     +' IGNOMEINV='+chr(39)+CB_NOMEINV.Text+chr(39)
                     +' and IGQTD>0 and IGPRECO>0 '
                     +' group by IGCODPRO '
                     );
   DM1.Query5.Open;
   While not DM1.Query5.Eof do
      begin
      if ValInt(DM1.Tb_EmpINSCRICAO.Value)=0 then
         mcinst2:=''
      else
         mcinst2:=fdeixanum(DM1.Tb_EmpINSCRICAO.Value);
{
      if ValInt(DM1.Tb_EmpINSCRICAO.Value)=0 then
         mcinst2:='ISENTO'
      else
         mcinst2:=fdeixanum(DM1.Tb_EmpINSCRICAO.Value);
}
      flrsgrava74(0,0,
                 DM1.Query5.fieldbyName('IGQTD').AsFloat,
                 Arredonda( (DM1.Query5.fieldbyName('IGQTD').AsFloat*DM1.Query5.fieldbyName('IGPRECO').AsFloat),2),
                 DM1.Tb_EmpCGC.AsFloat,
                 DM1.Query5.fieldbyName('IGCODPRO').AsString,
                 '1',
                 mcinst2,
                 DM1.Tb_EmpUF.Value,
                 StrToDate(MDT1.Text),
                 StrToDate(MDT2.Text));
      DM1.Query5.Next;
      end;

   end;


// Termino das GNRE

// inicio dos arquivos do ECF
if ((RG_DOC.ItemIndex=2) or (RG_DOC.itemindex=0)) and (RGTNF.ItemIndex<>2) then
   begin
   // INICIO DA CONSISTENCIA DO ARQUIVO DE ECF
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.Add('Select CMCODIMP,CMDATA, '
                     +'       CMVDABRUT,CMVDALIQ,CMCUPCAN, '
                     +'       CMACRECUP, '
                     +'       CMDESCUP, '
                     +'       CMISSCUP, '
                     +'       CMISENTAS, '
                     +'       CMNAOINC, '
                     +'       CMSUBTRI, '
                     +'       CMORDEM, '
                     +'       CMVDABACUM, '
                     +'       CMVDALACUM, '
                     +'       sum(CM2VALOR) as TOTAL from CADMI01,CADMI02 '
                     +'       where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CMCODEMP=0'+IntToStr(codemp)+' and CM2CODEMP=CMCODEMP and')
                     +' CM2CODIMP = CMCODIMP '
                     +' and CM2DATA  =CMDATA ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and CMDATA>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and CMDATA<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
   DM1.Query3.SQL.Add('group by '
                     +' CMCODIMP,CMDATA, '
                     +' CMVDABRUT,CMVDALIQ,CMCUPCAN, '
                     +' CMACRECUP, '
                     +' CMDESCUP, '
                     +' CMISSCUP, '
                     +' CMISENTAS, '
                     +' CMNAOINC, '
                     +' CMSUBTRI, '
                     +' CMORDEM, '
                     +' CMVDABACUM, '
                     +' CMVDALACUM ');
   DM1.Query3.Open;

   if DM1.Query3.Eof then
      begin
      Frm_Agde.Free;
      Frm_Agde:=nil;
      fmensagem('Não foi Encontrado os Registros do Mapa Resumo!',0,['0'],0);
      exit;
      end;


   DM1.Query4.Close;
   DM1.Query4.SQL.Clear;
   DM1.Query4.SQL.Add('Select sum(P2TOTDES)  AS TOTDES '
                     +'       ,sum(P2BASEN)  AS BASEN '
                     +'       ,sum(P2BASER)  AS BASER '
                     +'       ,sum(P2ICMSN)  AS ICMSN '
                     +'       ,sum(P2ICMSNR) AS ICMSNR '
                     +'       ,sum(P2BCINR)  AS BCINR '
                     +'       ,sum(P2ICMSR)  AS ICMSR '
                     +'       ,sum(P2VALIPI)  AS VALIPI '
                     +'       ,sum(P2ISENTAS) AS ISENTAS '
                     +'       ,sum(P2TOTOUT)  AS OUTRAS '
                     +'       ,sum( ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2)) AS TOTLIQ '
                     +'        ,P1CODECF,P1DATACF,');
   if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1,2] then
     DM1.Query4.SQL.Add('TO_CHAR(P2CSOSN) AS P2SIT,')
   else
     DM1.Query4.SQL.Add('P2SIT,');
   DM1.Query4.SQL.Add('P2ALIQ,P2ALIQNR,P2ALIPI AS ALIPI '
                     +' from CADP01,CADP02 where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]) ,'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                     +' P1STATUS<'+mstatus_excluido+' and P1NUMCF>0 '
                     +' and P1CODECF=0'+DM1.Query3.fieldbyName('CMCODIMP').AsString
                     +' and P2CODEMP=P1CODEMP'
                     +' and   P2LOTSEQ=P1LOTSEQ'
                     +' and   P2CHAVE=P1CHAVE'
                     +' and   P2ORDEM=P1ORDEM');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query4.SQL.Add(fFormatdatetimeParaConsulta('P1DATACF',true,StrToDate(MDT1.Text)));

   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query4.SQL.Add(fFormatdatetimeParaConsulta('P1DATACF',FALSE,StrToDate(MDT2.Text)));

   DM1.Query4.SQL.add(' group by P1CODECF,P1DATACF,P2SIT,P2ALIQ,P2ALIQNR,P2ALIPI');
   if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
     DM1.Query4.SQL.add(' ,P2CSOSN ');
   DM1.Query4.SQL.add(' union ');



   DM1.Query4.SQL.Add('Select sum(P2STOTDES)  AS TOTDES '
                     +'       ,sum(P2SBCISSQN)  AS BASEN '
                     +'       ,0  AS BASER '
                     +'       ,sum(P2SVISSQN)  AS ICMSN '
                     +'       ,0 AS ICMSNR '
                     +'       ,0  AS BCINR '
                     +'       ,0  AS ICMSR '
                     +'       ,0  AS VALIPI '
                     +'       ,0 AS ISENTAS '
                     +'       ,0  AS OUTRAS '
                     +'       ,sum((P2SQTD*P2SPRECO)-(P2STOTDES+P2SDESCRAT)) AS TOTLIQ  '
                     +'        ,P1CODECF,P1DATACF,');
   if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
     DM1.Query4.SQL.Add('TO_CHAR(P2SCSOSN) AS P2SSIT,')
   else
     DM1.Query4.SQL.Add('P2SSIT,');

   DM1.Query4.SQL.Add('P2SALIQ AS P2ALIQ,0 AS P2ALIQNR,0 ALIPI '
                     +' from CADP01,CADP02S where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]) ,'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
                     +' P1STATUS<'+mstatus_excluido+' and P1NUMCF>0 '
                     +' and P1CODECF=0'+DM1.Query3.fieldbyName('CMCODIMP').AsString
                     +' and P2SCODEMP=P1CODEMP'
                     +' and   P2SLOTSEQ=P1LOTSEQ'
                     +' and   P2SCHAVE=P1CHAVE'
                     +' and   P2SORDEM=P1ORDEM');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query4.SQL.Add(fFormatdatetimeParaConsulta('P1DATACF',true,StrToDate(MDT1.Text)));


   if Trim(MDT2.Text)<>'/  /' then
      DM1.Query4.SQL.Add(fFormatdatetimeParaConsulta('P1DATACF',false,StrToDate(MDT2.Text)));

   DM1.Query4.SQL.add(' group by P1CODECF,P1DATACF,P2SSIT,P2SALIQ');
   if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
     DM1.Query4.SQL.Add(',P2SCSOSN');   

   try
      DM1.Query4.Open;
   except
      DM1.Query4.sql.savetofile('c:\sql.txt');
      end;
   // FIM DA CONSISTENCIA DO ARQUIVO DE ECF
   DM5.Qr_R60M.Close;
   DM5.Qr_R60M.sql.Clear;
   DM5.Qr_R60M.SQL.Add('Select CFSERIE,CFMODDOC,CMDATA,CMCODIMP, ');
   DM5.Qr_R60M.SQL.Add('       CMCOO, ');
   DM5.Qr_R60M.SQL.Add('       CMCOO_FINAL,');
   DM5.Qr_R60M.SQL.Add('       CMCONRED, ');
   DM5.Qr_R60M.SQL.Add('       CMCRO, ');
   DM5.Qr_R60M.SQL.Add('       CMVDABRUT+CMNAOINC+CMISENTAS as CMVDABRUT,CMVDALIQ,CMCUPCAN, ');
   DM5.Qr_R60M.SQL.Add('       CMACRECUP,CMDESCUP, ');
   DM5.Qr_R60M.SQL.Add('       CMISENTAS,CMNAOINC, ');
   DM5.Qr_R60M.SQL.Add('       CMSUBTRI,CMISSCUP ');
   DM5.Qr_R60M.SQL.Add('       from CADECF,CADMI01 '
                      +' where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),''
                      ,' CMCODEMP=0'+InttoStr(codemp)+' and CFCODEMP=CMCODEMP and ')
                      +' CFCAIXA=CMCODIMP ');
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_R60M.SQL.Add(' and CMDATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_R60M.SQL.Add(' and CMDATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

   DM5.Qr_R60M.Open;
   While not DM5.Qr_R60M.Eof do
      begin
      flrsgrava60M(90,DM5.Qr_R60MCMCODIMP.AsInteger,
                  DM5.Qr_R60MCMCOO.Value,
//                  DM5.Qr_R60MCMCOO_FINAL.Value,
                  DM5.Qr_R60MCMCOO.Value+DM5.Qr_R60MCMCRO.Value,
                  DM5.Qr_R60MCMCONRED.Value,
                  DM5.Qr_R60MCMCRO.Value,
                  DM5.Qr_R60MCMVDABRUT.Value,
                  DM5.Qr_R60MCMVDABRUT.Value,
//                  DM5.Qr_R60MCMVDALIQ.Value,
                  DM5.Qr_R60MCFSERIE.Value,
                  DM5.Qr_R60MCFMODDOC.Value,
                  DM5.Qr_R60MCMDATA.Value);

      if (DM5.Qr_R60MCMSUBTRI.Value>0) then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMSUBTRI.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'F',
                        DM5.Qr_R60MCMDATA.Value);
         end;
      if DM5.Qr_R60MCMISENTAS.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMISENTAS.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'I',
                        DM5.Qr_R60MCMDATA.Value);
         end;


//      if (DM5.Qr_R60MCMNAOINC.Value>0) AND (DM5.Qr_R60MCMSUBTRI.Value=0) then
      if (DM5.Qr_R60MCMNAOINC.Value>0)  then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMNAOINC.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'N',
                        DM5.Qr_R60MCMDATA.Value);
         end;

      if DM5.Qr_R60MCMCUPCAN.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMCUPCAN.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'CANC',
                        DM5.Qr_R60MCMDATA.Value);
         end;
      if DM5.Qr_R60MCMDESCUP.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMDESCUP.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'DESC',
                        DM5.Qr_R60MCMDATA.Value);
         end;

      if DM5.Qr_R60MCMISSCUP.Value>0 then
         begin
         flrsgrava60A(0,DM5.Qr_R60MCMISSCUP.Value,
                        DM5.Qr_R60MCFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60MCMCODIMP.Value),
                        'F',
                        DM5.Qr_R60MCMDATA.Value);
         end;

      DM5.Qr_R60M.Next;
      end;

   DM5.Qr_R60A.Close;
   DM5.Qr_R60A.SQL.Clear;
   DM5.Qr_R60A.SQL.Add('Select CFSERIE,CFMODDOC,CM2DATA,CM2CODIMP, ');
   DM5.Qr_R60A.SQL.Add('       CM2ALIQ,CM2VALOR ');
   DM5.Qr_R60A.SQL.Add('       from CADECF,CADMI02 '
                      +' where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),''
                      ,' CM2CODEMP=0'+InttoStr(codemp)+' and CFCODEMP=CM2CODEMP and ')
                      +' CFCAIXA=CM2CODIMP ');
   if Trim(MDT1.Text)<>'/  /' then
      DM5.Qr_R60A.SQL.Add(' and CM2DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      DM5.Qr_R60A.SQL.Add(' and CM2DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

   DM5.Qr_R60A.Open;
   While not DM5.Qr_R60A.Eof do
      begin
      if DM5.Qr_R60ACM2VALOR.Value=0 then
         begin
         DM5.Qr_R60A.Next;
         Continue;
         end;
      flrsgrava60A(0,DM5.Qr_R60ACM2VALOR.Value,
                        DM5.Qr_R60ACFSERIE.Value,
                        FormatFloat('000', DM5.Qr_R60ACM2CODIMP.Value),
                        FormatFloat('0000', DM5.Qr_R60ACM2ALIQ.Value*100),
                        DM5.Qr_R60ACM2DATA.Value);
      DM5.Qr_R60A.Next;
      end;

   if CLBRegistros.Checked[07] then // tipo 60 i
      begin
      DM5.Qr_R60I.Close;
      DM5.Qr_R60I.SQL.Clear;
      DM5.Qr_R60I.SQL.Add('SELECT CFSERIE,CFMODDOC,P1NUMCF,P1CODECF,P2CODPRO,P1DATACF,P2ALIQ,');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
        DM5.Qr_R60I.SQL.Add('TO_CHAR(P2CSOSN) AS P2SIT,')
      else
        DM5.Qr_R60I.SQL.Add('P2SIT, ');
      DM5.Qr_R60I.SQL.Add('       P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM ');
      DM5.Qr_R60I.SQL.Add('       ,P2QTD AS QTD ');
      DM5.Qr_R60I.SQL.Add('       ,P2PRECO ');
      DM5.Qr_R60I.SQL.Add('       , ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2) AS TOTLIQ ');
//      DM5.Qr_R60I.SQL.Add('       ,P2TOTLIQ-P2DESCRAT AS TOTLIQ ');

      DM5.Qr_R60I.SQL.Add(', CASE WHEN SUBSTR(P2SIT,2,2)='+QuotedStr('41')+' THEN P2TOTLIQ ELSE P2BASEN END AS BASEN');
      DM5.Qr_R60I.SQL.Add(',P2ICMSN AS ICMSN ');
      DM5.Qr_R60I.SQL.Add('       ,P2ISENTAS AS ISENTAS ');
      DM5.Qr_R60I.SQL.Add('       ,DECODE(P2CODPRO_ORI,null,to_char(P2CODPRO),'+chr(39)+' '+chr(39)+',to_char(P2CODPRO), '
                         +'                        P2CODPRO_ORI) as CODPRO_ORI ');
      DM5.Qr_R60I.SQL.Add(' ,P2NOMPRO_ORI AS NOMPRO_ORI');


      DM5.Qr_R60I.SQL.Add('  from CADP01,CADP02,CADECF where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                         ,' P1CODEMP=0'+InttoStr(codemp)+' and P2CODEMP=P1CODEMP and ')
                         +' P2LOTSEQ=P1LOTSEQ '
                         +' and P2CHAVE =P1CHAVE '
                         +' and P2ORDEM =P1ORDEM '
                         +' and P1CODECF>0 and P1STATUS<'+mstatus_excluido+' '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                         ' and CFCODEMP=P1CODEMP ')
                         +' and CFCAIXA =P1CODECF '
                         +' and P1NUMCF>0');
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_R60I.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_R60I.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
//      DM5.Qr_R60I.SQL.Add('Order by P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM ');
      DM5.Qr_R60I.SQL.Add(' union ');

      DM5.Qr_R60I.SQL.Add('SELECT CFSERIE,CFMODDOC,P1NUMCF,P1CODECF,P2SCODPRO P2CODPRO,P1DATACF,P2SALIQ AS P2ALIQ, ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
        DM5.Qr_R60I.SQL.Add('TO_CHAR(P2SCSOSN) AS P2SIT,')
      else
        DM5.Qr_R60I.SQL.Add('P2SSIT AS P2SIT, ');

      DM5.Qr_R60I.SQL.Add('        P2SLOTSEQ AS P2LOTSEQ, P2SCHAVE AS P2CHAVE, P2SORDEM AS P2ORDEM, P2SITEM AS P2ITEM ');
      DM5.Qr_R60I.SQL.Add('       ,P2SQTD AS QTD ');
      DM5.Qr_R60I.SQL.Add('       ,P2SPRECO ');
      DM5.Qr_R60I.SQL.Add('       ,(P2SQTD*P2SPRECO)-(P2STOTDES+P2SDESCRAT) AS TOTLIQ ');
      DM5.Qr_R60I.SQL.Add('       ,P2SBCISSQN AS BASEN,P2SVISSQN AS ICMSN ');
      DM5.Qr_R60I.SQL.Add('       ,0 AS ISENTAS ');
      DM5.Qr_R60I.SQL.Add('       ,TO_CHAR(P2SCODPRO) as CODPRO_ORI ');
      DM5.Qr_R60I.SQL.Add(' ,'+chr(39)+' '+chr(39)+' AS NOMPRO_ORI');



      DM5.Qr_R60I.SQL.Add('  from CADP01,CADP02S,CADECF where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                         ,' P1CODEMP=0'+InttoStr(codemp)+' and P2SCODEMP=P1CODEMP and ')
                         +' P2SLOTSEQ=P1LOTSEQ '
                         +' and P2SCHAVE =P1CHAVE '
                         +' and P2SORDEM =P1ORDEM '
                         +' and P1CODECF>0 and P1STATUS<'+mstatus_excluido+' '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                         ' and CFCODEMP=P1CODEMP ')
                         +' and CFCAIXA =P1CODECF '
                         +' and P1NUMCF>0');
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_R60I.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_R60I.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

      DM5.Qr_R60I.SQL.Add('Order by P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM ');

      try
         DM5.Qr_R60I.Open;
      except
         DM5.Qr_R60I.sql.savetofile('c:\sql.txt');
         end;
      While not DM5.Qr_R60I.Eof do
         begin
         mcinst:=Formatfloat('000',fsonumero(DM5.Qr_R60IP2SIT.Value));
         if mcinst[2] in ['1','6'] then
            mcinst:='F'
         else if copy(mcinst,2,2)='41' then
            mcinst:='N'
         else if mcinst[2]='4' then
            mcinst:='I'
         else if DM5.Qr_R60IP2ALIQ.Value=0 then
            mcinst:='I'
         else
            mcinst:=FormatFloat('0000',DM5.Qr_R60IP2ALIQ.Value*100);

         if DM5.Qr_R60ITOTLIQ.asfloat<=0 then
            DM5.Qr_R60I.Sql.savetofile('c:\sqlr60i.txt');

         flrsgrava60I(60,DM5.Qr_R60IP2ITEM.AsInteger,DM5.Qr_R60IQTD.Value,
                           DM5.Qr_R60IP2PRECO.Value,
                           DM5.Qr_R60ITOTLIQ.Value,
                           DM5.Qr_R60IBASEN.Value,
                           DM5.Qr_R60IICMSN.Value,
                           DM5.Qr_R60IP1NUMCF.Value,
                           DM5.Qr_R60ICFSERIE.Value,
                           DM5.Qr_R60ICFMODDOC.Value,
                           mcinst,
                           DM5.Qr_R60ICODPRO_ORI.AsString,
                           DM5.Qr_R60IP1DATACF.Value);
         DM5.Qr_R60I.Next;
         end;
      end;
   if CLBRegistros.Checked[07] then // tipo 60 d
      begin
      DM5.Qr_R60D.Close;
      DM5.Qr_R60D.SQL.Clear;


      DM5.Qr_R60D.SQL.Add('SELECT CFSERIE,P1CODECF,P2CODPRO,P1DATACF,P2ALIQ,');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
        DM5.Qr_R60D.SQL.Add('TO_CHAR(P2CSOSN) AS P2SIT')
      else
        DM5.Qr_R60D.SQL.Add('P2SIT ');
      DM5.Qr_R60D.SQL.Add('       ,sum(P2QTD) AS QTD '
                         +'       , sum(ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2)) AS TOTLIQ '
//                         +'        ,sum(P2TOTLIQ-P2DESCRAT) AS TOTLIQ '
                         +', sum(CASE WHEN SUBSTR(P2SIT,2,2)='+QuotedStr('41')+' THEN P2TOTLIQ ELSE P2BASEN END) AS BASEN'
                         +'       ,sum(P2ICMSN) AS ICMSN '
                         +'        ,sum(P2ISENTAS) AS ISENTAS '
                         +'       ,max(P2NOMPRO_ORI) as NOMPRO_ORI '
                         +'       ,DECODE(P2CODPRO_ORI,null,to_char(P2CODPRO),'+chr(39)+' '+chr(39)+',to_char(P2CODPRO),'
                         +'          P2CODPRO_ORI) as CODPRO_ORI '
                         +'  from CADP01,CADP02,CADECF where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                         ,' P1CODEMP=0'+InttoStr(codemp)+' and P2CODEMP=P1CODEMP and ')
                         +' P2LOTSEQ=P1LOTSEQ '
                         +' and P2CHAVE =P1CHAVE '
                         +' and P2ORDEM =P1ORDEM '
                         +' and P1CODECF>0 and P1STATUS<'+mstatus_excluido+' and P1NUMCF>0 '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                         ' and CFCODEMP=P1CODEMP ')
                         +' and CFCAIXA =P1CODECF ');
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_R60D.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_R60D.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

      DM5.Qr_R60D.SQL.Add('Group by CFSERIE,P1CODECF,P2CODPRO,P2CODPRO_ORI,P1DATACF,P2ALIQ,P2SIT ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
        DM5.Qr_R60D.SQL.add(' ,P2CSOSN ');

      DM5.Qr_R60D.SQL.Add(' union ');

      DM5.Qr_R60D.SQL.Add('SELECT CFSERIE,P1CODECF,P2SCODPRO AS P2CODPRO,P1DATACF,P2SALIQ AS P2ALIQ,');

      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
        DM5.Qr_R60D.SQL.Add('TO_CHAR(P2SCSOSN) AS P2SSIT')
      else
        DM5.Qr_R60D.SQL.Add('P2SSIT');

      DM5.Qr_R60D.SQL.Add('       ,sum(P2SQTD) AS QTD '
                         +'        ,sum((P2SQTD*P2SPRECO)-(P2STOTDES+P2SDESCRAT)) AS TOTLIQ '
                         +'       ,sum(P2SBCISSQN) AS BASEN,sum(P2SVISSQN) AS ICMSN '
                         +'        ,0 AS ISENTAS '
                         +', TO_CHAR(P2SCODPRO) as CODPRO_ORI '
                         +','+chr(39)+' '+chr(39)+' as NOMPRO_ORI '
                         +'  from CADP01,CADP02S,CADECF where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                         ,' P1CODEMP=0'+InttoStr(codemp)+' and P2SCODEMP=P1CODEMP and ')
                         +' P2SLOTSEQ=P1LOTSEQ '
                         +' and P2SCHAVE =P1CHAVE '
                         +' and P2SORDEM =P1ORDEM '
                         +' and P1CODECF>0 and P1STATUS<'+mstatus_excluido+' and P1NUMCF>0 '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                         ' and CFCODEMP=P1CODEMP ')
                         +' and CFCAIXA =P1CODECF ');
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_R60D.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_R60D.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

      DM5.Qr_R60D.SQL.Add('Group by CFSERIE,P1CODECF,P2SCODPRO,P1DATACF,P2SALIQ,P2SSIT ');
      if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
        DM5.Qr_R60D.SQL.Add(',P2SCSOSN');

// CORRECAO
      DM5.Qr_R60D.SQL.Text :='SELECT CFSERIE,P1CODECF,P2CODPRO,P1DATACF,case when BASEN=0 THEN 0 ELSE P2ALIQ END AS P2ALIQ,P2SIT,QTD,TOTLIQ '
                            +', BASEN'
                            +',ICMSN '
                            +',ISENTAS '
                            +',NOMPRO_ORI '
                            +', CODPRO_ORI '
                            +' from ('
                            +DM5.Qr_R60D.SQL.Text
                            +') '
                            +' order by CFSERIE,P1CODECF,P2CODPRO,P1DATACF,P2ALIQ,P2SIT ';



// TERMINO ORRECAO


      try
         DM5.Qr_R60D.Open;
//         DM5.Qr_R60D.sql.savetofile('c:\sql.txt');

      except
         DM5.Qr_R60D.sql.savetofile('c:\sql.txt');
         end;
      While not DM5.Qr_R60D.Eof do
         begin
         mcinst:=Formatfloat('000',fsonumero(DM5.Qr_R60DP2SIT.Value));
         if mcinst[2] in ['1','6'] then
            mcinst:='F'
         else if copy(mcinst,2,2)='41' then
            mcinst:='N'
         else if mcinst[2]='4' then
            mcinst:='I'

         else if (DM5.Qr_R60DP2ALIQ.Value=0) or (DM5.Qr_R60DBASEN.asfloat=0) then
            mcinst:='I'
         else
            mcinst:=FormatFloat('0000',DM5.Qr_R60DP2ALIQ.Value*100);
         flrsgrava60D(0,DM5.Qr_R60DQTD.Value,
                        DM5.Qr_R60DTOTLIQ.Value,
                        DM5.Qr_R60DBASEN.Value,
                        DM5.Qr_R60DICMSN.Value,
                        DM5.Qr_R60DCFSERIE.Value,
                        mcinst,
                        DM5.Qr_R60DP2CODPRO.AsString,
                        DM5.Qr_R60DP1DATACF.Value);
         flrsgrava5475(1,0,
                       DM5.Qr_R60DP2ALIQ.Value,
                       DM5.Qr_R60DP1CODECF.Value,
                       DM5.Qr_R60DP2CODPRO.Value,
                       DM5.Qr_R60DQTD.Value,
                       DM5.Qr_R60DTOTLIQ.Value,
                       DM5.Qr_R60DTOTLIQ.Value,
                       DM5.Qr_R60DICMSN.Value,
                       DM5.Qr_R60DBASEN.Value,
                       DM5.Qr_R60DICMSN.Value,
                       DM5.Qr_R60DBASEN.Value,
                       0, // valor do ipi
                       '0000',
                       DM5.Qr_R60DCFSERIE.Value,
                       ' ', // sub serie
                       ' ', // modelo
                       ' ', // cnpj
                       ' ', // inscricao
                       DM5.Qr_R60DP2SIT.Value,
                       DM5.Qr_R60DP1DATACF.Value,
                       StrToDate(MDT1.Text),
                       StrToDate(MDT2.Text),
                       DM5.Qr_R60DCODPRO_ORI.AsString,
                       DM5.Qr_R60DNOMPRO_ORI.AsString
                       );

         DM5.Qr_R60D.Next;
         end;
      end;
   if CLBRegistros.Checked[07] then // tipo 60 r
      begin
// inicio do 60R

      if pbanco=0 then
         begin
         DM5.Qr_R60R.Close;
         DM5.Qr_R60R.SQL.Clear;
         DM5.Qr_R60R.SQL.Add('SELECT CFSERIE,P1CODECF,P2CODPRO, '
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'YYYY'+chr(39)+') AS ANO, '
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'MM'+chr(39)+') AS MES, '
                            +'        P2ALIQ,');
         if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
           DM5.Qr_R60R.SQL.Add('TO_CHAR(P2CSOSN) AS P2SIT')
         else
           DM5.Qr_R60R.SQL.Add('P2SIT');

         DM5.Qr_R60R.SQL.Add('        ,sum(P2QTD) AS QTD '
                            +'       ,sum(ROUND( ( (P2QTD*P2PRECO)-P2TOTDES),2)) AS TOTLIQ '
//                            +'        ,sum(P2TOTLIQ-P2DESCRAT) AS TOTLIQ '

                            +', sum(CASE WHEN SUBSTR(P2SIT,2,2)='+QuotedStr('41')+' THEN P2TOTLIQ ELSE P2BASEN END) AS BASEN '
                            +'        ,sum(P2ICMSN) AS ICMSN '
                            +'        ,sum(P2ISENTAS) AS ISENTAS '
                            +'        ,max(P2NOMPRO_ORI) as NOMPRO_ORI '
                            +'        ,DECODE(P2CODPRO_ORI,null,to_char(P2CODPRO),'+chr(39)+' '+chr(39)+',to_char(P2CODPRO), '
                            +'                        P2CODPRO_ORI) as CODPRO_ORI '
                            +'   from CADP01,CADP02,CADECF where '
                            +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                            ,' P1CODEMP=0'+InttoStr(codemp)+' and P2CODEMP=P1CODEMP and ')
                            +' P2LOTSEQ=P1LOTSEQ '
                            +' and P2CHAVE =P1CHAVE '
                            +' and P2ORDEM =P1ORDEM '
                            +' and P1CODECF>0 and P1STATUS <'+mstatus_excluido+' and P1NUMCF>0 '
                            +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                            ' and CFCODEMP=P1CODEMP ')
                            +' and CFCAIXA =P1CODECF ');
         if Trim(MDT1.Text)<>'/  /' then
            DM5.Qr_R60R.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
         if Trim(MDT2.Text)<>'/  /' then
            DM5.Qr_R60R.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));

         DM5.Qr_R60R.SQL.Add('Group by CFSERIE,P1CODECF,P2CODPRO,P2CODPRO_ORI,'
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'YYYY'+chr(39)+'), '
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'MM'+chr(39)+') '
                            +' ,P2ALIQ,P2SIT ');
         if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
           DM5.Qr_R60R.SQL.Add(',P2CSOSN');


         DM5.Qr_R60R.SQL.Add(' union ');

         DM5.Qr_R60R.SQL.Add('SELECT CFSERIE,P1CODECF,P2SCODPRO AS P2CODPRO, '
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'YYYY'+chr(39)+') AS ANO, '
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'MM'+chr(39)+') AS MES, '
                            +'        P2SALIQ AS P2ALIQ,  ');
         if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
           DM5.Qr_R60R.SQL.Add('TO_CHAR(P2SCSOSN) AS P2SSIT')
         else
           DM5.Qr_R60R.SQL.Add('P2SSIT');


         DM5.Qr_R60R.SQL.Add('        ,sum(P2SQTD) AS QTD '
                            +'        ,sum((P2SQTD*P2SPRECO)-(P2STOTDES+P2SDESCRAT)) AS TOTLIQ '
                            +'        ,sum(P2SBCISSQN) AS BASEN,sum(P2SVISSQN) AS ICMSN '
                            +'        ,0 AS ISENTAS '
                            +'        ,TO_CHAR(P2SCODPRO) AS CODPRO_ORI '
                            +',      '+chr(39)+' '+chr(39)+' as NOMPRO_ORI '
                            +'   from CADP01,CADP02S,CADECF where '
                            +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                            ,' P1CODEMP=0'+InttoStr(codemp)+' and P2SCODEMP=P1CODEMP and ')
                            +' P2SLOTSEQ=P1LOTSEQ '
                            +' and P2SCHAVE =P1CHAVE '
                            +' and P2SORDEM =P1ORDEM '
                            +' and P1CODECF>0 and P1STATUS <10 and P1NUMCF>0 '
                            +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                            ' and CFCODEMP=P1CODEMP ')
                            +' and CFCAIXA =P1CODECF ');
         if Trim(MDT1.Text)<>'/  /' then
            DM5.Qr_R60R.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
         if Trim(MDT2.Text)<>'/  /' then
            DM5.Qr_R60R.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
         DM5.Qr_R60R.SQL.Add('Group by CFSERIE,P1CODECF,P2SCODPRO,'
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'YYYY'+chr(39)+'), '
                            +'       TO_CHAR(P1DATACF, '+chr(39)+'MM'+chr(39)+') '
                            +' ,P2SALIQ,P2SSIT ');
         if DM1.Tb_EmpEMP_OPTSIMPLES.AsInteger in [1] then
           DM5.Qr_R60R.SQL.Add(',P2SCSOSN');
         try
            DM5.Qr_R60R.Open;
         except
            DM5.Qr_R60R.sql.savetofile('c:\sql.txt');
            end;

         While not DM5.Qr_R60R.Eof do
            begin
            mcinst:=Formatfloat('000',fsonumero(DM5.Qr_R60RP2SIT.Value));
            if mcinst[2] in ['1','6'] then
               mcinst:='F'
            else if copy(mcinst,2,2)='41' then
               mcinst:='N'
            else if mcinst[2]='4' then
               mcinst:='I'
            else if (DM5.Qr_R60RP2ALIQ.Value=0) OR (DM5.Qr_R60RICMSN.AsFloat=0) then
               mcinst:='I'
            else
               mcinst:=FormatFloat('0000',DM5.Qr_R60RP2ALIQ.Value*100);
            flrsgrava60R(0,
                     DM5.Qr_R60RQTD.Value,
                     DM5.Qr_R60RTOTLIQ.Value,
                     DM5.Qr_R60RBASEN.Value,
                     mcinst,
                     DM5.Qr_R60RP2CODPRO.AsString,
                     DM5.Qr_R60RMES.Value,
                     DM5.Qr_R60RANO.Value);


            DM5.Qr_R60R.Next;
            end;
         end
      else
         begin
         fmensagem('Ainda não Esta disponivel a geração dos registros do tipo '+#13
                    +'60R para este banco de dados. Solicitar Suporte: '+#13
                    +'Telefone: '+pfonsup,0,['0'],0);
         end;
      end;
   end;
// Termino dos Arquivos do ECF


Frm_Agde.gb_progres.Visible:=true;
Frm_Agde.Update;
mtot10:=0; mtot11:=0; mtot50:=0; mtot51:=0; mtot53:=0;mtot54:=0;
mtot55:=0; mtot60:=0; mtot61:=0; mtot70:=0; mtot71:=0;mtot74:=0;
mtot75:=0; mtot90:=0;
mtot60M:=0; mtot60A:=0; mtot60D:=0; mtot60I:=0; mtot60R:=0;

mdatai:=StrToDate(MDT1.Text);
mdataf:=StrToDate(MDT2.Text);
mcodcon:=CB_CONVENIO.ItemIndex+1;
//   marq:='SINT'+FormatDateTime('mm',DM1.Tb_Tipo10T10_DATAINICIAL.Value)+'_'
//               +FormatDateTime('yyyy',DM1.Tb_Tipo10T10_DATAINICIAL.Value)+'.TXT';
AssignFile(f,mcam);
try
   Rewrite(f);
except
   fmensagem('Este Arquivo: '+mcam+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   bbGerarSintegra.Enabled:=true;
   Frm_Agde.Free;
   Frm_Agde:=nil;
   exit;
   end;


DM5.Tb_R10.Close;
DM5.Tb_R11.Close;
DM5.TB_R50.Close;
DM5.TB_R51.Close;
DM5.TB_R53.Close;
DM5.TB_R54.Close;
DM5.Tb_R55.Close;
DM5.TB_R75.Close;
if CLBRegistros.Checked[00] then // tipo 10
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R10+' where T10_DATAINICIAL='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                 +' and T10_DATAFINAL='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39));
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot10:=mqtd;
   Frm_Stru.fsintTipo10(mcodcon-1,mdatai);
   fsintegraGera('10');
   end;
if CLBRegistros.Checked[01] then // tipo 11
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select  max(T11_TIPO)        as T11_TIPO,   '
                     +'        max(T11_LOGRADOURO)  as T11_LOGRADOURO, '
                     +'        max(T11_NUMERO)      as T11_NUMERO, '
                     +'        max(T11_COMPLEMENTO) as T11_COMPLEMENTO,'
                     +'        max(T11_BAIRRO)      as T11_BAIRRO, '
                     +'        max(T11_CEP)         as T11_CEP,  '
                     +'        max(T11_NOMECONTATO) as T11_NOMECONTATO, '
                     +'        max(T11_TELEFONE)    as T11_TELEFONE from '+mtmp_R11);
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot11:=mqtd;
   Frm_Stru.fsintTipo11(mcodcon-1,mdatai);
   fsintegraGera('11');
   end;
if CLBRegistros.Checked[02] then // tipo 50
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select T50_TIPO,T50_CNPJ,T50_IE,T50_DATA,T50_DATA_REF,T50_UF, '
                    +' T50_MODELO,T50_SERIE,T50_SUBSERIE,T50_NUMERO,T50_CFOP, '
                    +' T50_ALIQUOTA,'
                    +' T50_SITUACAO, '
                    +' sum(T50_VLTOTAL) as T50_VLTOTAL, '
                    +' SUM(T50_BCICMS) as T50_BCICMS,'
                    +' sum(T50_ICMS) as  T50_ICMS,'
                    +' sum(T50_ISENTAS) as T50_ISENTAS,'
                    +' sum(T50_OUTRAS) as T50_OUTRAS,'
                    +' max(T50_REPETIDA) AS T50_REPETIDA,'
                    +' max(T50_EMITENTE) AS T50_EMITENTE,'
                    +' max(T50_ENTSAI)   AS T50_ENTSAI,'
                    +' max(T50_SEQUENCIA) as T50_SEQUENCIA '
                    +' from '+mtmp_R50
                   +' where  T50_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T50_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)

                     +' group by T50_DATA,T50_NUMERO,T50_TIPO,T50_CNPJ,T50_IE,T50_DATA_REF,T50_UF, '
                    +' T50_MODELO,T50_SERIE,T50_SUBSERIE,T50_CFOP, '
                    +' T50_ALIQUOTA,'
                    +' T50_SITUACAO');

//                      T50_DATA,T50_NUMERO');





   try
      Qr_Tempor.Open;
   except
      Qr_Tempor.sql.savetofile('c:\sqlsl50.txt');
      exit;
      end;
   mqtd:=Qr_Tempor.RecordCount;
   mtot50:=mqtd;
   Frm_Stru.fsintTipo50(mcodcon-1,mdatai);
   fsintegraGera('50');
   end;
mtot51:=0;
mtot60:=0;

if CLBRegistros.Checked[03] then // tipo 51
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R51
                   +' where  T51_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T51_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T51_DATA,T51_NUMERO');

   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot51:=mqtd;
   Frm_Stru.fsintTipo51(mcodcon-1,mdatai);
   fsintegraGera('51');
//   DM1.Query1.Close;
//   DM1.Query1.sql.Clear;
//   DM1.Query1.sql.Add('Update TBTIPO53 set T53_CODANT='+chr(39)+'1'+chr(39)
//                     +' where (T53_CODANT is null) or (T53_CODANT='+chr(39)+'_'+chr(39)+')');
//   DM1.Query1.ExecSQL;
   end;

if CLBRegistros.Checked[04] then // tipo 53
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R53
                   +' where  T53_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T53_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)

                     +' order by T53_DATA, T53_NUMERO');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot53:=mqtd;
   Frm_Stru.fsintTipo53(mcodcon-1,mdatai);
   fsintegraGera('53');
   end;
if CLBRegistros.Checked[05] then // tipo 54
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R54
                      +' where  T54_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T54_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T54_CNPJ,T54_SERIE,T54_NUMERO,T54_ITEM ');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot54:=mqtd;

   Frm_Stru.fsintTipo54(mcodcon-1,mdatai);
   fsintegraGera('54');
   end;

if CLBRegistros.Checked[06] then // tipo 55
   begin
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R55

                   +' where  T55_DATAGNR>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T55_DATAGNR<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T55_DATAGNR ');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot55:=mqtd;
   Frm_Stru.fsintTipo55(mcodcon-1,mdatai);
   fsintegraGera('55');
   end;

if CLBRegistros.Checked[07] then // tipo 60m
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R60M
                   +' where  T60M_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T60M_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T60M_DATA,T60M_NSECF ');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
//   mtot60:=mqtd;
//   fsintTipo60M(mcodcon-1,mdatai);


   DM5.Query1.Close;
   DM5.Query1.SQL.Clear;
   DM5.Query1.SQL.Add('Select * from '+mtmp_R60A
                   +' where  T60A_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T60A_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T60A_DATA,T60A_NSECF ');
   DM5.Query1.Open;
   mqtd:=DM5.Query1.RecordCount;
//   mtot60:=mtot60+mqtd;


   DM5.Query2.Close;
   DM5.Query2.SQL.Clear;
   DM5.Query2.SQL.Add('Select * from '+mtmp_R60I

                      +' where  T60I_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T60I_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T60I_DATA,T60I_NSECF ');
   DM5.Query2.Open;
   mqtd:=DM5.Query2.RecordCount;
//   mtot60:=mtot60+mqtd;

   DM5.Query3.Close;
   DM5.Query3.SQL.Clear;
   DM5.Query3.SQL.Add('Select * from '+mtmp_R60D

                      +' where  T60D_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T60D_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T60D_DATA,T60D_NSECF');
   try
      DM5.Query3.Open;
   except
      DM5.Query3.sql.SaveToFile('c:\sql.txt');
      end;
   mqtd:=DM5.Query3.RecordCount;
//   mtot60:=mtot60+mqtd;


   fsintegraGeraMAID('MAID');

   end;

{
if CLBRegistros.Checked[07] then // tipo 60A
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R60A+' where T60A_DATA_REF>='+chr(39)+FormatDateTime('MM/DD/YYYY', mdatai)+chr(39)
                     +' and T60A_DATA_REF<='+chr(39)+FormatDateTime('MM/DD/YYYY', mdataf)+chr(39)
                     +' order by T60A_DATA,T60A_NSECF ');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
//   mtot60:=mtot60+mqtd;
   fsintTipo60A(mcodcon-1,mdatai);
   fsintegraGera('60A');
   end;

if CLBRegistros.Checked[07] then // tipo 60D
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R60D+' where T60D_DATA_REF>='+chr(39)+FormatDateTime('MM/DD/YYYY', mdatai)+chr(39)
                     +' and T60D_DATA_REF<='+chr(39)+FormatDateTime('MM/DD/YYYY', mdataf)+chr(39)
                     +' order by T60D_DATA,T60D_NSECF');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
//   mtot60:=mtot60+mqtd;

   fsintTipo60D(mcodcon-1,mdatai);
   fsintegraGera('60D');
   end;

if CLBRegistros.Checked[07] then // tipo 60i
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R60I+' where T60I_DATA_REF>='+chr(39)+FormatDateTime('MM/DD/YYYY', mdatai)+chr(39)
                     +' and T60I_DATA_REF<='+chr(39)+FormatDateTime('MM/DD/YYYY', mdataf)+chr(39)
                     +' order by T60I_DATA,T60I_NSECF ');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
//   mtot60:=mtot60+mqtd;
   fsintTipo60I(mcodcon-1,mdatai);
   fsintegraGera('60I');
   end;
}
if CLBRegistros.Checked[07] then // tipo 60R
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R60R+' where '
                     +' T60R_MESANO='+chr(39)+FormatDateTime('MMYYYY', mdataf)+chr(39));
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot60:=mtot60+mqtd;
   Frm_Stru.fsintTipo60R(mcodcon-1,mdatai);
   fsintegraGera('60R');
   end;

if CLBRegistros.Checked[mitemreg61] then // tipo 61
   begin

   mqtd:=DM5.cds_tipo61.RecordCount;
   mtot61:=mqtd;

//   fsintTipo61(ptipo:  Integer;pdata: TDateTime): Boolean;

   Frm_Stru.fsintTipo61(mcodcon-1,mdatai);
   fsintegraGeraClientDataSet(DM5.cds_tipo61,'61');


   mqtd:=DM5.cds_tipo61r.RecordCount;
   mtot61:=mtot61+mqtd;

//   fsintTipo61(ptipo:  Integer;pdata: TDateTime): Boolean;

   Frm_Stru.fsintTipo61R(mcodcon-1,mdatai);
   fsintegraGeraClientDataSet(DM5.cds_tipo61r,'61R');


//   fsintegraGera('61');
   end;

   Frm_Agde.Label1.Caption:='Selecionado os Registros do Tipo 70, Aguarde...';
   Frm_Agde.Update;


if CLBRegistros.Checked[09] then // tipo 70
   begin
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R70
                   +' where  T70_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T70_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)

                     +' order by T70_DATA ');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot70:=mqtd;
   Frm_Stru.fsintTipo70(mcodcon-1,mdatai);
   fsintegraGera('70');
   end;

if CLBRegistros.Checked[10] then // tipo 14
   begin
   Frm_Agde.Label1.Caption:='Selecionado os Registros do Tipo 71, Aguarde...';
   Frm_Agde.Update;

   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R71
                      +' where  T71_DATA_REF>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T71_DATA_REF<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)

                     +' order by T71_DATA');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot71:=mqtd;
   Frm_Stru.fsintTipo71(mcodcon-1,mdatai);
   fsintegraGera('71');
   end;
if CLBRegistros.Checked[11] then // tipo 74
   begin

   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R74
                      +' where  T74_DATA>='+chr(39)+FormatDateTime(fdt4, mdatai)+chr(39)
                    +' and T74_DATA<='+chr(39)+FormatDateTime(fdt4, mdataf)+chr(39)
                     +' order by T74_DATA,T74_CODPRO ');
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot74:=mqtd;
   Frm_Stru.fsintTipo74(mcodcon-1,mdatai);
   fsintegraGera('74');
   end;

if CLBRegistros.Checked[12] then // tipo 75
   begin
   Frm_Agde.Label1.Caption:='Selecionado os Registros do Tipo 75, Aguarde...';
   Frm_Agde.Update;
   Qr_Tempor.Close;
   Qr_Tempor.SQL.Clear;
   Qr_Tempor.SQL.Add('Select * from '+mtmp_R75);
   Qr_Tempor.Open;
   mqtd:=Qr_Tempor.RecordCount;
   mtot75:=mqtd;
   Frm_Stru.fsintTipo75(mcodcon-1,mdatai);
   fsintegraGera('75');
   end;
mtot90:=0;

if CLBRegistros.Checked[13] then // tipo 90
   begin
   fsintegratesta90(1);
   if mtot50>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'50'+Formatfloat('00000000',mtot50);
      end;
   if mtot51>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'51'+Formatfloat('00000000',mtot51);
      end;
   if mtot53>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'53'+Formatfloat('00000000',mtot53);
      end;
   if mtot54>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'54'+Formatfloat('00000000',mtot54);
      end;
   if mtot55>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'55'+Formatfloat('00000000',mtot55);
      end;
   if mtot60>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'60'+Formatfloat('00000000',mtot60);
      end;
   if mtot61>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'61'+Formatfloat('00000000',mtot61);
      end;
   if mtot70>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'70'+Formatfloat('00000000',mtot70);
      end;
   if mtot71>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'71'+Formatfloat('00000000',mtot71);
      end;
   if mtot74>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'74'+Formatfloat('00000000',mtot74);
      end;
   if mtot75>0 then
      begin
      fsintegratesta90(0);
      mlinha:=mlinha+'75'+Formatfloat('00000000',mtot75);
      end;
   fsintegratesta90(0);
   fsintegratesta90(2);
   end;
closefile(f);
Qr_Tempor.Close;
DM5.Tb_R10.Close;
DM5.Tb_R11.Close;
DM5.TB_R50.Close;
DM5.TB_R51.Close;
DM5.TB_R53.Close;
DM5.TB_R54.Close;
DM5.Tb_R55.Close;
DM5.TB_R75.Close;
dm5.Tb_R60M.Close;
DM5.Tb_R60A.Close;
DM5.Tb_R60D.Close;
DM5.Tb_R60I.Close;
DM5.Tb_R60R.Close;
DM5.Tb_R50.Close;
DM5.Tb_R75.Close;
DM5.Tb_R74.Close;
DM5.Tb_RE.Close;

//
DeleteFile(mtmp_R50+'.DB');
DeleteFile(mtmp_R50+'.VAL');
DeleteFile(mtmp_R50+'.PX');

DeleteFile(mtmp_R51+'.DB');
DeleteFile(mtmp_R51+'.VAL');
DeleteFile(mtmp_R51+'.PX');

DeleteFile(mtmp_R53+'.DB');
DeleteFile(mtmp_R53+'.VAL');
DeleteFile(mtmp_R53+'.PX');

DeleteFile(mtmp_R54+'.DB');
DeleteFile(mtmp_R54+'.VAL');
DeleteFile(mtmp_R54+'.PX');
DeleteFile(mtmp_R55+'.DB');
DeleteFile(mtmp_R55+'.VAL');
DeleteFile(mtmp_R55+'.PX');
DeleteFile(mtmp_R60M+'.DB');
DeleteFile(mtmp_R60M+'.VAL');
DeleteFile(mtmp_R60M+'.PX');

DeleteFile(mtmp_R60A+'.DB');
DeleteFile(mtmp_R60A+'.VAL');
DeleteFile(mtmp_R60A+'.PX');

DeleteFile(mtmp_R60D+'.DB');
DeleteFile(mtmp_R60D+'.VAL');
DeleteFile(mtmp_R60D+'.PX');

DeleteFile(mtmp_R60I+'.DB');
DeleteFile(mtmp_R60I+'.VAL');
DeleteFile(mtmp_R60I+'.PX');
DeleteFile(mtmp_R60R+'.DB');
DeleteFile(mtmp_R60R+'.VAL');
DeleteFile(mtmp_R60R+'.PX');

DeleteFile(mtmp_R71+'.DB');
DeleteFile(mtmp_R71+'.VAL');
DeleteFile(mtmp_R71+'.PX');
DeleteFile(mtmp_R74+'.DB');
DeleteFile(mtmp_R74+'.VAL');
DeleteFile(mtmp_R74+'.PX');

DeleteFile(mtmp_R75+'.DB');
DeleteFile(mtmp_R75+'.VAL');
DeleteFile(mtmp_R75+'.PX');
DeleteFile(mtmp_RE+'.DB');
DeleteFile(mtmp_RE+'.VAL');
DeleteFile(mtmp_RE+'.PX');
DeleteFile(mtmp_RsCfo+'.DB');
DeleteFile(mtmp_RSCFO+'.VAL');
DeleteFile(mtmp_RSCFO+'.PX');

{
if trim(Frm_Sintegra_Advert.Memo_NFSNaoEnc.Text)='' then
   Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add('Não ha irregularidades');
Frm_Sintegra_Advert.ShowModal;
}

Frm_Agde.Label1.Caption:='Concluido!';
Frm_Agde.Update;
Frm_Sintegra_Advert.free;
Frm_Sintegra_Advert:=nil;

bbGerarSintegra.Enabled:=true;

end;

function TFrm_Sintegra.fsintegraGera(pTipo: String): Boolean;
var
x: Integer;
mqtddec: Integer;
mcodant: String;
mSeqNf: Integer;
mqtdnf : Integer;
begin
mlid:=0;
Frm_Agde.Label1.Caption:='Gravando os Registros tipo: '+ptipo
                        +' do periodo de '+FormatDateTime(fdt2, mdatai)
                        +' a '+FormatDateTime(fdt2, mdataf);
if ptipo='50' then
   mSeqNf:=Qr_Tempor.fieldByName('T50_NUMERO').AsInteger;
While not Qr_Tempor.Eof do
   begin
   if ptipo='50' then
      begin
      if trim(Qr_Tempor.fieldByName('T50_NUMERO').AsString)='' then
         begin
         mtot50:=mtot50-1;
         Qr_Tempor.Next;

         Continue;
         end;
      end;

   if (ptipo='50') and (Qr_Tempor.fieldByName('T50_EMITENTE').Value='P')  then
      begin
      mqtdnf := 0;
      if Qr_Tempor.fieldByName('T50_NUMERO').AsInteger>mSeqNf then
         begin
         for x:=mSeqNf to Qr_Tempor.fieldByName('T50_NUMERO').AsInteger-1 do
            begin
            mqtdnf := mqtdnf + 1;
            if mqtdnf > 150 then
               Break;

            Frm_Sintegra_Advert.Memo_NFSNaoEnc.Lines.Add(Formatfloat('000000',x));
            end;
         mSeqNf:=Qr_Tempor.fieldByName('T50_NUMERO').AsInteger+1;
         end
      else
         begin
         mSeqNf:=Qr_Tempor.fieldByName('T50_NUMERO').AsInteger+1;
         end;
      end;

   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   Frm_Agde.Update;
   mlid:=mlid+1;
   mlinha:='';

   for x:=0 to Frm_Stru.STG1.RowCount-1 do
      begin
      if Trim(Frm_Stru.STG1.Cells[0,x])='' then
         Continue;
      if (pTipo='10') and (Frm_Stru.STG1.Cells[0,x]='T10_CODCONV') then
         mlinha:=mlinha+FormatFloat('0',mcodcon)
      else if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
//      if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
         begin
         mlinha:=mlinha+FormatDateTime('yyyymmdd',Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsDateTime);
         end
      else if (Frm_Stru.STG1.Cells[1,x]='V') then
         begin
         mqtddec:=StrToInt('0'+Trim(Frm_Stru.STG1.Cells[4,x]));
         if mqtddec<1 then
            mqtddec:=1
         else
            mqtddec:=StrToInt('1'+insere('0','0',mqtddec));
         mlinha:=mlinha+insere_cortaesq(FormatFloat('0',Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsFloat*mqtddec),'0',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
         end
       else
         begin
         if Trim(Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString)='_' then
            mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
         else
            mlinha:=mlinha+insere2(Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString,' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
         end;
      end;
   Writeln(F,mlinha);
   Qr_Tempor.Next;
   end;
result:=true;
end;




function TFrm_Sintegra.fsintegraGeraClientDataSet(pTabela: tdataset; pTipo: String): Boolean;
var
x: Integer;
mqtddec: Integer;
mcodant: String;
mSeqNf: Integer;
mqtdnf : Integer;
begin
mlid:=0;
Frm_Agde.Label1.Caption:='Gravando os Registros tipo: '+ptipo
                        +' do periodo de '+FormatDateTime(fdt2, mdatai)
                        +' a '+FormatDateTime(fdt2, mdataf);
pTabela.first;                        
While not pTabela.eof do
   begin

   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   Frm_Agde.Update;
   mlid:=mlid+1;
   mlinha:='';

   for x:=0 to Frm_Stru.STG1.RowCount-1 do
      begin
      if Trim(Frm_Stru.STG1.Cells[0,x])='' then
         Continue;
      if (pTipo='10') and (Frm_Stru.STG1.Cells[0,x]='T10_CODCONV') then
         mlinha:=mlinha+FormatFloat('0',mcodcon)
      else if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
//      if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
         begin
         mlinha:=mlinha+FormatDateTime('yyyymmdd',pTabela.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsDateTime);
         end
      else if (Frm_Stru.STG1.Cells[1,x]='V') then
         begin
         mqtddec:=StrToInt('0'+Trim(Frm_Stru.STG1.Cells[4,x]));
         if mqtddec<1 then
            mqtddec:=1
         else
            mqtddec:=StrToInt('1'+insere('0','0',mqtddec));
         mlinha:=mlinha+insere_cortaesq(FormatFloat('0',pTabela.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsFloat*mqtddec),'0',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
         end
       else
         begin
         if Trim(pTabela.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString)='_' then
            mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
         else
            mlinha:=mlinha+insere2(pTabela.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString,' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
         end;
      end;
   Writeln(F,mlinha);
   pTabela.Next;
   end;
result:=true;
end;


function TFrm_Sintegra.fsintegraGeraMAID(pTipo: String): Boolean;
var
x: Integer;
mqtddec: Integer;
mcodant: String;
mSeqNf: Integer;
mqtdnf : Integer;
begin
mtot60:=0;
mlid:=0;
Frm_Agde.Label1.Caption:='Gravando os Registros tipo: '+ptipo
                        +' do periodo de '+FormatDateTime(fdt2, mdatai)
                        +' a '+FormatDateTime(fdt2, mdataf);
if mQtd<1 then
   mQtd:=2;
While not Qr_Tempor.Eof do
   begin
   mlid:=mlid+1;



   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   Frm_Agde.Update;
   mlinha:='';

   Frm_Stru.fsintTipo60M(mcodcon-1,mdatai);

   for x:=0 to Frm_Stru.STG1.RowCount-1 do
      begin
      if Trim(Frm_Stru.STG1.Cells[0,x])='' then
         Continue;
      if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
         begin
         mlinha:=mlinha+FormatDateTime('yyyymmdd',Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsDateTime);
         end
      else if (Frm_Stru.STG1.Cells[1,x]='V') then
         begin
         mqtddec:=StrToInt('0'+Trim(Frm_Stru.STG1.Cells[4,x]));
         if mqtddec<1 then
            mqtddec:=1
         else
            mqtddec:=StrToInt('1'+insere('0','0',mqtddec));
         mlinha:=mlinha+insere(FormatFloat('0',Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsFloat*mqtddec),'0',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
         end
       else
         begin
         try
            if Trim(Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString)='_' then
               mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
            else
               mlinha:=mlinha+insere2(Qr_Tempor.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString,' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
         except
            fMensagem('Nome: '+Frm_Stru.STG1.Cells[0,x],0,['0'],0);
            result:=false;
            exit;
            end;
         end;
      end;
   Writeln(F,mlinha);
   mtot60:=mtot60+1;

// INICIA O TIPO 60A
   DM5.Query1.Locate('T60A_DATA;T60A_NSECF',vararrayof([Qr_Tempor.FieldByName('T60M_DATA').AsDateTime,Qr_Tempor.FieldByName('T60M_NSECF').AsString]),[]);


//         if DM5.Tb_RCFO.Locate('CFO;ALIQ',vararrayOf([mcfo,DM5.Tb_LRSALIQ.Value]),[]) then


   While (not DM5.Query1.Eof) and
      (Qr_Tempor.FieldByName('T60M_DATA').AsDateTime=DM5.Query1.FieldByName('T60A_DATA').AsDateTime)
      and (Qr_Tempor.FieldByName('T60M_NSECF').AsString=DM5.Query1.FieldByName('T60A_NSECF').AsString)
      do
      begin
      Frm_Stru.fsintTipo60A(mcodcon-1,mdatai);
      Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
      verteclado(0);
      mlid:=mlid+1;
      mlinha:='';
      for x:=0 to Frm_Stru.STG1.RowCount-1 do
         begin
         if Trim(Frm_Stru.STG1.Cells[0,x])='' then
            Continue;
         if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
            begin
            mlinha:=mlinha+FormatDateTime('yyyymmdd',DM5.Query1.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsDateTime);
            end
         else if (Frm_Stru.STG1.Cells[1,x]='V') or (Frm_Stru.STG1.Cells[1,x]='I') then
            begin
            mqtddec:=StrToInt('0'+Trim(Frm_Stru.STG1.Cells[4,x]));
            if mqtddec<1 then
               mqtddec:=1
            else
               mqtddec:=StrToInt('1'+insere('0','0',mqtddec));
            mlinha:=mlinha+insere(FormatFloat('0',DM5.Query1.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsFloat*mqtddec),'0',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
            end
          else
            begin
            if Trim(DM5.Query1.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString)='_' then
               mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
            else if DM5.Query1.fieldByName(Frm_Stru.STG1.Cells[0,x]).IsNull then
               mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
            else
               mlinha:=mlinha+insere2(DM5.Query1.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString,' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
            end;
         end;
      Writeln(F,mlinha);
      mtot60:=mtot60+1;
      DM5.Query1.Next;
      end;
// TERMINO DO TIPO 60A


// INICIA O TIPO 60I
   DM5.Query2.Locate('T60I_DATA;T60I_NSECF',vararrayof([Qr_Tempor.FieldByName('T60M_DATA').AsDateTime,Qr_Tempor.FieldByName('T60M_NSECF').AsString]),[]);


//         if DM5.Tb_RCFO.Locate('CFO;ALIQ',vararrayOf([mcfo,DM5.Tb_LRSALIQ.Value]),[]) then


   While (not DM5.Query2.Eof) and
      (Qr_Tempor.FieldByName('T60M_DATA').AsDateTime=DM5.Query2.FieldByName('T60I_DATA').AsDateTime)
      and (Qr_Tempor.FieldByName('T60M_NSECF').AsString=DM5.Query2.FieldByName('T60I_NSECF').AsString)
      do
      begin
      Frm_Stru.fsintTipo60I(mcodcon-1,mdatai);
      Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
      verteclado(0);
      mlid:=mlid+1;
      mlinha:='';
      for x:=0 to Frm_Stru.STG1.RowCount-1 do
         begin
         if Trim(Frm_Stru.STG1.Cells[0,x])='' then
            Continue;
         if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
            begin
            mlinha:=mlinha+FormatDateTime('yyyymmdd',DM5.Query2.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsDateTime);
            end
         else if (Frm_Stru.STG1.Cells[1,x]='V') or (Frm_Stru.STG1.Cells[1,x]='I') then
            begin
            mqtddec:=StrToInt('0'+Trim(Frm_Stru.STG1.Cells[4,x]));
            if mqtddec<1 then
               mqtddec:=1
            else
               mqtddec:=StrToInt('1'+insere('0','0',mqtddec));
            mlinha:=mlinha+insere(FormatFloat('0',DM5.Query2.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsFloat*mqtddec),'0',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
            end
          else
            begin
            if Trim(DM5.Query2.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString)='_' then
               mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
            else if DM5.Query2.fieldByName(Frm_Stru.STG1.Cells[0,x]).IsNull then
               mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
            else
               mlinha:=mlinha+insere2(DM5.Query2.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString,' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
            end;
         end;
      Writeln(F,mlinha);
      mtot60:=mtot60+1;
      DM5.Query2.Next;
      end;


// INICIA O TIPO 60D
   DM5.Query3.Locate('T60D_DATA;T60D_NSECF',vararrayof([Qr_Tempor.FieldByName('T60M_DATA').AsDateTime,Qr_Tempor.FieldByName('T60M_NSECF').AsString]),[]);


   While (not DM5.Query3.Eof) and
      (Qr_Tempor.FieldByName('T60M_DATA').AsDateTime=DM5.Query3.FieldByName('T60D_DATA').AsDateTime)
      and (Qr_Tempor.FieldByName('T60M_NSECF').AsString=DM5.Query3.FieldByName('T60D_NSECF').AsString)
      do
      begin
      Frm_Stru.fsintTipo60D(mcodcon-1,mdatai);
      Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
      verteclado(0);
      mlid:=mlid+1;
      mlinha:='';
      for x:=0 to Frm_Stru.STG1.RowCount-1 do
         begin
         if Trim(Frm_Stru.STG1.Cells[0,x])='' then
            Continue;
         if Trim(Frm_Stru.STG1.Cells[1,x])='D' then
            begin
            mlinha:=mlinha+FormatDateTime('yyyymmdd',DM5.Query3.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsDateTime);
            end
         else if (Frm_Stru.STG1.Cells[1,x]='V') or (Frm_Stru.STG1.Cells[1,x]='I') then
            begin
            mqtddec:=StrToInt('0'+Trim(Frm_Stru.STG1.Cells[4,x]));
            if mqtddec<1 then
               mqtddec:=1
            else
               mqtddec:=StrToInt('1'+insere('0','0',mqtddec));
            mlinha:=mlinha+insere(FormatFloat('0',DM5.Query3.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsFloat*mqtddec),'0',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
            end
          else
            begin
            if Trim(DM5.Query3.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString)='_' then
               mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
            else if DM5.Query3.fieldByName(Frm_Stru.STG1.Cells[0,x]).IsNull then
               mlinha:=mlinha+insere2(' ',' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])))
            else
               mlinha:=mlinha+insere2(DM5.Query3.fieldByName(Frm_Stru.STG1.Cells[0,x]).AsString,' ',StrToInt(Trim(Frm_Stru.STG1.Cells[2,x])));
            end;
         end;
      Writeln(F,mlinha);
      mtot60:=mtot60+1;
      DM5.Query3.Next;
      end;

   Qr_Tempor.Next;
   end;
result:=true;
end;

function TFrm_Sintegra.fsintegratesta90(ptipo: Integer): Boolean;
begin
if ptipo=0 then
   begin
   if length(mlinha)>120 then
      begin
      mtot90:=mtot90+1;
      mlinha:=Insere2(mlinha,' ',125)+FormatFloat('0',mtot90);
      Writeln(F,mlinha);
      mlinha:='90'+FormatFloat('000000000000000',DM1.Tb_EmpCGC.Value)+insere2(fdeixanum(DM1.Tb_EmpINSCRICAO.Value),' ',14);
      end
   end
else if ptipo=2 then
   begin
   mtot90:=mtot90+1;
   mlinha:=mlinha+'99'+Formatfloat('00000000',(
          mtot10+
          mtot11+
          mtot50+
          mtot51+
          mtot53+
          mtot54+
          mtot55+
          mtot60+
          mtot61+
          mtot70+
          mtot71+
          mtot74+
          mtot75+
          mtot90));
   mlinha:=Insere2(mlinha,' ',125)+FormatFloat('0',mtot90);
   Writeln(F,mlinha);
   end
else
   mlinha:='90'+FormatFloat('00000000000000',DM1.Tb_EmpCGC.Value)+insere2(fdeixanum(DM1.Tb_EmpINSCRICAO.Value),' ',14);
result:=true;
end;
procedure TFrm_Sintegra.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      fmensagem('Data invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
end;

procedure TFrm_Sintegra.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      fmensagem('Data invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   NARQ.Text:='SINT'+FormatDatetime('mmyyyy', StrtoDate(MDT2.Text))+'.TXT';
   end;

end;

procedure TFrm_Sintegra.CB_TIPO74Click(Sender: TObject);
begin
if CB_TIPO74.Checked then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.add('Select IGNOMEINV from INVGRA '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' where IGCODEMP=0'+IntTostr(codemp))
                     +' Group by IGNOMEINV ');
   DM1.Query2.Open;
   CB_NOMEINV.Items.Clear;
   While not DM1.Query2.Eof do
      begin
      CB_NOMEINV.Items.Add(DM1.Query2.Fields[0].AsString);
      DM1.Query2.Next;
      end;
   CB_NOMEINV.ItemIndex:=0;
   CB_NOMEINV.Visible  :=true;
   lbl_inventar.Visible:=true;
   end
else
   begin
   CB_NOMEINV.Visible  :=false;
   lbl_inventar.Visible:=false;
   end;
end;

procedure TFrm_Sintegra.CB_NOMEINVExit(Sender: TObject);
begin
CB_NOMEINV.text:=CB_NOMEINV.Items.Strings[CB_NOMEINV.ItemIndex];

end;

procedure TFrm_Sintegra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
FreeAndNil(form_lrs);
end;

procedure TFrm_Sintegra.CLBRegistrosClick(Sender: TObject);
begin
CLBRegistros:=Valida_CheckList(CLBRegistros);

end;

end.

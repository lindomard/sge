unit S_Receber_Lev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls,S_DM1,db,dbtables,func,lerarq,S_Impres;

type
  TFrm_Receber_Lev = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    bbAtualizar: TBitBtn;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Label2: TLabel;
    st_saldo_ant: TStaticText;
    st_inc_autom: TStaticText;
    Label3: TLabel;
    Label4: TLabel;
    st_inc_manual: TStaticText;
    lbl_exclusoes: TLabel;
    st_excl: TStaticText;
    Label5: TLabel;
    st_baixadia: TStaticText;
    Label6: TLabel;
    st_saldo: TStaticText;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    CB_CARTEIRA: TCheckBox;
    sb_SalvarPadrao: TSpeedButton;
    st_saldo_calculado: TStaticText;
    rg_documentos: TRadioGroup;
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure sb_SalvarPadraoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_Impres_Receber_Lev: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp; 
  end;

var
  Frm_Receber_Lev: TFrm_Receber_Lev;

implementation

uses S_DM4;

{$R *.dfm}

procedure TFrm_Receber_Lev.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Receber_Lev.bbAtualizarClick(Sender: TObject);
begin
if trim(MDT1.Text)='/  /' then
   begin
   MessageDlg('Data inválida!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   Exit;
   end;
try
   MDT1.Text:=FormatDatetime(fdt2, StrtoDate(MDT1.Text))
except
   MessageDlg('Data Inválido!',mtWarning,[mbOk],0);
   MDT1.SetFocus;
   exit;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CRVALOR) as TOTGER, sum(CRVALPAG) as TOTPAG '
                  +', sum(CRJUROS) AS JURREC, sum(CRDESC) as DESCON '
                  +' from CADDAR '
                  +' where '+la_empresas
                  +' (CRDTEMIS<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CRSTATUS <9)'
                  +' or (CRSTATUS=9 and CRDTALT>'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +'     and CRDTEMIS<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' )'
                  );
if CB_CARTEIRA.Checked then
   DM1.Query1.Sql.add(' and CRRECFRENTE<>1 ');
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile('c:\sql.txt');
   end;

DM1.Query1.Sql.SaveToFile('c:\sql01.txt');

// TOTALIZAR CHEQUES
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query3.SQL.add('Select sum(CHVALOR) as TOTGER,  sum(DECODE(CHSTATUS,2,CHVALOR,0)) As TOTPAG '
                  +' from CADCHQ '
                  +' where '+la_empresas
                  +' (CHDTEMIS<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHSTATUS <9)'
                  +' or (CHSTATUS=9 and CHDTALT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +'     and CHDTEMIS<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' )'
                  );
if CB_CARTEIRA.Checked then
   begin
   DM1.Query3.Sql.add(' and (CHDTEMIS<>CHDTDEP ');
   DM1.Query3.Sql.add(' or CHDTEMIS<>CHDTBX )');
   end;


try
   DM1.Query3.Open;
except
   DM1.Query3.Sql.SaveToFile('c:\sql.txt');
   end;

DM1.Query3.Sql.SaveToFile('c:\sql02.txt');


DM1.Query4.Close;
DM1.Query4.SQL.Clear;
la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query4.SQL.add('Select sum(CHVALOR) As TOTPAG '
                  +' from CADCHQ '
                  +' where '+la_empresas
                  +' (CHDTEMIS<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHSTATUS=2'
                  +' and CHDTBX<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)+')');
{
                  +' or (CHSTATUS=9 and CHDTALT>'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHDTEMIS<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)+')'

                  +' or (CHSTATUS=2 and CHDTBX<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHDTEMIS<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)+')'
                  );
}                  
if CB_CARTEIRA.Checked then
   begin
   DM1.Query4.Sql.add(' and (CHDTEMIS<>CHDTDEP ');
   DM1.Query4.Sql.add(' or  CHDTEMIS<>CHDTBX)');
   end;
try
   DM1.Query4.Open;
except
   DM1.Query4.Sql.SaveToFile('c:\sql.txt');
   end;

DM1.Query4.Sql.SaveToFile('c:\sql03.txt');

// TERMINO DOS CHEQUES



DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query2.SQL.add('Select sum(FPVALOR)  as TOTPAG '
                  +' from FPCR '
                  +' where '+la_empresas
                  +' (FPDATA<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' )'
                  );

if CB_CARTEIRA.Checked then
   DM1.Query2.Sql.add(' and FPNR<>0');


try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile('c:\sql.txt');
   end;

DM1.Query2.Sql.SaveToFile('c:\sql04.txt');



if rg_documentos.ItemIndex=1 then
   begin
   st_saldo_ant.Caption:=FormatFloat(mcasas,  (DM1.Query1.FieldByName('TOTGER').AsFloat
                                              -DM1.Query2.FieldByName('TOTPAG').AsFloat)  )
   end
else if rg_documentos.ItemIndex=2 then
   begin
   st_saldo_ant.Caption:=FormatFloat(mcasas,  (DM1.Query3.FieldByName('TOTGER').AsFloat
                                           -DM1.Query4.FieldByName('TOTPAG').AsFloat)  );
   end
else
   begin
   st_saldo_ant.Caption:=FormatFloat(mcasas,  (DM1.Query1.FieldByName('TOTGER').AsFloat
                                           -DM1.Query2.FieldByName('TOTPAG').AsFloat)
                                           +(DM1.Query3.FieldByName('TOTGER').AsFloat
                                           -DM1.Query4.FieldByName('TOTPAG').AsFloat) );                                           ;
   end;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CRVALOR) as TOTGER, sum(CRVALPAG) as TOTPAG '
                  +', sum(CRJUROS) AS JURREC, sum(CRDESC) as DESCON '
                  +' from CADDAR '
                  +' where '+la_empresas
                  +' CRDTEMIS='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CRNPED<>0 ');
if CB_CARTEIRA.Checked then
   DM1.Query1.Sql.add(' and CRRECFRENTE<>1 ');

try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile('c:\sql.txt');
   end;

DM1.Query1.Sql.SaveToFile('c:\sql05.txt');

// INICIO CHEQUES
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query2.SQL.add('Select sum(CHVALOR) as TOTGER, sum(CHVALOR) as TOTPAG '
                  +' from CADCHQ '
                  +' where '+la_empresas
                  +' CHDTEMIS='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHLOTE<>0 ');
if CB_CARTEIRA.Checked then
   begin
   DM1.Query2.Sql.add(' and (CHDTEMIS<>CHDTDEP ');
   DM1.Query2.Sql.add(' or CHDTEMIS<>CHDTBX)');
   end;
try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile('c:\sql.txt');
   end;
DM1.Query2.Sql.SaveToFile('c:\sql06.txt');

//TERMINO CHEQUES

if rg_documentos.ItemIndex=1 then
   st_inc_autom.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat)
else if rg_documentos.ItemIndex=2 then
   st_inc_autom.Caption:=FormatFloat(mcasas,  DM1.Query2.FieldByName('TOTGER').AsFloat)
else
   st_inc_autom.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat
                                            +DM1.Query2.FieldByName('TOTGER').AsFloat);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CRVALOR) as TOTGER, sum(CRVALPAG) as TOTPAG '
                  +', sum(CRJUROS) AS JURREC, sum(CRDESC) as DESCON '
                  +' from CADDAR '
                  +' where '+la_empresas
                  +' CRDTEMIS='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CRNPED=0 ');
if CB_CARTEIRA.Checked then
   DM1.Query1.Sql.add(' and CRRECFRENTE<>1 ');

try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile('c:\sql.txt');
   end;
DM1.Query1.Sql.SaveToFile('c:\sql07.txt');

// INICIO CHEQUES
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query2.SQL.add('Select sum(CHVALOR) as TOTGER, sum(CHVALOR) as TOTPAG '
                  +' from CADCHQ '
                  +' where '+la_empresas
                  +' CHDTEMIS='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHLOTE=0 ');
if CB_CARTEIRA.Checked then
   begin
   DM1.Query2.Sql.add(' and (CHDTEMIS<>CHDTDEP ');
   DM1.Query2.Sql.add('  or CHDTEMIS<>CHDTBX)');
   end;


try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile('c:\sql.txt');
   end;

DM1.Query2.Sql.SaveToFile('c:\sql08.txt');

// TERMINO CHEQUES
if rg_documentos.ItemIndex=1 then
   st_inc_manual.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat)
else if rg_documentos.ItemIndex=2 then
   st_inc_manual.Caption:=FormatFloat(mcasas,  DM1.Query2.FieldByName('TOTGER').AsFloat)
else
   st_inc_manual.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat
                                           +DM1.Query2.FieldByName('TOTGER').AsFloat);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CRVALOR) as TOTGER, sum(CRVALPAG) as TOTPAG '
                  +', sum(CRJUROS) AS JURREC, sum(CRDESC) as DESCON '
                  +' from CADDAR '
                  +' where '+la_empresas
                  +' CRDTALT='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CRSTATUS=9');
if CB_CARTEIRA.Checked then
   DM1.Query1.Sql.add(' and CRRECFRENTE<>1 ');

try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile('c:\sql.txt');
   end;
DM1.Query1.Sql.SaveToFile('c:\sql09.txt');

// INICIO CHEQUES
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query2.SQL.add('Select sum(CHVALOR) as TOTGER, sum(CHVALOR) as TOTPAG '
                  +' from CADCHQ '
                  +' where '+la_empresas
                  +' CHDTALT='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHSTATUS=9');
if CB_CARTEIRA.Checked then
   begin
   DM1.Query2.Sql.add(' and (CHDTEMIS<>CHDTDEP ');
   DM1.Query2.Sql.add(' OR CHDTEMIS<>CHDTBX)');
   end;

try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile('c:\sql.txt');
   end;
DM1.Query2.Sql.SaveToFile('c:\sql09.txt');

// TERMINO CHEQUES
if rg_documentos.ItemIndex=1 then
   st_excl.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat)
else if rg_documentos.ItemIndex=2 then
   st_excl.Caption:=FormatFloat(mcasas,  DM1.Query2.FieldByName('TOTGER').AsFloat)
else
   st_excl.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat
                                     +DM1.Query2.FieldByName('TOTGER').AsFloat);




// INICIO CHEQUES
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query2.SQL.add('Select sum(CHVALOR) as TOTPAG '
                  +' from CADCHQ '
                  +' where '+la_empresas
                  +' CHDTBX='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CHSTATUS=2');
if CB_CARTEIRA.Checked then
   begin
   DM1.Query2.Sql.add(' and (CHDTEMIS<>CHDTDEP ');
   DM1.Query2.Sql.add(' OR CHDTEMIS<>CHDTBX)');
   end;

try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile('c:\sql.txt');
   end;

DM1.Query2.Sql.SaveToFile('c:\sql10.txt');

// TERMINO CHEQUES



la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQl.add('select sum(fpvalor) as TOTPAG from FPCR,CADFP'
             +' where '+fla_EmpBaixaAlta(0,'CADDAR','',codemp,'FPCR.FPCODEMP',' and ')
          +' FPCODIGO=FPFORMA ');
if Trim(MDT1.Text)<>'/  /' then
   DM1.Query1.SQL.Add(' and FPDATA='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
if CB_CARTEIRA.Checked then
   DM1.Query1.Sql.add(' and FPNR<>0 ');

DM1.Query1.Sql.SaveToFile('c:\sql11.txt');
DM1.Query1.Open;
if rg_documentos.ItemIndex=1 then
   st_baixadia.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTPAG').AsFloat)
else if rg_documentos.ItemIndex=2 then
   st_baixadia.Caption:=FormatFloat(mcasas,  DM1.Query2.FieldByName('TOTPAG').AsFloat)
else
  st_baixadia.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTPAG').AsFloat
                                         +DM1.Query2.FieldByName('TOTPAG').AsFloat);


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CRVALOR) as TOTGER, sum(CRVALPAG) as TOTPAG '
                  +', sum(CRJUROS) AS JURREC, sum(CRDESC) as DESCON '
                  +' from CADDAR '
                  +' where '+la_empresas
                  +'  CRSTATUS <9'
                  );
if CB_CARTEIRA.Checked then
   DM1.Query1.Sql.add(' and CRRECFRENTE<>1 ');

try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile('c:\sql.txt');
   end;
DM1.Query1.Sql.SaveToFile('c:\sql12.txt');


// CHEQUES

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('CHCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query2.SQL.add('Select sum(CHVALOR) as TOTGER, sum(DECODE(CHSTATUS,2,CHVALOR,0)) as TOTPAG '
                  +' from CADCHQ '
                  +' where '+la_empresas
                  +'  CHSTATUS <9'
                  );
if CB_CARTEIRA.Checked then
   begin
   DM1.Query2.Sql.add(' and (CHDTEMIS<>CHDTDEP ');
   DM1.Query2.Sql.add(' OR CHDTEMIS<>CHDTBX)');
   end;

try
   DM1.Query2.Open;
except
   DM1.Query1.Sql.SaveToFile('c:\sql.txt');
   end;
DM1.Query1.Sql.SaveToFile('c:\sql13.txt');
if rg_documentos.ItemIndex=1 then
   st_saldo_calculado.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat
                                      -DM1.Query1.FieldByName('TOTPAG').AsFloat)
else if rg_documentos.ItemIndex=2 then
   st_saldo_calculado.Caption:=FormatFloat(mcasas,  DM1.Query2.FieldByName('TOTGER').AsFloat
                                      -DM1.Query2.FieldByName('TOTPAG').AsFloat)
else
   st_saldo_calculado.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat
                                      -DM1.Query1.FieldByName('TOTPAG').AsFloat
                                      +(DM1.Query2.FieldByName('TOTGER').AsFloat
                                       -DM1.Query2.FieldByName('TOTPAG').AsFloat)) ;


// BUSCAR PAGAMENTOS DO PERIODO
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=' where '+la_empresas;
DM1.Query2.SQL.add('Select sum(FPVALOR)  as TOTPAG '
                  +' from FPCR '+la_empresas
                  );
if CB_CARTEIRA.Checked then
   DM1.Query2.Sql.add(' and FPNR<>0');

try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile('c:\sql.txt');
   end;


DM1.Query2.Sql.SaveToFile('c:\sql14.txt');


st_saldo.Caption:=FormatFloat(mcasas,  ValFloat(st_saldo_ant.Caption)
                                         +ValFloat(st_inc_autom.Caption)
                                         +ValFloat(st_inc_manual.Caption)
                                         -ValFloat(st_excl.Caption)
                                         -ValFloat(st_baixadia.Caption));


end;

procedure TFrm_Receber_Lev.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDatetime(fdt2, date);


DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;

DM4.Tb_FilPad.First;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_RECEBER_LEV','CB_CARTEIRA']),[]) then
   CB_CARTEIRA.Checked:=DM4.Tb_FilPadFPVALOR.Value='true'
else
   CB_CARTEIRA.Checked:=false;
end;

procedure TFrm_Receber_Lev.bbImprimirClick(Sender: TObject);
begin
bbAtualizar.Click;
testeform := TFrm_Receber_Lev(FindGlobalComponent('form_Impres_Receber_Lev'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_Receber_Lev);

form_Impres_Receber_Lev.fimpresajustaimp(3,80,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_Impres_Receber_Lev.mlin:=0;
form_Impres_Receber_Lev.mpag:=0;
form_Impres_Receber_Lev.Rdprint1.impf(01,01,'Empresa..: '+DM1.Tb_EmpRAZAO_CAB.AsString,mneg);
form_Impres_Receber_Lev.Rdprint1.impf(01,50,Centra('EMITIDO EM..:'+DateToStr(Now),' ',30),mneg);
form_Impres_Receber_Lev.Rdprint1.impf(02,01,Centra('CONTAS A RECEBER',' ',80),mneg);
form_Impres_Receber_Lev.Rdprint1.impf(03,01,Centra('MOVIMENTO DO DIA: '+MDT1.Text,' ',80),mneg);
form_Impres_Receber_Lev.Rdprint1.Impf(05,01,'Saldo Anterior.............: '+insere(st_saldo_ant.Caption,' ',15),mnormal);
form_Impres_Receber_Lev.Rdprint1.Impf(07,01,'Inclusoes automaticas......: '+insere(st_inc_autom.Caption,' ',15),mnormal);
form_Impres_Receber_Lev.Rdprint1.Impf(08,01,'Inclusoes digitadas........: '+insere(st_inc_manual.Caption,' ',15),mnormal);
form_Impres_Receber_Lev.Rdprint1.Impf(09,01,'Exclusoes..................: '+insere(st_excl.Caption,' ',15),mnormal);
form_Impres_Receber_Lev.Rdprint1.Impf(10,01,'Lancamentos: ',mnormal);
form_Impres_Receber_Lev.Rdprint1.Impf(11,01,'   BAIXA NO DIA............: '+insere(st_baixadia.Caption,' ',15),mnormal);
form_Impres_Receber_Lev.Rdprint1.Impf(12,01,'                             '+insere('_','_',15),mnormal);
form_Impres_Receber_Lev.Rdprint1.Impf(13,01,'Saldo Atual................: '+insere(st_saldo.Caption,' ',15),mnormal);
if form_Impres_Receber_Lev.RDprint1.Setup then
  form_Impres_Receber_Lev.RDprint1.Fechar;
form_Impres_Receber_Lev.free;
form_Impres_Receber_Lev:=nil;


end;

procedure TFrm_Receber_Lev.sb_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_RECEBER_LEV','');
fGravaPadroes(codusr,'CB_CARTEIRA'   ,'checked'    ,'_RECEBER_LEV',iif(CB_CARTEIRA.Checked,'true','false'));
end;

procedure TFrm_Receber_Lev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Receber_Lev.FormKeyDown(Sender: TObject; var Key: Word;
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

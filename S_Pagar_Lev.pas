unit S_Pagar_Lev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls,S_DM1,db,dbtables,func,lerarq,S_Impres;

type
  TFrm_Pagar_Lev = class(TForm)
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
    st_saldo_calculado: TStaticText;
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_pagar_lev: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Pagar_Lev: TFrm_Pagar_Lev;

implementation

{$R *.dfm}

procedure TFrm_Pagar_Lev.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pagar_Lev.bbAtualizarClick(Sender: TObject);
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
la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CAVALOR) as TOTGER, sum(CAVALPAG) as TOTPAG '
                  +', sum(CAJUROS) AS JURREC, sum(CADESC) as DESCON '
                  +' from CADDAP '
                  +' where '+la_empresas
                  +' ( (CADTINC<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CASTATUS <9) )'

                  +' or ( (CASTATUS=9 and CADTALT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +'     and CADTINC<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +') )'
                  );
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
DM1.Query1.Sql.SaveToFile(mpastatemp +'sql01.txt');


// BUSCAR PAGAMENTOS DO PERIODO
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query2.SQL.add('Select sum(FPVALOR)  as TOTPAG '
                  +' from FPCP '
                  +' where '+la_empresas
                  +' (FPDATA<'+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' )'
                  );
try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
   DM1.Query2.Sql.SaveToFile(mpastatemp +'sql02.txt');


// TERMINO DOS PAGAMENTOS


st_saldo_ant.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat
        				  -DM1.Query2.FieldByName('TOTPAG').AsFloat);


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CAVALOR) as TOTGER, sum(CAVALPAG) as TOTPAG '
                  +', sum(CAJUROS) AS JURREC, sum(CADESC) as DESCON '
                  +' from CADDAP '
                  +' where '+la_empresas
                  +' CADTINC='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)

//                  +' ( (CADTINC='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
//                  +' and CASTATUS <9 )'
//                  +' or (CASTATUS=9 and '
//                  +' CADTINC='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
//                  +' and CADTALT='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)+' ) )'

//                                    +' or (CASTATUS=9 and CADTALT='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)+' )'
//                  +' and CADTALT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CACHAVEP<>0 ');
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql03.txt');

st_inc_autom.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CAVALOR) as TOTGER, sum(CAVALPAG) as TOTPAG '
                  +', sum(CAJUROS) AS JURREC, sum(CADESC) as DESCON '
                  +' from CADDAP '
                  +' where '+la_empresas
                  +' CADTINC='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
//                  +' and CASTATUS <9 )'
//                  +' or (CASTATUS=9 and '
//                  +' CADTINC='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
//                  +' and CADTALT='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)+' ) )'
//                  +' and CADTALT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CACHAVEP=0 ');
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
DM1.Query1.Sql.SaveToFile(mpastatemp +'sql04.txt');

st_inc_manual.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat);


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CAVALOR) as TOTGER, sum(CAVALPAG) as TOTPAG '
                  +', sum(CAJUROS) AS JURREC, sum(CADESC) as DESCON '
                  +' from CADDAP '
                  +' where '+la_empresas
                  +' CADTALT='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CASTATUS=9');
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
DM1.Query1.Sql.SaveToFile(mpastatemp +'sql05.txt');


st_excl.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat);
//                                           -DM1.Query1.FieldByName('TOTPAG').AsFloat);
{
if StrtoDate(mdt1.Text)<StrtoDate('10/03/2007') then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);
   if trim(la_empresas)<>'' then
      la_empresas:=la_empresas+' and ';
   DM1.Query1.SQL.add('Select sum(CAVALOR) as TOTGER, sum(CAVALPAG) as TOTPAG '
                  +', sum(CAJUROS) AS JURREC, sum(CADESC) as DESCON '
                  +' from CADDAP '
                  +' where '+la_empresas
                  +' CADTBX='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39)
                  +' and CASTATUS <9');
   try
      DM1.Query1.Open;
   except
      DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
      end;
   end
else
   begin
}
   la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
   if trim(la_empresas)<>'' then
      la_empresas:=la_empresas+' and ';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('select sum(fpvalor) as TOTPAG from FPCP,CADFP'
                +' where '+fla_EmpBaixaAlta(0,'CADDAP','',codemp,'FPCP.FPCODEMP',' and ')
             +' FPCODIGO=FPFORMA ');
   if Trim(MDT1.Text)<>'/  /' then
      DM1.Query1.SQL.Add(' and FPDATA='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   DM1.Query1.Open;
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql06.txt');

//   end;

st_baixadia.Caption:=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTPAG').AsFloat);

// CALCULAR O SALDO ATUAL

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
la_Empresas:=fla_sqlmp('CACODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=la_empresas+' and ';
DM1.Query1.SQL.add('Select sum(CAVALOR) as TOTGER, sum(CAVALPAG) as TOTPAG '
                  +', sum(CAJUROS) AS JURREC, sum(CADESC) as DESCON '
                  +' from CADDAP '
                  +' where '+la_empresas
                  +'  CASTATUS <9'
                  );
try
   DM1.Query1.Open;
except
   DM1.Query1.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;
DM1.Query1.Sql.SaveToFile(mpastatemp +'sql07.txt');

// BUSCAR PAGAMENTOS DO PERIODO
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
la_Empresas:=fla_sqlmp('FPCODEMP',Form_SelEmp.CLB_EMPRESAS);
if trim(la_empresas)<>'' then
   la_empresas:=' where '+la_empresas;
DM1.Query2.SQL.add('Select sum(FPVALOR)  as TOTPAG '
                  +' from FPCP '+la_empresas
                  );
try
   DM1.Query2.Open;
except
   DM1.Query2.Sql.SaveToFile(mpastatemp +'sql.txt');
   end;

   DM1.Query2.Sql.SaveToFile(mpastatemp +'sql08.txt');


// TERMINO DOS PAGAMENTOS


st_saldo_calculado.Caption    :=FormatFloat(mcasas,  DM1.Query1.FieldByName('TOTGER').AsFloat
        				  -DM1.Query2.FieldByName('TOTPAG').AsFloat);

st_saldo.Caption :=FormatFloat(mcasas,  ValFloat(st_saldo_ant.Caption)
                                         +ValFloat(st_inc_autom.Caption)
                                         +ValFloat(st_inc_manual.Caption)
                                         -ValFloat(st_excl.Caption)
                                         -ValFloat(st_baixadia.Caption)) ;


                                       
end;

procedure TFrm_Pagar_Lev.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
MDT1.Text:=FormatDatetime(fdt2, date);

end;

procedure TFrm_Pagar_Lev.bbImprimirClick(Sender: TObject);
begin
bbAtualizar.Click;
testeform := TFrm_Pagar_Lev(FindGlobalComponent('form_impres_pagar_lev'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_pagar_lev);

form_impres_pagar_lev.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_pagar_lev.mlin:=0;
form_impres_pagar_lev.mpag:=0;
mcinst:='CONTAS A PAGAR';
form_impres_pagar_lev.mlin:=form_impres_pagar_lev.fImprimirCabecalho(80,mcinst);
form_impres_pagar_lev.mlin:=form_impres_pagar_lev.mlin+1;
form_impres_pagar_lev.Rdprint1.impf(03,01,Centra('MOVIMENTO DO DIA: '+MDT1.Text,' ',80),mneg);
form_impres_pagar_lev.Rdprint1.Impf(05,30,'Saldo Anterior.............: '+insere(st_saldo_ant.Caption,' ',15),mnormal);
form_impres_pagar_lev.Rdprint1.Impf(07,30,'Inclusoes automaticas......: '+insere(st_inc_autom.Caption,' ',15),mnormal);
form_impres_pagar_lev.Rdprint1.Impf(08,30,'Inclusoes digitadas........: '+insere(st_inc_manual.Caption,' ',15),mnormal);
form_impres_pagar_lev.Rdprint1.Impf(09,30,'Exclusoes..................: '+insere(st_excl.Caption,' ',15),mnormal);
form_impres_pagar_lev.Rdprint1.Impf(10,30,'Lancamentos: ',mnormal);
form_impres_pagar_lev.Rdprint1.Impf(11,30,'   BAIXA NO DIA............: '+insere(st_baixadia.Caption,' ',15),mnormal);
form_impres_pagar_lev.Rdprint1.Impf(12,30,'                             '+insere('_','_',15),mnormal);
form_impres_pagar_lev.Rdprint1.Impf(13,30,'Saldo Atual................: '+insere(st_saldo.Caption,' ',15),mnormal);
if form_impres_pagar_lev.RDprint1.Setup then form_impres_pagar_lev.RDprint1.Fechar;
form_impres_pagar_lev.free;
form_impres_pagar_lev:=nil;


end;

procedure TFrm_Pagar_Lev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Pagar_Lev.FormKeyDown(Sender: TObject; var Key: Word;
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

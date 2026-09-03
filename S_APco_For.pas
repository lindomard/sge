unit S_APco_For;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,S_DM1,db,dbtables,func,S_for,S_TipPro,S_TCon,
  lerarq,S_Agde,s_lerarq_geral;

type
  TFrm_APco_For = class(TForm)
    Label1: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    NOMTIP: TEdit;
    NOMCON: TEdit;
    CODCON: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    CODTIP: TEdit;
    RG_EST: TRadioGroup;
    RGTPRO: TRadioGroup;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    Qr_Cus: TQuery;
    Qr_CusPCNOME: TStringField;
    Qr_CusPCAPLS: TFloatField;
    Qr_CusCUPERC: TFloatField;
    Qr_CusPCOPCIO: TFloatField;
    Qr_CusPCFATOR: TFloatField;
    Qr_Cusaplicar: TStringField;
    Qr_CusPCCODIGO: TFloatField;
    Label4: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    procedure CODFORExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
//    Function fPcusCaptura(pCodEmp,pCodPro,pQtdGrml: Real): Real;

  public
    { Public declarations }
  end;

var
  Frm_APco_For: TFrm_APco_For;

implementation

uses S_DM3, Func2, func_excecoes, S_Pcus;

{$R *.dfm}

procedure TFrm_APco_For.CODFORExit(Sender: TObject);
begin
if ValFloat(CODFOR.Text)<=0 then
   begin
   CODFOR.Text:='';
   NOMFOR.Text:='Todos...';
   end
else if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',trim(CODFOR.Text)) then
   NOMFOR.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
   CODFOR.SetFocus;
   end;

end;

procedure TFrm_APco_For.CODTIPExit(Sender: TObject);
begin
if ValFloat(CODTIP.Text)<=0 then
   begin
   CODTIP.Text:='';
   NOMTIP.Text:='Todos...';
   end
else if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
   NOMTIP.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Tipo não Cadastrado!',mtWarning,[mbOk],0);
   CODTIP.SetFocus;
   end;

end;

procedure TFrm_APco_For.CODCONExit(Sender: TObject);
begin
if ValFloat(CODCON.Text)<=0 then
   begin
   CODCON.Text:='';
   NOMTIP.Text:='Todos...';
   end
else if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
   NOMCON.Text:=DM1.Query1.Fields[0].AsString
else
   begin
   MessageDlg('Controle não Cadastrado!',mtWarning,[mbOk],0);
   CODCON.SetFocus;
   end;

end;

procedure TFrm_APco_For.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text :=fChamaFor(0,'frm_APco_For',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_APco_For.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text :=fChamaTipPro(0,'frm_APco_For',Key);
   if trim(CODTIP.Text)<>'' then
      CODTIPExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_APco_For.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text :=fChamaTCon(0,'frm_APco_For',Key);
   if trim(CODCON.Text)<>'' then
      CODCONExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;
{
Function TFrm_APco_For.fPcusCaptura(pCodEmp,pCodPro,pQtdGrml: Real): Real;

var
mcodenv: Real;
mpcusto,mpvenda: Real;
mvt,mtotal: Real;
mtotqtd,mcusfab, mcusenv, mcusfin, mucpr: Real;
begin
mpcusto:=0;
mpvenda:=0;

mcusfab:=0;
mcusenv:=0;
mcusfin:=0;
mucpr  :=0;
mtotqtd:=0;
mvt:=0;
// identificar o codigo do envase
if DM1.Tb_PargerPINDUSTRIA.Value=1 then
   mcodenv:=pcodpro
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select CPCODPRO from CADCOMP where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CPCODPRO_ACAB=0'+FloatTostr(pCodPro));
   DM1.Query1.Open;
   mcodenv:=DM1.Query1.Fields[0].AsFloat;
   end;
mtotal:=0;
flcadcomp02(0,FloatToStr(mcodenv),FloatToStr(pCodPro));
if flcadcomp(0,-1,FloatToStr(mcodenv),'','') then
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      mvt:=Arredonda((DM3.Tb_Comppreco1atual.Value*DM3.Tb_Compquantidade.Value),mcasqtdccus);
      mtotal:=mtotal+mvt;
      if DM3.Tb_CompCPCODPRO_ACAB.AsFloat=0 then
         mtotQtd:=mtotQtd+DM3.Tb_Compquantidade.Value;

      DM3.Tb_Comp.Next;
      if DM3.Tb_Comp.Eof then
         begin
         if DM1.Tb_PargerPINDUSTRIA.Value=1 then
            mpcusto:=Arredonda(mtotal,mcasqtdccus)
         else
            begin
            if DM1.Tb_PargerPIND_TPFORMULA.AsInteger>0 then
               begin
               try
                  mtotQtd:=mtotQtd/pQtdGrml;
                  mpcusto:=mtotal/mtotQtd;
               except
                  mpcusto:=0;
                  mtotQtd:=0;
                  end;
               end
            else
               begin
               try
                  mpcusto:=mtotal/DM3.Tb_Comp02CP_MEDUND.Value;
                  mpcusto:=Arredonda(mpcusto,DM1.Tb_PargerPCASPUIND.AsInteger);
               except
                  mpcusto:=0;
                  end;
               end;
            end;
         end;
      end;
   end;
mcusfab:=Arredonda(mpcusto, mcasqtdccus);
mtotal:=0;
// inicia o envase
if flcadcomp(0,-1,FloatToStr(mcodenv),'',FloatTosTr(pCodPro)) then
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      mvt:=Arredonda((DM3.Tb_Comppreco1atual.Value*DM3.Tb_CompCPQUANT.Value),mcasqtdccus);
      mtotal:=mtotal+mvt;
      DM3.Tb_Comp.Next;
      if DM3.Tb_Comp.Eof then
         begin
         mpcusto:=mpcusto+mtotal;
         mpcusto:=Arredonda(mpcusto, mcasqtdccus);
         end;
      end;
   end;
mcusenv:=Arredonda(mpcusto, mcasqtdccus);
mvt   :=0;
mtotal:=0;
// composicao do custo final do produto
mtotal:=0;

Qr_Cus.Close;
Qr_Cus.SQL.Clear;
if pbanco<>0 then
   begin
   Qr_Cus.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcus '
              +' left outer join cadcus '
              +' on (pccodigo=cucodpcu) ');
   Qr_Cus.SQL.Add(' and (CUTIPO=0) and PCOPCIO=0 '
              +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP=0'+IntToStr(codemp)+') ')
              +' and (CUCODIGO=0'+FloatToStr(pCodPro)+')'
                 +' order by PCOPCIO,PCNOME ');

   end
else
   begin
   Qr_Cus.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcus,cadcus '
               +' Where cucodpcu(+)=pccodigo');
   Qr_Cus.SQL.Add(' and (CUTIPO(+)=0) and PCOPCIO=0 '
                 +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
                 +' and (CUCODIGO(+)=0'+FloattoStr(pCodPro)+')'
                 +' order by PCOPCIO,PCNOME ');

   end;
Qr_Cus.Open;
While not Qr_cus.Eof do
   begin
   if Qr_CusPCAPLS.Value=0 then
      mvt:=mpCusto*Qr_CusCUPERC.Value/100
   else
      mvt:=(mpcusto+mtotal)*Qr_CusCUPERC.Value/100;
   mvt:=Arredonda(mvt,mcasqtdccus);
   if Qr_CusPCFATOR.Value=1 then
      begin
      mtotal:=mtotal-mvt;
      end
   else
      begin
      mtotal:=mtotal+mvt;
      end;
   Qr_Cus.Next;
   if Qr_Cus.Eof then
      begin
      mpcusto:=mpcusto+mtotal;
      end;
   end;
mucpr:=Arredonda(mpcusto, mcasqtdccus);
// composicao do preco de venda do Produto
mtotal:=0;
mvt   :=0;
Qr_Cus.Close;
Qr_Cus.SQL.Clear;
if pbanco<>0 then
   begin
   Qr_Cus.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcus '
                 +' left outer join cadcus '
                 +' on (pccodigo=cucodpcu) ');
   Qr_Cus.SQL.Add(' and (CUTIPO=0) and PCOPCIO<>0 '
                 +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP=0'+IntToStr(codemp)+') ')
                 +' and (CUCODIGO=0'+FloatTosTr(pcodpro)+')'
                 +' order by PCOPCIO,PCNOME ');

   end
else
   begin
   Qr_Cus.SQl.Add('select PCCODIGO,PCNOME,PCAPLS,PCOPCIO,PCFATOR,CUPERC from cadpcus,cadcus '
                 +' Where cucodpcu(+)=pccodigo');
   Qr_Cus.SQL.Add(' and (CUTIPO(+)=0) and PCOPCIO<>0 '
                 +IIF(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and (CUCODEMP(+)=0'+IntToStr(codemp)+') ')
                 +' and (CUCODIGO(+)=0'+FloatToStr(pCodpro)+')'
                 +' order by PCOPCIO,PCNOME ');

   end;
Qr_Cus.Open;
While not Qr_cus.Eof do
   begin
   if Qr_CusPCAPLS.Value=0 then
      mvt:=mpCusto*Qr_CusCUPERC.Value/100
   else
      mvt:=(mpcusto+mtotal)*Qr_CusCUPERC.Value/100;
   mvt:=Arredonda(mvt, mQtdCas_arredpu);
   if Qr_CusPCFATOR.Value=1 then
      begin
      mtotal:=mtotal-mvt;
      end
   else
      begin
      mtotal:=mtotal+mvt;
      end;
   Qr_Cus.Next;
   if Qr_Cus.Eof then
      begin
      mpvenda:=mpcusto+mtotal;
      end;
   end;
mcusfin:=Arredonda(mpvenda, mQtdCas_arredpu);

if mpcusto>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftString,'CUSFAB',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CUSENV',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'UCPR',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CUSFIN',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'PCOFAB',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptInput);
   DM1.Query2.SQL.Add('Update CADPRO set PDCUSFAB=:CUSFAB'
                     +',  PDCUSENV=:CUSENV '
                     +',  PDUCPR  =:UCPR '
                     +',  PDCUSFIN=:CUSFIN '
                     +',  PDPCOFAB=:PCOFAB '
                     +' where PDCODEMP=:CODEMP and PDCODPRO=:CODPRO');
   DM1.Query2.ParamByName('CUSFAB').AsFloat  :=mcusfab;
   DM1.Query2.ParamByName('CUSENV').AsFloat  :=mcusenv;
   DM1.Query2.ParamByName('UCPR').AsFloat  :=mpcusto;
   DM1.Query2.ParamByName('PCOFAB').AsFloat  :=mcusenv;
   DM1.Query2.ParamByName('CUSFIN').AsFloat  :=mcusfin;
   DM1.Query2.ParamByName('CODEMP').AsFloat:=pCodEmp;
   DM1.Query2.ParamByName('CODPRO').AsFloat:=pCodPro;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,5844,'Frm_Ped','CADP01');
      end;
   end;


result:=mpvenda;


// terminou
{
var
mtotal,mcodenv,mpcusto,mvt: Real;
begin
mpcusto:=0;
mvt    :=0;

// identificar o codigo do envase
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select CPCODPRO from CADCOMP where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' CPCODEMP=0'+FloatToStr(PCodEmp)+' and ')
                  +' CPCODPRO_ACAB=0'+FloatToStr(pCodPro));
DM1.Query1.Open;
mcodenv:=DM1.Query1.Fields[0].AsFloat;
mtotal:=0;
flcadcomp02(0,FloatToStr(mcodenv),FloatToStr(pCodPro));
if flcadcomp(0,-1,FloatToStr(mcodenv),'','0') then
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      mvt:=Arredonda((DM3.Tb_Comppreco1atual.Value*DM3.Tb_CompCPQUANT.Value),mQtdCas_arredpu);
      mtotal:=mtotal+mvt;
      DM3.Tb_Comp.Next;
      end;
   try
      mpcusto:=mtotal/DM3.Tb_Comp02CP_MEDUND.Value;
   except
      mpcusto:=0;
      end;

   end;

mtotal:=0;
// inicia o envase
if flcadcomp(0,-1,FloatToStr(mcodenv),'',Floattostr(pcodPro)) then
   begin
   While not DM3.Tb_Comp.Eof do
      begin
      mvt:=Arredonda((DM3.Tb_Comppreco1atual.Value*DM3.Tb_CompCPQUANT.Value),mQtdCas_arredpu);
      mtotal:=mtotal+mvt;
      DM3.Tb_Comp.Next;
      end;
   end;
mpcusto:=mpcusto+mtotal;
if mpcusto>0 then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftString,'UCPR',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptInput);
   DM1.Query2.SQL.Add('Update CADPRO set PDUCPR=:UCPR where PDCODEMP=:CODEMP and PDCODPRO=:CODPRO');
   DM1.Query2.ParamByName('UCPR').AsFloat  :=mpcusto;
   DM1.Query2.ParamByName('CODEMP').AsFloat:=pCodEmp;
   DM1.Query2.ParamByName('CODPRO').AsFloat:=pCodPro;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,5844,'Frm_Ped','CADP01');
      end;
   end;

Result:=mpcusto;

end;
}

procedure TFrm_APco_For.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_APco_For.bbAtualizarClick(Sender: TObject);
var
mPcoFab: Real;
begin
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
mcinst:=' where ';
DM1.Query5.SQL.add('Select PDCODEMP,PDCODPRO,PDQTDGRML from CADPRO ');
if not DM1.QR_Tid.Locate('TINOME','CADPRO',[]) then
   begin
   DM1.Query5.SQL.Add(mcinst+' PDCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
if trim(CODFOR.Text)<>'' then
   begin
   DM1.Query5.SQL.Add(mcinst+' PDCODFOR=0'+Trim(CODFOR.Text));
   mcinst:=' and ';
   end;
if trim(CODCON.Text)<>'' then
   begin
   DM1.Query5.SQL.Add(mcinst+' PDCODCON=0'+Trim(CODCON.Text));
   mcinst:=' and ';
   end;
if trim(CODPRO.Text)<>'' then
   begin
   DM1.Query5.SQL.Add(mcinst+' PDCODPRO=0'+Trim(CODPRO.Text));
   mcinst:=' and ';
   end;

if trim(CODTIP.Text)<>'' then
   begin
   DM1.Query5.SQL.Add(mcinst+' PDCODTIP=0'+Trim(CODTIP.Text));
   mcinst:=' and ';
   end;

if RGTPRO.ItemIndex<6 then
   begin
   DM1.Query5.SQL.Add(mcinst+'PDNIVEL=0'+IntToStr(RGTPRO.ItemIndex));
   mcinst:=' and ';
   end
else if RGTPRO.ItemIndex=6 then
   begin
   DM1.Query5.SQL.Add(mcinst+' PDNIVEL<>0');
   mcinst:=' and ';
   end;

if RG_EST.ItemIndex=1 then
   begin
   DM1.Query5.SQL.Add(mcinst+' CESALDO<>0 ');
   mcinst:=' and ';
   end
else if RG_EST.ItemIndex=2 then
   begin
   DM1.Query5.SQL.add(mcinst+' CESALDO=0 ');
   mcinst:=' and ';
   end;
DM1.Query5.Open;
if DM1.Query5.Eof then
   begin
   MessageDlg('Nada ha ser alterado!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption    :='Atualizando Preço do Cadastro do Produto, aguarde...';
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Show;
mplid:=0;
mpqtd:=DM1.Query5.RecordCount;
While not DM1.Query5.Eof do
  begin
  mplid:=mplid+1;
  Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
  verteclado(0);
  mPcoFab:=Frm_Pcus.fPcusCaptura(DM1.Query5.Fields[1].AsFloat,DM1.Query5.fieldbyName('PDQTDGRML').AsFloat );
  DM1.Query2.Close;
  DM1.Query2.SQL.Clear;
  DM1.Query2.Params.CreateParam(ftString,'CUSFAB',ptInput);
  DM1.Query2.Params.CreateParam(ftString,'CUSENV',ptInput);
  DM1.Query2.Params.CreateParam(ftString,'UCPR',ptInput);
//   DM1.Query2.Params.CreateParam(ftString,'CUSFIN',ptInput);
  DM1.Query2.Params.CreateParam(ftString,'PCOFAB',ptInput);
  DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
  DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptInput);
  DM1.Query2.SQL.Add('Update CADPRO set PDCUSFAB=:CUSFAB'
                    +',  PDCUSENV=:CUSENV '
                    +',  PDUCPR  =:UCPR '
//                    +',  PDCUSFIN=:CUSFIN '
                    +',  PDPCOFAB=:PCOFAB '
                    +' where PDCODEMP=:CODEMP and PDCODPRO=:CODPRO');
  DM1.Query2.ParamByName('CUSFAB').AsFloat  :=Frm_Pcus.mcusfab;
  DM1.Query2.ParamByName('CUSENV').AsFloat  :=Frm_Pcus.mcusenv;
  DM1.Query2.ParamByName('UCPR').AsFloat    :=Frm_Pcus.mpcusto;
  DM1.Query2.ParamByName('PCOFAB').AsFloat  :=mPcoFab;
//   DM1.Query2.ParamByName('PCOFAB').AsFloat  :=mcusenv;
//   DM1.Query2.ParamByName('CUSFIN').AsFloat  :=mcusfin;
  DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Query5.FieldbyName('PDCODEMP').AsFloat;
  DM1.Query2.ParamByName('CODPRO').AsFloat:=DM1.Query5.FieldbyName('PDCODPRO').AsFloat;
  try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
  except
    ex_erroSql(02,5844,'Frm_Ped','CADP01');
    end;
  end;
DM1.Query5.Next;
Frm_Agde.gb_progres.Visible:=False;
Frm_Agde.Label1.Caption:='Concluido!';
Frm_Agde.Free;

end;

procedure TFrm_APco_For.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro','')
   else
     CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro','');
   key:=0;
   end;

end;

procedure TFrm_APco_For.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Tab_Pro',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_Tab_Pro',key);
      key:=#0;
      CODPROEXIT(SELF);
      end;
   end;

end;

procedure TFrm_APco_For.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)<>'' then
   begin
   if not flqr1('PDNOME','PD','CADPRO','N','PDCODPRO',CODPRO.Text) then
      begin
      MessageDlg('Produto não cadastrado!',mtWarning,[mbOk],0);
      CODPRO.SetFocus;
      end
   else
      begin
      NOMPRO.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;

end;

procedure TFrm_APco_For.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_ExcAj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, S_DM1, db, dbtables, func,
  S_Pro, S_SI,lerarq,S_DM4,func2,s_lerarq_geral;

type
  TFrm_ExcAJ = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    STG1: TStringGrid;
    Qr_Aju: TQuery;
    Qr_AjuAJCODEMP: TFloatField;
    Qr_AjuAJSEQ: TFloatField;
    Qr_AjuAJDATA: TDateTimeField;
    Qr_AjuAJCODPRO: TFloatField;
    Qr_AjuAJQTD: TFloatField;
    Qr_AjuAJMOTIVO: TStringField;
    Qr_AjuAJCODUSR: TFloatField;
    Qr_AjuAJDATAREF: TDateTimeField;
    SpeedButton1: TSpeedButton;
    Qr_Ajunompro: TStringField;
    Qr_AjuAJLOTE: TStringField;
    Qr_AjuAJDATAV: TDateTimeField;
    bbexcluir_todos: TBitBtn;
    Qr_AjuAJTIPOM: TFloatField;
    Qr_AjuAJLOTSEQ: TFloatField;
    Qr_AjuAJESTMOV: TFloatField;
    RG_LOCAL: TRadioGroup;
    Qr_AjuAJFILIAL: TFloatField;
    procedure BitBtn3Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_AjuCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure bbexcluir_todosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mcol_codigo: integer;
    mcol_descricao: integer;
    mcol_qtd: integer;
    mcol_tipomov: integer;
    mcol_observacao: integer;
    mcol_codigo5: integer;
    mcol_lote: integer;
    mcol_dtvcto: integer;
    mcol_dtajuste  : integer;
    mcol_empresa   : integer;
    mcol_estmov    : integer;

    mcol_filial    : integer;
    
  end;

var
  Frm_ExcAJ: TFrm_ExcAJ;
  mExcAjOrigem: Integer=0;
  mcod: Integer;
  v,mInstru: String;
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_ExcAJ.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ExcAJ.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      abort
      end
   end;

end;

procedure TFrm_ExcAJ.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      abort
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      abort;
      end;
   end;


end;

procedure TFrm_ExcAJ.SpeedButton1Click(Sender: TObject);
begin

CODPRO.Text:=fChamaPro(0,'Frm_ExcAj','');

end;

procedure TFrm_ExcAJ.CODPROExit(Sender: TObject);
begin
if Trim(CODPRO.Text)='' then
   NOMPRO.Text:='Todos...'
else
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      ShowMessage('Produto nao Cadastrado.');
      CODPRO.SetFocus;
      end
   else
      NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   end;
end;

procedure TFrm_ExcAJ.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_ExcAJ.BitBtn1Click(Sender: TObject);
var
minc2: String;
mqtd : Integer;
begin
STG1.Cells[mcol_codigo,0]:='Código';
STG1.Cells[mcol_descricao,0]:='Descriçao';
STG1.Cells[mcol_qtd,0]:='Quant.';
STG1.Cells[mcol_tipomov,0]:='Tipo Mov';
STG1.Cells[mcol_observacao,0]:='observaçoes';
STG1.Cells[mcol_codigo5,0]:='Código';
if StrToInt('0'+copy(mpseg,4,2))=01 then  //  lotes de mercadorias
   begin
   STG1.Cells[mcol_lote,0]:='Lote';
   STG1.Cells[mcol_dtvcto,0]:='Data Vencimento';
   end
else if StrToInt('0'+copy(mpseg,4,2))=02 then  //  Grade
   begin
   STG1.Cells[mcol_lote,0]:='Grade';
   STG1.Cells[mcol_dtvcto,0]:='';
   end;
STG1.Cells[mcol_dtajuste,0] :='Data';
STG1.Cells[mcol_empresa,0] :='Empresa';
STG1.Cells[mcol_estmov,0]:='Est.Mov.';
STG1.Cells[mcol_filial,0]:='Filial';

STG1.RowCount:=2;
mqtd:=0;
minc2:=' where ';
Qr_Aju.Close;
Qr_Aju.SQl.Clear;
Qr_Aju.SQl.add('Select * from CADAJU ');
if not DM1.Qr_Tid.Locate('TINOME','CADAJU',[]) then
   begin
   Qr_Aju.Sql.add(' where AJCODEMP=0'+IntTostr(codemp));
   minc2:=' and ';
   end;
if Trim(CODPRO.Text)<>'' then
   begin
   Qr_aju.Sql.add(minc2+' AJCODPRO=0'+Trim(CODPRO.Text));
   minc2:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_aju.Sql.add(minc2+' AJDATAREF>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));
   minc2:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_aju.Sql.add(minc2+' AJDATAREF<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
   minc2:=' and ';
   end;
Qr_Aju.SQL.Add(minc2+' AJESTMOV=0'+IntToStr(mExcAjOrigem));

Qr_Aju.sql.add(' order by AJDATAREF');
Qr_Aju.Open;
if Qr_Aju.Eof then
   Begin
   MessageDlg('Registro não Encontrado!',mtWarning,[mbOk],0);
   CODPRO.SetFocus;
   exit;
   end;
While not Qr_Aju.eof do
   begin
   mqtd:=mqtd+1;
   STG1.rowcount:=mqtd+2;
   STG1.Cells[mcol_codigo,mqtd]:=Qr_AjuAJCODPRO.AsString;
   STG1.Cells[mcol_descricao,mqtd]:=Qr_Ajunompro.Value;
   STG1.Cells[mcol_qtd,mqtd]:=FormatFloat('##0.000',Qr_AjuAJQTD.Value);
   STG1.Cells[mcol_tipomov,mqtd]:=IIF(Qr_AjuAJTIPOM.Value=0,'Entrada','Saida');
   STG1.Cells[mcol_observacao,mqtd]:=Qr_AjuAJMOTIVO.Value;
   STG1.Cells[mcol_codigo5,mqtd]:=Qr_AjuAJSEQ.AsString;
   if StrToInt('0'+copy(mpseg,4,2))=01 then  //  lotes de mercadorias
      begin
      STG1.Cells[mcol_lote,mqtd]:=Qr_AjuAJLOTE.Value;
      if Qr_AjuAJDATAV.Isnull then
         STG1.Cells[mcol_dtvcto,mqtd]:='  '
      else
        STG1.Cells[mcol_dtvcto,mqtd]:=FormatDateTime(fdt2,Qr_AjuAJDATAV.Value);
      end
   else if StrToInt('0'+copy(mpseg,4,2))=02 then  //  Grades
      STG1.Cells[mcol_lote,mqtd]:=Qr_AjuAJLOTE.Value;
   STG1.Cells[mcol_dtajuste,mqtd]   :=FormatDateTime(fdt2, Qr_AjuAJDATA.Value);
   STG1.Cells[mcol_empresa,mqtd]   :=Qr_AjuAJCODEMP.AsString;
   STG1.Cells[mcol_estmov,mqtd]  :=Qr_AjuAJESTMOV.AsString;
   STG1.Cells[mcol_filial,mqtd]  :=iif(valint(Qr_AjuAJFILIAL.AsString)<=0,log_filial_padrao,valint(Qr_AjuAJFILIAL.AsString));
   Qr_Aju.Next;

   end;
end;

procedure TFrm_ExcAJ.FormCreate(Sender: TObject);
begin


    mcol_codigo    :=0;
    mcol_descricao :=1;
    mcol_qtd       :=2;
    mcol_tipomov   :=3;
    mcol_observacao:=4;
    mcol_codigo5   :=5;
    mcol_lote      :=6;
    mcol_dtvcto    :=7;
    mcol_dtajuste  :=8;
    mcol_empresa   :=9;
    mcol_estmov    :=10;
    mcol_filial    :=11;


STG1.Cells[mcol_codigo,0]:='Código';
STG1.Cells[mcol_descricao,0]:='Descriçao';
STG1.Cells[mcol_qtd,0]:='Quant.';
STG1.Cells[mcol_tipomov,0]:='Tipo Mov';
STG1.Cells[mcol_observacao,0]:='observaçoes';
STG1.Cells[mcol_codigo5,0]:='';
STG1.Cells[mcol_lote,0]:='';
STG1.Cells[mcol_dtvcto,0]:='';
STG1.Cells[mcol_dtajuste,0]:='Data Ajuste';
STG1.Cells[mcol_empresa,0]:='Empresa';
STG1.Cells[mcol_estmov,0]:='Est.Mov';
STG1.Cells[mcol_filial,0]:='Filial';
MDT1.text:=Formatdatetime(fdt2, date);


end;

procedure TFrm_ExcAJ.Qr_AjuCalcFields(DataSet: TDataSet);
begin
flcadpro(1,0,0,Qr_AjuAJCODPRO.AsString);
Qr_Ajunompro.Value:=DM1.Tb_ProPDNOME.Value;
end;

procedure TFrm_ExcAJ.BitBtn2Click(Sender: TObject);
var
mqtd, mordem,x: Integer;
pcodemp,mtipo: Integer;
diaaju,mesaju,anoaju: Word;
diaatu,mesatu,anoatu: Word;
mdtv: String;
mDatav: TDatetime;
mCondicao: String;
begin
mqtd:=STG1.Row;
if (STG1.Cells[mcol_codigo,1]='') or (Trim(STG1.Cells[mcol_codigo,mqtd])='')  then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if STG1.Cells[mcol_tipomov,mqtd]='Saida' then
   mtipo:=1
else
   mtipo:=0;
DecodeDate(StrToDate(STG1.Cells[mcol_dtajuste,mqtd]),anoaju,mesaju,diaaju);

flcadpro(1,0,0,fdeixanum(STG1.Cells[mcol_codigo,mqtd]));
try
   if (fsonumero(STG1.Cells[mcol_dtvcto,mqtd])>0) and (StrToDate(STG1.Cells[mcol_dtvcto,mqtd]) > pDatanula) then
      mDatav:=StrTodate(STG1.Cells[mcol_dtvcto,mqtd]);
except
   end;
if (valint(STG1.Cells[mcol_tipomov,mqtd]))=0  then // estnor foi entrada
   begin
   if Log_TipoLote>0 then
      begin
      mCondicao:='CLCODPRO='+STG1.Cells[mcol_codigo,mqtd];
      if trim(STG1.Cells[mcol_lote,mqtd])='' then
         mCondicao:=mCondicao+' and (CLNUMERO is null or CLNUMERO='+QuotedStr(' ')+' )'
      else
         mCondicao:=mCondicao+' and CLNUMERO='+Quotedstr( STG1.Cells[mcol_lote,mqtd]);
      mCondicao:=mCondicao+' and CLFILIAL='+STG1.Cells[mcol_filial,mqtd];

      if not fLerGenerico_query('CADLGC','nvl(sum(CLQTD),0) as SALDO',mCondicao,query_consulta) then
         exit;
      end
   else
      begin
      mCondicao:='CECODPRO='+STG1.Cells[mcol_codigo,mqtd];
      mCondicao:=mCondicao+' and CEFILIAL='+STG1.Cells[mcol_filial,mqtd];
      if not fLerGenerico_query('CADEST','nvl(sum(CESALDO),0) as SALDO',mCondicao,query_consulta) then
         exit;
      end;
   if query_consulta.fieldbyname('SALDO').AsFloat<valfloat(STG1.Cells[mcol_qtd,mqtd]) then
      begin
      MessageDlg('o Estoque Ira Ficar Negativo não é permitido!',mtWarning,[mbOk],0);
      exit;
      end;
   end;

//LINDOMAR

fBaixarMercadorias(codemp
         ,iif(valint(STG1.Cells[mcol_filial,mqtd])=0,log_filial_padrao,valint(STG1.Cells[mcol_filial,mqtd]))
         ,0 // item
         ,02 // docori
         ,codusr
         ,0 //pcontesp
         ,Log_TipoProdPad //ptipoprod
         ,valint(STG1.Cells[mcol_codigo5,mqtd]) // CHAVE DO AJUSTE
         ,ls_cadaju
         ,valfloat(STG1.Cells[mcol_qtd,mqtd]) // quantidade
         ,STG1.Cells[mcol_codigo,mqtd] // codigo
         ,iif( mtipo=1,'E','S') // estnor
         ,'N' // estreversado
         ,STG1.Cells[mcol_lote,mqtd] // LOTE
         ,mDatav // data de vencimento
                  ,'' // lote re
                  ,'' // obs

         );



DecodeDate(pdatasis,anoatu,mesatu,diaatu);


mordem:=StrToInt(Trim(STG1.Cells[mcol_codigo5,mqtd]));

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(AJCODNOV) from OLD_CADAJU');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields
[0].AsInteger+1;
minstru:='Insert into OLD_CADAJU (';
v:='';
for x:=0 to DM1.Tb_Aju.FieldCount-1 do
   begin
   if DM1.Tb_Aju.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_Aju.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',AJCODNOV) Select ';
v:='';
for x:=0 to DM1.Tb_Aju.FieldCount-1 do
   begin
   if DM1.Tb_Aju.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM1.Tb_Aju.Fields[x].FieldName='AJUSREXC' then
      minstru:=minstru+v+FormatFloat('0',codusr)+' as AJUSREXC '
   else if DM1.Tb_Aju.Fields[x].FieldName='AJDATEXC' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as AJDATEXC '
   else if DM1.Tb_Aju.Fields[x].FieldName='AJHOREXC' then
      minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as AJHOREXC '
   else
      minstru:=minstru+v+DM1.Tb_Aju.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as AJCODNOV ';
minstru:=minstru+' from CADAJU where '
        +iif(DM1.Qr_TID.Locate('TINOME','CADAJU',[]),'',' AJCODEMP=0'+IntToStr(codemp)+' and ')
        +' AJSEQ=0'+IntTostr(mordem)
        +' and AJESTMOV=0'+IntToStr(mExcAjOrigem);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,375,'Frm_ExcAj','CADAJU_OLD');
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('delete from   CADAJU where ');
if not DM1.Qr_TID.Locate('TINOME','CADAJU',[]) then
   DM1.Query1.SQL.Add(' AJCODEMP=0'+IntToStr(codemp)+' and ');
DM1.Query1.SQl.Add(' AJSEQ=0'+IntTostr(mordem));
DM1.Query1.SQL.Add(' and AJESTMOV=0'+IntToStr(mExcAjOrigem));
try
   DM1.Query1.execSQL;
   fdm1StartCommit;
except
   end;

if STG1.RowCount=2 then
   STG1.Rows[1].Clear
else
   begin
   for x:=STG1.Row to STG1.RowCount-2 do
      begin
      STG1.Cells[mcol_codigo,x]:=STG1.Cells[mcol_codigo,x+1];
      STG1.Cells[mcol_descricao,x]:=STG1.Cells[mcol_descricao,x+1];
      STG1.Cells[mcol_qtd,x]:=STG1.Cells[mcol_qtd,x+1];
      STG1.Cells[mcol_tipomov,x]:=STG1.Cells[mcol_tipomov,x+1];
      STG1.Cells[mcol_observacao,x]:=STG1.Cells[mcol_observacao,x+1];
      STG1.Cells[mcol_codigo5,x]:=STG1.Cells[mcol_codigo5,x+1];
      STG1.Cells[mcol_lote,x]:=STG1.Cells[mcol_lote,x+1];
      STG1.Cells[mcol_dtvcto,x]:=STG1.Cells[mcol_dtvcto,x+1];
      STG1.Cells[mcol_dtajuste,x]:=STG1.Cells[mcol_dtajuste,x+1];
      STG1.Cells[mcol_empresa,x]:=STG1.Cells[mcol_empresa,x+1];
      end;
   STG1.RowCount:=STG1.RowCount-1;
   end;
end;

procedure TFrm_ExcAJ.bbexcluir_todosClick(Sender: TObject);
var
  pcodemp,mtipo, mordem, mqtd: Integer;
  diaaju,mesaju,anoaju: Word;
  diaatu,mesatu,anoatu: Word;
  x: Integer;
  mdtv: string;
  qtd: Real;
  mDatav: TDateTime;
begin
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=0;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Digite a senha de seguranca para confirmacao da exclusao!';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;
if fValidaSenha(mValidarSenha)<>0 then
   exit;
//  comeco
for mqtd:=1 to STG1.rowcount do
   begin
   if (Trim(STG1.Cells[mcol_codigo,mqtd])='')  then
      break;
   if STG1.Cells[mcol_tipomov,mqtd]='Saida' then
      mtipo:=1 // entao sera entrada
   else
      mtipo:=0; // entao sera saida
  mDatav:=0;
  qtd:=IIF(ValFloat(Trim(STG1.Cells[mcol_qtd,mqtd]))>0,ValFloat(Trim(STG1.Cells[mcol_qtd,mqtd])),ValFloat(Trim(STG1.Cells[mcol_qtd,mqtd]))*-1);
  flcadpro(1,0,0,fdeixanum(STG1.Cells[mcol_codigo,mqtd]));


  try
     if (fsonumero(STG1.Cells[mcol_dtvcto,mqtd])>0) and (StrToDate(STG1.Cells[mcol_dtvcto,mqtd]) > pDatanula) then
        mDatav:=StrTodate(STG1.Cells[mcol_dtvcto,mqtd]);
  except
     end;

  fBaixarMercadorias(codemp
         ,iif(valint(STG1.Cells[mcol_filial,mqtd])=0,log_filial_padrao,valint(STG1.Cells[mcol_filial,mqtd]))

//         ,log_filial_padrao
         ,0 // item
         ,02 // docori
         ,codusr
         ,0 //pcontesp
         ,Log_TipoProdPad //ptipoprod
         ,valfloat(STG1.Cells[mcol_codigo,mqtd]) // CHAVE DO AJUSTE
         ,ls_cadaju
         ,valfloat(STG1.Cells[mcol_qtd,mqtd]) // quantidade
         ,STG1.Cells[mcol_codigo,mqtd] // codigo
         ,iif( mtipo=1,'E','S') // estnor
         ,'N' // estreversado
         ,STG1.Cells[mcol_lote,mqtd] // lote
         ,mDatav
                  ,'' // lote re
                  ,'' // obs

         );


// TERMINO

{
   DecodeDate(StrToDate(STG1.Cells[mcol_dtajuste,mqtd]),anoaju,mesaju,diaaju);
   DecodeDate(pdatasis,anoatu,mesatu,diaatu);
   if mtipo=0 then
      fajustarmesfec(mtipo,11,mesaju,anoaju,pcodemp,ValFloat(STG1.Cells[mcol_codigo,mqtd]),valfloat(STG1.Cells[mcol_qtd,mqtd]))
   else
      fajustarmesfec(mtipo,12,mesaju,anoaju,pcodemp,ValFloat(STG1.Cells[mcol_codigo,mqtd]),valfloat(STG1.Cells[mcol_qtd,mqtd]));
}
   mordem:=StrToInt(Trim(STG1.Cells[mcol_codigo5,mqtd]));


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select max(AJCODNOV) from OLD_CADAJU');
   DM1.Query1.Open;
   mcod:=DM1.Query1.Fields[0].AsInteger+1;
   minstru:='Insert into OLD_CADAJU (';
   v:='';
   for x:=0 to DM1.Tb_Aju.FieldCount-1 do
      begin
      if DM1.Tb_Aju.Fields[x].FieldKind=fkCalculated then
         Continue;
      minstru:=minstru+v+DM1.Tb_Aju.Fields[x].FieldName;
      v:=',';
      end;

   minstru:=minstru+',AJCODNOV) Select ';
   v:='';
   for x:=0 to DM1.Tb_Aju.FieldCount-1 do
      begin
      if DM1.Tb_Aju.Fields[x].FieldKind=fkCalculated then
         Continue;
      if DM1.Tb_Aju.Fields[x].FieldName='AJUSREXC' then
         minstru:=minstru+v+FormatFloat('0',codusr)+' as AJUSREXC '
      else if DM1.Tb_Aju.Fields[x].FieldName='AJDATEXC' then
         minstru:=minstru+v+chr(39)+Formatdatetime(fdt,date)+chr(39)+' as AJDATEXC '
      else if DM1.Tb_Aju.Fields[x].FieldName='AJHOREXC' then
         minstru:=minstru+v+chr(39)+Formatdatetime(fhr,time)+chr(39)+' as AJHOREXC '
      else
         minstru:=minstru+v+DM1.Tb_Aju.Fields[x].FieldName;
      v:=',';
      end;
   minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as AJCODNOV ';
   minstru:=minstru+' from CADAJU where '
           +iif(DM1.Qr_TID.Locate('TINOME','CADAJU',[]),'',' AJCODEMP=0'+IntToStr(codemp)+' and ')
           +' AJSEQ=0'+IntTostr(mordem)
           +' and AJESTMOV=0'+IntToStr(mExcAjOrigem);
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add(minstru);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,375,'Frm_ExcAj','CADAJU_OLD');
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('delete from   CADAJU where ');
   if not DM1.Qr_TID.Locate('TINOME','CADAJU',[]) then
      DM1.Query1.SQL.Add(' AJCODEMP=0'+IntToStr(codemp)+' and ');
   DM1.Query1.SQl.Add(' AJSEQ=0'+IntTostr(mordem));
   try
      DM1.Query1.execSQL;
      fdm1StartCommit;
   except
      end;
   end;
STG1.Rows[1].Clear;
STG1.Rowcount:=2;
STG1.Update;
ShowMessage('Selecao Excluida');
end;

procedure TFrm_ExcAJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.

unit S_ExcAj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Mask, StdCtrls, Buttons, Grids, S_DM1, db, dbtables, func,
  S_Pro, S_SI,lerarq,S_DM4,func2,s_lerarq_geral, DBClient;

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
    Qr_AjuAJID_NEW: TFloatField;
    cds_itens: TClientDataSet;
    cds_itenscodigo: TFloatField;
    cds_itensdescricao: TStringField;
    cds_itensquant: TFloatField;
    cds_itenstipomov: TStringField;
    cds_itensobservacoes: TStringField;
    cds_itenscodigo_ajseq: TFloatField;
    cds_itenslote: TStringField;
    cds_itensdtvcto: TDateTimeField;
    cds_itensdtajuste: TDateTimeField;
    cds_itensempresa: TFloatField;
    cds_itensest_mov: TFloatField;
    cds_itensfilial: TFloatField;
    cds_itensdata: TDateTimeField;
    cds_itensid_new: TFloatField;
    Qr_AjuAJDTFAB: TDateTimeField;
    cds_itensdtfab: TDateTimeField;
    cds_itensloteRe: TStringField;
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
//mqtd : Integer;
begin

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

cds_itens.EmptyDataSet;
While not Qr_Aju.eof do
   begin
   cds_itens.Append;
   cds_itenscodigo.Value          := Qr_AjuAJCODPRO.AsFloat;
   cds_itensdescricao.Value       := Qr_Ajunompro.AsString;
   cds_itensquant.Value           := Qr_AjuAJQTD.AsFloat;
   cds_itenstipomov.Value         := IIF(Qr_AjuAJTIPOM.Value=0,'Entrada','Saida');
   cds_itensobservacoes.Value     := Qr_AjuAJMOTIVO.AsString;

   cds_itensid_new.Value           := Qr_AjuAJID_NEW.AsFloat;
   cds_itenscodigo_ajseq.Value     := Qr_AjuAJSEQ.AsFloat;
   if not Qr_AjuAJDATAV.Isnull then
      cds_itensdtvcto.Value     := Qr_AjuAJDATAV.AsDateTime;

   if not Qr_AjuAJDTFAB.Isnull then
      cds_itensdtfab.Value      := Qr_AjuAJDTFAB.AsDateTime;

   cds_itenslote.Value              := Qr_AjuAJLOTE.AsString;

   cds_itensdtajuste.Value          :=  Qr_AjuAJDATA.Value;
   cds_itensdata.Value              :=  Qr_AjuAJDATA.Value;
   cds_itensempresa.Value           :=  Qr_AjuAJCODEMP.Value;
   cds_itensest_mov.Value           :=  Qr_AjuAJESTMOV.Value;
   cds_itensfilial.Value            :=  Qr_AjuAJFILIAL.Value;
   cds_itens.post;


   Qr_Aju.Next;

   end;
end;

procedure TFrm_ExcAJ.FormCreate(Sender: TObject);
begin
cds_itens.CreateDataSet;

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
mDtFab: TDatetime;
mCondicao: String;
pBaixar: pBaixarLotes;

begin

if cds_itenscodigo.IsNull  then
   exit;
if fmensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;
if cds_itenstipomov.Value='Saida' then
   mtipo:=1
else
   mtipo:=0;
DecodeDate(cds_itensdtajuste.AsDateTime,anoaju,mesaju,diaaju);

flcadpro(1,0,0,cds_itenscodigo.AsString);
 if (cds_itensdtvcto.AsDateTime > pDatanula) then
    mDatav:=cds_itensdtvcto.AsDateTime;
 if (cds_itensdtfab.AsDateTime > pDatanula) then
    mDtFab:=cds_itensdtfab.AsDateTime;


if mtipo=0  then // estnor foi entrada
   begin
   if Log_TipoLote>0 then
      begin
      mCondicao:='CLCODPRO='+cds_itenscodigo.AsString;
      if trim(cds_itenslote.AsString)='' then
         mCondicao:=mCondicao+' and (CLNUMERO is null or CLNUMERO='+QuotedStr(' ')+' )'
      else
         mCondicao:=mCondicao+' and CLNUMERO='+Quotedstr(cds_itenslote.AsString);
      mCondicao:=mCondicao+' and CLFILIAL='+cds_itensfilial.AsString;

      if not fLerGenerico_query('CADLGC','nvl(sum(CLQTD),0) as SALDO',mCondicao,query_consulta) then
         exit;
      end
   else
      begin
      mCondicao:='CECODPRO='+cds_itenscodigo.AsString;
      mCondicao:=mCondicao+' and CEFILIAL='+cds_itensfilial.AsString;
      if not fLerGenerico_query('CADEST','nvl(sum(CESALDO),0) as SALDO',mCondicao,query_consulta) then
         exit;
      end;
   if query_consulta.fieldbyname('SALDO').AsFloat<cds_itensquant.AsFloat then
      begin
      MessageDlg('o Estoque Ira Ficar Negativo não é permitido!',mtWarning,[mbOk],0);
      exit;
      end;
   end;

//LINDOMAR



pBaixar.pCodemp := codemp;
pBaixar.pFilial := iif(cds_itensfilial.AsInteger=0,log_filial_padrao, cds_itensfilial.AsInteger);
pBaixar.pItem   := 0;
pBaixar.pDocOri := 02;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   := cds_itenscodigo_ajseq.AsInteger; // CHAVE DO AJUSTE
pBaixar.pChave_ano := ls_cadaju;
pBaixar.pQtd       := cds_itensquant.AsFloat; // quantidade
pBaixar.pCodPro    := cds_itenscodigo.AsString; // codigo
pBaixar.pEstNor       := iif( mtipo=1,'E','S'); // estnor
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := cds_itenslote.AsString; // LOTE
pBaixar.pDtVcto       := mDatav; // data de vencimento
pBaixar.pDtFab        := mDtFab; // data de vencimento
pBaixar.pLoteRe       := cds_itensloteRe.AsString;
pBaixar.pObs          := cds_itensobservacoes.AsString;
PBaixar.pChaveIdNew   := cds_itensid_new.AsInteger;
fBaixarMercadorias(pBaixar);


DecodeDate(pdatasis,anoatu,mesatu,diaatu);


mordem:=cds_itenscodigo_ajseq.AsInteger;

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

cds_itens.Delete;

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
  mDtFab: TDateTime;
  pBaixar: pBaixarLotes;
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
cds_itens.First;
While not cds_itens.eof do
   begin
   if cds_itenstipomov.AsString='Saida' then
      mtipo:=1 // entao sera entrada
   else
      mtipo:=0; // entao sera saida
  mDatav:=0;
  qtd:=IIF(cds_itensquant.AsFloat>0,  cds_itensquant.AsFloat,cds_itensquant.AsFloat*-1);
  flcadpro(1,0,0,cds_itenscodigo.AsString);


  try
     if (cds_itensdtvcto.AsDateTime > pDatanula) then
        mDatav:=cds_itensdtvcto.AsDateTime;
  except
     end;

  try
     if (cds_itensdtfab.AsDateTime > pDatanula) then
        mDtFab:=cds_itensdtfab.AsDateTime;
  except
     end;


pBaixar.pCodemp := codemp;
pBaixar.pFilial := iif(cds_itensfilial.AsInteger=0,log_filial_padrao,cds_itensfilial.AsInteger);
pBaixar.pItem   := 0;
pBaixar.pDocOri := 02;
pBaixar.pCodUsr  := codusr;
pBaixar.pContEsp := 0;
pBaixar.pTipoProd := Log_TipoProdPad;
pBaixar.pChave   :=  cds_itenscodigo_ajseq.AsInteger; // CHAVE DO AJUSTE
pBaixar.pChave_ano := ls_cadaju;
pBaixar.pQtd       := cds_itensquant.AsFloat; // quantidade
pBaixar.pCodPro    := cds_itenscodigo.AsString; // codigo
pBaixar.pEstNor       := iif( mtipo=1,'E','S'); // estnor
pBaixar.pEstReservado := 'N';
pBaixar.pLote         := cds_itenslote.AsString; // LOTE
pBaixar.pDtVcto       := mDatav; // data de vencimento
pBaixar.pDtFab        := mDtFab; // data de vencimento
pBaixar.pLoteRe       := '';
pBaixar.pObs          := '';
PBaixar.pChaveIdNew   := cds_itenscodigo_ajseq.AsInteger;

fBaixarMercadorias(pBaixar);

   mordem:=cds_itenscodigo_ajseq.AsInteger;


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
cds_itens.IsEmpty;
ShowMessage('Selecao Excluida');
end;

procedure TFrm_ExcAJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

end.

unit S_Aju;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, S_DM1, db, dbtables, func,
  S_Pro, Grids, Mask, S_ExcAj,lerarq, DBGrids,s_lerarq_geral, ToolEdit;



type
  TFrm_Aju = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    RG_TIPOM: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    QTD: TEdit;
    STG1: TStringGrid;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    SAIR: TBitBtn;
    Label4: TLabel;
    DATAREF: TMaskEdit;
    BitBtn1: TBitBtn;
    lbl_lote: TLabel;
    LOTE: TEdit;
    lbl_vencimento: TLabel;
    estoque: TLabel;
    GB_LOTES: TGroupBox;
    DBGrid1: TDBGrid;
    MOTIVO: TComboBox;
    cb_leitor: TCheckBox;
    Label7: TLabel;
    ESTMIN: TEdit;
    Label81: TLabel;
    CB_LOCAL: TComboBox;
    CB_UTILCQ: TCheckBox;
    lbl_lote_re: TLabel;
    edt_lote_re: TEdit;
    Label18: TLabel;
    cb_estoque: TComboBox;
    DATAV: TDateEdit;
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure QTDKeyPress(Sender: TObject; var Key: Char);
    procedure QTDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure DATAREFExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DATAV_Exit(Sender: TObject);
    procedure LOTEExit(Sender: TObject);
    procedure LOTEKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_leitorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MOTIVOExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MOTIVOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Aju: TFrm_Aju;
  mqtd: Integer=0;
  mAjuOrigem: Integer=0;
  mcasqtd_aju: String='0.00';
implementation

uses S_DM4, DateUtils;

{$R *.dfm}

procedure TFrm_Aju.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      if Length(CODPRO.Text)<5 Then
         begin
         CODPRO.Text:=fChamaPro(2,'Frm_Aju','');
         if lote.Visible then
            lote.SetFocus
         else
            QTD.SetFocus;
         key:=#0;
         end;
      end
   else
      begin
      CODPRO.Text:=fChamaPro(0,'Frm_Aju',key);
      if lote.Visible then
         lote.SetFocus
      else
         QTD.SetFocus;
      key:=#0;
      end;
   end;
end;

procedure TFrm_Aju.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if (Trim(CODPRO.Text)='') then
   begin
   if (RG_TIPOM.Focused) then
      CODPRO.SetFocus;
   exit;
   end;


{if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   if (Length(CODPRO.Text)>9) then
       begin
       LOTE.Text  :=uppercase(copy(CODPRO.Text,5,length(CODPRO.Text)-4));
       CODPRO.Text:=copy(CODPRO.Text,1,4);
       end;
   end;

CODPRO.Text:=FloatToStr(fsonumero(CODPRO.Text));
}

CODPRO.Text:=fdeixanum(CODPRO.Text);
if (cb_leitor.Checked) and (Log_TipoLote=2) and (length(CODPRO.Text)>2) then
   begin
   LOTE.Text:=copy(CODPRO.Text,length(CODPRO.Text)-1,2);
   CODPRO.Text:=copy(CODPRO.Text,1,length(CODPRO.Text)-2);
   end;
if not flcadpro(1,0,0,fdeixanum(CODPRO.Text)) then
   begin
   CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
   if ValFloat(QTD.Text)<=1 then
      Qtd.Text:=FormatFloat(mcasqtd, pRet_Qtd);
   if ValFloat(QTD.Text)=0 then
      Qtd.Text:=FormatFloat(mcasqtd, 1);
   LOTE.Text:=pRet_Lote;
   if pRet_DtVcto<=pdatanula then
      DATAV.Text:='/  /'
   else
      DATAV.Text:=FormatDatetime(fdt2, pRet_DtVcto);
   if trim(CODPRO.Text)='' then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
//   if not flcadpro(IIF(cb_leitor.Checked,3,1),0,0,fdeixanum(CODPRO.Text)) then

   if not flcadpro(1,0,0,fdeixanum(CODPRO.Text)) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;
CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;

if GB_LOTES.Visible then
   flcadlgc(0,0,0,DM1.Tb_ProPDCODPRO.AsString,'','');
NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
if mAjuOrigem=3 then
   estoque.Caption:='Estoque atual do Produto: '+DM1.Tb_Proestoquet.AsString
else if mAjuOrigem=2 then
   estoque.Caption:='Estoque atual do Produto: '+DM1.Tb_Proestoquer.AsString
else if mAjuOrigem=1 then
   estoque.Caption:='Estoque atual do Produto: '+DM1.Tb_Proestoquec.AsString
else
   estoque.Caption:='Estoque atual do Produto: '+DM1.Tb_Proestoque.AsString;
ESTMIN.Text := FormatFloat(mcasqtd, DM1.Tb_ProPDESTMIN.Value);
estoque.Visible:=true;
if cb_leitor.Checked then
   begin
   if Log_TipoLote=2 then  // grades de cores tamanhos
      begin
      if not flcadlgc(0,1,0,CODPRO.Text,LOTE.Text,'') then
         begin
         FMensagem('Grade nao cadastrada!',0,['0'],0);
         LOTE.SetFocus;
         end
      else
         GRAVAR.Click;
      end
   else if Log_TipoLote=0  then  //  sem lotes e grades
      GRAVAR.Click;
   end;
end;

procedure TFrm_Aju.GRAVARClick(Sender: TObject);
var
mneg: Boolean;
mquant: Real;
mdtv: String;
mEstoque: Real;
mFilial: Integer;
begin
if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   FMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;
if Trim(MOTIVO.Text)='' then
   begin
   FMensagem('Favor Digitar o Motivo do Ajuste!',0,['0'],0);
   MOTIVO.SetFocus;
   exit;
   end;
if ValFloat(QTD.Text)=0 then
   begin
   FMensagem('Favor Digitar uma Quantidade Válida!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
lote.Text := trim(lote.Text);
mFilial:=fRetonaCodigoFilial(cb_estoque.Text);
if mFilial=0 then
   mFilial:=log_filial_padrao;

mquant:=ValFloat(QTD.Text);
mneg:=False;
if mAjuOrigem=0 then
   mEstoque:=DM1.Tb_Proestoque.Value
else if mAjuOrigem=1 then
   mEstoque:=DM1.Tb_Proestoquec.Value
else if mAjuOrigem=2 then
   mEstoque:=DM1.Tb_Proestoquer.Value
else if mAjuOrigem=3 then
   mEstoque:=DM1.Tb_Proestoquet.Value;

if Log_TipoLote=2 then
   begin
   if not flcadlgc(mFilial,1,0,codpro.Text,lote.Text,datav.Text) then
      begin
      FMensagem(Log_TitLote+' nao cadastrado!',0,['0'],0);
      LOTE.SetFocus;
      exit;
      end;
   end;


if RG_TIPOM.ItemIndex=1 then
   begin
   if (Log_TipoLote>0)  then   // and (DM1.Tb_LGCCLCODPRO.AsFloat<>fsonumero(CODPRO.Text)) then  //  lotes de mercadorias
      begin
      if trim(LOTE.Text)='' then
         mcinst:=' and length(nvl(CLNUMERO,'+QuotedStr('')+'))<2 '
      else
         mcinst:=' and CLNUMERO='+QuotedStr(LOTE.Text);
      mcinst:=mcinst+' and CLFILIAL=0'+Inttostr(mfilial);   
      if fLerGenerico_query('CADLGC','sum(CLQTD) as qtd ','CLCODPRO=0'+CODPRO.Text+mcinst,query_consulta) then
         begin
         if query_consulta.fieldbyname('qtd').asfloat<mquant then
            mneg:=true
         end
      else
         begin
         flcadlgc(mfilial,1,0,codpro.Text,lote.Text,datav.Text);
         if DM1.Tb_LGCCLQTD.Value<Mquant then
            mneg:=True;
         end;
      end
//  else if mEstoque<mquant then
//     mneg:=True;
  end;
if mneg then
   begin
   if (Log_TipoLote>0) then
       mcinst:='o Estoque do lote '+iif(Trim(LOTE.Text)='',' sem lote ',LOTE.Text)+' vai ficar Negativo. Continua?'
   else
      mcinst:='o Estoque vai ficar Negativo. Continua?';
   if fmensagem(mcinst,0,['1','2'],1)=mrNo then
      begin
      CODPRO.SetFocus;
      exit;
      end;
   end;
if not DM1.Tb_Aju.Active then
   begin
   DM1.Tb_Aju.Close;
   DM1.Tb_Aju.Sql.Clear;
   DM1.Tb_Aju.Sql.add('Select * from CADAJU where '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADAJU',[]),'',' AJCODEMP=0'+IntToStr(codemp)+' and ')
                 +' AJSEQ=999999');
   DM1.Tb_Aju.Open;
   end;

// ENTRADA

DM1.Tb_Aju.Append;
dm1.Tb_AjuAJCODEMP.Value:=codemp;
DM1.Tb_AjuAJCODPRO.Value:=fsonumero(CODPRO.Text);
DM1.Tb_AjuAJFILIAL.Value:=mFilial;
DM1.Tb_AjuAJDATA.Value  :=pdatasis;
DM1.Tb_AjuAJQTD.Value   :=ValFloat(QTD.Text);
DM1.Tb_AjuAJCODUSR.Value:=codusr;
DM1.Tb_AjuAJMOTIVO.Value:=MOTIVO.Text;
DM1.Tb_AjuAJTIPOM.Value :=RG_TIPOM.ItemIndex;
DM1.Tb_AjuAJDATAREF.Value:=StrToDate(DATAREF.Text);
DM1.Tb_AjuAJLOTE.Value   :=LOTE.Text;
DM1.Tb_AjuAJLOTE_RE.Value:=edt_lote_re.Text;
DM1.Tb_AjuAJESTMOV.Value :=mAjuOrigem;
DM1.Tb_AjuAJUSREXC.Value :=0;
DM1.Tb_AjuAJHOREXC.Value :=' ';
DM1.Tb_AjuAJDATEXC.Value :=pdatanula;
DM1.Tb_AjuAJLOCAL.Value  :=0;
DM1.Tb_AjuAJUTILCQ.Value :=IIF(CB_UTILCQ.Checked,1,0);

if ( not dm1.tb_pro.Active) or (fsonumero(codpro.text)<>dm1.Tb_ProPDCODPRO.AsFloat) then
  flcadpro(1,0,0,fdeixanum(CODPRO.Text));

DM1.Tb_AjuAJPC0CUS.Value :=dm1.Tb_ProPDPRECOC.AsFloat;
DM1.Tb_AjuAJPRECO1.Value :=dm1.Tb_ProPDPCOFAB.AsFloat;

if Trim(DATAV.Text)<>'/  /' then
   DM1.Tb_AjuAJDATAV.Value:=Strtodate(DATAV.Text);
DM1.Tb_Aju.Post;


fBaixarMercadorias(codemp
         ,mfilial
         ,0 // item
         ,02 // docori
         ,codusr
         ,0 //pcontesp
         ,Log_TipoProdPad //ptipoprod
         ,DM1.Tb_AjuAJSEQ.AsFloat
         ,DM1.Tb_AjuAJLOTSEQ.AsFloat
         ,DM1.Tb_AJUAJQTD.AsFloat
         ,DM1.Tb_AJUAJCODPRO.AsString
         ,iif(RG_TIPOM.Itemindex=0,'E','S') // estnor
         ,'N' // estreversado
         ,LOTE.TEXT
         ,DATAV.Date
                  ,'' // lote re
                  ,'' // obs

         );


mqtd:=mqtd+1;
STG1.rowcount:=mqtd+2;
STG1.Cells[0,mqtd]:=CODPRO.Text;
STG1.Cells[1,mqtd]:=NOMPRO.Text;
STG1.Cells[2,mqtd]:=QTD.Text;
STG1.Cells[3,mqtd]:=LOTE.Text;
STG1.Cells[4,mqtd]:=DATAV.Text;
STG1.Cells[5,mqtd]:=IIF(RG_TIPOM.ItemIndex=0,'Entrada','Saida');
STG1.Cells[6,mqtd]:=MOTIVO.Text;
if RG_TIPOM.ItemIndex=0 then
   STG1.Cells[7,mqtd]:=FloatToStr(ValFloat(estoque.Caption)+ValFloat(QTD.Text))
else
   STG1.Cells[7,mqtd]:=FloatToStr(ValFloat(estoque.Caption)-ValFloat(QTD.Text));

if mqtd>6 then
   STG1.TopRow:=mqtd-4;
if ValFloat(ESTMIN.Text)<>DM1.Tb_ProPDESTMIN.Value then
   begin
   DM1.Query1.close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Sql.add('Update CADPRO set PDESTMIN=0'+MudaVp(ESTMIN.Text)
                     +' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PDCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
   try
      DM1.query1.ExecSQL;
      fdm1StartCommit;
   except
      FMensagem('Erro 313 ao atualizar estoque minimo!',0,['0'],0);
      end;
   end;

CODPRO.Text:='';
edt_lote_re.Text:='0';
//RG_TIPOM.ItemIndex:=0;
NOMPRO.Text:='';
if cb_leitor.Checked then
   QTD.Text:=FormatFloat(mcasqtd_aju, 1)
else
   QTD.Text:='';
//MOTIVO.Text:='';
LOTE.Text:='';
DATAV.Text:='';
ESTMIN.Text:='';
estoque.Visible:=False;
if DM1.Tb_LGC.Active then
   DM1.Tb_LGC.Close;
CODPRO.SetFocus;

end;

procedure TFrm_Aju.QTDKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key  in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_Aju.QTDExit(Sender: TObject);
var
mtam: Integer;
begin
QTD.Text:=FormatFloat(mcasqtd_aju,ValFloat(QTD.Text));
if ValFloat(QTD.Text)<0 then
   begin
   FMensagem('Quantidade Invalida!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
if (DM1.Tb_ProPDFRACAO.Value<>1) then
   begin
   if Trunc(ValFloat(QTD.Text))<>ValFloat(QTD.Text) then
      begin
      FMensagem('Não é permitido fracionar este produto!',0,['0'],0);
      QTD.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_Aju.FormCreate(Sender: TObject);
begin

if log_filial_Qtd<2 then
   begin
   Label18.Visible:=false;
   cb_estoque.Visible:=false;
   end;

IF DM4.Tb_ParGer02PG2UTILCQ.AsInteger=1 then
   CB_UTILCQ.Visible:=true
else
   CB_UTILCQ.Visible:=false;

if (ValInt('0'+copy(mpseg,1,2))<>3) then
   begin
   lbl_lote_re.Visible:=false;
   edt_lote_re.Visible:=false;
   DBGrid1.Columns[8].Visible:=false;
   end;

CB_LEITOR.Checked:=dm1.Tb_PargerPLEITORAJU.Value=1;
STG1.Cells[0,0]:='Código';
STG1.Cells[1,0]:='Descriçao';
STG1.Cells[2,0]:='Quant.';
//if ValInt(copy(mpseg,4,2))=01 then  //  lotes de mercadorias
if Log_TipoLote=1 then
   lbl_lote.Caption:='Número do Lot&e:'
else
   lbl_lote.Caption:='Grad&e:';
if Log_TipoLote>0 then  //  lotes de mercadorias
   begin
   LOTE.Hint:='Informe O Numero '+Log_TitLote;
   STG1.Cells[3,0]:=Log_TitLote;
   lbl_vencimento.Visible :=True;
   lbl_lote.Visible :=True;
   LOTE.Visible   :=True;
   GB_LOTES.Caption:=Log_TitLote+' Existentes';
   DBGrid1.Columns[0].Title.Caption:='Número '+Log_TitLote;
   DBGrid1.Columns[1].Visible:=True;
   GB_LOTES.Visible:=True;
   end;
if Log_UsaDtVcto then
   begin
   STG1.Cells[4,0]:='Data de vecimento';
   DATAV.Visible  :=True;
   lbl_vencimento.Visible:=True;
   end
else
   begin
   DBGrid1.Columns[1].Visible:=False;
   DATAV.Visible  :=false;
   lbl_vencimento.Visible:=False;
   STG1.ColWidths[4]:=0;
   end;
STG1.Cells[5,0]:='Tipo Mov';
STG1.Cells[6,0]:='Observaçoes';
STG1.Cells[7,0]:='Saldo Geral';

mqtd:=0;
DATAREF.Text:=FormatDatetime('dd/mm/yyyy',date);
if DM1.Tb_LGC.Active then
   DM1.Tb_LGC.Close;
if DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value then
   mcasqtd_aju:=mcasind
else
   mcasqtd_aju:=mcasqtd;

if flfilpad(0,'_AJU','') then
   begin
   while not DM4.Tb_FilPad2.Eof do
      begin
      if copy(DM4.Tb_FilPad2FPCOMP.AsString,1,6) = 'MOTIVO' then
         motivo.Items.Add(DM4.Tb_FilPad2FPVALOR.AsString);
      DM4.Tb_FilPad2.Next;
      end;
   end;

end;

procedure TFrm_Aju.CANCELARClick(Sender: TObject);
begin
CODPRO.Text:='';
//RG_TIPOM.ItemIndex:=0;
NOMPRO.Text:='';
QTD.Text:='';
//MOTIVO.Text:='';
LOTE.Text:='';
DATAV.Text:='';
CODPRO.SetFocus;
estoque.Visible:=False;
end;

procedure TFrm_Aju.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Aju.DATAREFExit(Sender: TObject);
begin
Try
  DATAREF.Text:=FormatDateTime('dd/mm/yyyy',StrtoDate(DATAREF.Text));
except
  ShowMessage('Data Invalida!. ');
  DATAREF.SetFocus;
  end;
end;

procedure TFrm_Aju.BitBtn1Click(Sender: TObject);
begin
mExcAjOrigem:=mAjuOrigem;
estoque.Visible:=False;
if Frm_ExcAJ=nil then
   Application.CreateForm(TFrm_ExcAj, Frm_ExcAj)
else
   begin
   Frm_ExcAJ.Free;
   Frm_ExcAJ:=nil;
   Application.CreateForm(TFrm_ExcAj, Frm_ExcAj);
   end;

Frm_ExcAj.ShowModal;
Frm_ExcAj.Free;
Frm_ExcAJ:=nil;
end;
procedure TFrm_Aju.DATAV_Exit(Sender: TObject);
begin
if trim(DATAV.Text)<>'/  /' then
   begin
   Try
     DATAV.Text:=FormatDateTime('dd/mm/yyyy',StrtoDate(DATAV.Text));
   except
     fMensagem('Data Invalida!. ',0,['0'],0);
     DATAV.SetFocus;
     end;

   if YearsBetween(now,StrToDatetime(DATAV.Text)) >10 then
      begin
      if fMensagem('A Data de Vencimento Possui '+Inttostr(YearsBetween(now,StrToDatetime(DATAV.Text)))
               +' anos. Continuar Mesmo Assim?',0,['1','2'],2)<>mryes then
         begin
         DATAV.SetFocus;
         exit;
         end;
      end
   else if StrToDatetime(DATAV.Text)<=date then
      begin
      if fMensagem('A Data de Vencimento é menor ou igual a atual. '
               +' Continuar Mesmo Assim?',0,['1','2'],2)<>mryes then
         begin
         DATAV.SetFocus;
         exit;
         end;
      end
{
Memo1.Lines.Add(IntToStr(YearsBetween(now,StrToDatetime(edit1.Text))) + ' Anos - '
+
IntToStr(MonthsBetween(now,StrToDatetime(edit1.Text))) + ' Meses - ' +
IntToStr(DaysBetween (now,StrToDatetime(edit1.Text))) + ' Dias - ' +
IntToStr(HoursBetween (now,StrToDatetime(edit1.Text))) + ' Horas - ' +
IntToStr(MinutesBetween (now,StrToDatetime(edit1.Text))) + ' Minutos - ' +
IntToStr(SecondsBetween (now,StrToDatetime(edit1.Text))) + ' Segundos - ' +
IntToStr(MilliSecondsBetween  (now,StrToDatetime(edit1.Text))) + 'Milisegundos');

 }
   end;
end;

procedure TFrm_Aju.LOTEExit(Sender: TObject);
var
mPosReg: TBookmark;

begin
CODPRO.Text:=fdeixanum(CODPRO.Text);
if Log_TipoLote=2 then
   begin
   if not flcadlgc(0,1,0,CODPRO.Text,LOTE.Text,'') then
      begin
      FMensagem(Log_TitLote+' nao cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end;
   end;
if (trim(DATAV.Text)='/  /') and (Log_TipoLote=1) and (Trim(LOTE.Text)<>'') then
   begin
   mPosReg:=DM1.Tb_LGC.GetBookmark;
   DM1.Tb_LGC.First;
   While not DM1.Tb_LGC.Eof do
      begin
      if DM1.Tb_LGCCLNUMERO.AsString=LOTE.Text then
         begin
         DATAV.Text:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.AsDateTime);
         break;
         end;
      DM1.Tb_LGC.Next;
      end;
   dm1.Tb_LGC.GotoBookmark(mPosReg);
   end;

end;

procedure TFrm_Aju.LOTEKeyPress(Sender: TObject; var Key: Char);
begin
if Length(LOTE.Text)>20 then
   begin
   FMensagem('Número do lote não pode ter mas que 20 digitos!',0,['0'],0);
   key:=#0;
   end;

end;

procedure TFrm_Aju.DBGrid1DblClick(Sender: TObject);
begin
LOTE.Text :=DM1.Tb_LGCCLNUMERO.Value;
DATAV.Text:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
edt_lote_re.Text:=DM1.Tb_LGCCLLOTE_RE.AsString;
cb_estoque.Text:=fRetonaNomeFilial(DM1.Tb_LGCCLFILIAL.AsInteger);
with cb_estoque do
    ItemIndex := items.IndexOf(cb_estoque.Text);

end;

procedure TFrm_Aju.CODPROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if DM1.Tb_PargerPPCOGRA.Value=1 then
      begin
      if Length(CODPRO.Text)<5 Then
         CODPRO.Text:=fChamaPro(2,'Frm_Aju','');
      end
   else
     CODPRO.Text:=fChamaPro(0,'Frm_Aju','');
   key:=0;
   end;

end;

procedure TFrm_Aju.cb_leitorClick(Sender: TObject);
begin
if cb_leitor.Checked then
   QTD.Text:=FormatFloat(mcasqtd_aju, 1)
else
   QTD.Text:='';
end;

procedure TFrm_Aju.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Aju.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if (arow=20) then
//Pega o texto da célula
  begin
  Texto := STG1.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG1.Canvas.TextWidth(Texto);
  AlturaTexto := STG1.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG1.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_Aju.MOTIVOExit(Sender: TObject);
begin
   mcinst := motivo.text;

   with motivo do ItemIndex:=Items.IndexOf(motivo.Text);
      if motivo.ItemIndex < 0 then begin
         motivo.Items.Add(mcinst);

         fGravaPadroes(0,'MOTIVO'+FormatFloat('000',motivo.itemindex)     ,'TEXT' ,'_AJU',mcinst);
      end;
end;

procedure TFrm_Aju.FormActivate(Sender: TObject);
begin
if DM1.Tb_PargerPINDUSTRIA.AsInteger=4 then
  begin
  DBGrid1.Columns.Items[2].Visible:=True;
  lbl_lote_re.Visible:=True;
  edt_lote_re.Visible:=True;
  end
else
  begin
  DBGrid1.Columns.Items[2].Visible:=False;
  lbl_lote_re.Visible:=False;
  edt_lote_re.Visible:=False;
  end;
end;

procedure TFrm_Aju.MOTIVOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=118 then
   begin
   if Application.MessageBox('Esta opção Deixa Somente os Historicos Padrão, deseja Continuar?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   fDeletaPadroes(0,'_AJU','')
   end;

end;

procedure TFrm_Aju.FormShow(Sender: TObject);
var
Query_filial: TQuery;
begin
fTestareCriarTriggers;

Query_filial:=TQuery.Create(nil);
Query_filial.DatabaseName:=DM1.SG_ASSOC.databasename;
Query_filial.Close;
Query_filial.SQL.Clear;
Query_filial.SQL.add('Select CFFILIAL,CFNOME from CADPRO_FILIAL where CFCODEMP=0'+IntToStr(codemp-iif(codemp>100,100,0))
                    +' order by CFFILIAL ');
Query_filial.Open;
cb_estoque.Items.Clear;
While not Query_filial.Eof do
   begin
   cb_estoque.Items.Add(Query_filial.fieldbyName('CFNOME').asstring);
   Query_filial.Next;
   end;
if log_filial_padrao=0 then
   begin
  cb_estoque.ItemIndex:=0;
  end
else
  begin
  if Query_filial.Locate('CFFILIAL',IntToStr(log_filial_padrao),[]) then
     begin
     cb_estoque.Text:=Query_filial.fieldbyName('CFNOME').Value;
     with cb_estoque do
           ItemIndex := items.IndexOf(cb_estoque.Text);

     end;
  end;
FreeAndNil(query_filial);





end;

end.

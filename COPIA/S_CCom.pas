unit S_CCom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Grids, Buttons, DB, DBTables, S_DM1, S_Cli,
  func,S_FPagCr, lerarq,S_SitCre,s_Impres,S_SelEmp;

type
  TFrm_CCom = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    RG_TIPO: TRadioGroup;
    STG1: TStringGrid;
    BitBtn1: TBitBtn;
    Qr_Dup: TQuery;
    Qr_DupCRNUMERO: TFloatField;
    Qr_DupCRDESD: TStringField;
    Qr_DupCRDUP: TFloatField;
    Qr_DupCRCODCLI: TFloatField;
    Qr_DupCRDTEMIS: TDateTimeField;
    Qr_DupCRDTVCTO: TDateTimeField;
    Qr_DupCRVALOR: TFloatField;
    Qr_DupCRVALPAG: TFloatField;
    Qr_DupCRDTPAG: TDateTimeField;
    Qr_DupCRJUROS: TFloatField;
    Qr_DupCRDESC: TFloatField;
    Qr_DupCRNPED: TFloatField;
    Qr_DupCRORDEM: TFloatField;
    Qr_DupCRSTATUS: TFloatField;
    Qr_DupCRAZAO: TStringField;
    Qr_Dupnombco: TStringField;
    Qr_DupCRCODVEN: TFloatField;
    Qr_DupCRCODBCO: TFloatField;
    Panel3: TPanel;
    Panel4: TPanel;
    Qr_DupCRCODEMP: TFloatField;
    Label4: TLabel;
    Label5: TLabel;
    BBFORMA: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TOTG: TEdit;
    TOTP: TEdit;
    TOTA: TEdit;
    VERSIT: TBitBtn;
    Qr_DupCRLOTSEQ_LB: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Qr_DupCalcFields(DataSet: TDataSet);
    procedure STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BBFORMAClick(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure VERSITClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_Impres_CCom: TFrm_Impres;
    Form_FPagCR: TFrm_FPagCR;
    Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_CCom: TFrm_CCom;
  mtam: Integer=13;
implementation



{$R *.dfm}

procedure TFrm_CCom.FormCreate(Sender: TObject);
begin
STG1.RowCount:=2;
STG1.Cells[00,00]:='Número';
STG1.Cells[01,00]:='Parc';
STG1.Cells[02,00]:='Documento';
STG1.Cells[03,00]:='Cliente';
STG1.Cells[04,00]:='Dt.Emissão';
STG1.Cells[05,00]:='Dt.Vcto';
STG1.Cells[06,00]:='Valor';
STG1.Cells[07,00]:='Vlr.Pago';
STG1.Cells[08,00]:='Restante';
STG1.Cells[09,00]:='Dt.Pgto.';
STG1.Cells[10,00]:='Juros Receb.';
STG1.Cells[11,00]:='Desc.Conced';
STG1.Cells[12,00]:='Cód.Vend.';
STG1.Cells[13,00]:='Tipo Cobrança';
STG1.Cells[14,00]:='Atraso';
STG1.Cells[15,00]:='Chave';
STG1.Rows[1].Clear;
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
la_Empresas:='';
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_CCom.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CCom.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   begin
   NOMCLI.Text:='Todos...';
   VERSIT.Enabled:=False;
   end
else
   begin
   flcadcli(1,0,CODCLI.Text);
   if DM1.Tb_Cli.Eof then
      begin
      fmensagem('Cliente nao Cadastrado',0,['0'],0);
      CODCLI.SetFocus;
     end
   else
      begin
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
      VERSIT.Enabled:=True;
      end;
   end;
end;

procedure TFrm_CCom.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CCom',key);
   key:=#0;
   end;

end;

procedure TFrm_CCom.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2,StrToDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_CCom.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2,StrToDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrtoDate(MDT1.Text) then
      begin
      fmensagem('Periodo invalido. Data Inicial maior que data final',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_CCom.BitBtn1Click(Sender: TObject);
var
minc: String;
matraso: Real;
mqtd: Integer;
mtotj,mtotd,mtotg,mtotp: Real;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data inicial maior que Final, invalido!',mtWarning,[mbok],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);
Qr_Dup.Close;
Qr_Dup.Sql.Clear;
Qr_Dup.Sql.Add('Select CRNUMERO,CRDESD,CRDUP,CRCODCLI,CRDTEMIS, '
              +'       CRDTVCTO,CRVALOR,CRVALPAG,CRDTPAG,'
              +'       CRJUROS,CRDESC,CRNPED,CRORDEM,CRSTATUS,CRCODVEN,'
              +'       CRCODBCO,CRCODEMP,CRLOTSEQ_LB,CRAZAO'
              +'       from CADDAR,CADCLI where CRSTATUS<>9 ');
Qr_Dup.Sql.Add(Iif(trim(la_Empresas)='',' ',' and ')+la_Empresas);
{if not DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   begin
   Qr_Dup.SQL.Add(' and  'CRCODEMP=0'+IntTostr(codemp));
   end;}
if Trim(CODCLI.Text)<>'' then
   begin
   Qr_Dup.Sql.add(' and CRCODCLI=0'+Trim(CODCLI.Text));
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Dup.Sql.add(' and CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Dup.Sql.add(' and CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   end;

if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
   begin
   Qr_Dup.SQL.Add(' and CCODEMP=0'+IntTostr(codemp));
   end;
Qr_Dup.SQL.add(' and  CCODCLI=CRCODCLI');
if RG_TIPO.ItemIndex=1 then
   Qr_Dup.Sql.Add(' and CRSTATUS < 2')
else if RG_TIPO.ItemIndex=2 then
   Qr_Dup.SQL.Add(' and CRSTATUS > 1');
Qr_Dup.Sql.add(' Order by CRDTVCTO');
Qr_Dup.Open;
if Qr_Dup.Eof then
   begin
   MessageDlg('Nada na condição pedida!',mtWarning,[mbOk],0);
   CODCLI.SetFocus;
   exit;
   end;
STG1.rowcount:=2;
STG1.Rows[1].Clear;
mtotg:=0;
mtotp:=0;
mtotj:=0;
mtotd:=0;

While not Qr_Dup.Eof do
   begin
   mtotg:=mtotg+Qr_DupCRVALOR.Value;
   mtotp:=mtotp+Qr_DupCRVALPAG.Value;
   mtotj:=mtotj+Qr_DupCRJUROS.Value;
   mtotd:=mtotd+Qr_DupCRDESC.Value;
   mqtd:=STG1.RowCount;
   STG1.Cells[00,mqtd-1]:=FormatFloat('000000',Qr_DupCRNUMERO.Value);
   STG1.Cells[01,mqtd-1]:=Qr_DupCRDESD.Value;
   STG1.Cells[02,mqtd-1]:=ptpdoc[Qr_DupCRDUP.AsInteger];
   STG1.Cells[03,mqtd-1]:=Qr_DupCRAZAO.Value;
   STG1.Cells[04,mqtd-1]:=FormatDatetime(fdt2,Qr_DupCRDTEMIS.Value);
   STG1.Cells[05,mqtd-1]:=FormatDatetime(fdt2,Qr_DupCRDTVCTO.Value);
   STG1.Cells[06,mqtd-1]:=FormatFloat(mcasas,Qr_DupCRVALOR.Value);
   STG1.Cells[07,mqtd-1]:=FormatFloat(mcasas,Qr_DupCRVALPAG.Value);
   STG1.Cells[08,mqtd-1]:=FormatFloat(mcasas,Qr_DupCRVALOR.Value-(Qr_DupCRVALPAG.Value-Qr_DupCRJUROS.Value+Qr_DupCRDESC.Value));
   if Qr_DupCRSTATUS.Value>0 then
      begin
      STG1.Cells[09,mqtd-1]:=FormatDatetime(fdt2,Qr_DupCRDTPAG.Value);
      STG1.Cells[10,mqtd-1]:=FormatFloat(mcasas,Qr_DupCRJUROS.Value);
      STG1.Cells[11,mqtd-1]:=FormatFloat(mcasas,Qr_DupCRDESC.Value);
      end
   else
      begin
      STG1.Cells[09,mqtd-1]:=' ';
      STG1.Cells[10,mqtd-1]:='0.00';
      STG1.Cells[11,mqtd-1]:='0.00';
      end;
   STG1.Cells[12,mqtd-1]:=FormatFloat('00000',Qr_DupCRCODVEN.Value);
   STG1.Cells[13,mqtd-1]:=Qr_Dupnombco.Value;
   if Qr_DupCRSTATUS.Value=2 then
      matraso:=Qr_DupCRDTPAG.Value-Qr_DupCRDTVCTO.Value
   else
      matraso:=pdatasis-Qr_DupCRDTVCTO.Value;
   if matraso<0 then
      matraso:=0;
   STG1.Cells[14,mqtd-1]:=insere(FloatTostr(matraso),' ',5);
   STG1.Cells[15,mqtd-1]:=Formatfloat('0000000',Qr_DupCRNPED.Value)+'/'+FormatFloat('00',Qr_DupCRORDEM.Value);
   STG1.Cells[16,mqtd-1]:=Formatfloat('0',Qr_DupCRSTATUS.Value);
   STG1.Cells[17,mqtd-1]:=Formatfloat('0',Qr_DupCRDUP.Value);
   STG1.Cells[18,mqtd-1]:=Formatfloat('0',Qr_DupCRCODEMP.Value);
   STG1.Cells[19,mqtd-1]:=Qr_DupCRLOTSEQ_LB.AsString;
   STG1.RowCount:=mqtd+1;
   STG1.rows[mqtd].Clear;
   Qr_Dup.Next;
   end;
Qr_Dup.First;
TOTG.Text:=insere(Formatfloat(mcasas,mtotg),' ',mtam);
TOTP.Text:=insere(Formatfloat(mcasas,mtotp),' ',mtam);
TOTA.Text:=insere(Formatfloat(mcasas,mtotg-mtotp+mtotj-+mtotd),' ',mtam);
if Qr_dup.Eof then
   begin
   BBFORMA.Enabled   :=False;
   BBIMPRIMIR.Enabled:=False;
   end
else
   begin
   BBFORMA.Enabled   :=True;
   BBIMPRIMIR.Enabled:=True;
   end;

end;

procedure TFrm_CCom.Qr_DupCalcFields(DataSet: TDataSet);
begin
if (Qr_DupCRCODBCO.IsNull) or (Qr_DupCRCODBCO.Value=0) then
   Qr_Dupnombco.Text:='Carteira'
else
   begin
   DM1.Query1.close;
   DM1.Query1.Sql.Clear;
   DM1.Query1.Sql.Add('Select BCBANCO from CADBCO where ');
   if DM1.Qr_Tid.Locate('TINOME','CADBCO',[]) then
      DM1.Query1.Sql.Add(' BCCODBCO=0'+Qr_DupCRCODBCO.AsString
                        +' order by BCCODBCO')
   else
      DM1.Query1.Sql.Add('BCCODEMP=0'+IntToStr(codemp)
                        +' and BCCODBCO=0'+Qr_DupCRCODBCO.AsString
                        +' order by BCCODBCO');
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      Qr_Dupnombco.Text:='não cadastrado'
   else
      Qr_Dupnombco.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure TFrm_CCom.STG1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if arow>0 then
   begin
   if STG1.Cells[16,arow]='1' then
      begin
      STG1.Canvas.Brush.Color:=clBlue;
      end
   else if (STG1.Cells[16,arow]='0') and (StrToFloat('0'+Trim(STG1.Cells[14,arow]))>0) then
      begin
      STG1.Canvas.Brush.Color:=clRed;
      end;
   STG1.Canvas.TextRect(Rect, Rect.Left, rect.Top,STG1.Cells[acol,arow]);
   end;
if ((aCol=0) or (Acol=6) or (Acol=7) or (Acol=8)
   or (Acol=10) or (Acol=11) or (Acol=12) or (Acol=14) or (Acol=15) ) then
   begin
//Pega o texto da célula
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

procedure TFrm_CCom.BBFORMAClick(Sender: TObject);
var
mqtdd,mqtdf,mini:Integer;
begin

testeform := TFrm_CCom(FindGlobalComponent('Form_fpagcr'));
if testeform=nil then
   Application.CreateForm(TFrm_FPagCR, Form_FPagCR)
else
   begin
   Form_FPagCR.Free;
   Form_FPagCR:=nil;
   Application.CreateForm(TFrm_FPagCR, Form_FPagCR);
   end;
pptipo:=0;
mpos:=STG1.Row;
Form_FPagCR.STGFP.RowCount:=2;
Form_FPagCR.STGFP.Cells[00,00]:='Titulo';
Form_FPagCR.STGFP.Cells[01,00]:='Dt.Pgto';
Form_FPagCR.STGFP.Cells[02,00]:='Valor Pago';
Form_FPagCR.STGFP.Cells[03,00]:='Juros';
Form_FPagCR.STGFP.Cells[04,00]:='Descontos';
Form_FPagCR.STGFP.Cells[05,00]:='Forma Pagamento';
Form_FPagCR.STGFP.Cells[06,00]:='Numero';
Form_FPagCR.STGFP.Cells[07,00]:='Valor';
Form_FPagCR.STGFP.Cells[08,00]:='Cliente';
Form_FPagCR.STGFP.Cells[09,00]:='Documento';
Form_FPagCR.STGFP.Cells[10,00]:='Valor';
Form_FPagCR.STGFP.Cells[11,00]:='Lote';
Form_FPagCR.Label1.Caption:='Cliente.: '+STG1.Cells[03,mpos];
Form_FPagCR.label2.Caption:=STG1.Cells[02,mpos];
Form_FPagCR.label2.Caption:=Form_FPagCR.label2.Caption+' Número: '+Trim(STG1.Cells[00,mpos]);
Form_FPagCR.label2.Caption:=Form_FPagCR.label2.Caption+'-'+STG1.cells[01,mpos];

DM1.Query2.Close;
DM1.Query2.sql.Clear;
DM1.Query2.SQL.Add('Select FPLOTE,FPCODEMP from FPCRDUP where ');
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   DM1.Query2.SQL.Add(' FPCODEMP=0'+Trim(STG1.cells[18,mpos])+' and ');
DM1.Query2.SQL.Add(' FPLOTSEQ=0'+Trim(STG1.cells[19,mpos])+' and ');

DM1.Query2.Sql.add(' FPNUMERO=0'+Trim(STG1.cells[00,mpos])
                  +' and FPDESD='+chr(39)+Trim(STG1.cells[01,mpos])+chr(39)
                  +' and FPTIPO=0'+Trim(STG1.cells[17,mpos])
                  +' and FPDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.cells[04,mpos])))+chr(39));

// DM1.Query2.SQL.add(' Group by FPCR.FPLOTE ');
{
DM1.Query2.Sql.add(' FPNUMERO=0'+Trim(STG1.cells[00,mpos])
                  +' and FPDESD='+chr(39)+Trim(STG1.cells[01,mpos])+chr(39)
                  +' and FPCODFOR=0'+Trim(STG1.cells[19,mpos])
                  +' and FPDTEMIS='+chr(39)+FormatDatetime(fdt, StrToDate(Trim(STG1.cells[04,mpos])))+chr(39));


DM1.Query2.Close;
DM1.Query2.sql.Clear;
DM1.Query2.SQL.Add('Select FPCR.FPLOTE '
               +' from FPCR, FPCRDUP '
               +' where FPCR.FPCODEMP=0'+IntTostr(codemp));
DM1.Query2.Sql.add(' and FPCRDUP.FPTIPO=FPCR.FPTIPO '
               +' and FPCRDUP.FPLOTE=FPCR.FPLOTE '
               +' and FPCRDUP.FPCODEMP=FPCR.FPCODEMP');
DM1.Query2.Sql.add(' and FPNUMERO=0'+Trim(STG1.cells[00,mpos])
                  +' and FPDESD='+chr(39)+Trim(STG1.cells[01,mpos])+chr(39)
                  +' and FPTIPO=0'+Trim(STG1.cells[17,mpos]));
DM1.Query2.SQL.add(' Group by FPCR.FPLOTE ');
}
DM1.Query2.Open;
if DM1.Query2.Eof then
   begin
   fmensagem('Forma de pagamento não encontrada',0,['0'],0);
   Form_FPagCR.Free;
   Form_FPagCR:=nil;
   exit;
   end;
Form_FPagCR.ShowModal;
Form_FPagCR.Free;
Form_FPagCR:=nil;
end;

procedure TFrm_CCom.BBIMPRIMIRClick(Sender: TObject);
var
periodo: String;
mtotg, mtotp,mtotj,mtotd: Real;

begin
Qr_Dup.First;
if Qr_Dup.Eof then
   begin
   end;
testeform := TFrm_CCom(FindGlobalComponent('Form_Impres_CCom'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, Form_Impres_CCom);
   end;

Form_Impres_CCom.fimpresajustaimp(3,126,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Form_Impres_CCom.mlin:=0;
Form_Impres_CCom.mpag:=0;
if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
   periodo:='Todas as datas.'
else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
   periodo:='Ate: '+MDT2.Text
else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
   periodo:='A partir de '+MDT1.Text
else
   periodo:='Periodo de '+MDT1.Text+' a '+MDT2.Text;
mtotg:=0;
mtotp:=0;
mtotj:=0;
mtotd:=0;


While not Qr_dup.Eof do
   begin
   mtotg:=mtotg+Qr_DupCRVALOR.Value;
   mtotp:=mtotp+Qr_DupCRVALPAG.Value;
   mtotj:=mtotj+Qr_DupCRJUROS.Value;
   mtotd:=mtotd+Qr_DupCRDESC.Value;
   if Form_Impres_CCom.mlin=0 then
      begin
      Form_Impres_CCom.mpag:=Form_Impres_CCom.mpag+1;
      Form_Impres_CCom.mlin:=Form_Impres_CCom.fImprimirCabecalho(136,'Historico de Clientes. '+periodo);
      Form_Impres_CCom.mlin:=Form_Impres_CCom.mlin+1;
      Form_Impres_CCom.RDprint1.ImpF(03,01,insere2('-','-',80),mnormal);
      Form_Impres_CCom.Rdprint1.ImpF(05,01,'Numero    Documento  Cliente                                  Dt.Emis. Dt.Vcto.      Valor Valor Pago   Restante Juros Rec Desc.Conc.',mreduz);
      Form_Impres_CCom.mlin:=5;
      end;
   Form_Impres_CCom.mlin:=Form_Impres_CCom.mlin+1;
   Form_Impres_CCom.RDprint1.ImpF(Form_Impres_CCom.mlin,01,insere(Qr_DupCRNUMERO.AsString,' ',7)+'-'+insere2(Qr_DupCRDESD.Value,' ',2)
                           +insere2(ptpdoc[Qr_DupCRDUP.AsInteger],' ',10)+' '
                           +insere2(Qr_DupCRAZAO.Value,' ',40)+' '
                           +FormatDateTime(fdt3, Qr_DupCRDTEMIS.Value)+' '
                           +FormatDateTime(fdt3, Qr_DupCRDTVCTO.Value)
                           +insere(Formatfloat('0.00',Qr_DupCRVALOR.Value),' ',11)
                           +insere(FormatFloat('0.00',Qr_DupCRVALPAG.Value),' ',11)
                           +insere(FormatFloat('0.00',Qr_DupCRVALOR.Value-(Qr_DupCRVALPAG.Value+Qr_DupCRJUROS.Value-Qr_DupCRDESC.Value)),' ',11)
                           +insere(Formatfloat('0.00',Qr_DupCRJUROS.Value),' ',11)
                           +insere(Formatfloat('0.00',Qr_DupCRDESC.Value),' ',11),mreduz);
   Qr_Dup.Next;
   if Qr_dup.Eof then
      begin
      Form_Impres_CCom.mlin:=Form_Impres_CCom.mlin+1;
      Form_Impres_CCom.RDprint1.ImpF(Form_Impres_CCom.mlin,01,'- Totais.......................................................................'
                           +insere(Formatfloat('0.00',mtotg),' ',11)
                           +insere(FormatFloat('0.00',mtotp),' ',11)
                           +insere(FormatFloat('0.00',mtotg-mtotp),' ',11)
                           +insere(Formatfloat('0.00',mtotj),' ',11)
                           +insere(Formatfloat('0.00',mtotd),' ',11),mreduz);
      Form_Impres_CCom.mlin:=Form_Impres_CCom.mlin+1;
      Form_Impres_CCom.Rdprint1.impf(Form_Impres_CCom.mlin,01,insere2('Fim.','-',80),mnormal);
      if Form_Impres_CCom.RDprint1.Setup then
        Form_Impres_CCom.Rdprint1.Fechar;
      Form_Impres_CCom.free;
      Form_Impres_CCom:=nil;      
      end
   else if Form_Impres_CCom.mlin>60 then
      begin
      Form_Impres_CCom.mlin:=Form_Impres_CCom.mlin+1;
      Form_Impres_CCom.Rdprint1.impf(Form_Impres_CCom.mlin,01,insere('Continua...','-',80),mnormal);
      Form_Impres_CCom.RDprint1.Novapagina;
      Form_Impres_CCom.mlin:=0;
      end;
   end;

{
Numero    Documento  Cliente                                  Dt.Emis. Dt.Vcto.      Valor Valor Pago   Restante Juros Rec Desc.Conc.
- Totais.......................................................................zZZZ.ZZ9,99ZZZZ.ZZ9,99zZZZ.ZZ9,99ZZZ.ZZ9,99ZZZZ.ZZ9,99

Numero    Documento  Cliente                                  Dt.Emis. Dt.Vcto.      Valor Valor Pago   Restante Juros Rec Desc.Conc.
1234567-a 1234567890 1234567890123456789012345678901234567890 10/09/20 10/09/20zZZZ.ZZ9,99ZZZZ.ZZ9,99zZZZ.ZZ9,99ZZZ.ZZ9,99ZZZZ.ZZ9,99
}
if Form_Impres_CCom<>nil then
  Form_Impres_CCom.Free;
  Form_Impres_CCom:=Nil;
end;

procedure TFrm_CCom.VERSITClick(Sender: TObject);
begin
if Frm_SitCre=nil then
   Application.CreateForm(TFrm_SitCre, Frm_SitCre)
 else
   begin
   Frm_SitCre.Free;
   Frm_SitCre:=nil;
   Application.CreateForm(TFrm_SitCre, Frm_SitCre);
   end;

Frm_SitCre.CODCLI.Text:=Trim(CODCLI.text);
Frm_Sitcre.BBAPLICAR.Click;
Frm_SitCre.ShowModal;
Frm_SitCre.Free;
Frm_SitCre:=Nil;
end;

procedure TFrm_CCom.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_CCom.FormKeyDown(Sender: TObject; var Key: Word;
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

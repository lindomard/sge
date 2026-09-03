unit S_CCob;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, Db, DBTables, ExtCtrls, S_Cli, Func,
  SR_Cob, S_DM1, S_Agde, S_DM2, Mask, DBCtrls,lerarq,S_Impres,rdprint;

type
  TFrm_CCob = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1CRNUMERO: TFloatField;
    Query1CRDESD: TStringField;
    Query1CRDUP: TFloatField;
    Query1CRVALOR: TFloatField;
    Query1CRDTVCTO: TDateTimeField;
    Query1JUROS: TFloatField;
    Query1CRCODCLI: TFloatField;
    Query1CRSTATUS: TFloatField;
    Query1CRDTPAG: TDateTimeField;
    Query1CRVALPAG: TFloatField;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CODCLI: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    DBNavigator1: TDBNavigator;
    NOMCLI: TEdit;
    BitBtn2: TBitBtn;
    BImprimir: TBitBtn;
    BVisualizar: TBitBtn;
    BAplicar: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Edit3: TEdit;
    Cbx_ImpRap: TCheckBox;
    cb_cabecalho: TCheckBox;
    LININI: TEdit;
    BitBtn1: TBitBtn;
    MDTREC: TMaskEdit;
    bblimpar: TBitBtn;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIChange(Sender: TObject);
    procedure BAplicarClick(Sender: TObject);
    procedure BVisualizarClick(Sender: TObject);
    procedure BImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1AfterInsert(DataSet: TDataSet);
    procedure Query1BeforeInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure LININIExit(Sender: TObject);
    procedure bblimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fCcobCab(ptipo: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_CCob: TFrm_CCob;
  mCodCli: Integer;
  mjuros: Real;
  mModCart:Integer;
  mlin,mlinini,mpag: Integer;
implementation

uses S_DM4;


{$R *.DFM}

procedure TFrm_CCob.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CCob',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_CCob.CODCLIChange(Sender: TObject);
begin
   If Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
   end
   else
      NOMCLI.Text:='Todos...'
end;

procedure TFrm_CCob.BAplicarClick(Sender: TObject);
var
  mdt, dt1, dt2: string;
  x: integer;
begin
if CODCLI.Text='' then
begin
   MessageDlg('Informe o Código do Cliente!',mtError,[mbOK],0);
   CODCLI.SetFocus;
   Exit;
end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Panel1.Caption:='Carregando Informações! Aguarde...';
Frm_Agde.Show;
Frm_Agde.Update;
if Trim(MDTREC.Text)='/  /' then
   begin
   MessageDlg('Data Para Recebimento Campo Obrigatório!',mtWarning,[mbOk],0);
   MDTREC.SetFocus;
   exit;
   end;

mdt:=FormatDateTime(fdt,Date);
mdt:=chr(39)+mdt+chr(39);
if trim(mdt1.Text)<>'/  /' then
   dt1:=chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39);
if trim(mdt2.Text)<>'/  /' then
   dt2:=Chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39);

if pbanco=0 then
   begin
   DM2.Tb_CCob.Close;
   DM2.Tb_CCob.sql.Clear;
   DM2.Tb_CCOB.SQL.Add('select CRCODEMP AS CCCODEMP, '
                      +' CRNUMERO-CRNUMERO AS CCCHAVE, '
                      +' CRNUMERO AS CCNUMERO, '
                      +' CRDESD   AS CCDESD, '
                      +' CRDUP    AS CCDUP, '
                      +' CRVALOR  AS CCVALOR, '
                      +' CRDTVCTO AS CCDTVCTO, '
                      +' TO_DATE('+chr(39)+FormatdateTime(fdt, StrToDate(MDTREC.Text))+chr(39)+') as CCDTPAG,'
//                      +' CRDTPAG  AS CCDTPAG, '
                      +' CRJURD AS CCJURDIA, '
                      +' CRCODCLI AS CCCODCLI, '
                      +' CRJURD AS CCVLRENCAR, '
                      +' CRDTEMIS AS CCDTEMIS, '
                      +' CRLOTSEQ_CP AS CCLOTSEQ '
                      +' from CADDAR where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+IntToStr(codemp)+' and ')
                      +IIF(mModCart=1,'  CRSTATUS<2',' CRSTATUS=2 and (CRDTPAG-CRDTVCTO)>0 '));
   If Trim(CODCLI.Text)<>'' then
      DM2.Tb_CCob.SQL.Add('and CRCODCLI='+Trim(CODCLI.Text));

   if (trim(mdt1.text)<>'/  /') or (Trim(mdt2.Text)<>'/  /') then
      begin
      if trim(mdt1.Text)<>'/  /' then
         DM2.Tb_CCob.SQL.Add(' and CRDTVCTO >='+dt1);
      if trim(mdt2.Text)<>'/  /' then
         DM2.Tb_CCob.SQL.Add(' and CRDTVCTO <='+dt2);
      end
   else
      DM2.Tb_CCob.SQL.Add('  and CRDTVCTO<'+mdt);


   DM2.Tb_CCob.Open;
   end
else
   begin
   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('select CRNUMERO, CRDESD, CRDUP, CRVALOR, CRVALPAG, CRDTVCTO, CRSTATUS, CRDTPAG, '
                 +'  CRJURD as Juros, '
                 +'  CRCODCLI '
                 +' from CADDAR where '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+IntToStr(codemp)+' and ')
                 +IIF(mModCart=1,'  CRSTATUS<2',' CRSTATUS=2 and (CRDTPAG-CRDTVCTO)>0 '));
   if (trim(mdt1.text)<>'/  /') or (Trim(mdt2.Text)<>'/  /') then
      begin
      if trim(mdt1.Text)<>'/  /' then
         Query1.SQL.Add(' and CRDTVCTO >='+dt1);
      if trim(mdt2.Text)<>'/  /' then
         Query1.SQL.Add(' and CRDTVCTO <='+dt2);
      end
   else
      Query1.SQL.Add('  and CRDTVCTO<'+mdt);
   If Trim(CODCLI.Text)<>'' then
      Query1.SQL.Add('and CRCODCLI='+Trim(CODCLI.Text));
   Query1.Open;

   if dm2.Tb_CCob.Active  then dm2.Tb_Ccob.Close;
   DM2.Tb_CCob.SQL.Clear;
   DM2.Tb_CCob.SQL.add('SELECT * FROM CARCOB WHERE CCCHAVE is null');
   dm2.Tb_CCob.Open;
   while not Query1.Eof do
      begin
      dm2.Tb_CCob.Append;
      dm2.Tb_CCobCCCHAVE.Value :=1;
      dm2.Tb_CCobCCNUMERO.Value:=Query1CRNUMERO.Value;
      dm2.Tb_CCobCCDUP.Value   :=Query1CRDUP.Value;
      dm2.Tb_CCobCCDESD.Value  :=Query1CRDESD.Value;
      dm2.Tb_CCobCCVALOR.Value :=Query1CRVALOR.Value;
      dm2.Tb_CCobCCDTVCTO.Value:=Query1CRDTVCTO.Value;
      dm2.Tb_CCobCCCODCLI.Value:=Query1CRCODCLI.Value;
      if mModCart=1 then  dm2.Tb_CCobCCDTPAG.Value :=iif(Trim(MDTREC.Text)='/  /',date,StrToDate(MDTREC.Text))
      else dm2.Tb_CCobCCDTPAG.Value :=Query1CRDTPAG.Value;

      dm2.Tb_CCobCCVLRENCAR.Value:=((Query1CRVALOR.Value*mjuros/100)/30)*round(dm2.Tb_CCobCCDTPAG.value-dm2.Tb_CCobCCDTVCTO.Value);
      if Query1JUROS.Value=0 then
         dm2.Tb_CCobCCJURDIA.Value:=(Query1CRVALOR.Value*mjuros/100)/30
      else
         dm2.Tb_CCobCCJURDIA.Value:=Query1JUROS.Value;
     Query1.Next;
     end;
  end;
Frm_Agde.Free;
Frm_Agde:=nil;
end;

procedure TFrm_CCob.BVisualizarClick(Sender: TObject);
begin
If DM2.Tb_CCob.Active then
   begin
   if Qr_Cob=nil then
      Application.CreateForm(TQr_Cob, Qr_Cob)
   else
      begin
      Qr_Cob.Free;
      Qr_Cob:=nil;
      Application.CreateForm(TQr_Cob, Qr_Cob)
      end;
   Qr_Cob.QRMemo2.Lines.Clear;
   Qr_Cob.QRMemo2.Lines.Add(Memo1.Text);
   Qr_Cob.QRLabel4.Caption:=Edit3.Text;
   Qr_Cob.QRMemo3.Lines.Clear;
   Qr_Cob.QRMemo3.Lines.Add(Memo2.Text);
   if mModCart=2 then
      begin
      Qr_Cob.QRLabel13.Caption:='Valor Encargos';
      Qr_Cob.QRDBText23.DataField:='CCVLRENCAR';
      Qr_Cob.QRLabel15.Caption:='Dt. Pagto';
      end;
   Qr_Cob.QR_DATA.Caption:=DM1.Tb_EmpCIDADE.Value+', '+FormatDateTime('dd "de" mmmm "de" yyyy',date)+'.';
   mCodCli:=0;
   if cb_cabecalho.Checked then
      begin
      Qr_Cob.FANTASIA.Enabled:=true;
      Qr_Cob.RAZAO.Enabled   :=true;
      Qr_Cob.ENDER.Enabled   :=true;
      Qr_Cob.TELEFONE.Enabled:=true;
      end
   else
      begin
      Qr_Cob.FANTASIA.Enabled:=False;
      Qr_Cob.RAZAO.Enabled   :=False;
      Qr_Cob.ENDER.Enabled   :=False;
      Qr_Cob.TELEFONE.Enabled:=False
      end;
   verteclado(0);
   Qr_Cob.PreviewModal;
   Qr_Cob.Free;
   Qr_Cob:=nil;
   end;
end;

procedure TFrm_CCob.BImprimirClick(Sender: TObject);
var
  F: TextFile;
  I: Integer;
  mtotal: Real;
begin
If dm2.Tb_Ccob.Active then
   begin
   If not Cbx_ImpRap.Checked then
      begin
      if Qr_Cob=nil then
         Application.CreateForm(TQr_Cob, Qr_Cob)
      else
         begin
         Qr_Cob.Free;
         Qr_Cob:=nil;
         Application.CreateForm(TQr_Cob, Qr_Cob)
         end;
      if cb_cabecalho.Checked then
         begin
         Qr_Cob.FANTASIA.Enabled:=true;
         Qr_Cob.RAZAO.Enabled   :=true;
         Qr_Cob.ENDER.Enabled   :=true;
         Qr_Cob.TELEFONE.Enabled:=true;
         end
      else
         begin
         Qr_Cob.FANTASIA.Enabled:=False;
         Qr_Cob.RAZAO.Enabled   :=False;
         Qr_Cob.ENDER.Enabled   :=False;
         Qr_Cob.TELEFONE.Enabled:=False
         end;

      Qr_Cob.QRMemo2.Lines.Clear;
      Qr_Cob.QRMemo2.Lines.Add(Memo1.Text);
      Qr_Cob.QRLabel4.Caption:=Edit3.Text;
      Qr_Cob.QRMemo3.Lines.Clear;
      Qr_Cob.QRMemo3.Lines.Add(Memo2.Text);
//      if mModCart=2 then
//         begin
//         Qr_Cob.QRLabel13.Caption:='Valor Encargos';
//         Qr_Cob.QRDBText23.DataField:='CCVLRENCAR';
//         end;
      Qr_Cob.QR_DATA.Caption:=DM1.Tb_EmpCIDADE.Value+', '+FormatDateTime('dd "de" mmmm "de" yyyy',date)+'.';
      mCodCli:=0;
      verteclado(0);
      Qr_Cob.PreviewModal;
      Qr_Cob.Free;
      Qr_Cob:=nil;
      end
   else
      begin
      Frm_Impres.RDprint1.FonteTamanhoPadrao:=S10cpp;
      Frm_Impres.RDprint1.TamanhoQteColunas:=80;
      Frm_Impres.RDprint1.Abrir;
      mlinini:=StrToInt('0'+Trim(LININI.Text));
      if mlinini<1 then
         mlinini:=1;
      mlin:=0; mCodCli:=0;
      mpag:=0;
      mtotal:=0;
      DM2.Tb_CCob.First;
      while not DM2.Tb_CCob.Eof do
         begin
         if mlin=0 then
            fCcobCab(0);
         mlin:=mlin+1;
         Frm_Impres.RDprint1.ImpF(mlin,01,Insere2(DM2.Tb_CCobNumero.Value,' ',08)
                   +Insere(FormatFloat(mcasas,DM2.Tb_CCobCCVALOR.Value),' ',10)
                   +' '+FormatDateTime(fdt3,DM2.Tb_CCobCCDTPAG.Value)
                   +' '+FormatDateTime(fdt3,DM2.Tb_CCobCCDTVCTO.Value)
                   +' '+Insere(DM2.Tb_CCobAtraso.AsString,' ',04)
                   +Insere(FormatFloat(mcasas,DM2.Tb_CCobCCJURDIA.Value),' ',09)
                   +Insere(FormatFloat(mcasas,DM2.Tb_CCobtotjur.Value),' ',10)
                   +Insere(FormatFloat(mcasas,DM2.Tb_CCobCCVLRENCAR.Value),' ',10)
                   +Insere(FormatFloat(mcasas,DM2.Tb_CCobTotdeb.Value),' ',10)
                   ,mnormal);
//         mtotal:=mtotal+DM2.Tb_CCobCCVALOR.Value+DM2.Tb_CCobTotdeb.Value;
         mtotal:=mtotal+DM2.Tb_CCobTotdeb.Value;
         If mlin>=50 then
            begin
            mlin:=mlin+1;
            Frm_Impres.RDprint1.ImpF(mlin,01,'Continua...',mnormal);
            Frm_Impres.RDprint1.Novapagina;
            mlin:=0;
            end;
         DM2.Tb_CCob.Next;
         If (mCodCli<>DM2.Tb_CCobCCCODCLI.Value)  and not (DM2.Tb_CCob.Bof) then
            begin
            mlin:=mlin+1;
            Frm_Impres.RDprint1.ImpF(mlin,01,'Total Geral do(s) Debito(s)........>>>> '
            +Insere(FormatFloat('#,##0.00',mtotal),' ',12),mnormal);
            for I:=0 to Memo1.Lines.Count do
               begin
               mlin:=mlin+1;
               Frm_Impres.RDprint1.ImpF(mlin,01,Memo1.Lines[I],mnormal);
               end;
            end;
         If DM2.Tb_Ccob.Eof then
            begin
            mlin:=mlin+1;
            Frm_Impres.RDprint1.ImpF(mlin,01,'Total Geral do(s) Debito(s)........>>>> '
            +Insere(FormatFloat('#,##0.00',mtotal),' ',12),mnormal);
            for I:=0  to Memo1.Lines.Count do
               begin
               mlin:=mlin+1;
               Frm_Impres.RDprint1.ImpF(mlin,01,Memo1.Lines[I],mnormal);
               end;
            end;
         end;
      if Frm_Impres.RDprint1.Setup then Frm_Impres.RDprint1.Fechar;
      end;
   end;
end;

procedure TFrm_CCob.FormActivate(Sender: TObject);

begin
flcadpar01(0,0,'1');
mjuros:=DM4.Tb_Par01PJURM.Value;
Query1CRVALOR.DisplayFormat :=mcasas;
Query1JUROS.DisplayFormat   :=mcasas;
Query1CRVALPAG.DisplayFormat:=mcasas;
end;

procedure TFrm_CCob.DBGrid1ColExit(Sender: TObject);
begin
if DM2.Tb_CCob.State in [dsEdit, DsInsert] then
   begin
   if (DBGrid1.SelectedField=DM2.Tb_CCobCCNUMERO) and (DM2.Tb_CCobCCNUMERO.IsNull) then
      Begin
      ShowMessage('Campo com Preenchimento Obrigatório.');
      abort;
      end
   else if (DBGrid1.SelectedField=DM2.Tb_CCobCCDESD) and (DM2.Tb_CCobCCDESD.IsNull) then
      Begin
      ShowMessage('Campo com Preenchimento Obrigatório.');
      abort;
      end
   else if (DBGrid1.SelectedField=DM2.Tb_CCobCCDUP) and (DM2.Tb_CCobCCDUP.IsNull) then
      Begin
      ShowMessage('Campo com Preenchimento Obrigatório.');
      abort;
      end
   else if DBGrid1.SelectedField=DM2.Tb_CCobCCDUP then
      begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select CRNUMERO, CRDESD, CRDUP, CRVALOR, CRVALPAG, CRDTVCTO, CRSTATUS,CRDTPAG, '
                    +'  CRJURD as Juros, '
                    +'  CRCODCLI from CADDAR '
                    +' Where '
                    +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' CRCODEMP=0'+IntToStr(codemp)+' and ')
                    +' CRNUMERO='+DM2.Tb_CCobCCNUMERO.AsString
                    +' and CRDESD='+CHR(39)+DM2.Tb_CCobCCDESD.Value+CHR(39)
                    +' and CRDUP='+DM2.Tb_CCobCCDUP.AsString);
      Query1.Open;
      if Query1CRNUMERO.Value=DM2.Tb_CCobCCNUMERO.Value then
         begin
         if Query1CRSTATUS.Value>1 then
            begin
            ShowMessage('Duplicata Paga. Invalido');
            DBGrid1.SelectedField:=DM2.Tb_CCobCCNUMERO;
            abort;
            end
         else
            begin
            dm2.Tb_CCobCCCHAVE.Value :=1;
            dm2.Tb_CCobCCNUMERO.Value:=Query1CRNUMERO.Value;
            dm2.Tb_CCobCCDUP.Value   :=Query1CRDUP.Value;
            dm2.Tb_CCobCCDESD.Value  :=Query1CRDESD.Value;
            dm2.Tb_CCobCCVALOR.Value :=Query1CRVALOR.Value;
            dm2.Tb_CCobCCDTVCTO.Value:=Query1CRDTVCTO.Value;
            dm2.Tb_CCobCCCODCLI.Value:=Query1CRCODCLI.Value;
            dm2.Tb_CCobCCDTPAG.Value :=date;
            if Query1JUROS.Value=0 then
              dm2.Tb_CCobCCJURDIA.Value:=(Query1CRVALOR.Value*mjuros/100)/30
            else
               dm2.Tb_CCobCCJURDIA.Value:=Query1JUROS.Value;
            end;
         end
      else
         begin
         ShowMessage('Duplicata nao Encontrada no Arquivo');
         DBGrid1.SelectedField:=DM2.Tb_CCobCCNUMERO;
         abort;
         end;
      end;
   end;
end;

procedure TFrm_CCob.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if DBGrid1.SelectedField=dm2.Tb_CCobCCJURDIA then
   begin
   If Key in ['.',','] then Key:=DecimalSeparator
   else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;
   end;
if DBGrid1.SelectedField=dm2.Tb_CCobCCVLRENCAR then
   begin
   If Key in ['.',','] then Key:=DecimalSeparator
   else If (Key<>#8) and not (Key in ['0'..'9']) then Key:=#0;
   end;
end;

procedure TFrm_CCob.Query1AfterInsert(DataSet: TDataSet);
begin
DBGrid1.SelectedField:=Query1CRNUMERO;
end;

procedure TFrm_CCob.Query1BeforeInsert(DataSet: TDataSet);
begin
DBGrid1.SelectedField:=Query1CRNUMERO;
end;

procedure TFrm_CCob.FormCreate(Sender: TObject);
begin
bblimpar.Click;
DM2.Tb_CCobtotdeb.DisplayFormat    :=mcasas;
DM2.Tb_CCobCCVALOR.DisplayFormat   :=mcasas;
DM2.Tb_CCobCCJURDIA.DisplayFormat  :=mcasas;
DM2.Tb_CCobCCVLRENCAR.DisplayFormat:=mcasas;




MDTREC.Text:=FormatDateTime(fdt2, Date);
if mModCart=1 then
   begin
   Frm_CCob.Caption:='Carta para Cobrança';
   DM2.Tb_CFR.close;
   DM2.Tb_CFR.ParamByName('TABELA').AsString:='CARCOB';
   DM2.Tb_CFR.ParamByName('MODELO').AsString:='1';
   DM2.Tb_CFR.ParamByName('ORDEM').AsString:='%';
   DM2.Tb_CFR.Open;
   if DM2.Tb_CFRRTABELA.isNull then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.CreateParam(ftstring,'MEMO',ptinput);
      DM1.Query1.SQL.Add('Insert into CADCFR ('
                        +'RCODEMP, '
                        +'RTABELA, '
                        +'RMODELO, '
                        +'RORDEM, '
                        +'RMEMO) values ('
                        +IntToStr(codemp)+','
                        +chr(39)+'CARCOB'+chr(39)+','
                        +'1,'
                        +'0,'
                        +':MEMO)');
      DM1.Query1.ParamByName('MEMO').AsString:=Edit3.Text;
      DM1.Query1.ExecSQL;



      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.CreateParam(ftstring,'MEMO',ptinput);
      DM1.Query1.SQL.Add('Insert into CADCFR ('
                        +'RCODEMP, '
                        +'RTABELA, '
                        +'RMODELO, '
                        +'RORDEM, '
                        +'RMEMO) values ('
                        +IntToStr(codemp)+','
                        +chr(39)+'CARCOB'+chr(39)+','
                        +'1,'
                        +'1,'
                        +':MEMO)');
      DM1.Query1.ParamByName('MEMO').AsString:=Memo1.Text;
      DM1.Query1.ExecSQL;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.CreateParam(ftstring,'MEMO',ptinput);
      DM1.Query1.SQL.Add('Insert into CADCFR ('
                        +'RCODEMP, '
                        +'RTABELA, '
                        +'RMODELO, '
                        +'RORDEM, '
                        +'RMEMO) values ('
                        +IntToStr(codemp)+','
                        +chr(39)+'CARCOB'+chr(39)+','
                        +'1,'
                        +'2,'
                        +':MEMO)');
      DM1.Query1.ParamByName('MEMO').AsString:=Memo2.Text;
      DM1.Query1.ExecSQL;


      DM2.Tb_CFR.close;
      DM2.Tb_CFR.ParamByName('TABELA').AsString:='CARCOB';
      DM2.Tb_CFR.ParamByName('MODELO').AsString:='1';
      DM2.Tb_CFR.ParamByName('ORDEM').AsString:='%';
      DM2.Tb_CFR.Open;
      end;
   end
else
   begin
   DBGrid1.Columns[9].Visible:=False;
   Frm_CCob.Caption:='Carta para Cobrança de Juros';
   DM2.Tb_CFR.close;
   DM2.Tb_CFR.ParamByName('TABELA').AsString:='CARJUR';
   DM2.Tb_CFR.ParamByName('MODELO').AsString:='1';
   DM2.Tb_CFR.ParamByName('ORDEM').AsString:='%';
   DM2.Tb_CFR.Open;
   if DM2.Tb_CFRRTABELA.isNull then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.CreateParam(ftstring,'MEMO',ptinput);
      DM1.Query1.SQL.Add('Insert into CADCFR ('
                        +'RCODEMP, '
                        +'RTABELA, '
                        +'RMODELO, '
                        +'RORDEM, '
                        +'RMEMO) values ('
                        +IntToStr(codemp)+','
                        +chr(39)+'CARJUR'+chr(39)+','
                        +'2,'
                        +'0,'
                        +':MEMO)');
      DM1.Query1.ParamByName('MEMO').AsString:=Edit3.Text;
      DM1.Query1.ExecSQL;



      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.CreateParam(ftstring,'MEMO',ptinput);
      DM1.Query1.SQL.Add('Insert into CADCFR ('
                        +'RCODEMP, '
                        +'RTABELA, '
                        +'RMODELO, '
                        +'RORDEM, '
                        +'RMEMO) values ('
                        +IntToStr(codemp)+','
                        +chr(39)+'CARJUR'+chr(39)+','
                        +'2,'
                        +'1,'
                        +':MEMO)');
      DM1.Query1.ParamByName('MEMO').AsString:=Memo1.Text;
      DM1.Query1.ExecSQL;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Params.CreateParam(ftstring,'MEMO',ptinput);
      DM1.Query1.SQL.Add('Insert into CADCFR ('
                        +'RCODEMP, '
                        +'RTABELA, '
                        +'RMODELO, '
                        +'RORDEM, '
                        +'RMEMO) values ('
                        +IntToStr(codemp)+','
                        +chr(39)+'CARJUR'+chr(39)+','
                        +'2,'
                        +'2,'
                        +':MEMO)');
      DM1.Query1.ParamByName('MEMO').AsString:=Memo2.Text;
      DM1.Query1.ExecSQL;

      DM2.Tb_CFR.close;
      DM2.Tb_CFR.ParamByName('TABELA').AsString:='CARJUR';
      DM2.Tb_CFR.ParamByName('MODELO').AsString:='1';
      DM2.Tb_CFR.ParamByName('ORDEM').AsString:='%';
      DM2.Tb_CFR.Open;
      end;
   end;

DM2.Tb_CFR.First;
While not DM2.Tb_CFR.Eof do
   begin
   if DM2.Tb_CFRRORDEM.Value=0 then
      Edit3.Text:=DM2.Tb_CFRRMEMO.Value
   else if DM2.Tb_CFRRORDEM.Value=1 then
      MEMO1.Text:=DM2.Tb_CFRRMEMO.Value
   else
      MEMO2.Text:=DM2.Tb_CFRRMEMO.Value;
   DM2.Tb_CFR.Next;
   end;
DM2.Tb_CCobCCDTVCTO.DisplayFormat:=fdt2;
DM2.Tb_CCobCCDTPAG.DisplayFormat:=fdt2;
DM2.Tb_CCobCCDTEMIS.DisplayFormat:=fdt2;

end;

procedure TFrm_CCob.CODCLIExit(Sender: TObject);
begin
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      NOMCLI.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      Messagedlg('Cliente não Cadastrado',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      end;
   end;
end;

procedure TFrm_CCob.BitBtn1Click(Sender: TObject);
var
x: Integer;
begin
for x:=1 to 3 do
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftstring,'MEMO',ptinput);
   DM1.Query1.SQL.Add('UPDATE CADCFR set '
                     +' RMEMO=:MEMO '
                     +' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADDAR',[]),'',' RCODEMP=0'+IntToStr(codemp)+' and ')
                     +' RTABELA='+chr(39)+iif(mModCart=1,'CARCOB','CARJUR')+chr(39)
                     +' and RORDEM=0'+IntToStr(x-1));
   if x=1 then
      DM1.Query1.ParamByName('MEMO').AsString:=Edit3.Text
   else if x=2 then
      DM1.Query1.ParamByName('MEMO').AsString:=Memo1.Text
   else
      DM1.Query1.ParamByName('MEMO').AsString:=Memo2.Text;
   DM1.Query1.ExecSQL;
   end;
MessageDlg('Texto Gravado!',mtInformation,[mbOk],0);
end;

procedure TFrm_CCob.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CCob.LININIExit(Sender: TObject);
begin
LININI.Text:=FloatToStr(valfloat(LININI.Text));
if valFloat(LININI.Text)<0 then
   begin
   MessageDlg('A linha tem que ser um valor positivo!',mtWarning,[mbOk],0);
   exit;
   end;
end;

function TFrm_CCob.fCcobCab(ptipo: Integer): Boolean;
var
i: Integer;
begin

mlin:=mlinini;
if (cb_cabecalho.Checked) and (mpag=0) then
   begin
   Frm_Impres.RDprint1.ImpF(mlin,01,centra(DM1.Tb_EmpRAZAO.Value,' ',80),mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,centra(DM1.Tb_EmpFANTASIA.Value,' ',80),mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,centra(DM1.Tb_Empender.Value,' ',80),mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,centra(DM1.Tb_Emptelefone.Value,' ',80),mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,centra(DM1.Tb_Empcnpj_masc.Value,' ',80),mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,insere('=','=',80),mnormal);
   mlin:=mlin+1;
   end;
if mpag=0 then
   begin
   Frm_Impres.RDprint1.ImpF(mlin,01,DM1.Tb_EMPCIDADE.Value+', '+Data(Date,0)+'.',mnormal);
   mlin:=mlin+2;
   Frm_Impres.RDprint1.ImpF(mlin,01,'A',mnormal);
   mlin:=mlin+2;
   Frm_Impres.RDprint1.ImpF(mlin,01,DM2.Tb_CCobrazao.Value,mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,DM2.Tb_CCobendc.Value+' '+DM2.Tb_CCobbairro.Value,mnormal);
   mlin:=mlin+1;
   Frm_Impres.RDprint1.ImpF(mlin,01,Insere2(DM2.Tb_CCobCidade.Value,' ',60)+'   Cep: '+DM2.Tb_CCobcepc.Value,mnormal);
   mlin:=mlin+3;
   Frm_Impres.RDprint1.ImpF(mlin,01,Edit3.Text,mnormal);
   mlin:=mlin+1;
   for i:=0 to Memo2.Lines.Count do
      begin
      mlin:=mlin+1;
      Frm_Impres.RDprint1.ImpF(mlin,01,Memo2.Lines[i],mnormal);
      end;
   mlin:=mlin+2;
   end;
mpag:=mpag+1;
Frm_Impres.RDprint1.ImpF(mlin,01,'Duplicat     Valor Dt.Calc.  Vencto  Atraso Jur/dia Tot.Juros  Encargos Tot.Deb.',mnormal);
mCodCli:=DM2.Tb_CCobCCCODCLI.Asinteger;
Result:=true;
end;

procedure TFrm_CCob.bblimparClick(Sender: TObject);
begin
DM2.Tb_CCob.Close;
CODCLI.Text:='';
NOMCLI.Text:='';
end;

procedure TFrm_CCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_LancAutoFC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons,func,s_for,S_DM1,S_DM5,
  DB, DBTables,lerarq,func2;

type
  TFrm_LancAutoFC = class(TForm)
    GroupBox1: TGroupBox;
    bbAplicar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label2: TLabel;
    MDIAVI: TEdit;
    Label3: TLabel;
    MDIAVF: TEdit;
    bbGerar: TBitBtn;
    Sair: TBitBtn;
    Tb_Temp: TTable;
    Src_Temp: TDataSource;
    CB_CTAPAG: TCheckBox;
    Label4: TLabel;
    CB_MES: TComboBox;
    Label5: TLabel;
    ANO: TEdit;
    DBGrid1: TDBGrid;
    Tb_TempTP_SEL: TStringField;
    Tb_TempTP_DATADP: TDateTimeField;
    Tb_TempTP_DATAREF: TDateTimeField;
    Tb_TempTP_VALORP: TFloatField;
    Tb_TempTP_NOMBCO: TStringField;
    Tb_TempTP_CODCC: TStringField;
    Tb_TempTP_NOMCCU: TStringField;
    Tb_TempTP_CODDEP: TStringField;
    Tb_TempTP_NOMDEP: TStringField;
    Tb_TempTP_NATDC: TStringField;
    Tb_TempTP_DESCMV: TStringField;
    Tb_TempTP_NUMDOC: TStringField;
    Tb_TempTP_TIPO: TStringField;
    Tb_TempTP_CODIGO: TFloatField;
    Tb_TempTP_NOME: TStringField;
    Tb_TempTP_CODBCO: TFloatField;
    sbMarcar: TSpeedButton;
    sbDesmarcar: TSpeedButton;
    procedure MDIAVIExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure MDIAVFExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SairClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbGerarClick(Sender: TObject);
    procedure sbMarcarClick(Sender: TObject);
    procedure sbDesmarcarClick(Sender: TObject);
    procedure CB_MESExit(Sender: TObject);
    procedure ANOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Function fRetornaData(pDia,pMes,pAno: Integer): TDateTime;
var
  Frm_LancAutoFC: TFrm_LancAutoFC;
  mMesConta,mAnoConta: Integer;
  mSeleciona: String='P';
  mTabTemp: String;
implementation

{$R *.dfm}

procedure TFrm_LancAutoFC.MDIAVIExit(Sender: TObject);
begin
MDIAVI.Text:=fdeixanum2(MDIAVI.Text);
end;

procedure TFrm_LancAutoFC.bbAplicarClick(Sender: TObject);
var
mDatav: TDatetime;
mDatae: TDateTime;
mMesProc: Integer;
begin
if (ValInt(MDIAVI.Text)<0) or (ValInt(MDIAVI.Text)>31) then
   begin
   MessageDlg('Dia de Vencimento invalido!',mtWarning,[mbOk],0);
   MDIAVI.SetFocus;
   exit;
   end;
if (ValInt(MDIAVF.Text)<0) or (ValInt(MDIAVF.Text)>31) then
   begin
   MessageDlg('Dia de Vencimento invalido!',mtWarning,[mbOk],0);
   MDIAVF.SetFocus;
   exit;
   end;
if (ValInt(MDIAVI.Text)<>0) and (ValInt(MDIAVF.Text)<>0) then
   begin
   if ValInt(MDIAVI.Text)>ValInt(MDIAVI.Text) then
      begin
      MessageDlg('Dia de Vencimento final maior que Inicial, invalido!',mtWarning,[mbOk],0);
      MDIAVI.SetFocus;
      exit;
      end;
   end;
DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.add('Select FCODFOR,FRAZAO,FDENOM '
                  +', FDIAE, FDIAV,FCODCCD '
                  +', FNOMCCD, FCODDEPD,FNOMDEPD,FDESCMVD, FNATDCD'
                  +' from CADFOR where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADFOR',[]),'',' FCODEMP=0'+IntTosTr(codemp)+' and '));
mcinst4:='';
mcinst :='';
mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   mcinst4:=mcinst4+mcinst+' FCODFOR '+mcinst2;
   end;
if trim(mcinst4)<>'' then
   DM1.Query5.SQL.add(mcinst4+' and ');
if trim(MDIAVI.Text)<>'' then
   DM1.Query5.SQL.add(' FDIAV>='+Trim(MDIAVI.Text)+' and ');
if trim(MDIAVF.Text)<>'' then
   DM1.Query5.SQL.add(' FDIAV<='+Trim(MDIAVF.Text)+' and ');
DM1.Query5.SQL.add(' FTDESP=1');
try
   DM1.Query5.Open;
except
   DM1.Query5.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
//DM1.Query5.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

if Tb_Temp.Active then
   Tb_Temp.Close;
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Delete from '+mTabTemp);
try
   DM5.Query1.ExecSQL;
except
   end;
Tb_Temp.Open;
While not DM1.Query5.Eof do
   begin
{
   if DM1.Query5.FieldByName('FDIAV').AsInteger<=0 then
      begin
      DM1.Query5.Next;
      Continue;
      end;
}      
   if DM1.Query5.FieldByName('FDIAE').AsInteger<>0 then
      mDatae:=fRetornaData(DM1.Query5.FieldByName('FDIAE').AsInteger,mMesConta,mAnoConta);
   if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
      mDatav:=fRetornaData(DM1.Query5.FieldByName('FDIAV').AsInteger,mMesConta,mAnoConta);


//   mDatae:=fRetornaData(DM1.Query5.FieldByName('FDIAE').AsInteger,mMesConta,mAnoConta);
//   mDatav:=fRetornaData(DM1.Query5.FieldByName('FDIAV').AsInteger,mMesConta,mAnoConta);

   if CB_CTAPAG.Checked then
      begin
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         DM1.Query4.SQL.Add(' Select * from ( ');

      DM1.Query4.SQL.Add('Select CADTVCTO AS DATAVENC,CAVALOR AS VALOR,CACODCTA AS CODBCO,CANOMCTA as NOMBCO '
                        +' ,CADTEMIS AS DTEMIS from CADDAP '
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and ')
                        +' CACODFOR=0'+DM1.Query5.FieldbyName('FCODFOR').AsString);
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         DM1.Query4.SQL.Add(' and CADTVCTO<='+chr(39)+FormatDateTime(fdt, mDatav)+chr(39));
      DM1.Query4.SQL.Add(' order by CADTVCTO DESC ');
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         DM1.Query4.SQL.Add(' ) WHERE ROWNUM <2 ');

      try
         DM1.Query4.Open;
      except
         DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      if DM1.Query4.Eof then
         begin
         DM1.Query4.Close;
         DM1.Query4.SQL.Clear;
         if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
            DM1.Query4.SQL.Add(' Select * from ( ');

         DM1.Query4.SQL.Add('Select DATADP AS DATAVENC,VALORP AS VALOR,CODBCO AS CODBCO, NOMBCO AS NOMBCO '
                        +' ,DATAREF AS DTEMIS from CADLDR '
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                        +' TIPO='+chr(39)+'FR'+chr(39)
                        +' and CODIGO=0'+DM1.Query5.FieldbyName('FCODFOR').AsString);
         if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
            DM1.Query4.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt, mDatav)+chr(39));
         DM1.Query4.SQL.Add(' order by DATADP DESC ');
         if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
            DM1.Query4.SQL.Add(' ) WHERE ROWNUM <2 ');
         try
            DM1.Query4.Open;
         except
            DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
            end;
         end;
      end
   else
      begin
      DM1.Query4.Close;
      DM1.Query4.SQL.Clear;
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         DM1.Query4.SQL.Add(' Select * from ( ');

      DM1.Query4.SQL.Add('Select DATADP AS DATAVENC,VALORP AS VALOR,CODBCO AS CODBCO, NOMBCO AS NOMBCO '
                        +'    ,DATAREF AS DTEMIS  from CADLDR '
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                        +' TIPO='+chr(39)+'FR'+chr(39)
                        +' and CODIGO=0'+DM1.Query5.FieldbyName('FCODFOR').AsString);
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         DM1.Query4.SQL.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt, mDatav)+chr(39));
      DM1.Query4.SQL.Add(' order by DATADP DESC ');
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         DM1.Query4.SQL.Add(' ) WHERE ROWNUM <2 ');

      try
         DM1.Query4.Open;
      except
         DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
         end;
      if DM1.Query4.Eof then
         begin
         DM1.Query4.Close;
         DM1.Query4.SQL.Clear;
         if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
            DM1.Query4.SQL.Add(' Select * from ( ');


         DM1.Query4.SQL.Add('Select CADTVCTO AS DATAVENC,CAVALOR AS VALOR,CACODCTA AS CODBCO,CANOMCTA as NOMBCO  '
                       +' ,CADTEMIS AS DTEMIS  from CADDAP '
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADDAP',[]),'',' CACODEMP=0'+IntToStr(codemp)+' and ')
                        +' CACODFOR=0'+DM1.Query5.FieldbyName('FCODFOR').AsString);
         if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
            DM1.Query4.SQL.Add(' and CADTVCTO<='+chr(39)+FormatDateTime(fdt, mDatav)+chr(39));
         DM1.Query4.SQL.Add(' order by CADTVCTO DESC ');
         if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
            DM1.Query4.SQL.Add(' ) WHERE ROWNUM <2 ');
         try
            DM1.Query4.Open;
         except
            DM1.Query4.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
            end;
         end;
      end;
// inserir mesmo sem
   if DM1.Query4.IsEmpty then
      begin
      if DM1.Query5.FieldByName('FDIAE').AsInteger<>0 then
         mDatae:=fRetornaData(DM1.Query5.FieldByName('FDIAE').AsInteger,mMesConta,mAnoConta)
      else
         mDatae:=fRetornaData(valint(FormatDateTime('dd', DM1.Query4.FieldByName('DTEMIS').AsDateTime)),mMesConta,mAnoConta);
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         mDatav:=fRetornaData(DM1.Query5.FieldByName('FDIAV').AsInteger,mMesConta,mAnoConta)
      else
         mDatae:=fRetornaData(valint(FormatDateTime('dd', DM1.Query4.FieldByName('DATAVENC').AsDateTime)),mMesConta,mAnoConta);

      Tb_Temp.Append;
      Tb_TempTP_SEL.Value    :=mSeleciona;
      Tb_TempTP_DATAREF.Value:=mDatae;
      Tb_TempTP_DATADP.Value :=mDatav;
      Tb_TempTP_VALORP.Value :=1;
      Tb_TempTP_CODBCO.Value :=codcai;
      Tb_TempTP_NOMBCO.Value :=pldr_nombco;
      Tb_TempTP_VALORP.Value :=0.01;
      if (DM1.Query5.fieldbyName('FCODCCD').IsNull) or (trim(DM1.Query5.fieldbyName('FCODCCD').AsString)='') then
         begin
         Tb_TempTP_CODCC.Value     :=pldr_codccu;
         Tb_TempTP_NOMCCU.Value    :=pldr_nomccu;
         Tb_TempTP_NATDC.Value     :=pldr_natdc;
         end
      else
         begin
         Tb_TempTP_CODCC.Value     :=DM1.Query5.fieldbyName('FCODCCD').AsString;
         Tb_TempTP_NOMCCU.Value    :=DM1.Query5.fieldbyName('FNOMCCD').AsString;
         Tb_TempTP_NATDC.Value     :=DM1.Query5.fieldbyName('FNATDCD').AsString;
         end;
      if (DM1.Query5.fieldbyName('FCODDEPD').IsNull) or (trim(DM1.Query5.fieldbyName('FCODDEPD').AsString)='') then
         begin
         Tb_TempTP_CODDEP.Value    :=pldr_coddep;
         Tb_TempTP_NOMDEP.Value    :=pldr_nomdep;
         end
      else
         begin
         Tb_TempTP_CODDEP.Value    :=DM1.Query5.fieldbyName('FCODDEPD').AsString;
         Tb_TempTP_NOMDEP.Value    :=DM1.Query5.fieldbyName('FNOMDEPD').AsString;
         end;
      if (DM1.Query5.fieldbyName('FDESCMVD').IsNull) or (trim(DM1.Query5.fieldbyName('FDESCMVD').AsString)='') then
         Tb_TempTP_DESCMV.Value    :=pldr_descmov
      else
         Tb_TempTP_DESCMV.Value    :=DM1.Query5.fieldbyName('FDESCMVD').AsString;

      Tb_TempTP_NUMDOC.Value    :=FormatDateTime('mm/yyyy',mDatav);
      Tb_TempTP_TIPO.Value      :='FR';
      Tb_TempTP_CODIGO.Value    :=DM1.Query5.fieldbyName('FCODFOR').AsFloat;
      Tb_TempTP_NOME.Value      :=DM1.Query5.fieldbyName('FRAZAO').AsString;
      Tb_Temp.Post;
      DM1.Query4.Next;

      end;
// inclusao mesmo se nao ah titulos

   mMesProc:=0;
   While not DM1.Query4.Eof do
      begin
      if mMesProc=0 then
         mMesProc:=valint(FormatDatetime('mm', DM1.Query4.FieldbyName('DATAVENC').AsDateTime));
      if mMesProc<>valint(FormatDatetime('mm', DM1.Query4.FieldbyName('DATAVENC').AsDateTime)) then
         begin
         DM1.Query4.Last;
         DM1.Query4.Next;
         Continue;
         end;
      if DM1.Query5.FieldByName('FDIAE').AsInteger<>0 then
         mDatae:=fRetornaData(DM1.Query5.FieldByName('FDIAE').AsInteger,mMesConta,mAnoConta)
      else
         mDatae:=fRetornaData(valint(FormatDateTime('dd', DM1.Query4.FieldByName('DTEMIS').AsDateTime)),mMesConta,mAnoConta);
      if DM1.Query5.FieldByName('FDIAV').AsInteger<>0 then
         mDatav:=fRetornaData(DM1.Query5.FieldByName('FDIAV').AsInteger,mMesConta,mAnoConta)
      else
         mDatae:=fRetornaData(valint(FormatDateTime('dd', DM1.Query4.FieldByName('DATAVENC').AsDateTime)),mMesConta,mAnoConta);

      Tb_Temp.Append;
      Tb_TempTP_SEL.Value    :=mSeleciona;
      Tb_TempTP_DATAREF.Value:=mDatae;
      Tb_TempTP_DATADP.Value :=mDatav;
      if DM1.Query4.Eof then
         begin
         Tb_TempTP_VALORP.Value :=1;
         Tb_TempTP_CODBCO.Value :=codcai;
         Tb_TempTP_NOMBCO.Value :=pldr_nombco;
         Tb_TempTP_VALORP.Value :=0.01;

        end
      else
         begin
         Tb_TempTP_VALORP.Value :=DM1.Query4.fieldbyName('VALOR').AsFloat;
         if DM1.Query4.fieldbyName('CODBCO').AsFloat<=0 then
            begin
            Tb_TempTP_CODBCO.Value :=codcai;
            Tb_TempTP_NOMBCO.Value :=pldr_nombco;
            end
         else
            begin
            Tb_TempTP_CODBCO.Value :=DM1.Query4.fieldbyName('CODBCO').AsFloat;
            Tb_TempTP_NOMBCO.Value :=DM1.Query4.fieldbyName('NOMBCO').AsString;
            end;
         end;
      if (DM1.Query5.fieldbyName('FCODCCD').IsNull) or (trim(DM1.Query5.fieldbyName('FCODCCD').AsString)='') then
         begin
         Tb_TempTP_CODCC.Value     :=pldr_codccu;
         Tb_TempTP_NOMCCU.Value    :=pldr_nomccu;
         Tb_TempTP_NATDC.Value     :=pldr_natdc;
         end
      else
         begin
         Tb_TempTP_CODCC.Value     :=DM1.Query5.fieldbyName('FCODCCD').AsString;
         Tb_TempTP_NOMCCU.Value    :=DM1.Query5.fieldbyName('FNOMCCD').AsString;
         Tb_TempTP_NATDC.Value     :=DM1.Query5.fieldbyName('FNATDCD').AsString;
         end;
      if (DM1.Query5.fieldbyName('FCODDEPD').IsNull) or (trim(DM1.Query5.fieldbyName('FCODDEPD').AsString)='') then
         begin
         Tb_TempTP_CODDEP.Value    :=pldr_coddep;
         Tb_TempTP_NOMDEP.Value    :=pldr_nomdep;
         end
      else
         begin
         Tb_TempTP_CODDEP.Value    :=DM1.Query5.fieldbyName('FCODDEPD').AsString;
         Tb_TempTP_NOMDEP.Value    :=DM1.Query5.fieldbyName('FNOMDEPD').AsString;
         end;
      if (DM1.Query5.fieldbyName('FDESCMVD').IsNull) or (trim(DM1.Query5.fieldbyName('FDESCMVD').AsString)='') then
         Tb_TempTP_DESCMV.Value    :=pldr_descmov
      else
         Tb_TempTP_DESCMV.Value    :=DM1.Query5.fieldbyName('FDESCMVD').AsString;

      Tb_TempTP_NUMDOC.Value    :=FormatDateTime('mm/yyyy',mDatav);
      Tb_TempTP_TIPO.Value      :='FR';
      Tb_TempTP_CODIGO.Value    :=DM1.Query5.fieldbyName('FCODFOR').AsFloat;
      Tb_TempTP_NOME.Value      :=DM1.Query5.fieldbyName('FRAZAO').AsString;
      Tb_Temp.Post;
      DM1.Query4.Next;
      end;
   DM1.Query5.Next;
   end;
end;

procedure TFrm_LancAutoFC.MDIAVFExit(Sender: TObject);
begin
MDIAVF.Text:=fdeixanum2(MDIAVF.Text);


end;

procedure TFrm_LancAutoFC.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      MessageDlg('Fornecedor não cadastrado!',mtWarning,[mbOk],0);
      CODFOR.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_LancAutoFC.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_LancAutoFC',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_LancAutoFC.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);
end;

procedure TFrm_LancAutoFC.FormCreate(Sender: TObject);
var
x: Integer;
begin
mTabTemp:=fProcTemp(11);
DM5.Query1.Close;
DM5.Query1.SQL.CLEAR;
DM5.Query1.SQL.add('Create Table '+mTabTemp+'( '
                  +' TP_SEL '+pTmpcString+'(01)'
                  +',TP_DATADP '+pTmpcDataHora
                  +',TP_DATAREF '+pTmpcDataHora
                  +',TP_VALORP '+pTmpcfloat
                  +',TP_CODBCO '+pTmpcFloat
                  +',TP_NOMBCO '+pTmpcString+'(40)'
                  +',TP_CODCC  '+pTmpcString+'(06)'
                  +',TP_NOMCCU '+pTmpcString+'(40)'
                  +',TP_CODDEP '+pTmpcString+'(06)'
                  +',TP_NOMDEP '+pTmpcString+'(40)'
                  +',TP_NATDC  '+pTmpcString+'(01)'
                  +',TP_DESCMV '+pTmpcString+'(50)'
                  +',TP_NUMDOC '+pTmpcString+'(50)'
                  +',TP_TIPO '+pTmpcString+'(50)'
                  +',TP_CODIGO '+pTmpcFloat
                  +',TP_NOME   '+pTmpcString+'(40)'

                  );
DM5.Query1.SQL.add(' )');
try
   DM5.Query1.ExecSQL;
except
   MessageDlg('Erro ao Criar Tabela Temporaria: '+mTabTemp,mtError,[mbOk],0);
   end;

Tb_Temp.TableName:=mTabTemp;
Tb_TempTP_DATADP.DisplayFormat :=fdt2;
Tb_TempTP_DATAREF.DisplayFormat:=fdt2;
Tb_TempTP_VALORP.DisplayFormat :=mcasas;
CB_MES.Items.Clear;
for x:=1 to 12 do
   begin
   CB_MES.Items.Add(tabmes[x]);
   end;
mMesConta:=ValInt(FormatDatetime('mm',date));
mAnoConta:=ValInt(FormatDateTime('yyyy', date));
if ValInt(FormatDatetime('dd',date))>20 then
   begin
   mMesConta:=mMesConta+1;
   if mMesConta>12 then
      begin
      mMesConta:=1;
      mAnoConta:=mAnoConta+1;
      end;
   end;
CB_MES.Text:=tabmes[mMesConta];
ANO.Text:=FormatFloat('0000', mAnoConta);
fCarregaDadosCaixa('CADDAP0');

end;

Function fRetornaData(pDia,pMes,pAno: Integer): TDateTime;
var
mDataResult: TDateTime;
mQtdDiaInc: Integer;
begin
mcinst4 :=FormatFloat('00',pDia)
                  +'/'+FormatFloat('00',pMes)
                  +'/'+FormatFloat('0000',pAno);
try
  mDataResult:=StrToDate(mcinst4);
  result:=mDataResult;
  exit;
except
  end;
mQtdDiaInc:=1;
mcinst4 :=FormatFloat('00',pDia-mQtdDiaInc)
                  +'/'+FormatFloat('00',pMes)
                  +'/'+FormatFloat('0000',pAno);
try
  mDataResult:=StrToDate(mcinst4)+mQtdDiaInc;
  result:=mDataResult;
  exit;
except
  end;
mQtdDiaInc:=mQtdDiaInc+1;
mcinst4 :=FormatFloat('00',pDia-mQtdDiaInc)
                  +'/'+FormatFloat('00',pMes)
                  +'/'+FormatFloat('0000',pAno);
try
  mDataResult:=StrToDate(mcinst4)+mQtdDiaInc;
  result:=mDataResult;
  exit;
except
  end;

mQtdDiaInc:=mQtdDiaInc+1;
mcinst4 :=FormatFloat('00',pDia-mQtdDiaInc)
                  +'/'+FormatFloat('00',pMes)
                  +'/'+FormatFloat('0000',pAno);
try
  mDataResult:=StrToDate(mcinst4)+mQtdDiaInc;
  result:=mDataResult;
except
  result:=pdatanula;
  end;
end;
procedure TFrm_LancAutoFC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Tb_Temp.Active then
   Tb_Temp.Close;
fdeletaTemp(mTabTemp);

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LancAutoFC.SairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_LancAutoFC.DBGrid1DblClick(Sender: TObject);
begin
Tb_Temp.Edit;
if trim(Tb_TempTP_SEL.AsString)='' then
   Tb_TempTP_SEL.Value:='P'
else
   Tb_TempTP_SEL.Value:=' ';
Tb_Temp.Post;

end;

procedure TFrm_LancAutoFC.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=32 then
   begin
   Tb_Temp.Edit;
   if trim(Tb_TempTP_SEL.AsString)='' then
      Tb_TempTP_SEL.Value:='P'
   else
      Tb_TempTP_SEL.Value:=' ';
   Tb_Temp.Post;
   end;

end;

procedure TFrm_LancAutoFC.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Tb_TempTP_SEL.Value<>'' then
   begin
   DBGrid1.Canvas.Brush.Color := $00DFFFDF;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;
end;

procedure TFrm_LancAutoFC.bbGerarClick(Sender: TObject);
begin
if not Tb_Temp.Active then
   begin
   MessageDlg('Favor Selecionar os Titulos Primeiro!',mtWarning,[mbOk],0);
   exit;
   end;
if Tb_Temp.IsEmpty then
   begin
   MessageDlg('Não ha titulos a ser gerado!',mtWarning,[mbOk],0);
   exit;
   end;


if fmensagem('Confirma a Inclusão dos Títulos?',0,['1','2'],2)<>mrYes then
   exit;
Tb_Temp.First;
While not Tb_Temp.Eof do
   begin
   if trim(Tb_TempTP_SEL.AsString)='' then
      begin
      Tb_Temp.Next;
      Continue;
      end;
   DM1.Query1.Close;
   DM1.Query1.sql.Clear;
   DM1.Query1.sql.add('Select count(*) from CADLDR where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADLDR',[]),'',' CODEMP=0'+IntToStr(codemp)+' and ')
                     +' DATAREF='+chr(39)+FormatDateTime(fdt, Tb_TempTP_DATAREF.Value)+chr(39)
                     +' and DATADP='+chr(39)+FormatDateTime(fdt, Tb_TempTP_DATADP.Value)+chr(39)
                     +' and TIPO='+chr(39)+Tb_TempTP_TIPO.Value+chr(39)
                     +' and CODIGO=0'+Tb_TempTP_CODIGO.AsString
                     +' and NUMDOC='+chr(39)+Tb_TempTP_NUMDOC.Value+chr(39));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      mCodLdr:=fCriarLDR( codemp,
                 0, // valor real
                 Tb_TempTP_VALORP.Value,
                 Tb_TempTP_CODIGO.Value,
                 0,// vinculo
                 Tb_TempTP_DATADP.Value,
                 pdatanula, // data real
                 Tb_TempTP_DATAREF.Value,
                 pdatanula, // data alteracao
                 Tb_TempTP_CODCC.Value,
                 Tb_TempTP_CODDEP.Value,
                 Tb_TempTP_NATDC.Value,
                 Tb_TempTP_DESCMV.Value,
                 Tb_TempTP_NUMDOC.Value,
                 '', // numdoc 2
                 Tb_TempTP_TIPO.Value,
                 Tb_TempTP_NOMBCO.Value,
                 Tb_TempTP_NOMDEP.Value,
                 Tb_TempTP_NOMCCU.Value,
                 Tb_TempTP_NOME.Value,
                 ' ',
                 3, // loc dep
                 Tb_TempTP_CODBCO.AsInteger,
                 ls_codldr,
                 0, // status
                 0); // origem
      end;
   if CB_CTAPAG.Checked then
      begin

      if not flcaddap(6,codemp,0,fdeixanum2(Tb_TempTP_NUMDOC.Value),'A',Tb_TempTP_CODIGO.AsString,FormatDateTime(fdt2, Tb_TempTP_DATAREF.Value),'0','') then
         begin
         DM1.Tb_CP.Append;
         DM1.Tb_CPCACODEMP.Value:=codemp;
         DM1.Tb_CPCANUMERO.Value:=fsonumero(Tb_TempTP_NUMDOC.Value);
         DM1.Tb_CPCADESD.Value  :='A';
         DM1.Tb_CPCACODFOR.Value:=Tb_TempTP_CODIGO.Value;
         DM1.Tb_CPCADTEMIS.Value:=Tb_TempTP_DATAREF.Value;
         DM1.Tb_CPCACOMPETENCIA_DTINICIO.Value:=Tb_TempTP_DATAREF.Value;
         DM1.Tb_CPCACOMPETENCIA_TIPO.Value:=0;
         DM1.Tb_CPCADTEMIS.Value:=Tb_TempTP_DATAREF.Value;
         DM1.Tb_CPCAVALOR.Value :=Tb_TempTP_VALORP.Value;
         DM1.Tb_CPCADTVCTO.Value:=Tb_TempTP_DATADP.Value;
         DM1.Tb_CPCADTDESC.Value:=pdatanula;
         DM1.Tb_CPCADESC.Value  :=0;
         DM1.Tb_CPCASTATUS.Value:=0;
         DM1.Tb_CPCAVALDES.Value:=0;
         DM1.Tb_CPCAJUROS.Value :=0;
         DM1.Tb_CPCABANCO.Value :=0;
         DM1.Tb_CPCATEMBOL.Value:=0;
         DM1.Tb_CPCALOTE.Value  :=0;
         DM1.Tb_CPCADTALT.Value :=now;
         DM1.Tb_CPCADTINC.Value :=now;
         DM1.Tb_CPCACHAVEP.Value:=0;
         DM1.Tb_CPCALOTSEQ_CP.Value:=0;
         DM1.Tb_CPCACODCTA.Value   :=Tb_TempTP_CODBCO.Value;
         DM1.Tb_CPCACODCC.Value    :=Tb_TempTP_CODCC.Value;
         DM1.Tb_CPCACODDEP.Value   :=Tb_TempTP_CODDEP.Value;
         DM1.Tb_CPCADESCMV.Value   :=Tb_TempTP_DESCMV.Value;
         DM1.Tb_CPCANOMCTA.Value   :=Tb_TempTP_NOMBCO.Value;
         DM1.Tb_CPCANOMCC.Value    :=Tb_TempTP_NOMCCU.Value;
         DM1.Tb_CPCANOMDEP.Value   :=Tb_TempTP_NOMDEP.Value;
         DM1.Tb_CPCANATDC.Value    :=Tb_TempTP_NATDC.Value;
         DM1.Tb_CPCACODLDR.Value   :=mCodLdr;
         DM1.Tb_CPCALOTSEQ_FC.Value:=ls_codldr;
         DM1.Tb_CP.Post;
         end;
      end;
   Tb_Temp.Next;
   end;
Tb_Temp.Close;
verteclado(0);
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_LancAutoFC.sbMarcarClick(Sender: TObject);
begin
mSeleciona:='P';
bbAplicar.Click;

end;

procedure TFrm_LancAutoFC.sbDesmarcarClick(Sender: TObject);
begin
mSeleciona:=' ';
bbAplicar.Click;

end;

procedure TFrm_LancAutoFC.CB_MESExit(Sender: TObject);
begin
if CB_MES.ItemIndex<0 then
   with CB_MES do ItemIndex:=Items.IndexOf(CB_MES.Text);
CB_MES.text:=CB_MES.Items.Strings[CB_MES.ItemIndex];
if CB_MES.Text='' then
   CB_MES.ItemIndex:=mMesConta-1;
mMesConta:=CB_MES.ItemIndex+1;

end;

procedure TFrm_LancAutoFC.ANOExit(Sender: TObject);
begin
ANO.Text:=FormatFloat('0000', fsonumero(ANO.Text));
mAnoConta:=ValInt(ANO.Text);

end;

end.

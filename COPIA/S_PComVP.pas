unit S_PComVP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, Grids, func, db, dbtables, S_DM1,
  DBGrids, S_SelEmp, CheckLst, ComCtrls;

type
  TFrm_PComVP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CB_TIPO: TComboBox;
    NOME: TMaskEdit;
    bbAtualizar: TBitBtn;
    Panel2: TPanel;
    SAIR: TBitBtn;
    SELECIONAR: TBitBtn;
    DESMARCAR: TBitBtn;
    Qr_Dup: TQuery;
    Src_Dup: TDataSource;
    U_Dup: TUpdateSQL;
    PG_SELECT: TPageControl;
    Ts_Selecionados: TTabSheet;
    DBGrid1: TDBGrid;
    Ts_Filtros: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Qr_DupOK: TStringField;
    Qr_DupP2CODEMP: TFloatField;
    Qr_DupP2CHAVE: TFloatField;
    Qr_DupP2ORDEM: TFloatField;
    Qr_DupP1CODCLI: TFloatField;
    Qr_DupCRAZAO: TStringField;
    Qr_DupP1DATANF: TDateTimeField;
    Qr_DupP2TOTLIQ: TFloatField;
    Qr_DupP2CODVEN: TFloatField;
    Qr_DupP2LOTSEQ: TFloatField;
    Qr_DupTOTDUP: TFloatField;
    Qr_DupTOTDUP_PAG: TFloatField;
    procedure SAIRClick(Sender: TObject);
    procedure NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure bbAtualizarClick(Sender: TObject);
    procedure SELECIONARClick(Sender: TObject);
    procedure DESMARCARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure CB_TIPOChange(Sender: TObject);
  private
    { Private declarations }
    function fPcomPvLer(pTipo: String): Boolean;

  public

    mDataPesq: string;
    Form_SelEmp: TFrm_SelEmp;
    { Public declarations }
  end;

var
  Frm_PComVP: TFrm_PComVP;


implementation

uses lerarq, SR_Dup, S_ComVP, func_excecoes;

{$R *.dfm}

procedure TFrm_PComVP.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PComVP.NOMEKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then key:=DecimalSeparator;
end;

procedure TFrm_PComVP.bbAtualizarClick(Sender: TObject);
begin
fPcomPvLer(' ');
end;

procedure TFrm_PComVP.SELECIONARClick(Sender: TObject);
begin
fPcomPvLer('X');
end;

procedure TFrm_PComVP.DESMARCARClick(Sender: TObject);
begin
fPcomPvLer(' ');
end;

procedure TFrm_PComVP.FormActivate(Sender: TObject);
begin
CB_TIPO.ItemIndex:=0;
CB_TIPOChange(Self);
NOME.text:=FormatDateTime(fdt2, pdatasis);
bbAtualizar.Click;
NOME.SetFocus;
end;

function TFrm_PComVP.fPcomPvLer(pTipo: String): Boolean;
begin
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
Qr_Dup.Close;
Qr_Dup.SQL.Clear;
Qr_Dup.SQL.add('  Select '+chr(39)+pTipo+chr(39)+' OK, '
              +'  P2CODEMP,P2CHAVE, P2ORDEM,P2LOTSEQ,P1CODCLI,CRAZAO,P1DATANF '

              +' ,(SELECT SUM(P2TOTLIQ) from CADP02 DENTRO WHERE DENTRO.P2CHAVE=FORA.P2CHAVE '
              +' AND DENTRO.P2CODEMP=FORA.P2CODEMP '
              +' AND DENTRO.P2CODVEN=FORA.P2CODVEN '              
              +' AND DENTRO.P2LOTSEQ=FORA.P2LOTSEQ) AS P2TOTLIQ '


              +', P2CODVEN '
              +',max(CRVALOR) AS TOTDUP '
              +',max(CRVALPAG+CRDESC) AS TOTDUP_PAG '
              +',max(CRDTVCTO) as CRDTVCTO '

              +',max(CRDTEMIS) as CRDTEMIS '

              +'  from CADP02 FORA, CADP01, CADCLI, CADVEN,CADDAR                                  '
              +'  where P2CODVEN is not null and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM       '
              +'  and P1CODEMP=P2CODEMP and P1LOTSEQ=P2LOTSEQ     '
              +'   and  P1STATUS <'+mstatus_excluido+' and P1EMIDOC=1 '
              +iif(la_Empresas='','',' and '+la_Empresas)
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP ')
              +'  and CCODCLI=P1CODCLI                                                '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADVEN',[]),'',' and VCODEMP=P1CODEMP ')
              +'  and VCODVEN=P2CODVEN ');
Qr_Dup.SQL.ADD(' AND  CRNPED=P2CHAVE AND CRORDEM=P2ORDEM AND CRLOTSEQ_CP=P2LOTSEQ AND CRCODEMP=P2CODEMP ');

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
  Qr_Dup.SQL.Add(' and P1TIPO '+mcinst2);

Qr_Dup.SQL.Add(' and (P2CODVEN=0'+Frm_ComVP.CODVEN.Text+') ');

qr_dup.SQL.Add(' AND NOT EXISTS (SELECT CL2CHAVE FROM CADCL02,CADCL01  WHERE CL1CHAVE=CL2CHAVE AND CL1CODEMP=CL2CODEMP '
           +' AND NVL(CL1LOTSEQ,0)=CL2LOTSEQ  AND CL2CODEMPD=P2CODEMP  AND CL2LOTSEQ_DC=P2LOTSEQ '
           +'  AND CL2CHAVEP=P2CHAVE AND CL1CODIGO=P2CODVEN  ');
qr_dup.SQL.Add(' AND CL1CODIGO='+Frm_ComVP.CODVEN.Text+' ) ');


//Qr_Dup.SQL.Add(' and ((P2CODVEN=0'+Frm_ComVP.CODVEN.Text+') and (P2LOTCT=0 or P2LOTCT is null))');
//Qr_Dup.SQL.Add(' and ((P1CODVEN=0'+Frm_ComVP.CODVEN.Text+') and (P1LOTCV=0 or P1LOTCV is null))');






if CB_TIPO.ItemIndex=0 then
  begin
  if (mdatapesq<>'CRDTEMIS') and  (mDataPesq<>'CRDTVCTO') then
     begin
     Qr_Dup.SQL.Add(' '+fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(Frm_ComVP.MDATAI.Text)));

     Qr_Dup.SQL.Add(' '+fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(Frm_ComVP.MDATAF.Text)));
     end;
  end
else if CB_TIPO.ItemIndex=1 then
  begin
  if Trim(NOME.Text)<>'/  /' then
    Qr_Dup.SQL.Add('  '+fFormatdatetimeParaConsulta_unica(mDataPesq,strtodate(NOME.text)));
  end
else if CB_TIPO.ItemIndex=2 then
  begin
  if Trim(NOME.Text)<>'/  /' then
    Qr_Dup.SQL.Add('  '+fFormatdatetimeParaConsulta_unica(mDataPesq,strtodate(NOME.text)));
  end
else if CB_TIPO.ItemIndex=3 then
  begin
  if Trim(NOME.Text)<>'' then
    Qr_Dup.SQL.Add(' and P1CODCLI=0'+Trim(NOME.Text));
  end;
Qr_Dup.SQL.Add(' GROUP BY P2CODEMP, P2CHAVE, P2ORDEM, P2LOTSEQ, P1CODCLI, CRAZAO, P1DATANF,P2CODVEN ');

Qr_Dup.sql.Text:='Select tab02.* from ('
                +Qr_Dup.SQL.Text
                +') tab02 '
//                +' where NVL(TOTDUP,0)<=NVL(TOTDUP_PAG,0) '
//                +' and NVL(TOTDUP,0)> 0 '
                +' order by P2CHAVE ';



if CB_TIPO.ItemIndex=0 then
  begin
  if (mdatapesq='CRDTEMIS') and  (mDataPesq='CRDTVCTO') then
     begin
     Qr_Dup.sql.Text:='Select tab03.* from ('
                +Qr_Dup.SQL.Text
                +') tab03 '
                +' where 1=1 '+fFormatdatetimeParaConsulta(mDataPesq,true,strtodate(Frm_ComVP.MDATAI.Text))
                +'  '+fFormatdatetimeParaConsulta(mDataPesq,false,strtodate(Frm_ComVP.MDATAI.Text));
     end;
  end;


try
   Qr_Dup.Open;
except
   Qr_Dup.sql.SaveToFile('C:\SQL.TXT');
   end;
// ex_erroSql_Novo(QR_dup,214,'SGE','CADVER');

// Qr_Dup.sql.SaveToFile('C:\SQLCOMV.TXT');

result:=true;
end;
procedure TFrm_PComVP.DBGrid1DblClick(Sender: TObject);
begin
if not Qr_DupP2CHAVE.IsNull then
   begin
   Qr_Dup.Edit;
   if trim(Qr_DupOK.AsString)='' then
      Qr_DupOK.Value:='X'
   else
      Qr_DupOK.Value:='';
   Qr_Dup.Post;
   end;
end;

procedure TFrm_PComVP.FormCreate(Sender: TObject);
var
  x: Integer;
begin
Qr_DupP1DATANF.DisplayFormat :=fdt2;
Qr_DupP2TOTLIQ.DisplayFormat :=mcasas;
RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
  begin
  RG_TIPOPED.Items.Add(tab_tped[x]);
  RG_TIPOPED.Checked[x-1]:=true;
  end;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_PComVP.FormClose(Sender: TObject; var Action: TCloseAction);
var
  x: Integer;
begin
if not Qr_Dup.IsEmpty  then
  begin
  Qr_Dup.First;
  while not Qr_Dup.Eof do
    begin
    for x:=0 to Frm_ComVP.STG1.RowCount - 1 do
      begin
      if (Frm_ComVP.STG1.Cells[mcol_chave,x]=Qr_DupP2CHAVE.AsString) and
      (Frm_ComVP.STG1.Cells[mcol_codcli,x]=Qr_DupP1CODCLI.AsString) and
      (Frm_ComVP.STG1.Cells[mcol_razsoc,x]=Qr_DupCRAZAO.AsString) and
      (Frm_ComVP.STG1.Cells[mcol_datanf,x]=Qr_DupP1DATANF.AsString) and
      (Frm_ComVP.STG1.Cells[mcol_totliq,x]=formatfloat('#,##0.00',Qr_DupP2TOTLIQ.AsFloat)) and
      (Frm_ComVP.STG1.Cells[mcol_percen,x]=Frm_ComVP.PCOMIS.Text) and
      (Frm_ComVP.STG1.Cells[mcol_valcom,x]=formatfloat('#,##0.00',Qr_DupP2TOTLIQ.AsFloat*ValFloat(Frm_ComVP.PCOMIS.Text)/100)) and
      (Frm_ComVP.STG1.Cells[mcol_codemp,x]=Qr_DupP2CODEMP.AsString) and
      (Frm_ComVP.STG1.Cells[mcol_lotseq,x]=Qr_DupP2LOTSEQ.AsString) and
      (Frm_ComVP.STG1.Cells[mcol_ordem,x] =Qr_DupP2ORDEM.AsString) then
        begin
        Qr_Dup.Edit;
        Qr_DupOK.AsString:=' ';
        Qr_Dup.Post;
        end;
      end;
    Qr_Dup.Next;
    end;
  end;
if not Qr_Dup.IsEmpty  then
  begin
  Qr_Dup.First;
  while not Qr_Dup.Eof do
    begin
    if Qr_DupOK.AsString='X' then
      begin
      Frm_ComVP.STG1.Cells[mcol_chave,Frm_ComVP.STG1.RowCount-1]  :=Qr_DupP2CHAVE.AsString;
      Frm_ComVP.STG1.Cells[mcol_codcli,Frm_ComVP.STG1.RowCount-1] :=Qr_DupP1CODCLI.AsString;
      Frm_ComVP.STG1.Cells[mcol_razsoc,Frm_ComVP.STG1.RowCount-1] :=Qr_DupCRAZAO.AsString;
      Frm_ComVP.STG1.Cells[mcol_datanf,Frm_ComVP.STG1.RowCount-1] :=Qr_DupP1DATANF.AsString;
      Frm_ComVP.STG1.Cells[mcol_totliq,Frm_ComVP.STG1.RowCount-1] :=formatfloat('#,##0.00',Qr_DupP2TOTLIQ.AsFloat);
      Frm_ComVP.STG1.Cells[mcol_percen,Frm_ComVP.STG1.RowCount-1] :=Frm_ComVP.PCOMIS.Text;
      Frm_ComVP.STG1.Cells[mcol_valcom,Frm_ComVP.STG1.RowCount-1] :=formatfloat('#,##0.00',Qr_DupP2TOTLIQ.AsFloat*ValFloat(Frm_ComVP.PCOMIS.Text)/100);
      Frm_ComVP.STG1.Cells[mcol_codemp,Frm_ComVP.STG1.RowCount-1] :=Qr_DupP2CODEMP.AsString;
      Frm_ComVP.STG1.Cells[mcol_lotseq,Frm_ComVP.STG1.RowCount-1] :=Qr_DupP2LOTSEQ.AsString;
      Frm_ComVP.STG1.Cells[mcol_ordem,Frm_ComVP.STG1.RowCount-1]  :=Qr_DupP2ORDEM.AsString;
      Frm_ComVP.STG1.RowCount:=Frm_ComVP.STG1.RowCount+1;
      end;
    Qr_Dup.Next;      
    end;
  end;
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PComVP.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_PComVP.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);
end;

procedure TFrm_PComVP.CB_TIPOChange(Sender: TObject);
begin
if CB_TIPO.ItemIndex<=2 then
  nome.EditMask:='!99/99/9999;1; '
else
  nome.EditMask:='!99999;1; ';
end;

end.

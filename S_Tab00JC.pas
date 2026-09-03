unit S_Tab00JC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids,S_DM1, DB,
  DBTables,func, Mask,S_DM2;

type
  TFrm_Tab00JC = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label6: TLabel;
    NOMCAM: TEdit;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    BBINCLUIR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBCANCELAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBSAIR: TBitBtn;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    FORMATO01: TEdit;
    Label10: TLabel;
    TAMMAX01: TEdit;
    Label11: TLabel;
    ESPACO01: TEdit;
    CAMPO01: TComboBox;
    FORMA01: TLabel;
    RGTIPO01: TRadioGroup;
    CAMPO_EMP01: TComboBox;
    MENSAGEM01: TEdit;
    lbl_tcampo01: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FORMA02: TLabel;
    lbl_tcampo02: TLabel;
    FORMATO02: TEdit;
    TAMMAX02: TEdit;
    ESPACO02: TEdit;
    CAMPO02: TComboBox;
    RGTIPO02: TRadioGroup;
    CAMPO_EMP02: TComboBox;
    MENSAGEM02: TEdit;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    FORMA03: TLabel;
    lbl_tcampo03: TLabel;
    FORMATO03: TEdit;
    TAMMAX03: TEdit;
    ESPACO03: TEdit;
    CAMPO03: TComboBox;
    RGTIPO03: TRadioGroup;
    CAMPO_EMP03: TComboBox;
    MENSAGEM03: TEdit;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    FORMA04: TLabel;
    lbl_tcampo04: TLabel;
    FORMATO04: TEdit;
    TAMMAX04: TEdit;
    ESPACO04: TEdit;
    CAMPO04: TComboBox;
    RGTIPO04: TRadioGroup;
    CAMPO_EMP04: TComboBox;
    MENSAGEM04: TEdit;
    Qr_JC: TQuery;
    Src_JC: TDataSource;
    Qr_JCJCCODEMP: TFloatField;
    Qr_JCJCDOC: TStringField;
    Qr_JCJCNOME: TStringField;
    Qr_JCJCCODIGO: TFloatField;
    Qr_JCJCTCAMPO1: TFloatField;
    Qr_JCJCFORMA01: TStringField;
    Qr_JCJCCAMPO01: TStringField;
    Qr_JCJCFORMATO01: TStringField;
    Qr_JCJCESPACO01: TFloatField;
    Qr_JCJCTAMMAX01: TFloatField;
    Qr_JCJCTCAMPO2: TFloatField;
    Qr_JCJCFORMA02: TStringField;
    Qr_JCJCCAMPO02: TStringField;
    Qr_JCJCFORMATO02: TStringField;
    Qr_JCJCESPACO02: TFloatField;
    Qr_JCJCTAMMAX02: TFloatField;
    Qr_JCJCTCAMPO3: TFloatField;
    Qr_JCJCFORMA03: TStringField;
    Qr_JCJCCAMPO03: TStringField;
    Qr_JCJCFORMATO03: TStringField;
    Qr_JCJCESPACO03: TFloatField;
    Qr_JCJCTAMMAX03: TFloatField;
    Qr_JCJCTCAMPO4: TFloatField;
    Qr_JCJCFORMA04: TStringField;
    Qr_JCJCCAMPO04: TStringField;
    Qr_JCJCFORMATO04: TStringField;
    Qr_JCJCESPACO04: TFloatField;
    Qr_JCJCTAMMAX04: TFloatField;
    Qr_JCJCNOMCAM: TStringField;
    Qr_JCJCTDET: TFloatField;
    GroupBox5: TGroupBox;
    DBEdit1: TDBEdit;
    Qr_JCposicao: TStringField;
    Qr_JCnomcam01: TStringField;
    Qr_JCnomcam02: TStringField;
    Qr_JCnomcam03: TStringField;
    Qr_JCnomcam04: TStringField;
    RG_BRANCOS01: TRadioGroup;
    RG_BRANCOS02: TRadioGroup;
    RG_BRANCOS03: TRadioGroup;
    RG_BRANCOS04: TRadioGroup;
    Qr_JCJCBRANCOS01: TFloatField;
    Qr_JCJCBRANCOS02: TFloatField;
    Qr_JCJCBRANCOS03: TFloatField;
    Qr_JCJCBRANCOS04: TFloatField;
    Qr_JCobservacoes: TStringField;
    procedure BBSAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qr_JCCalcFields(DataSet: TDataSet);
    procedure RGTIPO01Exit(Sender: TObject);
    procedure RGTIPO02Exit(Sender: TObject);
    procedure RGTIPO03Exit(Sender: TObject);
    procedure RGTIPO04Exit(Sender: TObject);
    procedure CAMPO01Exit(Sender: TObject);
    procedure CAMPO02Exit(Sender: TObject);
    procedure CAMPO03Exit(Sender: TObject);
    procedure CAMPO04Exit(Sender: TObject);
    procedure CAMPO_EMP01Exit(Sender: TObject);
    procedure CAMPO_EMP02Exit(Sender: TObject);
    procedure CAMPO_EMP03Exit(Sender: TObject);
    procedure CAMPO_EMP04Exit(Sender: TObject);
    procedure Src_JCDataChange(Sender: TObject; Field: TField);
    procedure NOMCAMKeyPress(Sender: TObject; var Key: Char);
    procedure MENSAGEM01KeyPress(Sender: TObject; var Key: Char);
    procedure MENSAGEM02KeyPress(Sender: TObject; var Key: Char);
    procedure MENSAGEM03KeyPress(Sender: TObject; var Key: Char);
    procedure MENSAGEM04KeyPress(Sender: TObject; var Key: Char);
    procedure FORMATO01KeyPress(Sender: TObject; var Key: Char);
    procedure FORMATO02KeyPress(Sender: TObject; var Key: Char);
    procedure FORMATO03KeyPress(Sender: TObject; var Key: Char);
    procedure FORMATO04KeyPress(Sender: TObject; var Key: Char);
    procedure NOMCAMExit(Sender: TObject);
    procedure FORMATO01Exit(Sender: TObject);
    procedure FORMATO02Exit(Sender: TObject);
    procedure FORMATO03Exit(Sender: TObject);
    procedure FORMATO04Exit(Sender: TObject);
    procedure MENSAGEM01Exit(Sender: TObject);
    procedure MENSAGEM02Exit(Sender: TObject);
    procedure MENSAGEM03Exit(Sender: TObject);
    procedure MENSAGEM04Exit(Sender: TObject);
    procedure TAMMAX01Exit(Sender: TObject);
    procedure TAMMAX02Exit(Sender: TObject);
    procedure TAMMAX03Exit(Sender: TObject);
    procedure TAMMAX04Exit(Sender: TObject);
    procedure ESPACO01Exit(Sender: TObject);
    procedure ESPACO02Exit(Sender: TObject);
    procedure ESPACO03Exit(Sender: TObject);
    procedure ESPACO04Exit(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBCANCELARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function fTab00JcLerarq(ptipo: Integer): Boolean;
    function fTab00JcCarregarCampos(ptipo: Integer): Boolean;
    function fTab00JcMostrarDados(ptipo: Integer): Boolean;
    function fTab00JczerarCampos(ptipo: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Tab00JC: TFrm_Tab00JC;
  plocOri: Integer;
  parquso: String;
  ptdvtab: String;
  pnomrel: String;
  moper: Integer;
{ Campo JCTDET: 0-para normais outros
  JCTDET 1-Mercadorias
         2-Serviços


}
implementation

uses lerarq;

{$R *.dfm}

procedure TFrm_Tab00JC.BBSAIRClick(Sender: TObject);
begin
close;
end;

function TFrm_Tab00Jc.fTab00JcLerarq(ptipo: Integer): Boolean;
begin
Qr_JC.Close;
Qr_Jc.SQL.Clear;
Qr_Jc.Sql.add('Select * from CTDVJC where '
             +iif(DM1.Qr_TID.locate('TINOME',ptdvtab,[]),'',' JCCODEMP=0'+IntTosTr(codemp)+' and ')
             +' JCDOC='+chr(39)+parquso+chr(39)
             +' and JCNOME='+chr(39)+pnomrel+chr(39));
Qr_JC.Open;
if Qr_JC.Eof then
   result:=false
else
   result:=True;

end;

procedure TFrm_Tab00JC.FormCreate(Sender: TObject);
begin
fTab00JcCarregarCampos(0);
fTab00JcLerarq(0);

fltdvjc(0,0,'99999','9999','99','99','99','CADTDV');

end;

procedure TFrm_Tab00JC.Qr_JCCalcFields(DataSet: TDataSet);
var
mvalor: String;
begin
if Qr_JCJCTDET.Value=0 then
   Qr_JCposicao.Value:='Normal'
else if Qr_JCJCTDET.Value=1 then
   Qr_JCposicao.Value:='Corpo Mercadorias'
else if Qr_JCJCTDET.Value=2 then
   Qr_JCposicao.Value:='Corpo Serviços';
if Trim(Qr_JCJCCAMPO01.Value)<>'' then
   begin
   if Qr_JCJCTCAMPO1.Value=0 then
      begin
      if DM2.Tb_Arq.Locate('CANOMCAM',Qr_JCJCCAMPO01.Text,[]) then
         Qr_JCnomcam01.Value:=DM2.Tb_ArqCANOMREG.Value;
      end
   else if Qr_JCJCTCAMPO1.Value=2 then
      Qr_JCnomcam01.Value:=DM1.Tb_Emp.fieldbyName(Qr_JCJCCAMPO01.Value).DisplayLabel
   else if Qr_JCJCTCAMPO1.Value=1 then
      Qr_JCnomcam01.Value:=Qr_JCJCCAMPO01.Value;
   end;
if Trim(Qr_JCJCCAMPO02.Value)<>'' then
   begin
   if Qr_JCJCTCAMPO2.Value=0 then
      begin
      if DM2.Tb_Arq.Locate('CANOMCAM',Qr_JCJCCAMPO02.Text,[]) then
         Qr_JCnomcam02.Value:=DM2.Tb_ArqCANOMREG.Value;
      end
   else if Qr_JCJCTCAMPO2.Value=2 then
      Qr_JCnomcam02.Value:=DM1.Tb_Emp.fieldbyName(Qr_JCJCCAMPO02.Value).DisplayLabel
   else if Qr_JCJCTCAMPO2.Value=1 then
      Qr_JCnomcam02.Value:=Qr_JCJCCAMPO02.Value;
   end;
if Trim(Qr_JCJCCAMPO03.Value)<>'' then
   begin
   if Qr_JCJCTCAMPO3.Value=0 then
      begin
      if DM2.Tb_Arq.Locate('CANOMCAM',Qr_JCJCCAMPO03.Text,[]) then
         Qr_JCnomcam03.Value:=DM2.Tb_ArqCANOMREG.Value;
      end
   else if Qr_JCJCTCAMPO3.Value=2 then
      Qr_JCnomcam03.Value:=DM1.Tb_Emp.fieldbyName(Qr_JCJCCAMPO03.Value).DisplayLabel
   else if Qr_JCJCTCAMPO3.Value=1 then
      Qr_JCnomcam03.Value:=Qr_JCJCCAMPO03.Value;
   end;
if Trim(Qr_JCJCCAMPO04.Value)<>'' then
   begin
   if Qr_JCJCTCAMPO4.Value=0 then
      begin
      if DM2.Tb_Arq.Locate('CANOMCAM',Qr_JCJCCAMPO04.Text,[]) then
         Qr_JCnomcam04.Value:=DM2.Tb_ArqCANOMREG.Value;
      end
   else if Qr_JCJCTCAMPO4.Value=2 then
      Qr_JCnomcam04.Value:=DM1.Tb_Emp.fieldbyName(Qr_JCJCCAMPO04.Value).DisplayLabel
   else if Qr_JCJCTCAMPO4.Value=1 then
      Qr_JCnomcam04.Value:=Qr_JCJCCAMPO04.Value;
   end;
Qr_JCobservacoes.Value:='';
if Trim(Qr_JCJCCAMPO01.Value)<>'' then
   begin
   mvalor:='';
   if Qr_JCJCESPACO01.Value>0 then
      Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+insere(' ',' ',Qr_JCJCESPACO01.AsInteger);
   if Qr_JCJCTCAMPO1.Value=0  then
      mvalor:='Campo da Tabela'
   else if Qr_JCJCTCAMPO1.Value=1 then
      mvalor:='Mensagem'
   else if Qr_JCJCTCAMPO1.Value=2 then
      mvalor:='Dados da Empresa';
   if Qr_JCJCBRANCOS01.Value=1 then
      mvalor:=TrimLeft(mvalor)
   else if Qr_JCJCBRANCOS01.Value=2 then
      mvalor:=TrimRight(mvalor)
   else if Qr_JCJCBRANCOS01.Value=3 then
      mvalor:=Trim(mvalor);
   if (Qr_JCJCTAMMAX01.Value>0) and (length(mvalor)>Qr_JCJCTAMMAX01.Value) then
      mvalor:=copy(mvalor,1,Qr_JCJCTAMMAX01.AsInteger);
   Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+mvalor;
   end;
if Trim(Qr_JCJCCAMPO02.Value)<>'' then
   begin
   mvalor:='';
   if Qr_JCJCESPACO02.Value>0 then
      Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+insere(' ',' ',Qr_JCJCESPACO02.AsInteger);
   if Qr_JCJCTCAMPO2.Value=0  then
      mvalor:='Campo da Tabela'
   else if Qr_JCJCTCAMPO2.Value=1 then
      mvalor:='Mensagem'
   else if Qr_JCJCTCAMPO2.Value=2 then
      mvalor:='Dados da Empresa';
   if Qr_JCJCBRANCOS02.Value=1 then
      mvalor:=TrimLeft(mvalor)
   else if Qr_JCJCBRANCOS02.Value=2 then
      mvalor:=TrimRight(mvalor)
   else if Qr_JCJCBRANCOS02.Value=3 then
      mvalor:=Trim(mvalor);
   if (Qr_JCJCTAMMAX02.Value>0) and (length(mvalor)>Qr_JCJCTAMMAX02.Value) then
      mvalor:=copy(mvalor,1,Qr_JCJCTAMMAX02.AsInteger);
   Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+mvalor;
   end;
if Trim(Qr_JCJCCAMPO03.Value)<>'' then
   begin
   mvalor:='';
   if Qr_JCJCESPACO03.Value>0 then
      Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+insere(' ',' ',Qr_JCJCESPACO03.AsInteger);
   if Qr_JCJCTCAMPO3.Value=0  then
      mvalor:='Campo da Tabela'
   else if Qr_JCJCTCAMPO3.Value=1 then
      mvalor:='Mensagem'
   else if Qr_JCJCTCAMPO3.Value=2 then
      mvalor:='Dados da Empresa';
   if Qr_JCJCBRANCOS03.Value=1 then
      mvalor:=TrimLeft(mvalor)
   else if Qr_JCJCBRANCOS03.Value=2 then
      mvalor:=TrimRight(mvalor)
   else if Qr_JCJCBRANCOS03.Value=3 then
      mvalor:=Trim(mvalor);
   if (Qr_JCJCTAMMAX03.Value>0) and (length(mvalor)>Qr_JCJCTAMMAX03.Value) then
      mvalor:=copy(mvalor,1,Qr_JCJCTAMMAX03.AsInteger);
   Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+mvalor;
   end;
if Trim(Qr_JCJCCAMPO04.Value)<>'' then
   begin
   mvalor:='';
   if Qr_JCJCESPACO04.Value>0 then
      Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+insere(' ',' ',Qr_JCJCESPACO04.AsInteger);
   if Qr_JCJCTCAMPO4.Value=0  then
      mvalor:='Campo da Tabela'
   else if Qr_JCJCTCAMPO4.Value=1 then
      mvalor:='Mensagem'
   else if Qr_JCJCTCAMPO4.Value=2 then
      mvalor:='Dados da Empresa';
   if Qr_JCJCBRANCOS04.Value=1 then
      mvalor:=TrimLeft(mvalor)
   else if Qr_JCJCBRANCOS04.Value=2 then
      mvalor:=TrimRight(mvalor)
   else if Qr_JCJCBRANCOS04.Value=3 then
      mvalor:=Trim(mvalor);
   if (Qr_JCJCTAMMAX04.Value>0) and (length(mvalor)>Qr_JCJCTAMMAX04.Value) then
      mvalor:=copy(mvalor,1,Qr_JCJCTAMMAX04.AsInteger);
   Qr_JCobservacoes.Value:=Qr_JCobservacoes.Value+mvalor;
   end;



end;
function TFrm_Tab00JC.fTab00JcCarregarCampos(ptipo: Integer): Boolean;
var
mlidos: Integer;
begin

for mlidos:=0 to DM1.Tb_Emp.FieldCount-1 do
   begin
   if Length(DM1.Tb_Emp.Fields[mlidos].DisplayName)>2 then
      begin
      if copy(DM1.Tb_Emp.Fields[mlidos].DisplayName,1,3)='01-' then
         Continue;
      end;
   CAMPO_EMP01.Items.Add(DM1.Tb_Emp.Fields[mlidos].DisplayName);
   CAMPO_EMP02.Items.Add(DM1.Tb_Emp.Fields[mlidos].DisplayName);
   CAMPO_EMP03.Items.Add(DM1.Tb_Emp.Fields[mlidos].DisplayName);
   CAMPO_EMP04.Items.Add(DM1.Tb_Emp.Fields[mlidos].DisplayName);
   end;

if parquso='NF' then
   begin
   DM2.Tb_Arq.Close;
   DM2.Tb_Arq.SQL.Clear;
   DM2.Tb_Arq.SQL.Add('Select * From CADARQ ');

   if plocOri=0 then
      DM2.Tb_Arq.SQL.Add(' where CANOMARQ='+chr(39)+'CAB'+CHR(39))
   else if plocOri=1 then
      DM2.Tb_Arq.SQL.Add(' where CANOMARQ='+chr(39)+'COR'+CHR(39))
   else if plocOri=2 then
      DM2.Tb_Arq.SQL.Add(' where CANOMARQ='+chr(39)+'MER'+CHR(39))
   else if plocOri=3 then
      DM2.Tb_Arq.SQL.Add(' where CANOMARQ='+chr(39)+'CADDAR'+CHR(39));
   DM2.Tb_Arq.Open;
   end;
DM2.Tb_Arq.First;
While not DM2.Tb_Arq.eof do
   begin
   CAMPO01.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO02.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO03.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   CAMPO04.Items.Add(DM2.Tb_ArqCANOMREG.Value);
   DM2.Tb_Arq.Next;
   end;
DM2.Tb_Arq.First;
if DM2.Tb_Arq.Eof then
   Result:=False
else
   Result:=True;
end;

procedure TFrm_Tab00JC.RGTIPO01Exit(Sender: TObject);
begin
if RGTIPO01.ItemIndex=0 then
   begin
   CAMPO01.Visible    :=True;
   CAMPO_EMP01.Visible:=False;
   MENSAGEM01.Visible :=False;
   lbl_tcampo01.Caption:='Campo: ';
   end
else if RGTIPO01.ItemIndex=1 then
   begin
   CAMPO01.Visible    :=False;
   CAMPO_EMP01.Visible:=False;
   MENSAGEM01.Visible :=true;
   lbl_tcampo01.Caption:='Mensagem: ';
   end
else if RGTIPO01.ItemIndex=2 then
   begin
   CAMPO01.Visible    :=False;
   CAMPO_EMP01.Visible:=true;
   MENSAGEM01.Visible :=False;
   lbl_tcampo01.Caption:='Dados da Empresa: ';
   end;

end;

procedure TFrm_Tab00JC.RGTIPO02Exit(Sender: TObject);
begin
if RGTIPO02.ItemIndex=0 then
   begin
   CAMPO02.Visible    :=True;
   CAMPO_EMP02.Visible:=False;
   MENSAGEM02.Visible :=False;
   lbl_tcampo02.Caption:='Campo: ';
   end
else if RGTIPO02.ItemIndex=1 then
   begin
   CAMPO02.Visible    :=False;
   CAMPO_EMP02.Visible:=False;
   MENSAGEM02.Visible :=true;
   lbl_tcampo02.Caption:='Mensagem: ';
   end
else if RGTIPO02.ItemIndex=2 then
   begin
   CAMPO02.Visible    :=False;
   CAMPO_EMP02.Visible:=true;
   MENSAGEM02.Visible :=False;
   lbl_tcampo02.Caption:='Dados da Empresa: ';
   end;

end;

procedure TFrm_Tab00JC.RGTIPO03Exit(Sender: TObject);
begin
if RGTIPO03.ItemIndex=0 then
   begin
   CAMPO03.Visible    :=True;
   CAMPO_EMP03.Visible:=False;
   MENSAGEM03.Visible :=False;
   lbl_tcampo03.Caption:='Campo: ';
   end
else if RGTIPO03.ItemIndex=1 then
   begin
   CAMPO03.Visible    :=False;
   CAMPO_EMP03.Visible:=False;
   MENSAGEM03.Visible :=true;
   lbl_tcampo03.Caption:='Mensagem: ';
   end
else if RGTIPO03.ItemIndex=2 then
   begin
   CAMPO03.Visible    :=False;
   CAMPO_EMP03.Visible:=true;
   MENSAGEM03.Visible :=False;
   lbl_tcampo03.Caption:='Dados da Empresa: ';

   end;

end;

procedure TFrm_Tab00JC.RGTIPO04Exit(Sender: TObject);
begin
if RGTIPO04.ItemIndex=0 then
   begin
   CAMPO04.Visible    :=True;
   CAMPO_EMP04.Visible:=False;
   MENSAGEM04.Visible :=False;
   lbl_tcampo04.Caption:='Campo: ';
   end
else if RGTIPO04.ItemIndex=1 then
   begin
   CAMPO04.Visible    :=False;
   CAMPO_EMP04.Visible:=False;
   MENSAGEM04.Visible :=true;
   lbl_tcampo04.Caption:='Mensagem: ';
   end
else if RGTIPO04.ItemIndex=2 then
   begin
   CAMPO04.Visible    :=False;
   CAMPO_EMP04.Visible:=true;
   MENSAGEM04.Visible :=False;
   lbl_tcampo04.Caption:='Dados da Empresa: ';

   end;

end;

procedure TFrm_Tab00JC.CAMPO01Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO01.Text;
if CAMPO01.ItemIndex<0 then
   begin
   for x:=0 to CAMPO01.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO01.Items.Strings[x]) then
         begin
         CAMPO01.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO01.Text:=CAMPO01.Items.Strings[CAMPO01.Itemindex];
if DM2.Tb_Arq.Locate('CANOMREG',CAMPO01.Text,[]) then
   begin
   if DM2.Tb_ArqCATIPO.Value='N' then
      FORMA01.Caption:='Numero'
   else if DM2.Tb_ArqCATIPO.Value='D' then
      FORMA01.Caption:='Data'
   else if DM2.Tb_ArqCATIPO.Value='H' then
      FORMA01.Caption:='Hora'
   else if (DM2.Tb_ArqCATIPO.Value='S') or  (DM2.Tb_ArqCATIPO.Value='C') then
      FORMA01.Caption:='Caractere'
   else
      FORMA01.Caption:='Desconhecido';
   end;
end;

procedure TFrm_Tab00JC.CAMPO02Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO02.Text;
if CAMPO02.ItemIndex<0 then
   begin
   for x:=0 to CAMPO02.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO02.Items.Strings[x]) then
         begin
         CAMPO02.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO02.Text:=CAMPO02.Items.Strings[CAMPO02.Itemindex];
if DM2.Tb_Arq.Locate('CANOMREG',CAMPO02.Text,[]) then
   begin
   if DM2.Tb_ArqCATIPO.Value='N' then
      FORMA02.Caption:='Numero'
   else if DM2.Tb_ArqCATIPO.Value='D' then
      FORMA02.Caption:='Data'
   else if DM2.Tb_ArqCATIPO.Value='H' then
      FORMA02.Caption:='Hora'
   else if (DM2.Tb_ArqCATIPO.Value='S') or  (DM2.Tb_ArqCATIPO.Value='C') then
      FORMA02.Caption:='Caractere'
   else
      FORMA02.Caption:='Desconhecido';
   end;

end;

procedure TFrm_Tab00JC.CAMPO03Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO03.Text;
if CAMPO03.ItemIndex<0 then
   begin
   for x:=0 to CAMPO03.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO03.Items.Strings[x]) then
         begin
         CAMPO03.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO03.Text:=CAMPO03.Items.Strings[CAMPO03.Itemindex];
if DM2.Tb_Arq.Locate('CANOMREG',CAMPO03.Text,[]) then
   begin
   if DM2.Tb_ArqCATIPO.Value='N' then
      FORMA03.Caption:='Numero'
   else if DM2.Tb_ArqCATIPO.Value='D' then
      FORMA03.Caption:='Data'
   else if DM2.Tb_ArqCATIPO.Value='H' then
      FORMA03.Caption:='Hora'
   else if (DM2.Tb_ArqCATIPO.Value='S') or (DM2.Tb_ArqCATIPO.Value='C') then
      FORMA03.Caption:='Caractere'
   else
      FORMA03.Caption:='Desconhecido';
   end;

end;

procedure TFrm_Tab00JC.CAMPO04Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO04.Text;
if CAMPO04.ItemIndex<0 then
   begin
   for x:=0 to CAMPO04.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO04.Items.Strings[x]) then
         begin
         CAMPO04.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO04.Text:=CAMPO04.Items.Strings[CAMPO04.Itemindex];
if DM2.Tb_Arq.Locate('CANOMREG',CAMPO04.Text,[]) then
   begin
   if DM2.Tb_ArqCATIPO.Value='N' then
      FORMA04.Caption:='Numero'
   else if DM2.Tb_ArqCATIPO.Value='D' then
      FORMA04.Caption:='Data'
   else if DM2.Tb_ArqCATIPO.Value='H' then
      FORMA04.Caption:='Hora'
   else if (DM2.Tb_ArqCATIPO.Value='S') or (DM2.Tb_ArqCATIPO.Value='C') then
      FORMA04.Caption:='Caractere'
   else
      FORMA04.Caption:='Desconhecido';
   end;


end;

procedure TFrm_Tab00JC.CAMPO_EMP01Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO_EMP01.Text;
if CAMPO_EMP01.ItemIndex<0 then
   begin
   for x:=0 to CAMPO_EMP01.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO_EMP01.Items.Strings[x]) then
         begin
         CAMPO_EMP01.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO_EMP01.Text:=CAMPO_EMP01.Items.Strings[CAMPO_EMP01.Itemindex];
FORMA01.Caption:='Caractere';

end;

procedure TFrm_Tab00JC.CAMPO_EMP02Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO_EMP02.Text;
if CAMPO_EMP02.ItemIndex<0 then
   begin
   for x:=0 to CAMPO_EMP02.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO_EMP02.Items.Strings[x]) then
         begin
         CAMPO_EMP02.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO_EMP02.Text:=CAMPO_EMP02.Items.Strings[CAMPO_EMP02.Itemindex];
FORMA02.Caption:='Caractere';

end;

procedure TFrm_Tab00JC.CAMPO_EMP03Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO_EMP03.Text;
if CAMPO_EMP03.ItemIndex<0 then
   begin
   for x:=0 to CAMPO_EMP03.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO_EMP03.Items.Strings[x]) then
         begin
         CAMPO_EMP03.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO_EMP03.Text:=CAMPO_EMP03.Items.Strings[CAMPO_EMP03.Itemindex];
FORMA03.Caption:='Caractere';

end;

procedure TFrm_Tab00JC.CAMPO_EMP04Exit(Sender: TObject);
var
x: Integer;
t: String;
begin
t:=CAMPO_EMP04.Text;
if CAMPO_EMP04.ItemIndex<0 then
   begin
   for x:=0 to CAMPO_EMP04.Items.Count-1 do
      begin
      if LowerCase(t)=LowerCase(CAMPO_EMP04.Items.Strings[x]) then
         begin
         CAMPO_EMP04.ItemIndex:=x;
         break;
         end;
      end;
   end;
CAMPO_EMP04.Text:=CAMPO_EMP04.Items.Strings[CAMPO_EMP04.Itemindex];
FORMA04.Caption:='Caractere';

end;

function TFrm_Tab00JC.fTab00JcMostrarDados(ptipo: Integer): Boolean;
begin
NOMCAM.Text       :=Qr_JCJCNOMCAM.Value;
RGTIPO01.ItemIndex:=Qr_JCJCTCAMPO1.AsInteger;
RGTIPO02.ItemIndex:=Qr_JCJCTCAMPO2.AsInteger;
RGTIPO03.ItemIndex:=Qr_JCJCTCAMPO3.AsInteger;
RGTIPO04.ItemIndex:=Qr_JCJCTCAMPO4.AsInteger;
RG_BRANCOS01.ItemIndex:=Qr_JCJCBRANCOS01.AsInteger;
RG_BRANCOS02.ItemIndex:=Qr_JCJCBRANCOS02.AsInteger;
RG_BRANCOS03.ItemIndex:=Qr_JCJCBRANCOS03.AsInteger;
RG_BRANCOS04.ItemIndex:=Qr_JCJCBRANCOS04.AsInteger;

if RGTIPO01.ItemIndex=0 then
   begin
   CAMPO01.Text:=Qr_JCnomcam01.Value;
   CAMPO01.Visible    :=True;
   CAMPO_EMP01.Visible:=False;
   MENSAGEM01.Visible :=False;
   end
else if RGTIPO01.ItemIndex=1 then
   begin
   MENSAGEM01.Text    :=Qr_JCnomcam01.Value;
   CAMPO01.Visible    :=False;
   CAMPO_EMP01.Visible:=False;
   MENSAGEM01.Visible :=true;
   end
else if RGTIPO01.ItemIndex=2 then
   begin
   CAMPO_EMP01.Text   :=Qr_JCnomcam01.Value;
   CAMPO01.Visible    :=False;
   CAMPO_EMP01.Visible:=true;
   MENSAGEM01.Visible :=False;
   end;

if RGTIPO02.ItemIndex=0 then
   begin
   CAMPO02.Text       :=Qr_JCnomcam02.Value;
   CAMPO02.Visible    :=True;
   CAMPO_EMP02.Visible:=False;
   MENSAGEM02.Visible :=False;
   end
else if RGTIPO02.ItemIndex=1 then
   begin
   MENSAGEM02.Text    :=Qr_JCnomcam02.Value;
   CAMPO02.Visible    :=False;
   CAMPO_EMP02.Visible:=False;
   MENSAGEM02.Visible :=true;
   end
else if RGTIPO02.ItemIndex=2 then
   begin
   CAMPO_EMP02.Text       :=Qr_JCnomcam02.Value;
   CAMPO02.Visible    :=False;
   CAMPO_EMP02.Visible:=true;
   MENSAGEM02.Visible :=False;
   end;
if RGTIPO03.ItemIndex=0 then
   begin
   CAMPO03.Text       :=Qr_JCnomcam03.Value;
   CAMPO03.Visible    :=True;
   CAMPO_EMP03.Visible:=False;
   MENSAGEM03.Visible :=False;
   end
else if RGTIPO03.ItemIndex=1 then
   begin
   MENSAGEM03.Text    :=Qr_JCnomcam03.Value;
   CAMPO03.Visible    :=False;
   CAMPO_EMP03.Visible:=False;
   MENSAGEM03.Visible :=true;
   end
else if RGTIPO03.ItemIndex=2 then
   begin
   CAMPO_EMP03.Text       :=Qr_JCnomcam03.Value;
   CAMPO03.Visible    :=False;
   CAMPO_EMP03.Visible:=true;
   MENSAGEM03.Visible :=False;
   end;

if RGTIPO04.ItemIndex=0 then
   begin
   CAMPO04.Text       :=Qr_JCnomcam04.Value;
   CAMPO04.Visible    :=True;
   CAMPO_EMP04.Visible:=False;
   MENSAGEM04.Visible :=False;
   end
else if RGTIPO04.ItemIndex=1 then
   begin
   MENSAGEM04.Text   :=Qr_JCnomcam04.Value;
   CAMPO04.Visible    :=False;
   CAMPO_EMP04.Visible:=False;
   MENSAGEM04.Visible :=true;
   end
else if RGTIPO04.ItemIndex=2 then
   begin
   CAMPO_EMP04.Text   :=Qr_JCnomcam04.Value;
   CAMPO04.Visible    :=False;
   CAMPO_EMP04.Visible:=true;
   MENSAGEM04.Visible :=False;
   end;
if Qr_JCJCFORMA01.Value='N' then
   FORMA01.Caption:='Numero'
else if Qr_JCJCFORMA01.Value='D' then
   FORMA01.Caption:='Data'
else if Qr_JCJCFORMA01.Value='H' then
   FORMA01.Caption:='Hora'
else if (Qr_JCJCFORMA01.Value='S') or (Qr_JCJCFORMA01.Value='C') then
   FORMA01.Caption:='Caractere'
else
   FORMA01.Caption:='Desconhecido';

if Qr_JCJCFORMA02.Value='N' then
   FORMA02.Caption:='Numero'
else if Qr_JCJCFORMA02.Value='D' then
   FORMA02.Caption:='Data'
else if Qr_JCJCFORMA02.Value='H' then
   FORMA02.Caption:='Hora'
else if (Qr_JCJCFORMA02.Value='S') or (Qr_JCJCFORMA02.Value='C') then
   FORMA02.Caption:='Caractere'
else
   FORMA02.Caption:='Desconhecido';

if Qr_JCJCFORMA03.Value='N' then
   FORMA03.Caption:='Numero'
else if Qr_JCJCFORMA03.Value='D' then
   FORMA03.Caption:='Data'
else if Qr_JCJCFORMA03.Value='H' then
   FORMA03.Caption:='Hora'
else if (Qr_JCJCFORMA03.Value='S') or (Qr_JCJCFORMA03.Value='C') then
   FORMA03.Caption:='Caractere'
else
   FORMA03.Caption:='Desconhecido';

if Qr_JCJCFORMA04.Value='N' then
   FORMA04.Caption:='Numero'
else if Qr_JCJCFORMA04.Value='D' then
   FORMA04.Caption:='Data'
else if Qr_JCJCFORMA04.Value='H' then
   FORMA04.Caption:='Hora'
else if (Qr_JCJCFORMA04.Value='S') or (Qr_JCJCFORMA04.Value='C') then
   FORMA04.Caption:='Caractere'
else
   FORMA04.Caption:='Desconhecido';




FORMATO01.Text:=Qr_JCJCFORMATO01.Value;
FORMATO02.Text:=Qr_JCJCFORMATO02.Value;
FORMATO03.Text:=Qr_JCJCFORMATO03.Value;
FORMATO04.Text:=Qr_JCJCFORMATO04.Value;
TAMMAX01.Text :=Qr_JCJCTAMMAX01.AsString;
TAMMAX02.Text :=Qr_JCJCTAMMAX02.AsString;
TAMMAX03.Text :=Qr_JCJCTAMMAX03.AsString;
TAMMAX04.Text :=Qr_JCJCTAMMAX04.AsString;
ESPACO01.Text :=Qr_JCJCESPACO01.AsString;
ESPACO02.Text :=Qr_JCJCESPACO02.AsString;
ESPACO03.Text :=Qr_JCJCESPACO03.AsString;
ESPACO04.Text :=Qr_JCJCESPACO04.AsString;
result:=True;

end;

procedure TFrm_Tab00JC.Src_JCDataChange(Sender: TObject; Field: TField);
begin
fTab00JcMostrarDados(0);

end;

procedure TFrm_Tab00JC.NOMCAMKeyPress(Sender: TObject; var Key: Char);
begin
if (length(NOMCAM.Text)>29) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.MENSAGEM01KeyPress(Sender: TObject; var Key: Char);
begin
if (length(MENSAGEM01.Text)>132) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.MENSAGEM02KeyPress(Sender: TObject; var Key: Char);
begin
if (length(MENSAGEM02.Text)>132) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.MENSAGEM03KeyPress(Sender: TObject; var Key: Char);
begin
if (length(MENSAGEM03.Text)>132) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.MENSAGEM04KeyPress(Sender: TObject; var Key: Char);
begin
if (length(MENSAGEM04.Text)>132) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.FORMATO01KeyPress(Sender: TObject; var Key: Char);
begin
if (length(FORMATO01.Text)>29) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.FORMATO02KeyPress(Sender: TObject; var Key: Char);
begin
if (length(FORMATO02.Text)>29) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.FORMATO03KeyPress(Sender: TObject; var Key: Char);
begin
if (length(FORMATO03.Text)>29) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.FORMATO04KeyPress(Sender: TObject; var Key: Char);
begin
if (length(FORMATO04.Text)>29) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Tab00JC.NOMCAMExit(Sender: TObject);
var
mensagem,mnomnov: String;
begin
if length(NOMCAM.Text)>30 then
   NOMCAM.Text:=copy(NOMCAM.Text,1,30);

if not  (NOMCAM.Text[1] in ['a'..'z','A'..'Z']) then
   begin
   MessageDlg('O nome do Campo Tem que Começar com Letras!',mtWarning,[mbOk],0);
   NOMCAM.SetFocus;
   exit;
   end;
mnomnov:=ftextoVal(NOMCAM.Text);
if mnomnov<>NOMCAM.Text then
   begin
   mensagem:='O Nome Digitado não é válido. Tenho uma Sujestão: '+#13
             +mnomnov+' este é um nome válido'+#13
             +'Quer Aceitar a sujestão?';
   if fmensagem(pchar(mensagem),0,['1','2'],2)=mrYes then
      begin
      NOMCAM.Text:=mnomnov;
      end
   else
      begin
      MessageDlg('Sujestão não Aceita!',mtInformation,[mbOk],0);
      NOMCAM.SetFocus;
      exit;
      end;
   end;

if fltdvjc(0,0,parquso,pnomrel,'',TrimRight(NOMCAM.Text),'',ptdvtab) then
   begin
   MessageDlg('Ja Existe um Campo com Este Nome!',mtWarning,[mbOk],0);
   NOMCAM.SetFocus;
   exit;
   end

end;

procedure TFrm_Tab00JC.FORMATO01Exit(Sender: TObject);
begin
if length(FORMATO01.Text)>30 then
   FORMATO01.Text:=copy(FORMATO01.Text,1,30);

end;

procedure TFrm_Tab00JC.FORMATO02Exit(Sender: TObject);
begin
if length(FORMATO02.Text)>30 then
   FORMATO02.Text:=copy(FORMATO02.Text,1,30);

end;

procedure TFrm_Tab00JC.FORMATO03Exit(Sender: TObject);
begin
if length(FORMATO03.Text)>30 then
   FORMATO03.Text:=copy(FORMATO03.Text,1,30);

end;

procedure TFrm_Tab00JC.FORMATO04Exit(Sender: TObject);
begin
if length(FORMATO04.Text)>30 then
   FORMATO04.Text:=copy(FORMATO04.Text,1,30);

end;

procedure TFrm_Tab00JC.MENSAGEM01Exit(Sender: TObject);
begin
if length(MENSAGEM01.Text)>132 then
   MENSAGEM01.Text:=copy(MENSAGEM01.Text,1,132);
FORMA01.Caption:='Caractere';

end;

procedure TFrm_Tab00JC.MENSAGEM02Exit(Sender: TObject);
begin
if length(MENSAGEM02.Text)>132 then
   MENSAGEM02.Text:=copy(MENSAGEM02.Text,1,132);
FORMA02.Caption:='Caractere';

end;

procedure TFrm_Tab00JC.MENSAGEM03Exit(Sender: TObject);
begin
if length(MENSAGEM03.Text)>132 then
   MENSAGEM03.Text:=copy(MENSAGEM03.Text,1,132);
FORMA03.Caption:='Caractere';

end;

procedure TFrm_Tab00JC.MENSAGEM04Exit(Sender: TObject);
begin
if length(MENSAGEM04.Text)>132 then
   MENSAGEM04.Text:=copy(MENSAGEM04.Text,1,132);
FORMA04.Caption:='Caractere';

end;

procedure TFrm_Tab00JC.TAMMAX01Exit(Sender: TObject);
begin
TAMMAX01.Text:=fdeixanum(TAMMAX01.Text);
end;

procedure TFrm_Tab00JC.TAMMAX02Exit(Sender: TObject);
begin
TAMMAX02.Text:=fdeixanum(TAMMAX02.Text);
end;

procedure TFrm_Tab00JC.TAMMAX03Exit(Sender: TObject);
begin
TAMMAX03.Text:=fdeixanum(TAMMAX03.Text);
end;

procedure TFrm_Tab00JC.TAMMAX04Exit(Sender: TObject);
begin
TAMMAX04.Text:=fdeixanum(TAMMAX04.Text);
end;

procedure TFrm_Tab00JC.ESPACO01Exit(Sender: TObject);
begin
ESPACO01.Text:=fdeixanum(ESPACO01.Text);
end;

procedure TFrm_Tab00JC.ESPACO02Exit(Sender: TObject);
begin
ESPACO02.Text:=fdeixanum(ESPACO02.Text);

end;

procedure TFrm_Tab00JC.ESPACO03Exit(Sender: TObject);
begin
ESPACO03.Text:=fdeixanum(ESPACO03.Text);

end;

procedure TFrm_Tab00JC.ESPACO04Exit(Sender: TObject);
begin
ESPACO04.Text:=fdeixanum(ESPACO04.Text);

end;

procedure TFrm_Tab00JC.BBINCLUIRClick(Sender: TObject);
begin
moper:=0;
DBGrid1.Enabled   :=False;
fTab00JczerarCampos(0);
Panel3.Enabled    := True;
NOMCAM.Enabled    := True;
BBALTERAR.Enabled :=False;
BBINCLUIR.Enabled :=False;
BBGRAVAR.Enabled  :=True;
BBCANCELAR.Enabled:=True;
BBEXCLUIR.Enabled :=False;
NOMCAM.SetFocus;


end;
function TFrm_Tab00Jc.fTab00JczerarCampos(ptipo: Integer): Boolean;
begin
NOMCAM.Text         :='';
RGTIPO01.ItemIndex  :=0;
RGTIPO02.ItemIndex  :=0;
RGTIPO03.ItemIndex  :=0;
RGTIPO04.ItemIndex  :=0;
RG_BRANCOS01.ItemIndex:=3;
RG_BRANCOS02.ItemIndex:=3;
RG_BRANCOS03.ItemIndex:=3;
RG_BRANCOS04.ItemIndex:=3;

CAMPO01.Text        :='';
CAMPO_EMP01.Text    :='';
MENSAGEM01.Text     :='';
CAMPO02.Text        :='';
CAMPO_EMP02.Text    :='';
MENSAGEM02.Text     :='';
CAMPO03.Text        :='';
CAMPO_EMP03.Text    :='';
MENSAGEM03.Text     :='';
CAMPO04.Text        :='';
CAMPO_EMP04.Text    :='';
MENSAGEM04.Text     :='';
FORMA01.Caption     :='Caractere';
FORMA02.Caption     :='Caractere';
FORMA03.Caption     :='Caractere';
FORMA04.Caption     :='Caractere';
CAMPO01.Text        :='';
CAMPO02.Text        :='';
CAMPO03.Text        :='';
CAMPO04.Text        :='';
FORMATO01.Text      :='';
FORMATO02.Text      :='';
FORMATO03.Text      :='';
FORMATO04.Text      :='';
TAMMAX01.Text       :='';
TAMMAX02.Text       :='';
TAMMAX03.Text       :='';
TAMMAX04.Text       :='';
ESPACO01.Text       :='';
ESPACO02.Text       :='';
ESPACO03.Text       :='';
ESPACO04.Text       :='';
result:=True;
end;

procedure TFrm_Tab00JC.BBALTERARClick(Sender: TObject);
begin
if Qr_JCJCNOMCAM.IsNull then
   begin
   MessageDlg('Nada a ser Alterado!',mtWarning,[mbOk],0);
   end;
moper:=1;
DBGrid1.Enabled   :=False;
Panel3.Enabled    :=True;
NOMCAM.Enabled    :=False;
BBALTERAR.Enabled :=False;
BBINCLUIR.Enabled :=False;
BBGRAVAR.Enabled  :=True;
BBCANCELAR.Enabled:=True;
BBEXCLUIR.Enabled :=False;
RGTIPO01.SetFocus;


end;

procedure TFrm_Tab00JC.BBGRAVARClick(Sender: TObject);
var
x: Integer;
begin
if Trim(NOMCAM.Text)='' then
   begin
   MessageDlg('Nome do Campo Campo Obrigatorio!',mtWarning,[mbOk],0);
   NOMCAM.SetFocus;
   exit;
   end;
if (Trim(CAMPO01.Text)='') and (Trim(CAMPO02.Text)='') and
   (Trim(CAMPO03.Text)='') and (Trim(CAMPO04.Text)='') and
   (Trim(CAMPO_EMP01.Text)='') and (Trim(CAMPO_EMP02.Text)='') and
   (Trim(CAMPO_EMP03.Text)='') and (Trim(CAMPO_EMP04.Text)='') and
   (Trim(MENSAGEM01.Text)='') and (Trim(MENSAGEM02.Text)='') and
   (Trim(MENSAGEM03.Text)='') and (Trim(MENSAGEM04.Text)='') then
   begin
   MessageDlg('Não ha campos selecionados para gravação. Invalido!',mtWarning,[mbOk],0);
   CAMPO01.SetFocus;
   exit;
   end;

if moper=1 then
   begin
   if not fltdvjc(0,Qr_JCJCCODEMP.AsInteger,Qr_JCJCDOC.Value,Qr_JCJCNOME.Value,Qr_JCJCTDET.AsString,
             Qr_JCJCNOMCAM.Value,Qr_JCJCCODIGO.AsString,ptdvtab) then
      begin
      MessageDlg('Erro ao Localizar o Registro de Origem!',mtError,[mbOk],0);
      exit;
      end;
   DM2.Tb_JC.Edit;
   end
else
   DM2.Tb_JC.Append;

DM2.Tb_JCJCCODEMP.Value   :=codemp;
DM2.Tb_JCJCDOC.Value      :=parquso;
DM2.Tb_JCJCNOME.Value     :=pnomrel;
DM2.Tb_JCJCTDET.Value     :=plocOri;
DM2.Tb_JCJCNOMCAM.Value   :=TrimRight(NOMCAM.Text);
DM2.Tb_JCJCTCAMPO1.Value  :=RGTIPO01.ItemIndex;
DM2.Tb_JCJCBRANCOS01.Value:=RG_BRANCOS01.ItemIndex;
if (RGTIPO01.ItemIndex=0) and (Trim(CAMPO01.Text)<>'') then
   begin
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO01.Text,[]) then
      begin
      DM2.Tb_JCJCCAMPO01.Value:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      begin
      MessageDlg('Erro ao Identificar o Campo 01!',mtError,[mbOk],0);
      DM2.Tb_JC.Cancel;
      exit;
      end;
   end
else if RGTIPO01.ItemIndex=2 then
   begin
   for x:=0 to DM1.Tb_Emp.FieldCount-1 do
      begin
      if CAMPO_EMP01.Text=DM1.Tb_Emp.Fields[x].DisplayName then
         begin
         DM2.Tb_JCJCCAMPO01.Value:=DM1.Tb_Emp.Fields[x].FieldName;
         break;
         end;
      end;
   end
else
   begin
   DM2.Tb_JCJCCAMPO01.Value:=MENSAGEM01.Text;
   end;
DM2.Tb_JCJCFORMA01.Value  :=FORMA01.Caption[1];
DM2.Tb_JCJCFORMATO01.Value:=FORMATO01.Text;
DM2.Tb_JCJCESPACO01.Value :=ValFloat(ESPACO01.Text);
DM2.Tb_JCJCTAMMAX01.Value :=ValFloat(TAMMAX01.Text);

// iniciando o campos 02
DM2.Tb_JCJCTCAMPO2.Value  :=RGTIPO02.ItemIndex;
DM2.Tb_JCJCBRANCOS02.Value:=RG_BRANCOS02.ItemIndex;
if (RGTIPO02.ItemIndex=0) and (Trim(CAMPO02.Text)<>'') then
   begin
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO02.Text,[]) then
      begin
      DM2.Tb_JCJCCAMPO02.Value:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      begin
      MessageDlg('Erro ao Identificar o Campo 02!',mtError,[mbOk],0);
      DM2.Tb_JC.Cancel;
      exit;
      end;
   end
else if RGTIPO02.ItemIndex=2 then
   begin
   for x:=0 to DM1.Tb_Emp.FieldCount-1 do
      begin
      if CAMPO_EMP02.Text=DM1.Tb_Emp.Fields[x].DisplayName then
         begin
         DM2.Tb_JCJCCAMPO02.Value:=DM1.Tb_Emp.Fields[x].FieldName;
         break;
         end;
      end;
   end
else
   begin
   DM2.Tb_JCJCCAMPO02.Value:=MENSAGEM02.Text;
   end;
DM2.Tb_JCJCFORMA02.Value  :=FORMA02.Caption[1];
DM2.Tb_JCJCFORMATO02.Value:=FORMATO02.Text;
DM2.Tb_JCJCESPACO02.Value :=ValFloat(ESPACO02.Text);
DM2.Tb_JCJCTAMMAX02.Value :=ValFloat(TAMMAX02.Text);

// iniciando o campos 03
DM2.Tb_JCJCTCAMPO3.Value  :=RGTIPO03.ItemIndex;
DM2.Tb_JCJCBRANCOS03.Value:=RG_BRANCOS03.ItemIndex;
if (RGTIPO03.ItemIndex=0) and (Trim(CAMPO03.Text)<>'') then
   begin
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO03.Text,[]) then
      begin
      DM2.Tb_JCJCCAMPO03.Value:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      begin
      MessageDlg('Erro ao Identificar o Campo 03!',mtError,[mbOk],0);
      DM2.Tb_JC.Cancel;
      exit;
      end;
   end
else if RGTIPO03.ItemIndex=2 then
   begin
   for x:=0 to DM1.Tb_Emp.FieldCount-1 do
      begin
      if CAMPO_EMP03.Text=DM1.Tb_Emp.Fields[x].DisplayName then
         begin
         DM2.Tb_JCJCCAMPO03.Value:=DM1.Tb_Emp.Fields[x].FieldName;
         break;
         end;
      end;
   end
else
   begin
   DM2.Tb_JCJCCAMPO03.Value:=MENSAGEM03.Text;
   end;
DM2.Tb_JCJCFORMA03.Value  :=FORMA03.Caption[1];
DM2.Tb_JCJCFORMATO03.Value:=FORMATO03.Text;
DM2.Tb_JCJCESPACO03.Value :=ValFloat(ESPACO03.Text);
DM2.Tb_JCJCTAMMAX03.Value :=ValFloat(TAMMAX03.Text);

// iniciando o campos 04
DM2.Tb_JCJCTCAMPO4.Value  :=RGTIPO04.ItemIndex;
DM2.Tb_JCJCBRANCOS04.Value:=RG_BRANCOS04.ItemIndex;
if (RGTIPO04.ItemIndex=0) and (Trim(CAMPO04.Text)<>'') then
   begin
   if DM2.Tb_Arq.Locate('CANOMREG',CAMPO04.Text,[]) then
      begin
      DM2.Tb_JCJCCAMPO04.Value:=DM2.Tb_ArqCANOMCAM.Value;
      end
   else
      begin
      MessageDlg('Erro ao Identificar o Campo 04!',mtError,[mbOk],0);
      DM2.Tb_JC.Cancel;
      exit;
      end;
   end
else if RGTIPO04.ItemIndex=2 then
   begin
   for x:=0 to DM1.Tb_Emp.FieldCount-1 do
      begin
      if CAMPO_EMP04.Text=DM1.Tb_Emp.Fields[x].DisplayName then
         begin
         DM2.Tb_JCJCCAMPO04.Value:=DM1.Tb_Emp.Fields[x].FieldName;
         break;
         end;
      end;
   end
else
   begin
   DM2.Tb_JCJCCAMPO04.Value:=MENSAGEM04.Text;
   end;
DM2.Tb_JCJCFORMA04.Value  :=FORMA04.Caption[1];
DM2.Tb_JCJCFORMATO04.Value:=FORMATO04.Text;
DM2.Tb_JCJCESPACO04.Value :=ValFloat(ESPACO04.Text);
DM2.Tb_JCJCTAMMAX04.Value :=ValFloat(TAMMAX04.Text);
DM2.Tb_JC.Post;
BBCANCELAR.Click;
fTab00JcLerarq(0);
end;

procedure TFrm_Tab00JC.BBCANCELARClick(Sender: TObject);
begin
fTab00JczerarCampos(0);
moper:=0;
BBINCLUIR.Enabled:=True;
BBALTERAR.Enabled:=True;
BBGRAVAR.Enabled :=False;
BBEXCLUIR.Enabled:=True;
DBGrid1.Enabled  :=True;
NOMCAM.Enabled   :=False;
Panel3.Enabled   :=False;
end;

procedure TFrm_Tab00JC.BBEXCLUIRClick(Sender: TObject);
begin
if Qr_JCJCNOMCAM.IsNull then
   begin
   MessageDlg('Nada a Ser Excluido!',mtWarning,[mbOk],0);
   exit;
   end;
if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],2)<>mrYes then
   exit;
if not fltdvjc(0,Qr_JCJCCODEMP.AsInteger,Qr_JCJCDOC.Value,Qr_JCJCNOME.Value,Qr_JCJCTDET.AsString,
             Qr_JCJCNOMCAM.Value,Qr_JCJCCODIGO.AsString,ptdvtab) then
   begin
   MessageDlg('Erro ao Localizar o Registro de Origem!',mtError,[mbOk],0);
   exit;
   end;
DM2.Tb_JC.Delete;
BBCANCELAR.Click;
MessageDlg('Registro Excluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_Tab00JC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

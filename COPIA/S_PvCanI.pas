unit S_PvCanI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,lerarq,func,S_SI,Func_ECF, DB, DBTables;

type
  TFrm_PvCanI = class(TForm)
    Label1: TLabel;
    CODITE: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NOMPRO: TEdit;
    Qr_Item: TQuery;
    Qr_ItemP2CHAVE: TFloatField;
    Qr_ItemP2ORDEM: TFloatField;
    Qr_ItemP2ITEM: TFloatField;
    Qr_ItemP2PRECO: TFloatField;
    Qr_ItemP2DESC1: TFloatField;
    Qr_ItemP2QTD: TFloatField;
    Qr_ItemP2CODPRO: TFloatField;
    Qr_ItemPDNOME: TStringField;
    Qr_ItemPDUND: TStringField;
    Qr_ItemPDMARCA: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CODITEExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PvCanI: TFrm_PvCanI;

implementation

uses S_PonVen, S_DM1, S_Fpgto;

{$R *.dfm}

procedure TFrm_PvCanI.BitBtn1Click(Sender: TObject);
var
res1: String;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODRO');

Qr_Item.Close;
Qr_Item.SQL.Clear;
Qr_Item.SQL.add('Select P2CHAVE,P2ORDEM,P2ITEM,P2PRECO,P2DESC1 '
               +'       ,P2QTD,P2CODPRO,PDNOME,PDUND,PDMARCA '
               +' from CADP02'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '
               +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+InttoStr(codemp)+' and ')
               +' P2CHAVE=0'+FloatToStr(mchaveped)+' and '
               +' P2ITEM=0'+Trim(CODITE.Text)
               +iif(la_instrucao='','',' and '+la_instrucao));

Qr_Item.open;
if Qr_Item.eof then
   begin
   MessageDlg('Item não encontrado',mtinformation,[mbOk],0);
   CODITE.SetFocus;
   exit;
   end;
flcadpar01(0,0,'1');
Res1:='';
{
if DM1.Tb_ParPPDSN22.Value='S' then
   begin
   Application.CreateForm(TFrm_SI, Frm_SI);
   Frm_SI.Caption:='Senha Interna';
   Frm_SI.ShowModal;
   if Res1<>'' then
      begin
      if (Crip(Res1,1)=DM1.Tb_ParPSENHA00.Value)
         or (Crip(Res1,1)=DM1.Tb_ParPSENHA22.Value)
         or (smaster(Res1)) then
      else
         begin
         MessageDlg('Não Permitido!',mtWarning,[mbOk],0);
         exit;
         end;
      end
   else
      begin
      MessageDlg('Não Permitido!',mtWarning,[mbOk],0);
      exit;
      end;
   end;
   }
fpvecf_Bema(0,7,0,0,0,0,0,0);
flbaiest(0,0,0,0,Qr_ItemP2CODPRO.AsString,'frm_pvcani_100_',Qr_ItemP2QTD.Value);

Frm_PonVen.Memo1.Lines.Add('Item: '+Trim(CODITE.Text)+' Cancelado.: '+Trim(NOMPRO.Text));

Frm_PonVen.Panel4.Caption:=NOMPRO.Text;
Frm_PonVen.Panel5.Caption:='Item Cancelado';
DM1.SG_ASSOC.StartTransaction;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.Add('Delete from CADP02 where P2CODEMP=0'+IntToStr(codemp)
                  +' and P2LOTSEQ=0'+IntTostr(ls_numped)
                  +' and P2CHAVE=0'+FloatToStr(mchaveped)
                  +' and P2ITEM=0'+Trim(CODITE.Text));
Try
   DM1.Query1.ExecSQL;
except
   MessageDlg('Erro de instrução PVCANI:076. Contactar suporte',mtWarning,[MBoK],0);
   end;
DM1.SG_ASSOC.Commit;
Messagedlg('Item Cancelado!',mtInformation,[mbOk],0);
Frm_PonVen.STG1.cells[12,StrToInt('0'+Trim(CODITE.Text))]:='N';
close;
end;

procedure TFrm_PvCanI.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_PvCanI.CODITEExit(Sender: TObject);
begin
if BitBtn2.Focused then
   exit;
if (valfloat(CODITE.Text)<1) or (valfloat(CODITE.Text)>Frm_PonVen.STG1.RowCount) then
   begin
   MessageDlg('Item não Encontrado!',mtWarning,[mbOk],0);
   CODITE.SetFocus;
   exit;
   end;
IF Frm_PonVen.STG1.cells[12,ValInt(CODITE.Text)]='N' then
   begin
   MessageDlg('Este Item ja foi Excluido!',mtInformation,[mbOk],0);
   CODITE.SetFocus;
   exit;
   end;
IF Trim(Frm_PonVen.STG1.cells[01,ValInt(CODITE.Text)])='' then
   begin
   MessageDlg('Item não Encontrado!',mtInformation,[mbOk],0);
   CODITE.SetFocus;
   exit;
   end;

NOMPRO.Text:=Frm_PonVen.STG1.Cells[03,StrtoInt('0'+Trim(CODITE.Text))];

end;

procedure TFrm_PvCanI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

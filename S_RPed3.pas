unit S_RPed3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Buttons, S_DM1, db, dbtables, func,
  S_Con, S_Ass, S_Impres,lerarq, S_Usr,S_Bco;

type
  TFrm_RPed3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    CODCON: TEdit;
    Label4: TLabel;
    CODASS: TEdit;
    Label5: TLabel;
    CODVEN: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_Ped: TQuery;
    Label7: TLabel;
    Label8: TLabel;
    MPEDI: TEdit;
    MPEDF: TEdit;
    Label6: TLabel;
    CODCAI: TEdit;
    NOMCONV: TEdit;
    NOMASS: TEdit;
    NOMVEN: TEdit;
    NOMCAI: TEdit;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1CODASS: TFloatField;
    Qr_PedP1TOTLIQ: TFloatField;
    Qr_PedP1TAXENT: TFloatField;
    Qr_PedP1DATAP: TDateTimeField;
    Qr_PedP1ACFIN: TFloatField;
    Qr_PedP1NCUPOM: TFloatField;
    Qr_PedP1CAIXA: TFloatField;
    Qr_PedP1DATAE: TDateTimeField;
    Qr_PedP1NAUT: TStringField;
    Qr_PedCNOME: TStringField;
    Qr_PedCCIDADE: TStringField;
    Qr_PedCUF: TStringField;
    Qr_PedTIPO: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure CODASSKeyPress(Sender: TObject; var Key: Char);
    procedure CODASSExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODVENExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MPEDFKeyPress(Sender: TObject; var Key: Char);
    procedure MPEDFExit(Sender: TObject);
    procedure CODCAIExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RPed3: TFrm_RPed3;

implementation

uses S_Cbairro;

{$R *.DFM}

procedure TFrm_RPed3.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_RPed3.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.text)<>'/  /' then
   MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));

end;

procedure TFrm_RPed3.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.text)<>'/  /' then
   MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));

end;

procedure TFrm_RPed3.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) then
      begin
      Application.CreateForm(Tfrm_Con, Frm_Con);
      Frm_Con.Edit1.Text:=key;
      Frm_Con.BBnAtu.Click;
      Frm_Con.Edit1.SelStart:=1;
      Frm_Con.Edit1.SelLength:=1;
      Frm_Con.PC1.ActivePageIndex:=1;
      Frm_Con.ShowModal;
      CODCON.Text:=DM1.Tb_ConCCODCON.AsString;
      Frm_Con.Free;
      key:='0';
      end;

end;

procedure TFrm_RPed3.CODCONExit(Sender: TObject);
begin
if trim(CODCON.Text)='' then
   NOMCONV.Text:='Todos...'
else
   begin
   if not flcadcon(1,0,CODCON.Text) then
      begin
      ShowMessage('Convenio Não Cadastrado.');
      CODCON.SetFocus;
      abort;
      end
   else
      NOMCONV.Text:=DM1.Tb_ConCNOME.Value;

   end;
end;

procedure TFrm_RPed3.CODASSKeyPress(Sender: TObject; var Key: Char);
begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) then
      begin
      Application.CreateForm(Tfrm_Ass, Frm_Ass);
      Frm_Ass.Edit1.Text:=key;
      Frm_Ass.BBnAtu.Click;
      Frm_Ass.Edit1.SelStart:=1;
      Frm_Ass.Edit1.SelLength:=1;
      Frm_Ass.PC1.ActivePageIndex:=2;
      Frm_Ass.ShowModal;
      CODASS.Text:=DM1.Tb_CliCCODCLI.AsString;
      Frm_Ass.Free;
      key:='0';
      end;

end;

procedure TFrm_RPed3.CODASSExit(Sender: TObject);
begin
if Trim(CODASS.Text)='' then
   NOMASS.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODASS.Text) then
      begin
      ShowMessage('Associado Invalido.');
      CODASS.SetFocus;
      exit;
      end
   else
      begin
      NOMASS.Text:=DM1.Tb_CliCNOME.Value;
      end;
   end;

end;

procedure TFrm_RPed3.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) then
      begin
      Application.CreateForm(Tfrm_Usr, Frm_Usr);
      Frm_Usr.Edit1.Text:=key;
      Frm_Usr.BBnAtu.Click;
      Frm_Usr.Edit1.SelStart:=1;
      Frm_Usr.Edit1.SelLength:=1;
      Frm_Usr.PC1.ActivePageIndex:=1;
      Frm_Usr.ShowModal;
      CODVEN.Text:=DM1.Tb_UsrCODUSR.AsString;
      Frm_Usr.Free;
      key:=#0;
      end;

end;

procedure TFrm_RPed3.CODVENExit(Sender: TObject);
begin
if Trim(CODVEN.Text)='' then
   NOMVEN.Text:='Todas...'
else
   begin
   if not flcadusr(1,0,CODVEN.Text) then
      begin
      ShowMessage('Vendedor Não Cadastrada');
      CODVEN.SetFocus;
      exit;
      end
   else
      NOMVEN.Text:=DM1.Tb_UsrNOMUSR.AsString;
   end;
end;

procedure TFrm_RPed3.BitBtn1Click(Sender: TObject);
var
mobs: String;
mlin, mpag: Integer;
mtotp, mtotf: Real;
mcoda, mtotpa, mtotfa: Real;
begin
Qr_Ped.Close;
Qr_Ped.SQL.Clear;

Qr_Ped.SQL.Add('Select P1CHAVE,P1CODASS,P1TOTLIQ,P1TAXENT,P1DATAP,P1ACFIN,P1NCUPOM,P1CAIXA,'
              +' P1DATAE,P1NAUT,CNOME,CCIDADE,CUF, 0 AS TIPO from CADP01, CADASS'
              +' Where P1CODEMP='+IntToStr(codemp)+' and '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADASS',[]),'',' CCODEMP(+)=P1CODEMP and ')
              +' CCODCLI(+)=P1CODASS ');
Qr_Ped.SQL.Add(' and P1TIPO=3');
if StrtoInt('0'+MPEDI.Text)>0 then
   Qr_Ped.SQL.Add(' and P1CHAVE>=0'+Trim(MPEDI.Text));
if StrtoInt('0'+MPEDF.Text)>0 then
   Qr_Ped.SQL.Add(' and P1CHAVE<=0'+Trim(MPEDF.Text));
if Trim(CODCAI.Text)<>'' then
   Qr_Ped.SQL.Add(' and P1CAIXA=0'+Trim(CODCAI.Text));

if Trim(MDT1.Text)<>'/  /' then
   Qr_Ped.SQL.Add(' and P1DATAP>='+CHR(39)+MDT1.Text+CHR(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Ped.SQL.Add(' and P1DATAP<='+CHR(39)+MDT2.Text+CHR(39));
if Trim(CODVEN.Text)<>'' then
   Qr_Ped.SQL.Add(' and P1CODVEN=0'+Trim(CODVEN.Text));
if Trim(CODCON.Text)<>'' then
   Qr_Ped.SQL.Add(' and CCONV=0'+Trim(CODCON.Text));
if Trim(CODASS.Text)<>'' then
   Qr_Ped.SQL.Add(' and CCODCLI=0'+Trim(CODASS.Text));
Qr_Ped.SQL.Add(' Order by P1CAIXA,P1NCUPOM');

Qr_Ped.Open;
if Qr_Ped.Eof then
   begin
   ShowMessage('Nao ha nada a ser impresso!');
   abort;
   end;
Qr_Ped.First;
Frm_Impres.Rdprint1.Abrir;
mlin:=0; mpag:=0;
mtotp:=0; mtotf:=0;

While not Qr_Ped.Eof do
   begin
   if mlin=0 then
      begin
      mobs:='';
      mpag:=mpag+1;
      Frm_Impres.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      Frm_Impres.Rdprint1.Impf(01,64,'Pagina:   '+FormatFloat('0000',mpag),mnormal);
      Frm_Impres.Rdprint1.Impf(02,01,'Relatorio de Pedido/Caixa.',mnormal);
      Frm_Impres.Rdprint1.Impf(02,64,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
      if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)='/  /') then
         Frm_Impres.Rdprint1.Impf(03,01,Centra('TODAS AS DATAS.',' ',60),mneg)
      else if (Trim(mdt1.Text)='/  /') and (Trim(mdt2.Text)<>'/  /') then
         Frm_Impres.Rdprint1.impf(03,01,Centra('ATE: '+MDT2.Text,' ',60),mneg)
      else if (Trim(mdt1.Text)<>'/  /') and (Trim(mdt2.Text)='/  /') then
         Frm_Impres.Rdprint1.impf(03,01,Centra('A PARTIR DE: '+MDT1.Text,' ',60),mneg)
      else
         Frm_Impres.Rdprint1.impf(03,01,Centra('PERIODO DE: '+MDT1.Text+' A '+MDT2.Text,' ',60),mneg);
      mlin:=3;
      if Trim(CODCON.Text)<>'' then
         begin
         mlin:=mlin+1;
         Frm_Impres.Rdprint1.Impf(mlin,01,'Somente do Convenio: '+FormatFloat('000000',DM1.Tb_ConCCODCON.Value)+' - '+DM1.Tb_ConCNOME.Value,mneg);
         end;
      if Trim(CODASS.Text)<>'' then
         begin
         mlin:=mlin+1;
         Frm_Impres.Rdprint1.Impf(mlin,01,'Somente do Associado: '+FormatFloat('000000',DM1.Tb_CliCCODCLI.Value)+' - '+DM1.Tb_CliCNOME.Value,mneg);
         end;

      if Trim(CODVEN.Text)<>'' then
         begin
         mlin:=mlin+1;
         Frm_Impres.Rdprint1.Impf(mlin,01,'Somente do Atendente: '+FormatFloat('000000',DM1.Tb_UsrCODUSR.Value)+' - '+ DM1.Tb_UsrNOMUSR.Value,mneg);
         end;
      if trim(mobs)<>'' then
         begin
         mlin:=mlin+1;
         Frm_Impres.Rdprint1.Impf(mlin,01,Centra(mobs,' ',60),mneg);
         end;
      if Trim(CODCAI.Text)<>'' then
         begin
         mlin:=mlin+1;
         Frm_Impres.Rdprint1.Impf(mlin,01,'Somente do Caixa: '+FormatFloat('000000',valfloat(CODCAI.Text))+' - '+Trim(NOMCAI.Text),mneg);
         end;

      mlin:=mlin+1;
      Frm_Impres.Rdprint1.Impf(mlin,01,'Pedid Data       Associado                           Valor Pedido No.Cupom Caixa',mnormal);
      end;
   mlin:=mlin+1;




   Frm_Impres.Rdprint1.ImpF(mlin,01,FormatFloat('00000',Qr_PedP1CHAVE.Value)+' '
                           +FormatDateTime(fdt,Qr_PedP1DATAP.Value)+' '
                           +insere2(Qr_PedCNOME.Value,' ',35)
                           +insere(FormatFloat('#####0.00',Qr_PedP1TOTLIQ.Value),' ',13)
                           +'  '+FormatFloat('000000',Qr_PedP1NCUPOM.Value)+'   '
                           +FormatFloat('0000',Qr_PedP1CAIXA.Value),mnormal);
{
Pedid Data       Associado                           Valor Pedido No.Cupom Caixa
12345 10/09/2003 12345678901234567890123456789012345zzZZZZ.ZZ9,99  123456   0001
- Total...............................................ZZZZ.ZZ9,99  123456   0001

 }
   mtotp:=mtotp+Qr_PedP1TOTLIQ.Value;
   Qr_Ped.Next;
   if Qr_Ped.Eof then
      begin
      mlin:=mlin+1;
      Frm_Impres.RDprint1.ImpF(mlin,01,'- Total.............................................'+insere(FormatFloat('0.00',mtotp),' ',13),mnormal);
      if Frm_Impres.RDprint1.Setup then Frm_Impres.RDprint1.Fechar;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      Frm_Impres.RDprint1.ImpF(mlin,01,insere('--Continua...','-',80),mnormal);
      Frm_Impres.RDprint1.Novapagina;
      mlin:=0;
      end
   end;

//- Total...............................................ZZZZ.ZZ9,99  123456   0001

end;

procedure TFrm_RPed3.MPEDFKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then
   key:=#0;
end;

procedure TFrm_RPed3.MPEDFExit(Sender: TObject);
begin
if StrToInt('0'+MPEDI.Text)>StrToInt('0'+MPEDF.Text) then
   begin
   ShowMessage('Invalido. Pedido Inicial nao Pode ser Maior que Final');
   MPEDI.SetFocus;
   end;
end;

procedure TFrm_RPed3.CODCAIExit(Sender: TObject);
begin
if Trim(CODCAI.Text)='' then
   NOMCAI.Text:='Todos...'
else
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',Trim(CODCAI.Text)) then
      begin
      ShowMessage('Banco Nao Cadastrado.');
      CODCAI.SetFocus;
      end;
   end;

end;

procedure TFrm_RPed3.FormActivate(Sender: TObject);
begin
mdt1.Text:=FormatDateTime(fdt2, Date);
mdt2.Text:=FormatDateTime(fdt2, Date);

end;

end.

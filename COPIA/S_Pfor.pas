unit S_Pfor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Mask, StdCtrls, ExtCtrls, Db, DBTables, DBCtrls, Buttons,
  func,S_DM1, S_Pro, S_For, S_PForC,S_SI, S_Impres,lerarq,S_DM4;

type
  TFrm_Pfor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    OBSERVACAO: TMemo;
    Label4: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    CODFOR: TEdit;
    CHAVE: TEdit;
    NOMFOR: TLabel;
    Label2: TLabel;
    MDATAP: TMaskEdit;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Tb_PF1: TQuery;
    Tb_PF2: TQuery;
    U_PF1: TUpdateSQL;
    U_PF2: TUpdateSQL;
    Src_PF1: TDataSource;
    Src_PF2: TDataSource;
    Tb_PF2nompro: TStringField;
    Tb_PF2und: TStringField;
    Tb_PF2total: TFloatField;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    QTDITEM: TEdit;
    Label6: TLabel;
    TOTITEM: TEdit;
    Label7: TLabel;
    TOTAL: TEdit;
    BBCONFIRMAR: TBitBtn;
    BBALTERAR: TBitBtn;
    Tb_PF2nomfor: TStringField;
    Qr_CP: TQuery;
    Label8: TLabel;
    VALDES: TEdit;
    Label9: TLabel;
    ICMSR: TEdit;
    Label10: TLabel;
    TOTLIQ: TEdit;
    Tb_PF1PF1CODEMP: TFloatField;
    Tb_PF1PF1CHAVE: TFloatField;
    Tb_PF1PF1CODFOR: TFloatField;
    Tb_PF1PF1DATA: TDateTimeField;
    Tb_PF1PF1OBS: TMemoField;
    Tb_PF1PF1DESC01: TFloatField;
    Tb_PF1PF1DESC02: TFloatField;
    Tb_PF1PF1DESC03: TFloatField;
    Tb_PF1PF1TOTDES: TFloatField;
    Tb_PF1PF1TOTBRU: TFloatField;
    Tb_PF1PF1TOTLIQ: TFloatField;
    Tb_PF1PF1STATUS: TFloatField;
    Tb_PF1PF1CODUSR: TFloatField;
    Tb_PF1PF1HORDIG: TStringField;
    Tb_PF1PF1USRMOD: TFloatField;
    Tb_PF1PF1DTMOD: TDateTimeField;
    Tb_PF1PF1HRMOD: TStringField;
    Tb_PF1PF1TOTMER: TFloatField;
    Tb_PF1PF1TOTPOS: TFloatField;
    Tb_PF1PF1TOTNEG: TFloatField;
    Tb_PF1PF1TOTINA: TFloatField;
    Tb_PF1PF1TOTFRE: TFloatField;
    Tb_PF1PF1TOTSEG: TFloatField;
    Tb_PF1PF1BASEN: TFloatField;
    Tb_PF1PF1BASER: TFloatField;
    Tb_PF1PF1ICMSN: TFloatField;
    Tb_PF1PF1ICMSR: TFloatField;
    Tb_PF1PF1CODLDR: TFloatField;
    Tb_PF1PF1BASENR: TFloatField;
    Tb_PF1PF1ICMSNR: TFloatField;
    Tb_PF1PF1ISENTAS: TFloatField;
    Tb_PF1PF1TOTOUT: TFloatField;
    Tb_PF1PF1TOTIPI: TFloatField;
    Tb_PF1PF1DATANF: TDateTimeField;
    Tb_PF1PF1NUMNF: TFloatField;
    Tb_PF1PF1SERIE: TStringField;
    Tb_PF1PF1SUBSER: TStringField;
    Tb_PF1PF1CODPV: TFloatField;
    Tb_PF1PF1CODBCO: TFloatField;
    Tb_PF1PF1CODTRA: TFloatField;
    Tb_PF1PF1MODELO: TStringField;
    Tb_PF1PF1NUMDUP: TFloatField;
    Tb_PF1PF1DESD: TStringField;
    Tb_PF2PF2CODEMP: TFloatField;
    Tb_PF2PF2CHAVE: TFloatField;
    Tb_PF2PF2ITEM: TFloatField;
    Tb_PF2PF2CODPRO: TFloatField;
    Tb_PF2PF2LOTE: TStringField;
    Tb_PF2PF2DATAV: TDateTimeField;
    Tb_PF2PF2QTDP: TFloatField;
    Tb_PF2PF2PU: TFloatField;
    Tb_PF2PF2DESC01: TFloatField;
    Tb_PF2PF2DESC02: TFloatField;
    Tb_PF2PF2DESC03: TFloatField;
    Tb_PF2PF2SIT: TStringField;
    Tb_PF2PF2ALIQ: TFloatField;
    Tb_PF2PF2ALIQNR: TFloatField;
    Tb_PF2PF2BASEN: TFloatField;
    Tb_PF2PF2ICMSN: TFloatField;
    Tb_PF2PF2BASER: TFloatField;
    Tb_PF2PF2ICMSR: TFloatField;
    Tb_PF2PF2STATUS: TFloatField;
    Tb_PF2PF2TAB: TStringField;
    Tb_PF2PF2LISTA: TFloatField;
    Tb_PF2PF2PCOTAB: TFloatField;
    Tb_PF2PF2TOTDES: TFloatField;
    Tb_PF2PF2BASENR: TFloatField;
    Tb_PF2PF2ICMSNR: TFloatField;
    Tb_PF2PF2ISENTAS: TFloatField;
    Tb_PF2PF2ALIPI: TFloatField;
    Tb_PF2PF2IPI: TFloatField;
    Tb_PF2PF2CFO: TFloatField;
    Qr_CPCACODEMP: TFloatField;
    Qr_CPCANUMERO: TFloatField;
    Qr_CPCADESD: TStringField;
    Qr_CPCACODFOR: TFloatField;
    Qr_CPCADTEMIS: TDateTimeField;
    Qr_CPCAVALOR: TFloatField;
    Qr_CPCADTVCTO: TDateTimeField;
    Qr_CPCASTATUS: TFloatField;
    Qr_CPCAVALDES: TFloatField;
    Qr_CPCADTDESC: TDateTimeField;
    Qr_CPCADESC: TFloatField;
    Qr_CPCAJUROS: TFloatField;
    Qr_CPCABANCO: TFloatField;
    Qr_CPCALOTE: TFloatField;
    Qr_CPCACHAVEP: TFloatField;
    Qr_CPCADTBX: TDateTimeField;
    Qr_CPCADTPAG: TDateTimeField;
    Qr_CPCAUSRBAI: TFloatField;
    Qr_CPCACAIXA: TFloatField;
    Qr_CPCACODLDR: TFloatField;
    procedure Tb_PF2AfterInsert(DataSet: TDataSet);
    procedure Tb_PF2AfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure Tb_PF2CalcFields(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure Tb_PF2BeforePost(DataSet: TDataSet);
    procedure CHAVEExit(Sender: TObject);
    procedure BBCONFIRMARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure OBSERVACAOExit(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pfor: TFrm_Pfor;
  mitem: Integer;
  mstatus: Integer;
  mtotmer,mtotal,mtotpos,mtotneg,mtotina: Real;
  mbasen, mbaserp, micmsc, micmsd,micmsn,micmsr,mdesc: Real;
  mbasern, mbaseri, mdesrp, mdesrn, mdesri: Real;
  maliq, mfrete, mipi, moutras, mvalor, mtotdes, mseg: Real;
implementation

{$R *.DFM}

procedure TFrm_Pfor.Tb_PF2AfterInsert(DataSet: TDataSet);
begin
Tb_PF2PF2CODEMP.Value:=codemp;
Tb_PF2PF2CHAVE.Value :=2;
Tb_PF2PF2ALIQ.Value:=DM1.Tb_ForFALIQ.Value;
mItem:=mitem+1;
Tb_PF2PF2ITEM.Value:=mitem;
Tb_PF2.Edit;

end;

procedure TFrm_Pfor.Tb_PF2AfterPost(DataSet: TDataSet);
var
mtotb,  mtdesc, micmsc, micmsd, micmsr, mbaser: real;
msit: String;
mqtdi, mtoti: Integer;
codloc: Real;
begin
mqtdi:=0;
mtoti:=0;
mtotb:=0;
mtdesc:=0;
codloc:=Tb_PF2PF2CODPRO.Value;
micmsr:=0;
Tb_PF2.First;
While not Tb_PF2.Eof do
   begin
   mtotb:=mtotb+Tb_PF2PF2QTDP.Value*Tb_PF2PF2PU.Value;
   mtdesc:=mtdesc+Tb_PF2PF2TOTDES.Value;
   micmsr:=micmsr+Tb_PF2PF2ICMSR.Value;
   mqtdi:=mqtdi+1;
   mtoti:=mtoti+Tb_PF2PF2QTDP.AsInteger;
   Tb_PF2.Next;
   end;
QTDITEM.Text:=Formatfloat('000',mqtdi);
TOTAL.Text  :=FormatFloat('#####0.00',mtotb);
TOTITEM.Text:=FormatFloat('000',mtoti);
VALDES.Text :=Formatfloat('#####0.00',mtdesc);
ICMSR.Text  :=FormatFloat('#####0.00',micmsr);
TOTLIQ.Text :=FormatFloat('#####0.00',mtotb+micmsr-mtdesc);
QTDITEM.Update;
TOTAL.Update;
VALDES.Update;
ICMSR.Update;
TOTLIQ.Update;
Tb_PF2.Locate('PF2CODPRO',FloatToStr(codloc),[]);
end;

procedure TFrm_Pfor.FormActivate(Sender: TObject);
begin
CHAVE.Enabled      :=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=False;
BBCONFIRMAR.Enabled:=False;
if BBINCLUIR.Enabled then
   BBINCLUIR.SetFocus;

end;

procedure TFrm_Pfor.BBINCLUIRClick(Sender: TObject);
begin
Panel2.Enabled:=True;

Tb_PF1.close;
Tb_PF1.SQL.Clear;
Tb_PF1.SQL.Add('Select * from CADPF1 where PF1CHAVE is null');
Tb_PF1.Open;

Tb_PF2.close;
Tb_PF2.SQL.Clear;
Tb_PF2.SQL.Add('Select * from CADPF2 where PF2CHAVE is null');
Tb_PF2.Open;
MDATAP.Text:=FormatDateTime('dd/mm/yyyy',date);
mItem:=0;
CODFOR.Text:='';
NOMFOR.Caption:='';
mStatus:=0;
CODFOR.SetFocus;
CHAVE.Enabled:=False;

BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=true;
BBGRAVAR.Enabled   :=true;
BBIMPRIMIR.Enabled :=False;
BBCONFIRMAR.Enabled:=False;
end;

procedure TFrm_Pfor.BBLOCALIZARClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(PF1CHAVE) from CADPF1');
if not DM1.Qr_tid.Locate('TINOME','CADPF',[]) then
   DM1.Query1.SQL.Add(' where  PF1CODEMP=0'+IntToStr(codemp));
DM1.Query1.Open;
CHAVE.Text:=FormatFloat('000000',DM1.Query1.Fields[0].AsInteger);
CHAVE.Update;
CHAVE.Enabled      :=True;
BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBCONFIRMAR.Enabled:=False;
Panel2.Enabled:=True;
CHAVE.SetFocus;


end;

procedure TFrm_Pfor.BBEXCLUIRClick(Sender: TObject);
begin
flcadpar01(0,0,'1');
if Tb_PF1PF1STATUS.Value>0 then
   begin
   Qr_Cp.close;
   Qr_Cp.SQl.Clear;
   Qr_Cp.SQL.Add('Select * From CADDAP where ');
   if DM1.Qr_TID.Locate('TINOME','CADDAP',[]) then
      Qr_Cp.Sql.add(' CACHAVEP=0'+Qr_CpCACHAVEP.AsString)
   else
      Qr_Cp.Sql.add(' CACODEMP=0'+IntToStr(codemp)
                   +' and CACHAVEP=0'+Qr_CpCACHAVEP.AsString);
   Qr_Cp.open;
   While not Qr_Cp.Eof do
      begin
      if Qr_CPCASTATUS.Value>0 then
         begin
         avisosonoro(1);
         ShowMessage('Pedido Tem Duplicatas ja Pagas. Primeiro Cancele as Baixas'+#13
                    +'Financeiro->Contas a Pagar->Baixa Duplicatas->Exclusao de Baixas');
         abort;
         end;
      Qr_cp.Next;
      end;
   flcadpar02(0,0,'3');
   if DM4.Tb_Par02PA2PDSN.Value='S' then
      begin
      Res1:='';
      Application.CreateForm(TFrm_SI, Frm_SI);
      Frm_SI.Caption:='Senha Interna';
      Frm_SI.Label1.Caption:='Digite Senha para Autorizar a Exclusao do Pedido!';
      Frm_SI.ShowModal;
      if Res1<>'' then
         begin
         if (Crip(Res1,DM4.Tb_Par02PA2CODIGO.AsInteger)=DM4.Tb_Par02PA2SENHA.Value)
            or (Crip(Res1,0)=DM4.Tb_Par02senhageral.Value) or
            smaster(res1) then
         else
            begin
            ShowMessage('Acesso Negado!');
            BBLIMPAR.Click;
            abort;
            end;
         end
      else
         begin
         ShowMessage('Acesso Negado!');
         BBLIMPAR.Click;
         abort;
         end;
      end;
   end
else
   begin
   if MessageDlg('Voce Tem Conciencia do Que esta Fazendo',mtConfirmation,[mbYes,mbNo],0)=mrYes then
   else
      begin
      ShowMessage('Operacao Cancelada!');
      BBLIMPAR.Click;
      abort;
      end;
   end;


if mstatus=0 then
   begin
   Tb_PF1.close;
   Tb_PF1.SQL.Clear;
   Tb_PF1.SQL.Add('Select * from CADPF1 where PF1CHAVE is null');
   Tb_PF1.Open;
   Tb_PF2.close;
   Tb_PF2.SQL.Clear;
   Tb_PF2.SQL.Add('Select * from CADPF2 where PF2CHAVE is null');
   Tb_PF2.Open;
   end
else if mstatus=1 then
   begin
   if MessageDlg('Quer Realmente Excluir o Pedido?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
      Tb_Pf2.First;
      While not Tb_Pf2.Eof do
         begin
         flcadest(0,0,Tb_Pf2PF2CODPRO.AsString);
         DM1.Tb_Est.Edit;
         DM1.Tb_EstCESALDO.Value:=DM1.Tb_EstCESALDO.Value-Tb_PF2PF2QTDP.Value;
         DM1.Tb_Est.Post;
         DM1.Tb_pf2.Next;
         end;
      if Tb_PF1PF1CODLDR.Value>0 Then
         begin
         DM1.Tb_LDR.Close;
         DM1.Tb_LDR.SQL.Clear;
         DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR where ');
         if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
            DM1.Tb_LDR.Sql.add(' CODLDR=0'+Tb_PF1PF1CODLDR.AsString
                              +' order by CODLDR')
         else
            DM1.Tb_LDR.Sql.add(' CODEMP=0'+intToStr(Codemp)
                           +' and CODLDR=0'+Tb_PF1PF1CODLDR.AsString
                           +' order by CODEMP,CODLDR');
         DM1.Tb_LDR.Open;
         DM1.Tb_LDR.Delete;
         end;
      DM1.SG_ASSOC.StartTransaction;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete From CADPF1 where ');
      if DM1.Qr_Tid.Locate('TINOME','CADPF',[]) then
         DM1.Query1.SQl.add(' PF1CHAVE=0'+CHAVE.Text)
      else
         DM1.Query1.Sql.add(' PF1CODEMP=0'+IntToStr(codemp)
                        +' and PF1CHAVE=0'+Trim(CHAVE.Text));
      DM1.Query1.ExecSQL;
      DM1.SG_ASSOC.Commit;

      DM1.SG_ASSOC.StartTransaction;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete From CADPF2 where ');
      if DM1.Qr_Tid.Locate('TINOME','CADPF',[]) then
         DM1.Query1.Sql.Add(' PF2CHAVE=0'+CHAVE.Text)
      else
         DM1.Query1.Sql.add(' PF2CODEMP=0'+IntToStr(codemp)
                           +' and PF2CHAVE=0'+Trim(CHAVE.Text));
      DM1.Query1.ExecSQL;
      DM1.SG_ASSOC.Commit;

      DM1.SG_ASSOC.StartTransaction;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete From CADNE where ');
      if DM1.Qr_TID.Locate('TINOME','CADNE',[]) then
         DM1.Query1.SQL.add(' NECHAVEP=0'+DM1.Tb_PF1PF1CHAVE.AsString)
      else
         DM1.Query1.Sql.add(' NECODEMP=0'+IntToStr(codemp)
                           +' and NECHAVEP=0'+DM1.Tb_PF1PF1CHAVE.AsString);
      DM1.Query1.ExecSQL;
      DM1.SG_ASSOC.Commit;

      DM1.SG_ASSOC.StartTransaction;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Delete From CADDAP where ');
      if DM1.Qr_tid.Locate('TINOME','CADDAP',[]) then
         DM1.Query1.SQL.add(' CACHAVEP=0'+DM1.Tb_PF1PF1CHAVE.AsString)
      else
         DM1.Query1.Sql.add(' CACODEMP=0'+IntToStr(codemp)
                           +' and CACHAVEP=0'+DM1.Tb_PF1PF1CHAVE.AsString);
      DM1.Query1.ExecSQL;
      DM1.SG_ASSOC.Commit;
      Qr_Cp.First;
      While not Qr_Cp.Eof do
         begin
         if Qr_CPCACODLDR.Value>0 Then
            begin
            DM1.Tb_LDR.Close;
            DM1.Tb_LDR.SQL.Clear;
            DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR where ');
            if DM1.Qr_Tid.locate('TINOME','CADLDR',[]) then
               DM1.Tb_LDR.SQL.Add(' CODLDR=0'+Qr_CPCACODLDR.AsString)
            else
               DM1.Tb_LDR.SQL.Add('CODEMP=0'+intToStr(Codemp)
                              +' and CODLDR=0'+Qr_CPCACODLDR.AsString);
            DM1.Tb_LDR.Open;
            DM1.Tb_LDR.Delete;
            end;
         Qr_Cp.Next;
         end;
      end;
   end;

BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBCONFIRMAR.Enabled:=False;
BBLIMPAR.Click;
BBINCLUIR.SetFocus;
ShowMessage('Pedido Excluido.');

end;

procedure TFrm_Pfor.BBGRAVARClick(Sender: TObject);
var
mchave,mitem: Integer;
mtotb,mbaser,mcismr, mbasen, micmsn, mdesc,mtotpos,mtotneg,mtotina : Real;
begin
if mstatus=0 then
   begin
   if not flcadpar01(0,0,'1') then
      begin
      MessageDlg('Arquivo de Parametros não Encontrado. Solicitar Suporte!',mtError,[mbOk],0);
      exit;
      end;
   DM4.Tb_Par01.Edit;
   mchave:=DM4.Tb_Par01PNUMPF.AsInteger;
   DM4.Tb_Par01PNUMPF.Value:=mchave+1;
   DM4.Tb_Par01.Post;
   end
else if mstatus=1 then
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From CADPF1 where ');
   if DM1.Qr_Tid.Locate('TINOME','CADPF',[]) then
      DM1.Query1.SQL.Add(' PF1CHAVE=0'+CHAVE.Text)
   else
      DM1.Query1.SQl.add(' PF1CODEMP=0'+IntToStr(codemp)
                     +' and PF1CHAVE=0'+Trim(CHAVE.Text));
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;

   DM1.SG_ASSOC.StartTransaction;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From CADPF2 where ');
   if DM1.Qr_Tid.Locate('TINOME','CADPF',[]) then
      DM1.Query1.SQl.add(' PF2CHAVE=0'+Trim(CHAVE.Text))
   else
      DM1.Query1.SQl.add(' PF2CODEMP=0'+Inttostr(codemp)
                        +' and PF2CHAVE=0'+Trim(CHAVE.Text));
   DM1.Query1.ExecSQL;
   DM1.SG_ASSOC.Commit;
   mchave:=StrToInt(CHAVE.Text);
   end;

Tb_PF2.First;
mitem:=1;
dm1.Tb_PF2.Close;
DM1.Tb_PF2.SQL.Clear;
DM1.Tb_PF2.SQL.add('Select * from CADPF2 where');
if DM1.Qr_Tid.Locate('TINOME','CADPF',[]) then
   DM1.Tb_PF2.SQL.Add(' PF2CHAVE=0'+IntToStr(mchave)
                     +' and PF2ITEM=0'+IntTostr(mitem)
                     +' order by PF2CHAVE,PF2ITEM')
else
   DM1.Tb_Pf2.SQL.Add(' PF2CODEMP=0'+Inttostr(codemp)
                     +' and PF2CHAVE=0'+IntTostr(mchave)
                     +' and PF2ITEM=0'+IntTostr(mitem)
                     +' order by PF2CODEMP,PF2CHAVE,PF2ITEM');
DM1.Tb_PF2.Open;
mtotb:=0; mtotpos:=0; mtotina:=0; mtotneg:=0; mbaser:=0; micmsr:=0; mbasen:=0; micmsn:=0;
While not Tb_PF2.Eof do
   begin
   DM1.Tb_PF2.Append;
   DM1.Tb_PF2PF2CODEMP.Value:=codemp;
   DM1.Tb_PF2PF2CHAVE.Value :=mchave;
   DM1.Tb_PF2PF2ITEM.Value :=mitem;
   DM1.Tb_PF2PF2CODPRO.Value:=Tb_PF2PF2CODPRO.Value;
   DM1.Tb_PF2PF2QTDP.Value  :=Tb_PF2PF2QTDP.Value;
   DM1.Tb_PF2PF2PU.Value    :=Tb_PF2PF2PU.Value;
   DM1.Tb_PF2PF2ALIPI.Value :=Tb_PF2PF2ALIPI.Value;
   DM1.Tb_PF2PF2IPI.Value   :=Tb_PF2PF2IPI.Value;
   DM1.Tb_PF2PF2STATUS.Value:=0;
   DM1.Tb_PF2PF2DESC01.Value:=Tb_PF2PF2DESC01.Value;
   DM1.Tb_PF2PF2DESC02.Value:=Tb_PF2PF2DESC02.Value;
   DM1.Tb_PF2PF2DESC03.Value:=Tb_PF2PF2DESC03.Value;
   DM1.Tb_PF2PF2ALIQ.Value  :=Tb_PF2PF2ALIQ.Value;
   DM1.Tb_PF2PF2SIT.Value   :=Tb_PF2PF2SIT.Value;
   DM1.Tb_PF2PF2TAB.Value   :=Tb_PF2PF2TAB.Value;
   DM1.Tb_pf2PF2LISTA.Value :=Tb_pF2PF2LISTA.Value;
   DM1.Tb_PF2PF2TOTDES.Value:=Tb_PF2PF2TOTDES.Value;
   DM1.Tb_PF2PF2BASER.Value :=Tb_PF2PF2BASER.Value;
   DM1.Tb_PF2PF2ICMSR.Value :=Tb_PF2PF2ICMSR.Value;
   DM1.Tb_PF2PF2BASEN.Value :=Tb_PF2PF2BASEN.Value;
   DM1.Tb_PF2PF2ICMSN.Value :=Tb_PF2PF2ICMSN.Value;
   DM1.Tb_PF2.Post;
   mtotb:=mtotb+(Tb_PF2PF2QTDP.Value*Tb_PF2PF2PU.Value);
   mbaser:=mbaser+Tb_PF2PF2BASER.Value;
   micmsr:=micmsr+Tb_PF2PF2ICMSR.Value;
   mbasen:=mbasen+Tb_PF2PF2BASEN.Value;
   micmsn:=micmsn+Tb_PF2PF2ICMSN.Value;
   mdesc:=mdesc+Tb_PF2PF2TOTDES.Value;
   if tb_PF2PF2LISTA.Value=1 then
      mtotpos:=mtotpos+(Tb_PF2PF2QTDP.Value*Tb_PF2PF2PU.value)-Tb_PF2PF2TOTDES.Value
   else if tb_PF2PF2LISTA.Value=2 then
      mtotneg:=mtotneg+(Tb_PF2PF2QTDP.Value*Tb_PF2PF2PU.value)-Tb_PF2PF2TOTDES.Value
   else
      mtotina:=mtotina+(Tb_PF2PF2QTDP.Value*Tb_PF2PF2PU.value)-Tb_PF2PF2TOTDES.Value;

   mitem:=mitem+1;
   Tb_PF2.Next;
   end;
DM1.Tb_PF1.Close;
DM1.Tb_PF1.Sql.Clear;
DM1.Tb_PF1.SQL.Add('Select * from CADPF1 where ');
if DM1.Qr_Tid.Locate('TINOME','CADPF',[]) then
   DM1.Tb_PF1.SQL.Add(' PF1CHAVE=0'+InttoStr(mchave)
                     +'order by PF1CHAVE')
else
   DM1.Tb_PF1.Sql.add(' PF1CODEMP=0'+IntTostr(codemp)
                     +' and PF1CHAVE=0'+IntTostr(mchave)
                     +' order by PF1CODEMP,PF1CHAVE');
DM1.Tb_PF1.Open;
DM1.Tb_PF1.Append;
DM1.Tb_PF1PF1CODEMP.Value :=codemp;
DM1.Tb_PF1PF1CHAVE.Value  :=mchave;
DM1.Tb_PF1PF1CODFOR.Value :=StrToInt(CODFOR.Text);
DM1.Tb_PF1PF1DATA.Value   :=StrToDate(MDATAP.Text);
DM1.Tb_PF1PF1OBS.Value    :=OBSERVACAO.Text;
DM1.Tb_PF1PF1TOTBRU.Value  :=mtotb;
DM1.Tb_PF1PF1TOTPOS.Value  :=mtotpos;
DM1.Tb_PF1PF1TOTNEG.Value  :=mtotneg;
DM1.Tb_PF1PF1TOTINA.Value  :=mtotina;
DM1.Tb_PF1PF1BASER.Value   :=mbaser;
DM1.Tb_PF1PF1ICMSR.Value   :=micmsr;
DM1.Tb_PF1PF1BASEN.Value   :=mbasen;
DM1.Tb_PF1PF1ICMSN.Value   :=micmsn;
DM1.Tb_PF1PF1TOTDES.Value  :=mdesc;
DM1.Tb_PF1PF1TOTMER.Value  :=mtotb;
if mstatus=1 then
   begin
   DM1.Tb_PF1PF1CODUSR.Value :=Tb_PF1PF1CODUSR.Value;
   DM1.Tb_PF1PF1HORDIG.Value:=Tb_PF1PF1HORDIG.Value;
   DM1.Tb_PF1PF1USRMOD.Value :=codusr;
   DM1.Tb_PF1PF1DTMOD.Value  :=date;
   DM1.Tb_PF1PF1HRMOD.Value  :=FormatDateTime('hh:nn:ss',time);
   DM1.Tb_PF1PF1STATUS.Value :=Tb_PF1PF1STATUS.Value;
   DM1.Tb_PF1PF1CODLDR.Value :=Tb_PF1PF1CODLDR.Value;
   if Tb_PF1PF1CODLDR.Value>0 then
      begin
      DM1.Tb_LDR.Close;
      DM1.Tb_LDR.SQL.Clear;
      DM1.Tb_LDR.SQL.Add('Select * From CADLDR where ');
      if DM1.Qr_tid.Locate('TINOME','CADLDR',[]) then
         DM1.Tb_LDR.Sql.add(' CODLDR=0'+Tb_PF1PF1CODLDR.AsString
                           +' order by CODLDR')
      else
         DM1.Tb_LDR.SQL.Add(' CODEMP=0'+IntTostr(codemp)
                           +' and CODLDR=0'+Tb_PF1PF1CODLDR.AsString
                           +' order by CODEMP,CODLDR');
      DM1.Tb_LDR.Open;
      if not DM1.Tb_LDR.Eof then
         begin
         DM1.Tb_LDR.Edit;
         DM1.Tb_LDRDATADP.Value:=DM1.Tb_PF1PF1DATA.Value;
         DM1.Tb_LDRDATAREF.Value:=DM1.Tb_PF1PF1DATA.Value;
         DM1.Tb_LDRVALORP.Value :=DM1.Tb_PF1PF1TOTBRU.Value-DM1.Tb_PF1PF1TOTDES.Value+DM1.Tb_PF1PF1ICMSR.Value;
         DM1.Tb_LDRTIPO.Value   :='FR';
         DM1.Tb_LDRCODIGO.Value :=DM1.Tb_PF1PF1CODFOR.Value;
         DM1.Tb_LDR.Post;
         end;
      end;
   end
else
   begin
   DM1.Tb_PF1PF1CODUSR.Value :=codusr;
   DM1.Tb_PF1PF1HORDIG.Value:=FormatDateTime('hh:nn:ss',time);
   DM1.Tb_PF1PF1STATUS.Value :=0;
   if DM4.Tb_Par01PCXAUTO.Value=0 then
      begin
      DM1.Par_LDR.Close;
      DM1.Par_LDR.SQL.Clear;
      DM1.Par_LDR.SQL.Add('Select * FROM PARLDR where ');
      if DM1.Qr_TID.Locate('TINOME','CADLDR',[]) then
         DM1.Par_LDR.SQl.add(' CDOC=''CADDAP0''')
      else
         DM1.Par_LDR.Sql.Add(' CODEMP=0'+IntToStr(Codemp)
                            +' and CDOC=''CADDAP0''');
      DM1.Par_LDR.Open;
      if not DM1.Par_LDR.Eof then
         begin
         DM1.Tb_LDR.Close;
         DM1.Tb_LDR.SQL.Clear;
         DM1.Tb_LDR.SQL.Add('Select * From CADLDR where CODEMP is null');
         DM1.Tb_LDR.Open;
         DM1.Tb_LDR.Append;
         DM1.Tb_LDRCODEMP.Value :=codemp;
         DM1.Tb_LDRDATADP.Value :=date;
         DM1.Tb_LDRDATAREF.Value:=date;
         DM1.Tb_LDRVALORP.Value :=DM1.Tb_PF1PF1TOTBRU.Value-DM1.Tb_PF1PF1TOTDES.Value+DM1.Tb_PF1PF1ICMSR.Value;
         DM1.Tb_CCu.Close;
         DM1.Tb_CCu.ParamByName('CODIGO').AsFloat :=DM1.Par_LDRCODCC.AsFloat;
         DM1.Tb_CCu.ParamByName('NOME').AsString  :='%';
         DM1.Tb_CCu.Open;
         DM1.Tb_LDRNATDC.Value   :=DM1.Tb_CCuCCNAT.Value;
         DM1.Tb_LDRCODCC.Value :=DM1.Par_LDRCODCC.Value;
         DM1.Tb_LDRCODDEP.Value:=DM1.Par_LDRCODDEP.Value;
         DM1.Tb_LDRDESCMV.Value:='PEDIDO DE COMPRA';
         DM1.Tb_LDRNUMDOC.Value:='PC-'+FormatFloat('0000000',mchave);
         DM1.Tb_LDRSTATUS.Value:=0;
         DM1.Tb_LDRORIGEM.Value:=03;
         DM1.Tb_LDRTIPO.Value  :='FR';
         DM1.Tb_LDRCODIGO.Value:=DM1.Tb_PF1PF1CODFOR.Value;
         DM1.Tb_LDR.Post;
         DM1.Tb_PF1PF1CODLDR.Value:=DM1.Tb_LDRCODLDR.Value;
         end;
      end
   else
      DM1.Tb_PF1PF1CODLDR.Value:=0;
   end;

DM1.Tb_PF1.Post;
CHAVE.Text:=Formatfloat('0000000',mchave);
TOTAL.Text:='';
QTDITEM.Text:='';
TOTITEM.Text:='';
ShowMessage('Chave do Pedido...: '+Formatfloat('000000',mchave));
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBLIMPAR.Click;
end;
procedure TFrm_Pfor.BBLIMPARClick(Sender: TObject);
begin
Tb_PF1.close;
Tb_PF1.SQL.Clear;
Tb_PF1.SQL.Add('Select * from CADPF1 where PF1CHAVE is null');
Tb_PF1.Open;
Tb_PF2.close;
Tb_PF2.SQL.Clear;
Tb_PF2.SQL.Add('Select * from CADPF2 where PF2CHAVE is null');
Tb_PF2.Open;
CODFOR.Text:='';
NOMFOR.Caption:='';
OBSERVACAO.Text:='';
TOTITEM.Text:='0';
QTDITEM.Text:='0';
TOTAL.Text  :='0';
ICMSR.Text  :='0';
VALDES.Text :='0';
TOTLIQ.Text :='0';
MDATAP.Text:=FormatDateTime('dd/mm/yyyy',date);
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;


end;

procedure TFrm_Pfor.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pfor.Tb_PF2CalcFields(DataSet: TDataSet);
begin
if Tb_PF2PF2CODPRO.Value>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQl.Clear;
   DM1.Query1.SQL.Add('Select PDNOME,PDPRECO1 from CADPRO where ');
   if DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      DM1.Query1.Sql.add(' PDCODPRO='+Tb_PF2PF2CODPRO.AsString
                        +' order by PDCODPRO')
   else
      DM1.Query1.SQl.add(' PDCODEMP=0'+IntToStr(codemp)
                     +' and PDCODPRO='+Tb_PF2PF2CODPRO.AsString
                     +' order by PDCODEMP,PDCODPRO');
   DM1.Query1.OPen;
   Tb_PF2nompro.Value:=DM1.Query1.Fields[0].AsString;
   Tb_PF2total.Value :=Tb_PF2PF2PU.Value*Tb_PF2PF2QTDP.Value;
   end;
end;

procedure TFrm_Pfor.DBGrid1ColExit(Sender: TObject);
begin
if DBGrid1.SelectedField=Tb_PF2PF2CODPRO then
   begin
   if Tb_PF2PF2CODPRO.Value<=0 then
      begin
      ShowMessage('Código do produto Invalido.');
      abort;
      end
   else
      begin
      flcadpro(1,0,0,Tb_Pf2PF2CODPRO.AsString);
      DM1.Tb_Pro.Open;
      if DM1.Tb_Pro.Eof then
         begin
         ShowMessage('Código de Produto Invalido.');
         abort;
         end
      else
         begin
         if Tb_PF2.State in [DsInsert, DsEdit] then
            begin
            Tb_PF2PF2PU.Value:=DM1.Tb_ProPDPRECO1.Value;
            Tb_PF2PF2SIT.Value:=DM1.Tb_ProPDSIT.Value;
            Tb_PF2PF2LISTA.Value:=DM1.Tb_ProPDLISTA.AsInteger;
            Tb_PF2PF2TAB.Value  :='A';
            Tb_PF2PF2ALIQ.Value :=DM1.Tb_ForFALIQ.Value;
            end;
         end;
      end;
   end;
if DBGrid1.SelectedField=Tb_PF2PF2PU then
   begin
   if Tb_Pf2pf2pu.Value>DM1.Tb_ProPDPRECO1.Value then
      begin
      AvisoSonoro(1);
      ShowMessage('Preço de Compra Maior que o Preço de Venda.');
      end;
   end;


end;

procedure TFrm_Pfor.DBGrid1Exit(Sender: TObject);
begin
if Tb_PF2.State in [DsInsert, DsEdit] then
   begin
   if (Tb_PF2PF2CODPRO.Value<=0) or (Tb_PF2PF2PU.Value<=0) then
      Tb_PF2.Cancel
   else
      Tb_PF2.Post;
   end;

end;

procedure TFrm_Pfor.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if DBGrid1.SelectedField=Tb_PF2PF2CODPRO then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) then
      begin
      Application.CreateForm(TFrm_Pro, Frm_Pro);
      Frm_Pro.Edit1.Text:=key;
      Frm_Pro.PC1.ActivePageIndex:=3;
      Frm_Pro.Edit1.SelStart:=1;
      Frm_Pro.Edit1.SelLength:=1;
      Frm_Pro.ShowModal;
      Frm_Pro.Free;
      key:=#0;
      Tb_PF2PF2CODPRO.Value:=dm1.Tb_ProPDCODPRO.Value;
      end;
   end
else if key in ['.',','] then
     begin
     if (DBGrid1.SelectedField=Tb_PF2PF2PU) or
        (DBGrid1.SelectedField=Tb_PF2PF2ALIQ) then
        key:=DecimalSeparator;
     end;


end;

procedure TFrm_Pfor.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) then
      begin
      Application.CreateForm(Tfrm_For, Frm_For);
      Frm_For.Edit1.Text:=key;
      Frm_For.BBnAtu.Click;
      Frm_For.Edit1.SelStart:=1;
      Frm_For.Edit1.SelLength:=1;
      Frm_For.PC1.ActivePageIndex:=1;
      Frm_For.ShowModal;
      CODFOR.Text:=FormatFloat('00000',DM1.Tb_ForFCODFOR.Value);
      Frm_For.Free;
      key:='0';
      end;

end;

procedure TFrm_Pfor.CODFORExit(Sender: TObject);
begin
DM1.Tb_For.Close;
DM1.Tb_For.Sql.clear;
DM1.Tb_For.Sql.add('Select * from CADFOR where ');
if DM1.Qr_Tid.Locate('TINOME','CADFOR',[]) then
   DM1.Tb_For.SQl.add(' FCODFOR=0'+Trim(CODFOR.Text)
                     +' order by FCODFOR')
else
   DM1.Tb_For.SQl.add(' FCODEMP=0'+IntTostr(codemp)
                     +' and FCODFOR=0'+Trim(CODFOR.Text)
                     +' order by FCODEMP,FCODFOR');
DM1.Tb_For.Open;
if DM1.Tb_For.eof then
   begin
   ShowMessage('Fornecedor Invalido.');
   CODFOR.SetFocus;
   end
else
   begin
   NOMFOR.Caption:=DM1.Tb_ForFRAZAO.Value;
   end;
end;


procedure TFrm_Pfor.Tb_PF2BeforePost(DataSet: TDataSet);
var
mbaser, mtotal, micmsc, micmsd, mdesc: Real;
msit: String;
begin
if Tb_PF2PF2CODPRO.Value<=0 then
   begin
   ShowMessage('Favor Digitar um Código de Produto');
   DBGrid1.SelectedField:=Tb_PF2PF2CODPRO;
   abort;
   end
else if Tb_PF2PF2QTDP.Value<=0 then
   begin
   ShowMessage('Favor Digitar uma Quantidade Valida.');
   DBGrid1.SelectedField:=Tb_PF2PF2QTDP;
   abort;
   end
else if Tb_PF2PF2PU.Value<=0 then
   begin
   ShowMessage('Favor Digitar um Preço Valido.');
   DBGrid1.SelectedField:=Tb_PF2PF2PU;
   abort;
   end;
mbaser:=0; mtotal:=0; micmsr:=0;
msit:=Formatfloat('000',StrToFloat('0'+Tb_PF2PF2SIT.Value));
mtotal:=Tb_PF2PF2QTDP.Value*Tb_PF2PF2PU.Value;
mdesc:=mtotal*Tb_PF2PF2DESC01.Value/100;
mdesc:=mdesc+(mtotal-mdesc)*Tb_PF2PF2DESC02.Value/100;
mdesc:=mdesc+(mtotal-mdesc)*Tb_PF2PF2DESC03.Value/100;
if (DM1.Tb_ForFCICMSR.Value=0) and (msit[2] in ['1','6']) then
   begin
   if Tb_PF2PF2LISTA.Value=1 then
      mbaser:=mtotal+(mtotal*DM1.Tb_ForFIVANEG.Value/100)
   else if Tb_PF2PF2LISTA.Value=0 then
      mbaser:=mtotal+(mtotal*DM1.Tb_ForFIVAPOS.Value/100)
   else
      mbaser:=mtotal+(mtotal*DM1.Tb_ForFIVAINA.Value/100);
   mbaser:=mbaser-(mbaser*DM1.Tb_ForFRBCIR.Value/100);
   mbaser:=arredonda(mbaser,mcasger);
   micmsd:=mbaser*DM1.Tb_ForFICMSD.Value/100;
   micmsc:=mtotal-mdesc;
   micmsc:=micmsc*DM1.Tb_ForFICMSC.Value/100;
   micmsr:=micmsr+(micmsd-micmsc);
   micmsr:=arredonda(micmsr,mcasger);
   end;
Tb_PF2PF2TOTDES.Value:=mdesc;
Tb_PF2PF2BASER.Value :=mbaser;
Tb_PF2PF2ICMSR.Value :=micmsr;
Tb_PF2PF2BASEN.Value :=0;
Tb_PF2PF2ICMSN.Value :=0;
if (DM1.Tb_ForFICMSN.Value=1) or not (msit[2] in ['1','6']) then
   begin
   mbaser:=mtotal-mdesc;
   mbaser:=mbaser-(mbaser*DM1.Tb_ForFRBICN.Value/100);
   mbaser:=arredonda(mbaser,mcasger);
   micmsc:=mbaser*Tb_PF2PF2ALIQ.Value/100;
   micmsc:=arredonda(micmsc,mcasger);
   Tb_PF2PF2BASEN.Value:=StrToFloat(FormatFloat(mcasas,mbaser));
   Tb_PF2PF2ICMSN.Value:=StrToFloat(FormatFloat(mcasas,micmsc));
   end;
end;

procedure TFrm_Pfor.CHAVEExit(Sender: TObject);
var
mtotal: real;
mqtdi, mtoti: Integer;
micmsr, mtdesc: Real;
begin
Tb_PF1.close;
Tb_PF1.SQL.Clear;
Tb_PF1.SQL.Add('Select * from CADPF1 where ');
if DM1.Qr_TID.Locate('TINOME','CADPF',[]) then
   Tb_PF1.Sql.add(' PF1CHAVE=0'+CHAVE.Text)
else
   Tb_PF1.SQL.Add(' PF1CODEMP=0'+IntToStr(codemp)
               +' and PF1CHAVE=0'+Trim(CHAVE.Text));
Tb_PF1.Open;
if Tb_PF1.Eof then
   begin
   ShowMessage('Pedido Não Encontrado!');
   CHAVE.SetFocus;
   abort;
   end
else
   begin
   Tb_PF2.close;
   Tb_PF2.SQL.Clear;
   Tb_PF2.SQL.Add('Select * from CADPF2 where ');
   if DM1.Qr_Tid.Locate('TINOME','CADPF',[]) then
      Tb_PF2.SQL.add(' PF2CHAVE=0'+CHAVE.Text
                    +' order by PF2CHAVE')
   else
      Tb_PF2.SQL.Add(' PF2CODEMP=0'+IntToStr(codemp)
                    +' and PF2CHAVE=0'+Trim(CHAVE.Text)
                    +' order by PF2CODEMP,PF2CHAVE');
   Tb_PF2.Open;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select FRAZAO from CADFOR where ');
   if DM1.Qr_tid.Locate('TINOME','CADFOR',[]) then
      DM1.Query1.SQL.Add(' FCODFOR=0'+Tb_PF1PF1CODFOR.AsString
                        +' order by FCODFOR ')
   else
      DM1.Query1.SQl.add(' FCODEMP=0'+IntToStr(codemp)
                     +' and FCODFOR=0'+Tb_PF1PF1CODFOR.AsString
                     +' order by FCODEMP,FCODFOR');
   DM1.Query1.Open;
   NOMFOr.Caption:=DM1.Query1.Fields[0].AsString;
   CHAVE.Text:=FormatFloat('000000',Tb_PF1PF1CHAVE.Value);
   MDATAP.Text:=FormatDateTime('dd/mm/yyyy',Tb_PF1PF1DATA.Value);
   CODFOR.Text:=FormatFloat('00000',Tb_PF1PF1CODFOR.Value);
   OBSERVACAO.Text  :=Tb_PF1PF1OBS.Value;
   mtotal:=0;
   mqtdi:=0;
   mtoti:=0;
   micmsr:=0;
   mtdesc:=0;
   Tb_PF2.First;
   While not Tb_PF2.Eof do
      begin
      mtotal:=mtotal+Tb_PF2PF2QTDP.Value*Tb_PF2PF2PU.Value;
      micmsr:=micmsr+Tb_PF2PF2ICMSR.Value;
      mtdesc:=mtdesc+Tb_PF2PF2TOTDES.Value;
      mqtdi:=mqtdi+1;
      mtoti:=mtoti+Tb_PF2PF2QTDP.AsInteger;
      Tb_PF2.Next;
      end;
   QTDITEM.Text:=Formatfloat('000',mqtdi);
   TOTAL.Text  :=FormatFloat('#####0.00',mtotal);
   TOTITEM.Text:=FormatFloat('000',mtoti);
   VALDES.Text :=FormatFloat('#####0.00',mtdesc);
   ICMSR.Text  :=FormatFloat('#####0.00',micmsr);
   TOTLIQ.Text :=FormatFloat('#####0.00',mtotal-mtdesc+micmsr);
   Frm_Pfor.Update;
   mstatus:=1;
   end;
DM1.Tb_For.Close;
DM1.Tb_For.SQl.clear;
DM1.Tb_For.SQl.Add('Select * from CADFOR where ');
if DM1.Qr_Tid.Locate('TINOME','CADFOR',[]) then
   DM1.Tb_For.SQL.add(' FCODFOR=0'+Tb_PF1PF1CODFOR.AsString
                     +' order by FCODFOR')
else
   DM1.Tb_For.Sql.add(' FCODEMP=0'+IntTostr(codemp)
                     +' and FCODFOR=0'+Tb_PF1PF1CODFOR.AsString
                     +' order by FCODEMP,FCODFOR');
DM1.Tb_For.Open;
NOMFOR.Caption:=DM1.Tb_ForFRAZAO.Value;

BBINCLUIR.Enabled  :=False;
BBALTERAR.Enabled  :=True;
BBLOCALIZAR.Enabled:=False;
BBEXCLUIR.Enabled  :=True;
BBGRAVAR.Enabled   :=False;
if Tb_PF1PF1STATUS.Value=0 then
   BBCONFIRMAR.Enabled:=True
else
   BBCONFIRMAR.Enabled:=False;
BBIMPRIMIR.Enabled :=True;
Panel2.Enabled     :=False;

end;
procedure TFrm_Pfor.BBCONFIRMARClick(Sender: TObject);
var
mbase: Real;
msit: String;
begin
mtotmer:=0; mtotal:=0; mtotpos:=0; mtotneg:=0; mtotina:=0;
mbasen:=0;  mbaserp:=0; micmsc:=0;  micmsd:=0;  micmsn:=0; micmsr:=0;
mbasern:=0; mbaseri:=0; mdesrp:=0; mdesrn:=0; mdesri:=0;
maliq:=0;   mfrete:=0; mipi:=0;    moutras:=0; mtotdes:=0; mseg:=0;
Tb_Pf2.First;
While not Tb_Pf2.Eof do
   begin
   flcadpro(1,0,0,Tb_Pf2PF2CODPRO.AsString);
   msit:=FormatFloat('000',StrToFloat('0'+Tb_PF2PF2SIT.Value));
   DM1.Tb_pro.Edit;
   DM1.Tb_ProPDSIT.Value:=msit;
   DM1.Tb_Pro.Post;
   mvalor:=Tb_PF2PF2PU.Value*Tb_PF2PF2QTDP.Value;
   mtotal:=mtotal+mvalor;
   mdesc:=Tb_PF2PF2TOTDES.Value;
   mtotmer:=mtotmer+mvalor;
   mtotdes:=mtotdes+Tb_PF2PF2TOTDES.Value;
   if Tb_PF2PF2LISTA.Value=0 then
      begin
      mtotpos:=mtotpos+(mvalor-mdesc);
      if msit[2] in ['1','6','7'] then
         begin
         mbaserp:=mbaserp+Tb_PF2PF2BASER.Value;
         mdesrp :=mdesrp+mdesc;
         end;
      end
   else if Tb_PF2PF2LISTA.Value=1 then
      begin
      mtotneg:=mtotneg+(mvalor-mdesc);
      if msit[2] in ['1','6','7'] then
         begin
         mbasern:=mbasern+Tb_PF2PF2BASER.Value;
         mdesrn :=mdesrn+mdesc;
         end;
      end
   else
      begin
      mtotina:=mtotina+(mvalor-mdesc);
      if msit[2] in ['1','6','7'] then
         begin
         mbaseri:=mbaseri+Tb_PF2PF2BASER.Value;
         mdesri :=mdesri+mdesc;
         end;
      end;
      mbase:=Tb_PF2PF2BASEN.Value;
      mbasen:=mbasen+mbase;
      micmsn:=micmsn+Tb_PF2PF2ICMSN.Value;
      micmsr:=micmsr+Tb_PF2PF2ICMSR.Value;
   Tb_PF2.Next;
   end;
mtotal:=mtotal+micmsr-mtotdes;
application.CreateForm(TFrm_PForC, Frm_PForC);
Frm_PforC.DATAE.Text:=mdatap.Text;
Frm_PforC.MBASEN.Text:=FormatFloat('#####0.00',mbasen);
Frm_PforC.ALIQ.Text  :=FormatFloat('##0.00',DM1.Tb_ForFALIQ.Value);
Frm_Pforc.ICMSN.Text :=FormatFloat('##0.00',micmsn);
Frm_Pforc.MBASER.Text:=FormatFloat('#####0.00',mbaserp+mbasern+mbaseri);
Frm_Pforc.MICMSR.Text:=FormatFloat('#####0.00',micmsr);
Frm_Pforc.TOTMER.Text:=FormatFloat('#####0.00',mtotmer);
Frm_Pforc.TOTNOT.Text:=FormatFloat('#####0.00',mtotal);
Frm_Pforc.OUTRAS.Text:=FormatFloat('#####0.00',moutras);
Frm_PforC.FRETE.Text :=FormatFloat('#####0.00',mfrete);
Frm_PforC.IPI.Text   :=FormatFloat('#####0.00',mipi);
Frm_Pforc.SEGURO.Text:=FormatFloat('#####0.00',mseg);
Frm_Pforc.TOTPOS.Text:=FormatFloat('#####0.00',mtotpos);
Frm_Pforc.TOTNEG.Text:=FormatFloat('#####0.00',mtotneg);
Frm_Pforc.TOTINA.Text:=FormatFloat('#####0.00',mtotina);
Frm_Pforc.DESC.Text  :=Formatfloat('#####0.00',mtotdes);
Frm_PForC.ShowModal;
Frm_PForC.Free;
end;

procedure TFrm_Pfor.BBALTERARClick(Sender: TObject);
begin
{Status do pedido 0-Somente digitado
                  1-Confirmado Entrada
}
if Tb_PF1PF1STATUS.Value=1 then
   begin
   ShowMessage('Este Pedido Jamais Poderá Ser Alterado. Ja'+#13
              +'Confirmado a Entrada');
   abort;
   end;
DM4.Tb_Par01.Close;
DM4.Tb_Par01.Close;
DM4.Tb_Par01.SQL.Clear;
DM4.Tb_Par01.SQL.Add('Select * from CADPAR where ');
if DM1.Qr_TID.Locate('TINOME','CADPAR',[]) then
   begin
   DM4.Tb_Par01.SQl.Add(' PCODSEQ=1 order by PCODSEQ');
   end
else
   begin
   DM4.Tb_Par01.SQL.Add(' PCODEMP=0'+IntTostr(codemp)
                     +' and PCODSEQ=1 order by PCODEMP,PCODSEQ');
   end;
DM4.Tb_Par01.Open;
Res1:='';
if Tb_PF1PF1STATUS.Value<2 then
   begin
   flcadpar02(0,0,'11');
   if DM4.Tb_Par02PA2PDSN.Value='S' then
      begin
      Res1:='';
      Application.CreateForm(TFrm_SI, Frm_SI);
      Frm_SI.Caption:='Senha Interna';
      Frm_SI.Label1.Caption:='Digite Senha para Autorizar a Alteração do Pedido'
                            +'de Compra!';
      Frm_SI.ShowModal;
      if Res1<>'' then
         begin
         if (Crip(Res1,DM4.Tb_Par02PA2CODIGO.AsInteger)=DM4.Tb_Par02PA2SENHA.Value)
            or (Crip(Res1,0)=DM4.Tb_Par02senhageral.Value) or
            smaster(res1) then
         else
            begin
            ShowMessage('Acesso Negado!');
            BBLIMPAR.Click;
            abort;
            end;
         end
      else
         begin
         ShowMessage('Acesso Negado!');
         BBLIMPAR.Click;
         abort;
         end;
      end;
   end
else
   begin
   flcadpar02(0,0,'11');
   if DM4.Tb_Par02PA2PDSN.Value='S' then
      begin
      Res1:='';
      Application.CreateForm(TFrm_SI, Frm_SI);
      Frm_SI.Caption:='Senha Interna';
      Frm_SI.Label1.Caption:='Digite Senha para Autorizar a Alteração do Pedido'
                            +'de Compra!';
      Frm_SI.ShowModal;
      if Res1<>'' then
         begin
         if (Crip(Res1,DM4.Tb_Par02PA2CODIGO.AsInteger)=DM4.Tb_Par02PA2SENHA.Value)
            or (Crip(Res1,0)=DM4.Tb_Par02senhageral.Value) or
            smaster(res1) then
         else
            begin
            ShowMessage('Acesso Negado!');
            BBLIMPAR.Click;
            abort;
            end;
         end
      else
         begin
         ShowMessage('Acesso Negado!');
         BBLIMPAR.Click;
         abort;
         end;
      end;
   end;
BBINCLUIR.Enabled  :=False;
BBALTERAR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=True;
BBIMPRIMIR.Enabled :=False;
BBCONFIRMAR.Enabled:=False;
Panel2.Enabled     :=True;
mstatus:=1;


end;

procedure TFrm_Pfor.OBSERVACAOExit(Sender: TObject);
begin
if DBGrid1.Focused then
   Tb_PF2.Insert;
end;

procedure TFrm_Pfor.BBIMPRIMIRClick(Sender: TObject);
var
mlin, mpag: Integer;
mtotal: Real;
begin
Tb_pf2.First;
fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mlin:=0;
mpag:=0;
mtotal:=0;
While not Tb_Pf2.Eof do
   begin
   if mlin=0 then
      begin
      mpag:=mpag+1;
      Frm_Impres.Rdprint1.Impf(01,01,DM1.Tb_EmpRAZAO.Value,mnormal);
      Frm_Impres.Rdprint1.Impf(01,64,'Pagina:   '+FormatFloat('0000',mpag),mnormal);
      Frm_Impres.Rdprint1.Impf(02,01,'Pedido de Compra Numero: '+FormatFloat('0000000',Tb_PF2PF2CHAVE.Value)+' Data: '+FormatDateTime('dd/mm/yyyy',Tb_PF1PF1DATA.Value),mnormal);
      Frm_Impres.Rdprint1.Impf(02,64,'Data: '+FormatDateTime('dd/mm/yyyy',date),mnormal);
      Frm_Impres.Rdprint1.Impf(03,01,'Fornecedor: '+Formatfloat('00000',Tb_PF1PF1CODFOR.Value)+'-'+DM1.Tb_ForFRAZAO.Value,mneg);
      Frm_Impres.Rdprint1.Impf(04,01,'Codigo        Quant Descricao                                Fornecedor                                 Pco.Unitario    Valor Total',mreduz);
{
1234567890123 12345 1234567890123456789012345678901234567890 1234567890123456789012345678901234567890 zzz.zzz.zz9,99 zzz.zzz.zz9,99
Codigo        Quant Descricao                                Laboratorio                                Pco.Unitario    Valor Total
1234567890123 12345 1234567890123456789012345678901234567890 1234567890123456789012345678901234567890 zzz.zzz.zz9,99 zzz.zzz.zz9,99
 }
      mlin:=4;
      end;
   mlin:=mlin+1;
   Frm_Impres.Rdprint1.Impf(mlin,01,Formatfloat('0000000000000',Tb_PF2PF2CODPRO.Value)
                           +' '+insere(Tb_PF2PF2QTDP.AsString,' ',5)
                           +' '+insere2(Tb_PF2nompro.Value,' ',40)
                           +' '+insere2(Tb_PF2nomfor.Value,' ',40)+' '
                           +insere(Formatfloat('###,##0.00',Tb_PF2PF2PU.Value),' ',14)+' '
                           +insere(FormatFloat('###,##0.00',Tb_PF2total.Value),' ',14),mreduz);
   mtotal:=mtotal+Tb_PF2total.Value;
   Tb_Pf2.Next;
   if Tb_pf2.Eof then
      begin
      mlin:=mlin+1;
      Frm_Impres.Rdprint1.Impf(mlin,01,insere2('- Total','.',118)
                              +insere(FormatFloat('###,##0.00',mtotal),' ',14),mreduz);
      mlin:=mlin+1;
      Frm_Impres.Rdprint1.Impf(mlin,01,'Fim'+insere2('-','-',77),mnormal);
      if Frm_Impres.Rdprint1.Setup then Frm_Impres.Rdprint1.Fechar;
      break;
      end;
   if mlin>58 then
      begin
      mlin:=mlin+1;
      Frm_Impres.RDprint1.ImpF(mlin,01,'Continua...'+insere2('-','-',68),mnormal);
      Frm_Impres.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
end;
{
1234567890123 12345 1234567890123456789012345678901234567890zzz.zz9,99zzz.zz9,99
- Total...............................................................
Codigo        Quant Descricao                               Pco.Unitar Vlr Total
1234567890123 12345 1234567890123456789012345678901234567890zzz.zz9,99zzz.zz9,99

}

end.

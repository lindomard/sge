unit S_Receb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1,db,dbtables, ComCtrls, ExtCtrls, Grids,
  DBGrids, Mask, DBCtrls,func,lerarq,S_ConMsg,S_DM4,S_PonVen,func_ecf,S_Fpgto,func2,
  S_Reecupom;

type
  TFrm_Receb = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    bbSair: TBitBtn;
    bbEmitirCupom: TBitBtn;
    bbCancelar: TBitBtn;
    bbAtualizar: TBitBtn;
    HeaderControl1: THeaderControl;
    Timer1: TTimer;
    Tb_Ped: TQuery;
    DBGrid1: TDBGrid;
    Src_Ped: TDataSource;
    Tb_PedP1CHAVE: TFloatField;
    Tb_PedP1DATAP: TDateTimeField;
    Tb_PedP1CODCLI: TFloatField;
    Tb_PedP1TOTALL: TFloatField;
    Tb_PedP1CODVEN: TFloatField;
    Tb_PedP1TIPO: TFloatField;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Tb_PedP1TOTALB: TFloatField;
    Tb_PedP1TOTDES: TFloatField;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Tb_Pednomcli: TStringField;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Tb_Pednomtip: TStringField;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Tb_PedP1CODEMP: TFloatField;
    bbConfigurar: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Qr_Ped02: TQuery;
    Qr_Ped02P2CODEMP: TFloatField;
    Qr_Ped02P2CHAVE: TFloatField;
    Qr_Ped02P2ORDEM: TFloatField;
    Qr_Ped02P2ITEM: TFloatField;
    Qr_Ped02P2CODPRO: TFloatField;
    Qr_Ped02P2QTD: TFloatField;
    Qr_Ped02P2LOTE: TStringField;
    Qr_Ped02P2DTVCTO: TDateTimeField;
    Qr_Ped02P2DESC1: TFloatField;
    Qr_Ped02P2DESC2: TFloatField;
    Qr_Ped02P2VALDES: TFloatField;
    Qr_Ped02P2PRECO: TFloatField;
    Qr_Ped02P2SIT: TStringField;
    Qr_Ped02P2CODFAB: TFloatField;
    Qr_Ped02P2BASEN: TFloatField;
    Qr_Ped02P2ICMSN: TFloatField;
    Qr_Ped02P2REPAS: TFloatField;
    Qr_Ped02P2BASER: TFloatField;
    Qr_Ped02P2ICMSR: TFloatField;
    Qr_Ped02P2LISTA: TFloatField;
    Qr_Ped02P2STATUS: TFloatField;
    Qr_Ped02P2PCOTAB: TFloatField;
    Qr_Ped02P2UCPR: TFloatField;
    Qr_Ped02P2TOTDES: TFloatField;
    Qr_Ped02P2TABELA: TStringField;
    Qr_Ped02P2ALIPI: TFloatField;
    Qr_Ped02P2VALIPI: TFloatField;
    Qr_Ped02P2BCINR: TFloatField;
    Qr_Ped02P2ICMSNR: TFloatField;
    Qr_Ped02P2ISENTAS: TFloatField;
    Qr_Ped02P2ALIQ: TFloatField;
    Qr_Ped02P2ALIQNR: TFloatField;
    Qr_Ped02P2PCOMIS: TFloatField;
    Qr_Ped02P2VCOMIS: TFloatField;
    Qr_Ped02P2DESCM: TFloatField;
    Qr_Ped02P2CFO: TFloatField;
    Qr_Ped02P2SEMCOM: TFloatField;
    Qr_Ped02P2TOTLIQ: TFloatField;
    Qr_Ped02P2PDESCF: TFloatField;
    Qr_Ped02P2VDESCF: TFloatField;
    Qr_Ped02P2DESCRAT: TFloatField;
    Qr_Ped02P2CODANT: TFloatField;
    bbReemitir: TBitBtn;
    bbVProd: TBitBtn;
    Tb_PedP1LOTSEQ: TFloatField;
    Tb_PedOBS01: TStringField;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_PedCalcFields(DataSet: TDataSet);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbConfigurarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbEmitirCupomClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbReemitirClick(Sender: TObject);
    procedure bbVProdClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function frecebAtuaMens(ptipo: Integer):Boolean;

  public
    { Public declarations }
  end;
function fRecebFatPed(pTipo: Integer): Boolean;
function fRecebFormapag(pTipo: Integer): Boolean;

var
  Frm_Receb: TFrm_Receb;
  mtobs: Integer=0;
  mini: Integer=0;
  mtamg: Integer=0;
  mtam: Integer=0;
  mobs: String='';
  pmens: String='';
  RChavePed: Real;


implementation

uses S_VerPro, func_excecoes;

{$R *.dfm}

procedure TFrm_Receb.Timer1Timer(Sender: TObject);
begin

HeaderControl1.Sections[3].Text:='Horas: '+FormatDateTime('hh:nn:ss',Time);
HeaderControl1.Sections[2].Text:='Data: '+FormatDateTime('dd:mm:yyyy',date);
if mtobs=0 then
   begin
   mini:=mini+1;
   if mini>mtamg then
      mini:=mtamg-mini;
   if (mini+mtam)>mtamg then
      label3.Caption:=copy((mobs+' -- '+mobs),mini,mtam)
   else
      label3.Caption:=copy(mobs,mini,mtam);
   label3.Update;
   end
else if mtobs=1 then
   begin
   if label3.Visible then
      label3.Visible:=False
   else
      label3.Visible:=True;
   end;
if not (Tb_Ped.Active) then
   bbAtualizar.Click
else if (Tb_Ped.RecordCount<1) and (Frm_Receb.Active) then
   bbatualizar.Click;   

end;

procedure TFrm_Receb.FormCreate(Sender: TObject);
begin
if DM1.Tb_PargerPTIPOTEF.Value=2 then
   begin
   if not DirectoryExists('C:\SYFRENTE') then
      CreateDir('C:\SYFRENTE');
   if not DirectoryExists('C:\SYFRENTE\TFS') then
      CreateDir('C:\SYFRENTE\TFS');
   if not DirectoryExists('C:\SYFRENTE\TFR') then
      CreateDir('C:\SYFRENTE\TFR');
   end;

Tb_PedP1TOTALL.DisplayFormat:=mcasas;
Tb_PedP1TOTALB.DisplayFormat:=mcasas;
Tb_PedP1TOTDES.DisplayFormat:=mcasas;

HeaderControl1.Sections[0].Text:='Terminal ECF - '+Formatfloat('0000',DM1.Tb_ECFCFCAIXA.Value);
if (codcar=1111) and (codusr=1111) then
   HeaderControl1.Sections[1].Text:='Operador.: MASTER(Programador)'
else
   begin
   flcadusr(1,0,Inttostr(codusr));
   HeaderControl1.Sections[1].Text:='Operador(a): '+FormatFloat('0000',DM4.Tb_UsrCODUSR.Value)+'-'+DM4.Tb_UsrNOMUSR.Value;
   end;
mtamg:=length(mobs);
mtam:=40;
fCarregaDadosCaixa('CADDAR0');

end;

procedure TFrm_Receb.Tb_PedCalcFields(DataSet: TDataSet);
begin
if Tb_PedP1TIPO.Value=0 then
   Tb_Pednomtip.Value:='Orçamento'
else if Tb_PedP1TIPO.Value=2 then
   Tb_Pednomtip.Value:='Simples Remessa'
else if Tb_PedP1TIPO.Value=3 then
   Tb_Pednomtip.Value:='Dev. a Fornecedor'
else if Tb_PedP1TIPO.Value=4 then
   Tb_Pednomtip.Value:='Remessa p/Troca'
else if Tb_PedP1TIPO.Value=5 then
   Tb_Pednomtip.Value:='Transferencia'
else if Tb_PedP1TIPO.Value=6 then
   Tb_Pednomtip.Value:='Remessa p/Beneficiamento'
else if Tb_PedP1TIPO.Value=7 then
   Tb_Pednomtip.Value:='Remessa p/Venda'
else if Tb_PedP1TIPO.Value=8 then
   Tb_Pednomtip.Value:='Dev. Cliente(Entrada)'
else if Tb_PedP1TIPO.Value=9 then
   Tb_Pednomtip.Value:='Emprestimo de Mercadorias'
else
   Tb_Pednomtip.Value:='Venda Normal';
if Tb_PedP1CODCLI.Value<3 then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+Tb_PedP1CODEMP.AsString+' and ')
                     +' CFCHAVEP=0'+Tb_PedP1CHAVE.AsString);
   DM1.Tb_CSF.Open;
   if DM1.Tb_CSF.Eof then
      begin
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Tb_PedP1CODCLI.AsString) then
         Tb_Pednomcli.Value:=DM1.Query1.Fields[0].Asstring
      else
         Tb_Pednomcli.Value:='CONSUMIDOR FINAL';
      end
   else
      Tb_Pednomcli.Value:=DM1.Tb_CSFCFRAZAO.Value;
   end
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Tb_PedP1CODCLI.AsString) then
      Tb_Pednomcli.Value:=DM1.Query1.Fields[0].Asstring
   else
      Tb_Pednomcli.Value:='***Não Cadastrado****';
   end;

end;

procedure TFrm_Receb.bbAtualizarClick(Sender: TObject);
begin
Tb_Ped.Close;
Tb_Ped.SQL.Clear;
Tb_Ped.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO, '
              +' max(P1OBS1) as OBS01,'
              +' sum(P1TOTALB) AS P1TOTALB,sum(P1TOTDES) as P1TOTDES, '
              +' sum(P1TOTALL) as P1TOTALL '
              +' from CADP01 '
              +' WHERE P1CUPOM=0 and P1EMIDOC<>1 and P1STATUS<>9 and p1tipo<2'
              +iif(DM1.Qr_Tid.locate('TINOME','CADPED',[]),'',' and P1CODEMP=0'+IntToStr(codemp))
              +iif(DM1.Tb_PargerPDIASORCAT.Value>0,' and P1DATAP>='+chr(39)+FormatDateTime(fdt, pdatasis-(DM1.Tb_PargerPDIASORCAT.Value-1))+chr(39),'')
              
              +' group by P1CODEMP,P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO '
              +' order by P1DATAP desc, P1CHAVE desc ');
Tb_Ped.Open;

end;

procedure TFrm_Receb.bbConfigurarClick(Sender: TObject);
begin
Application.CreateForm(TFrm_ConMsg, Frm_ConMsg);
Frm_ConMsg.ShowModal;
Frm_ConMsg.Free;
frecebAtuaMens(0);
end;

function TFrm_Receb.frecebAtuaMens(ptipo: Integer):Boolean;
begin
DM1.Tb_ParFon.Close;
DM1.Tb_ParFon.SQL.Clear;
DM1.Tb_Parfon.SQL.Add('Select * from PARFON where '
                     +iif(DM1.Qr_Tid.locate('TINOME','PARFON',[]),'',' PFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PFNOMTER='+chr(39)+PNomTer+chr(39)
                     +' and PFNOMFOR='+chr(39)+'PONVEN'+chr(39)
                     +' and PFNOMCOM='+chr(39)+'PARAM'+chr(39));
DM1.Tb_ParFon.Open;
DM1.Tb_ParFon.Open;
if not DM1.Tb_ParFon.Eof then
   begin
   mobs :=DM1.Tb_ParFonPFMENS.Value;
   mtobs:=DM1.Tb_ParFonPFMTIPO.AsInteger;
   end
else
   begin
   mobs:='';
   mtobs:=3;
   end;
mtamg  :=Length(mobs);

label3.Visible:=True;
Label3.Caption:=mobs;
if mtobs=3 then
   label3.Visible:=False;
if mtobs=0 then
   Label3.Alignment:=taLeftJustify
else
   Label3.Alignment:=taCenter;

result:=True;
end;
procedure TFrm_Receb.FormActivate(Sender: TObject);
begin
frecebAtuaMens(0);
end;

procedure TFrm_Receb.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Receb.bbEmitirCupomClick(Sender: TObject);
begin
if Tb_PedP1CHAVE.IsNull then
   exit;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select P1SITPED from  CADP01 '
                  +' where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Tb_PedP1CODEMP.AsString+' and ')
                  +' P1LOTSEQ=0'+Tb_PedP1LOTSEQ.AsString
                  +' and P1CHAVE=0'+Tb_PedP1CHAVE.AsString);
try
   DM1.Query2.Open;
except
   ex_erroSql(02,6216,'Frm_Ped','CADP01');
   end;
if DM1.Query2.Fields[0].AsInteger=1 then
   begin
   mcinst:='Este Pedido pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA PEDIDO '+#13
          +'e desbloqueia o mesmo';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;

pmens:='Confirma a Emissão do Cupom no Valor de '+FormatFloat('#,##0.00',Tb_PedP1TOTALL.Value)+#13
      +'do Cliente.: '+Trim(Tb_Pednomcli.Value)+'?';
if fmensagem(pchar(pmens),0,['1','2'],2)<>mrYes then
   exit;
if Tb_PedP1TIPO.Value=0 then
   fRecebFatPed(0);
if not flcadcli(1,0,Tb_PedP1CODCLI.AsString) then
   begin
   MessageDlg('Erro ao Ler o Cadastro de Cliente!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_Fpgto, Frm_Fpgto);
fRecebFormapag(0);
Frm_Fpgto.Free;
bbAtualizar.Click;
end;
function fRecebFatPed(pTipo: Integer): Boolean;
var
mcodant, mcodnov: Real;
mdtv: String;
begin
if (ptipo=1) or (ptipo=2) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADCSF set CFCODEMP=0'+IntToStr(codemp)
                     +' where CFCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                     +' and CFLOTSEQ=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                     +' and CFCHAVEP=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,345,'Frm_Receb','CADP02');
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP02 set P2CODEMP=0'+IntToStr(codemp)
                     +' where P2CODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                     +' and P2LOTSEQ=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                     +' and P2CHAVE=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,345,'Frm_Receb','CADP02');
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP01 set P1CODEMP=0'+IntToStr(codemp)
                     +' where P1CODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                     +' and P1LOTSEQ=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                     +' and P1CHAVE=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,359,'Frm_Receb','CADP01');
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP01V set P1VCODEMP=0'+IntToStr(codemp)
                     +' where P1VCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                     +' and P1VLOTSEQ=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                     +' and P1VCHAVE=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,372,'Frm_Receb','CADP01V');
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADP02D set P2DCODEMP=0'+IntToStr(codemp)
                     +' where P2DCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                     +' and P2DLOTSEQ=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                     +' and P2DCHAVE=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,386,'Frm_Receb','CADP02D');
      end;


   end;
if ptipo<>2 then
   begin
   DM1.Tb_Ped01.Close;
   DM1.Tb_Ped01.Sql.Clear;
   DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+FloatToStr(codemp)
                    +' and P1STATUS<>9 '
                    +' and P1LOTSEQ=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                    +' and P1CHAVE=0'+Frm_Receb.Tb_PedP1CHAVE.AsString
                    +' order by P1CODEMP,P1CHAVE,P1ORDEM');
   DM1.Tb_Ped01.Open;
   While not DM1.Tb_Ped01.Eof do
      begin
      DM1.Tb_Ped02.Close;
      DM1.Tb_Ped02.SQl.Clear;
      DM1.Tb_Ped02.Sql.add('Select * from CADP02 where '
                       +' P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                       +' and P2LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                       +' and P2CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                       +' and P2ORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString
                       +' order by P2CHAVE,P2ORDEM,P2ITEM');
      DM1.Tb_Ped02.Open;
      While not DM1.Tb_Ped02.Eof do
         begin
         mcodant:=0;
         mcodnov:=DM1.Tb_Ped02P2CODPRO.Value;
         if flqr1('PDNOME,PDPROALT','PD','CADPRO','N','PDCODPRO',DM1.Tb_Ped02P2CODPRO.AsString) then
            begin
            if DM1.Query1.Fields[1].AsFloat>0 then
               begin
               mcodant:=DM1.Tb_Ped02P2CODPRO.Value;
               mcodnov:=DM1.Query1.Fields[1].AsFloat;
               end;
            end;
         if mcodant<>0 then
            begin
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('Update CADP02 set P2CODPRO=0'+FloatToStr(mcodnov)
                              +', P2CODANT=0'+FloatToStr(mcodant)
                              +' where P2CODEMP=0'+DM1.Tb_Ped02P2CODEMP.AsString
                              +' and P2LOTSEQ=0'+DM1.Tb_Ped02P2LOTSEQ.AsString
                              +' and P2CHAVE=0'+DM1.Tb_Ped02P2CHAVE.AsString
                              +' and P2ORDEM=0'+DM1.Tb_Ped02P2ORDEM.AsString
                              +' and P2CODPRO=0'+DM1.Tb_Ped02P2CODPRO.AsString
                              +' and P2ITEM=0'+DM1.Tb_Ped02P2ITEM.AsString);
            Try
               DM1.Query2.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(02,436,'Frm_Receb','CADP02');
               end;
            end;
         if Valint(copy(mpseg,4,2))>0  then  // se tem controle pelo CADLGC
            begin
            if (DM1.Tb_Ped02P2DTVCTO.IsNull) or (DM1.Tb_Ped02P2DTVCTO.Value<=pdatanula) then
               mdtv:=''
            else
               mdtv:=FormatDateTime(fdt, DM1.Tb_Ped02P2DTVCTO.Value);
            flbailgc(0,0,1,0,FloatToStr(mcodnov),DM1.Tb_Ped02P2LOTE.Value,
                             mdtv,'','',DM1.Tb_Ped02P2QTD.Value);
            flcadpro(1,0,codemp,FloatToStr(mcodnov));
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_Ped02P2LOTE.Value,'S_Receb',1,DM1.Tb_ProPDSALDO.AsFloat,DM1.Tb_Ped02P2QTD.Value,' Chave de Pedido - '+DM1.Tb_Ped02P2CHAVE.AsString);
            end
         else
            begin
            flcadpro(1,0,codemp,FloatToStr(mcodnov));
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,'','S_Receb',1,DM1.Tb_ProPDSALDO.AsFloat,DM1.Tb_Ped02P2QTD.Value,' Chave de Pedido - '+DM1.Tb_Ped02P2CHAVE.AsString);
            end;
         flbaiest(0,0,1,0,FloatToStr(mcodnov),'frm_receb_494_',DM1.Tb_Ped02P2QTD.Value);
         DM1.Tb_Ped02.Next;
         end;
      DM1.Tb_Ped01.Edit;
      DM1.Tb_Ped01P1TIPO.Value:=1;
      DM1.Tb_Ped01.Post;
      DM1.Tb_Ped01.Next;
      end;
   end;
Result:=True;
end;

procedure TFrm_Receb.bbCancelarClick(Sender: TObject);
var
mdtv: String;
begin

iretorno:=fpvecf_Bema(0,9,0,0,0,0,0,0);
if iretorno<>1 then
   begin
   MessageDlg('Erro ao Buscar o numero do cupom: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
   exit;
   end;

if mncupom<1 then
   mncupom:=0;
if not flcadp01(2,0,ls_numped,InttoStr(codecf),FloatTostr(mncupom)) then
   begin
   MessageDlg('Cupom ja Cancelado Anteriormente ou houve erro ao localizar!'+#13
             +'Numero do Cupom: '+FloatToStr(mncupom) ,mtWarning,[mbOk],0);
   exit;
   end;
if flcadns(3,DM1.Tb_Ped01P1CODEMP.AsInteger,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString) then
   begin
   if DM1.Tb_NsNSSITCUP.Value=9 then
      begin
      MessageDlg('Este Cupom ja foi Cancelado Anteriormente!',mtWarning,[mbOk],0);
      exit;
      end;
   end;

flcadp01(9,0,dm1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsString,pvazio);

if DM1.Tb_Ped01P1CODCLI.Value<3 then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CFCHAVEP=0'+DM1.Tb_Ped01P1CODEMP.AsString);
   DM1.Tb_CSF.Open;
   if DM1.Tb_CSF.Eof then
      pmens:='CONSUMIDOR FINAL'
   else
      pmens:=DM1.Tb_CSFCFRAZAO.Value;
   end
else
   pmens:=DM1.Tb_Ped01nomcli.Value;
pmens:='Confirma a exclusão do Cupom Fiscal Número: '+Formatfloat('000000', mncupom)+' Valor: '+FormatFloat('#,##0.00',DM1.Tb_Ped01P1TOTALL.Value)+#13
      +'do Cliente.: '+Trim(pmens)+'?';
if fmensagem(pchar(pmens),0,['1','2'],2)<>mrYes then
   exit;


While not DM1.Tb_Ped01.Eof do
   begin
   if flcaddar(9,DM1.Tb_Ped01P1CODEMP.AsInteger,0,codecf,0,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString,DM1.Tb_Ped01P1LOTSEQ.AsString,DM1.Tb_Ped01P1DATDOC.AsDatetime,'') then
      begin
      While not DM1.Tb_Dar.Eof do
         begin
         if DM1.Tb_DarCRLOTE.Value>0 then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete From FPCRDUP where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+InttoStr(codemp)+' and ')
                              +' FPLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,529,'Frm_Receb','FPCRDUP');
              end;
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.Sql.Add('Select FPCODLDR From FPCR where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+InttoStr(codemp)+' and ')
                              +' FPLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
            DM1.Query2.Open;
            While not DM1.Query2.Eof do
               begin
               DM1.Query1.Close;
               DM1.Query1.SQL.Clear;
               DM1.Query1.SQL.Add('Delete From CADLDR where '
                                 +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP='+IntToStr(codemp)+' and ')
                                 +' LOTSEQ=0'+IntTosTr(ls_codldr)+' and '
                                 +' CODLDR=0'+DM1.Query2.Fields[0].AsString);
               Try
                  DM1.Query1.ExecSQL;
                  fdm1StartCommit;
               except
                  ex_erroSql(01,436,'Frm_Receb','CADLDR');
                  end;
               DM1.Query2.Next;
               end;
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete From FPCR where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADDAR',[]),'',' FPCODEMP=0'+InttoStr(codemp)+' and ')
                              +' FPTIPO=2 and FPLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,560,'Frm_Receb','FPCR');
               end;
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete From CADCHQ where '
                              +iif(DM1.Qr_Tid.Locate('TINOME','CADCHQ',[]),'',' CHCODEMP=0'+IntToStr(codemp)+' and ')
                              +' CHLOTE=0'+DM1.Tb_DarCRLOTE.AsString);
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,571,'Frm_Receb','CADCHQ');
               end;
            end
         else if DM1.Tb_DarCRCODLDR.Value>0 then
            begin
            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Delete From CADLDR where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADLDR',[]),'',' CODEMP='+IntToStr(codemp)+' and ')
                              +' LOTSEQ=0'+IntTosTr(ls_codldr)+' and '
                              +' CODLDR=0'+DM1.Tb_Ped01P1CODLDR.AsString);
            Try
               DM1.Query1.ExecSQL;
               fdm1StartCommit;
            except
               ex_erroSql(01,584,'Frm_Receb','CADLDR');
               end;
            end;
         DM1.Tb_Dar.Edit;
         DM1.Tb_DarCRSTATUS.Value:=9;
         DM1.Tb_DarCRVALPAG.Value:=0;
         DM1.Tb_DarCRLOTE.Value  :=0;
         DM1.Tb_DarCRDTPAG.Value :=pdatanula;
         DM1.Tb_DarCRDTBX.Value  :=pdatanula;
         DM1.Tb_Dar.Post;
         DM1.Tb_Dar.Next;
         end;
      end;
   flcadp02(0,0,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsString,pvazio);
   While not DM1.Tb_Ped02.Eof do
      begin
      if Valint(copy(mpseg,4,2))>0  then  // controle do CADLGC
         begin
         if DM1.Tb_Ped02P2DTVCTO.IsNull then
            mdtv:=''
         else
            mdtv:=FormatDateTime(fdt, DM1.Tb_Ped02P2DTVCTO.Value);
         flbailgc(0,0,0,0,DM1.Tb_Ped02P2CODPRO.AsString,DM1.Tb_Ped02P2LOTE.Value,mdtv,'','',DM1.Tb_Ped02P2QTD.Value);
         flcadpro(1,0,codemp,DM1.Tb_Ped02P2CODPRO.AsString);
         CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_Ped02P2LOTE.Value,'S_Receb',0,DM1.Tb_ProPDSALDO.AsFloat,DM1.Tb_Ped02P2QTD.Value,' Chave de Pedido - '+DM1.Tb_Ped02P2CHAVE.AsString);
         end
      else
        begin
        flcadpro(1,0,codemp,DM1.Tb_Ped02P2CODPRO.AsString);
        CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,'','S_Receb',0,DM1.Tb_ProPDSALDO.AsFloat,DM1.Tb_Ped02P2QTD.Value,' Chave de Pedido - '+DM1.Tb_Ped02P2CHAVE.AsString);
        end;

      flbaiest(0,0,0,0,DM1.Tb_Ped02P2CODPRO.AsString,'frm_receb_666_',DM1.Tb_Ped02P2QTD.Value);
      DM1.Tb_Ped02.Next;
      end;
   if flcadns(3,DM1.Tb_Ped01P1CODEMP.AsInteger,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsString,DM1.Tb_Ped01P1ORDEM.AsString) then
      begin
      DM1.Tb_Ns.Edit;
      DM1.Tb_NsNSSITCUP.Value:=9;
      DM1.Tb_NsNSSTATUS.Value:=9;
      DM1.Tb_Ns.Post;
      end;
   DM1.Tb_Ped01.Next;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Update CADP01 set P1STATUS=9, P1USRMOD=0'+IntToStr(codusr)
                  +',P1HRMOD='+chr(39)+FormatDateTime(fdt, pdatasis)+chr(39)
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTosTr(codemp)+' and ')
                  +' P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                  +' and P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,436,'Frm_Receb','CADLDR');
   end;

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Update CADP02 set P2STATUS=9 '
                   +'  where P2CODEMP=0'+DM4.Qr_Ped01P1CODEMP.AsString
                   +' and P2LOTSEQ=0'+DM4.Qr_Ped01P1LOTSEQ.AsString
                   +' and P2CHAVE=0'+DM4.Qr_Ped01P1CHAVE.AsString);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,11391,'Frm_Ped','CADP01');
   end;

if mlocorigem=1 then
   begin
   iRetorno := Bematech_FI_CancelaCupom();
   end;
MessageDlg('Cupom Cancelado!',mtInformation,[mbOk],0);
end;

procedure TFrm_Receb.bbReemitirClick(Sender: TObject);
begin
Application.CreateForm(TFrm_ReeCupom, Frm_Reecupom);
Tb_Ped.Close;
Tb_Ped.SQL.Clear;
Tb_Ped.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1NUMCF,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO, '
              +' max(P1OBS1) as OBS01,'
              +' sum(P1TOTALB) AS P1TOTALB,sum(P1TOTDES) as P1TOTDES, '
              +' sum(P1TOTALL) as P1TOTALL '
              +' from CADP01 '
              +' WHERE P1CUPOM=1  and P1STATUS<>9 and p1tipo<2 and P1CODEMP=0'
              +iif(codemp>100,IntToStr(codemp-100),InttoStr(100+codemp))
              +iif(DM1.Tb_PargerPDIASORCAT.Value>0,' and P1DATAP>='+chr(39)+FormatDateTime(fdt, pdatasis-(DM1.Tb_PargerPDIASORCAT.Value-1))+chr(39),'')
              +' group by P1CODEMP,P1LOTSEQ,P1CHAVE,P1NUMCF,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO '
              +' order by P1DATAP desc, P1CHAVE desc ');
Tb_Ped.Open;
Frm_Reecupom.ShowModal;
Frm_ReeCupom.Free;


bbAtualizar.Click;
end;

procedure TFrm_Receb.bbVProdClick(Sender: TObject);
begin
if not flcadp01(9,0,Tb_PedP1LOTSEQ.AsInteger,Tb_PedP1CHAVE.AsString,pvazio) then
   begin
   MessageDlg('Erro ao ler o arquivo de Pedido!',mtWarning,[mbOk],0);
   exit;
   end;
// LER PRODUTO

la_empresas :=' P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');


DM1.Tb_Ped02.Close;
DM1.Tb_Ped02.Sql.clear;
DM1.Tb_Ped02.Sql.add('Select PDNOME,CADP02.* from  '
                   +' CADP02'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P2STATUS<>99'
               +' and P2LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
               +' and P2CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
               +' order by PDNOME,P2CHAVE,P2ORDEM,P2ITEM');
DM1.Tb_Ped02.open;

if (TFrm_Receb(FindGlobalComponent('FRM_VERPRO'))=nil)  then
  Application.createform(TFrm_VerPro,Frm_VerPro);

if DM1.Tb_Ped01P1CODCLI.Value<3 then
   begin
   DM1.Tb_CSF.Close;
   DM1.Tb_CSF.SQL.Clear;
   DM1.Tb_CSF.SQl.Add('Select * from CADCSF where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CFCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+' and ')
                     +' CFCHAVEP=0'+DM1.Tb_Ped01P1CHAVE.AsString);
   DM1.Tb_CSF.Open;
   if DM1.Tb_CSF.Eof then
      begin
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Tb_Ped01P1CODCLI.AsString) then
         Frm_VerPro.NOMECLI.Text:=DM1.Query1.Fields[0].Asstring
      else
         Frm_VerPro.NOMECLI.Text:='CONSUMIDOR FINAL';
      end
   else
      Frm_VerPro.NOMECLI.Text:=DM1.Tb_CSFCFRAZAO.Value;
   end
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Tb_PedP1CODCLI.AsString) then
      Frm_VerPro.NOMECLI.Text:=DM1.Query1.Fields[0].Asstring
   else
      Frm_VerPro.NOMECLI.Text:='***Não Cadastrado****';
   end;

if Frm_VerPro.WindowState=WsMinimized then
   Frm_VerPro.WindowState:=WsNormal
else
   Frm_VerPro.Show;

end;
function fRecebFormapag(pTipo: Integer): Boolean;
var
codempant: Integer;
mabriuimp: Boolean;
mResposta: Integer;
pSerieNF,pModNF: string;

begin
Frm_Receb.bbEmitirCupom.Enabled:=False;
Frm_Receb.bbReemitir.Enabled   :=False;
Frm_Receb.bbEmitirCupom.Enabled:=False;
Frm_Receb.bbCancelar.Enabled   :=False;
Frm_Receb.bbAtualizar.Enabled  :=False;
Frm_Receb.bbVProd.Enabled      :=False;
Frm_Receb.bbConfigurar.Enabled :=False;
Frm_Receb.bbSair.Enabled       :=False;

mabriuimp:=False;
codempant:=codemp;
codemp:=Frm_Receb.Tb_PedP1CODEMP.AsInteger;
if not flcadp01(9,0,Frm_Receb.Tb_PedP1LOTSEQ.AsInteger,Frm_Receb.Tb_PedP1CHAVE.AsString,pvazio) then
   begin
   MessageDlg('Erro ao ler o arquivo de Pedido!',mtWarning,[mbOk],0);
   codemp:=codempant;
   result:=False;
   exit;
   end;

if ptipo=0 then
   begin
   if not (ppconsemp) and (DM1.Tb_PargerPTIPOTEF.Value<>2) then
      begin
      iretorno:=fpvecf_Bema(0,9,0,0,0,0,0,0);
      if iretorno<>1 then
         begin
         MessageDlg('Erro ao buscar o numero do cupom: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
         codemp:=codempant;
         result:=False;
         end;
      mncupom:=mncupom+1;
      end
   else
      mncupom:=Frm_Receb.Tb_PedP1CHAVE.AsInteger;
   end
else
   begin
   pSerieNF:='';
   pModNF  :='';
   mncupom:=fBuscarNUMNF(Frm_Receb.Tb_PedP1CODEMP.AsInteger,'SERIE'+IntToStr(0+1),pSerieNF,pModNF,0);
   end;


if not flcadp01(9,0,Frm_Receb.Tb_PedP1LOTSEQ.AsInteger,Frm_Receb.Tb_PedP1CHAVE.AsString,pvazio) then
   begin
   MessageDlg('Erro ao ler Pedido',mtWarning,[mbOk],0);
   exit;
   end;

Frm_Receb.Qr_Ped02.Close;
Frm_Receb.Qr_Ped02.SQL.Clear;
Frm_Receb.Qr_Ped02.SQL.add('Select * From CADP02 where '
                +' P2CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+' and '
                +' P2LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                +' and P2CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString
                +' order by P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM ');
Frm_Receb.Qr_Ped02.Open;
if ptipo=0 then
   begin
   if not (ppconsemp) or (DM1.Tb_PargerPTIPOTEF.Value=2) then
      begin
      if DM1.Tb_PargerPTIPOTEF.Value<>2 then
         begin
         iRetorno:=fverestimp(0);
         if iRetorno=9 then
            begin
            MessageDlg('Erro na impressora fiscal solicite um técnico!',mtError,[mbOk],0);
            codemp:=codempant;
            result:=False;
            exit;
            end
         else if iRetorno>0 then
            begin
            mcinst:='o Papel Esta no Fim, quer Continuar mesmo assim?';
            if fmensagem(pchar(mcinst),0,['1','2'],2)<>MrYes then
               begin
               codemp:=codempant;
               result:=false;
               exit;
               end;
            end;
         end;
      if DM1.Tb_PargerPTIPOTEF.Value=2 then
         begin
         cf_nomarq:=Formatfloat('000000',Frm_Receb.Tb_PedP1CHAVE.Value)+'01';
         AssignFile(cf_fcupenv,cf_pastacf+cf_nomarq+'.$$$');
         Rewrite(cf_fcupenv);
         cf_numitem:=0;
         cf_seqforma:=0;
         end;
      iretorno:=fpvecf_Bema(0,0,0,0,0,0,0,0);
      if iretorno<>1 then
         begin
         MessageDlg('Erro ao abrir o cupom: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
         codemp:=codempant;
         result:=false;
         exit;
         end;
      end
{      iretorno:=fpvecf_Bema(0,0,0,0,0,0,0,0);
      if iretorno<>1 then
         begin
         MessageDlg('Erro ao abrir o cupom: '+IntToStr(iRetorno),mtWarning,[mbOk],0);
         codemp:=codempant;
         result:=False;
         exit;
         end;
}
   else
      begin
         AssignFile(F,'C:\CUPOM.TXT');
         mabriuimp:=True;
      Try
         ReWrite(F)
      except
         Messagedlg('Erro ao tentar abrir a Impressora',mtError,[mbOK],0);
         end;
      end;

   While not Frm_Receb.Qr_Ped02.Eof do
      begin
      flcadpro(1,0,0,Frm_Receb.Qr_Ped02P2CODPRO.AsString);
//      iretorno:=fpvecf_Bema(0,1,Frm_Receb.Qr_Ped02P2QTD.Value,Frm_Receb.Qr_Ped02P2TOTDES.Value,Frm_Receb.Qr_Ped02P2PRECO.Value,0,0,0);
      iretorno:=fpvecf_Bema(0,1,Frm_Receb.Qr_Ped02P2QTD.Value,0,Frm_Receb.Qr_Ped02P2PRECO.Value,0,0,0);
      if iretorno<>1 then
         MessageDlg('Erro ao Vender o Item: '+DM1.Tb_ProPDCODPRO.AsString+' '+IntToStr(iRetorno),mtWarning,[mbOk],0);
      Frm_Receb.Qr_Ped02.Next;
      end;
// retido lindomar
{   if ppconsemp then
      begin
      iretorno:=fpvecf_Bema(0,6,0,mdesped,mvlracre,DM1.Tb_Ped01P1TOTALL.Value,DM1.Tb_Ped01P1VALFRE.Value,0);
      end;
}   end;
// INICIODASNOVAS

//if not (ppconsemp) and  (DM1.Tb_PargerPTIPOTEF.Value=2) then
cf_numitem:=0;
if (DM1.Tb_PargerPTIPOTEF.Value=2) and (codemp<100) then
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('UPDATE CADP01 set P1CUPOM=2, P1EMIDOC=1, P1CODECF=0'+IntToStr(codecf)+', '
                     +' P1DATACF='+chr(39)+FormatDateTime(fdt, date)+CHR(39)+','
                     +' P1DATDOC=:DATDOC,'
                     +' P1NUMCF=0'+IntToStr(mncupom)+' where '
                     +' P1CODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+' and '
                     +' P1LOTSEQ=0'+DM1.Tb_Ped01P1LOTSEQ.AsString+' and '
                     +' P1CHAVE=0'+DM1.Tb_Ped01P1CHAVE.AsString);
   DM1.Query1.ParambyName('DATDOC').AsDate := NOW;
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,436,'Frm_Receb','CADP01');
      end;
   if not flcadp01(9,0,Frm_Receb.Tb_PedP1LOTSEQ.AsInteger,Frm_Receb.Tb_PedP1CHAVE.AsString,pvazio) then
      begin
      MessageDlg('Erro ao ler Pedido',mtWarning,[mbOk],0);
      exit;
      end;
   Fgravarnf(1);
   end;

Application.CreateForm(TFrm_Fpgto, Frm_Fpgto);
mlocorigem:=ptipo+1;
Frm_Fpgto.VALDIN.Text :='0';
Frm_Fpgto.VALCHAV.Text:='0';
Frm_Fpgto.VALCHPD.Text:='0';
Frm_Fpgto.VALDEB.Text :='0';
Frm_Fpgto.VALVIS.Text :='0';
Frm_Fpgto.VALMAS.Text :='0';
Frm_Fpgto.VALAME.Text :='0';
Frm_Fpgto.TOTDES.Text :='0';
Frm_Fpgto.TOTACRE.Text :='0';
Frm_Fpgto.bbSair.Visible    :=False;
Frm_Fpgto.Left              :=531;
Frm_Fpgto.bbCancelar.Visible:=True;
mchaveped  :=DM1.Tb_Ped01P1CHAVE.Asinteger;
Frm_Fpgto.TOTCUP.Text:=Insere(FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value),' ',mspaco);
Frm_Fpgto.TOTLIQ.Text:=Frm_Fpgto.TOTCUP.Text;
Frm_Fpgto.TOTRES.Text:=Frm_Fpgto.TOTCUP.Text;
DM1.Qr_FP.Close;
DM1.Qr_FP.SQL.Clear;
DM1.Qr_FP.SQL.Add('Select * from CADFP order by FPCODIGO');
DM1.Qr_FP.Open;
mconcluiu:=False;
ffpgtoCarregaCli(0);
Frm_Fpgto.ShowModal;
While not mconcluiu do
   begin
   MessageDlg('É necessário Informar a Forma de Pagamento!',mtWarning,[mbOk],0);
   Frm_Fpgto.ShowModal;
   end;
Frm_Receb.bbEmitirCupom.Enabled:=true;
Frm_Receb.bbReemitir.Enabled   :=true;
Frm_Receb.bbEmitirCupom.Enabled:=true;
Frm_Receb.bbCancelar.Enabled   :=true;
Frm_Receb.bbAtualizar.Enabled  :=true;
Frm_Receb.bbVProd.Enabled      :=true;
Frm_Receb.bbConfigurar.Enabled :=true;
Frm_Receb.bbSair.Enabled       :=true;

codemp:=codempant;
mEmitiuCupom:=True;
if mabriuimp then
   begin
   CloseFile(f);
   mabriuimp:=False;
   end;
result:=True;
end;

procedure TFrm_Receb.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
emp_ant: Integer;
begin
if (key=115) and not (Tb_PedP1CHAVE.IsNull) then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select P1SITPED from  CADP01 '
                  +' where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+Tb_PedP1CODEMP.AsString+' and ')
                  +'  P1LOTSEQ=0'+Tb_PedP1LOTSEQ.AsString
                  +' and P1CHAVE=0'+Tb_PedP1CHAVE.AsString);
   try
      DM1.Query2.Open;
   except
      ex_erroSql(02,6216,'Frm_Ped','CADP01');
      end;
   if DM1.Query2.Fields[0].AsInteger=1 then
      begin
      mcinst:='Este Pedido pode Estar Sendo Alterado em Outra Estação,'+#13
             +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA PEDIDO '+#13
             +'e desbloqueia o mesmo';
      verteclado(0);
      MessageDlg(mcinst,mtWarning,[mbOk],0);
      exit;
      end;
   RChavePed:=Tb_PedP1CHAVE.Value;
   emp_ant:=codemp;
   if codemp<100 then
      codemp:=codemp+100
   else
      codemp:=codemp-100;

   if Tb_PedP1TIPO.Value=0 then
      fRecebFatPed(1)
   else
      fRecebFatPed(2);
   Tb_Ped.Close;
   Tb_Ped.SQL.Clear;
   Tb_Ped.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO, '
                 +' max(P1OBS1) as OBS01,'
                 +' sum(P1TOTALB) AS P1TOTALB,sum(P1TOTDES) as P1TOTDES, '
                 +' sum(P1TOTALL) as P1TOTALL '
                 +' from CADP01 '
                 +' WHERE P1CUPOM=0 and P1STATUS<>9 and p1tipo<2'
                 +' and P1CODEMP=0'+IntToStr(codemp)
                 +' and P1LOTSEQ=0'+IntToStr(ls_numped)
                 +' and P1CHAVE=0'+FloatToStr(RChavePed)
                 +' group by P1CODEMP,P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO '
                 +' order by P1DATAP desc, P1CHAVE desc ');
   Tb_Ped.Open;
   fRecebFormapag(1);
   codemp:=emp_ant;
   bbAtualizar.Click;
   end;

end;

procedure TFrm_Receb.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if mEmitiuCupom then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADECF set CFDTULTMOV='+chr(39)+FormatDateTime(fdt, date)+chr(39)
                     +' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',' CFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' CFCAIXA=0'+IntToStr(codecf));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,934,'Frm_Receb','CADECF');
      end;
   end;
mEmitiuCupom:=False;
end;

procedure TFrm_Receb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

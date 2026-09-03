unit S_ReeCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  Buttons,S_VerPro,lerarq;

type
  TFrm_ReeCupom = class(TForm)
    GroupBox2: TGroupBox;
    bbSair: TBitBtn;
    bbEmitirCupom: TBitBtn;
    bbReemitir: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    procedure bbSairClick(Sender: TObject);
    procedure bbReemitirClick(Sender: TObject);
    procedure bbEmitirCupomClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ReeCupom: TFrm_ReeCupom;

implementation

uses S_Fpgto, S_Receb, func_excecoes;

{$R *.dfm}

procedure TFrm_ReeCupom.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ReeCupom.bbReemitirClick(Sender: TObject);
begin
if not flcadp01(9,Frm_Receb.Tb_PedP1CODEMP.AsInteger,Frm_Receb.Tb_PedP1LOTSEQ.AsInteger,Frm_Receb.Tb_PedP1CHAVE.AsString,pvazio) then
   begin
   MessageDlg('Erro ao ler o arquivo de Pedido!',mtWarning,[mbOk],0);
   exit;
   end;
flcadP02(0,Frm_Receb.Tb_PedP1CODEMP.AsInteger,Frm_Receb.Tb_PedP1LOTSEQ.AsInteger,Frm_Receb.Tb_PedP1CHAVE.AsString,pvazio);
Application.CreateForm(TFrm_VerPro, Frm_VerPro);

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
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Frm_Receb.Tb_PedP1CODCLI.AsString) then
      Frm_VerPro.NOMECLI.Text:=DM1.Query1.Fields[0].Asstring
   else
      Frm_VerPro.NOMECLI.Text:='***Não Cadastrado****';
   end;

Frm_VerPro.ShowModal;
Frm_VerPro.Free;

end;

procedure TFrm_ReeCupom.bbEmitirCupomClick(Sender: TObject);
var
pmens: String;
begin
pmens:='Confirma a Emissão do Cupom no Valor de '+FormatFloat('#,##0.00',Frm_Receb.Tb_PedP1TOTALL.Value)+#13
      +'do Cliente.: '+Trim(Frm_Receb.Tb_Pednomcli.Value)+'?';
if fmensagem(pchar(pmens),0,['1','2'],2)<>mrYes then
   exit;
Application.CreateForm(TFrm_Fpgto, Frm_Fpgto);
mlocorigem:=2;
Frm_Fpgto.VALDIN.Text :='0';
Frm_Fpgto.VALCHAV.Text:='0';
Frm_Fpgto.VALCHPD.Text:='0';
Frm_Fpgto.VALDEB.Text :='0';
Frm_Fpgto.VALVIS.Text :='0';
Frm_Fpgto.VALMAS.Text :='0';
Frm_Fpgto.VALAME.Text :='0';
Frm_Fpgto.TOTDES.Text :='0';
Frm_Fpgto.TOTACRE.Text :='0';

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select CRNUMERO,CRDESD,CRDUP,CRCODLDR,CRCODEMP,CRLOTSEQ_FC '
                  +' from CADDAR where '
                  +' CRCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                  +' and CRLOTSEQ_CP=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                  +' and CRNPED=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
DM1.Query1.Open;
While not DM1.Query1.Eof do
   begin
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.Add('Delete from CADLDR where '
                     +' CODEMP=0'+DM1.Query1.Fields[4].AsString
                     +' and LOTSEQ=0'+DM1.Query1.Fields[5].AsString
                     +' and CODLDR=0'+DM1.Query1.Fields[3].AsString);
   Try
      DM1.Query3.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(11,4241,'Frm_ReeCupom','CADLDR');
      end;


   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select FPLOTE,FPJUROS,FPDESC,FPCODEMP from FPCRDUP where '
                     +' FPCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                     +' and FPNUMERO=0'+DM1.Query1.Fields[0].AsString
                     +' and FPDESD='+chr(39)+DM1.Query1.Fields[1].AsString+chr(39)
                     +' and FPTIPO=0');
   DM1.Query2.Open;
   Frm_Fpgto.TOTDES.Text :=Formatfloat(mcasas, ValFloat(Frm_Fpgto.TOTDES.Text) +DM1.Query2.Fields[2].AsFloat);
   Frm_Fpgto.TOTACRE.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.TOTACRE.Text)+DM1.Query2.Fields[1].AsFloat);
   While not DM1.Query2.Eof do
      begin
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Select FPTIPO,FPVALOR from FPCR where '
                        +' FPCODEMP=0'+DM1.Query2.Fields[3].AsString
                        +' and FPLOTE=0'+DM1.Query2.Fields[0].AsString);
      DM1.Query3.Open;
      While not DM1.Query3.Eof do
         begin
         if DM1.Query3.Fields[0].AsInteger=0 then
            Frm_Fpgto.VALDIN.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALDIN.Text)+DM1.Query3.Fields[1].AsFloat)
         else if DM1.Query3.Fields[0].AsInteger=1 then
            Frm_Fpgto.VALCHAV.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCHAV.Text)+DM1.Query3.Fields[1].AsFloat)
         else if DM1.Query3.Fields[0].AsInteger=2 then
            Frm_Fpgto.VALCHPD.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALCHPD.Text)+DM1.Query3.Fields[1].AsFloat)
         else if DM1.Query3.Fields[0].AsInteger=3 then
            Frm_Fpgto.VALDEB.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALDEB.Text)+DM1.Query3.Fields[1].AsFloat)
         else if DM1.Query3.Fields[0].AsInteger=4 then
            Frm_Fpgto.VALVIS.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALVIS.Text)+DM1.Query3.Fields[1].AsFloat)
         else if DM1.Query3.Fields[0].AsInteger=5 then
            Frm_Fpgto.VALMAS.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALMAS.Text)+DM1.Query3.Fields[1].AsFloat)
         else if DM1.Query3.Fields[0].AsInteger=6 then
            Frm_Fpgto.VALAME.Text:=Formatfloat(mcasas, ValFloat(Frm_Fpgto.VALAME.Text)+DM1.Query3.Fields[1].AsFloat);
         DM1.Query3.Next;
         end;
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Delete from FPCR where '
                        +' FPCODEMP=0'+DM1.Query2.Fields[3].AsString
                        +' and FPLOTE=0'+DM1.Query2.Fields[0].AsString);
      Try
         DM1.Query3.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(11,190,'Frm_ReeCupom','FPCR');
         end;
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Delete from CADCHQ where '
                        +' CHCODEMP=0'+DM1.Query2.Fields[3].AsString
                        +' and CHLOTE=0'+DM1.Query2.Fields[0].AsString);
      Try
         DM1.Query3.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(11,4241,'Frm_ReeCupom','CADLDR');
         end;
      DM1.Query2.Next;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Delete from FPCRDUP where '
                     +' FPCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                     +' and FPNUMERO=0'+DM1.Query1.Fields[0].AsString
                     +' and FPDESD='+chr(39)+DM1.Query1.Fields[1].AsString+chr(39)
                     +' and FPTIPO=0');
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,215,'Frm_ReeCupom','FPCRDUP');
      end;
   DM1.Query1.Next;
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADDAR where '
                  +' CRCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                  +' and CRLOTSEQ_CP=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                  +' and CRNPED=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,4241,'Frm_ReeCupom','CADDAR');
   end;

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Delete from CADNS where '
                  +' NSCODEMP=0'+Frm_Receb.Tb_PedP1CODEMP.AsString
                  +' and NSLOTSEQ_CP=0'+Frm_Receb.Tb_PedP1LOTSEQ.AsString
                  +' and NSCHAVEP=0'+Frm_Receb.Tb_PedP1CHAVE.AsString);
Try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(02,243,'Frm_ReeCupom','CADNS');
   end;


// LINDOMAR
rccodemp:=Frm_Receb.Tb_PedP1CODEMP.Value;
rcchave :=Frm_Receb.Tb_PedP1CHAVE.Value;
FReecupomAjustaEstoque(0,Frm_Receb.Tb_PedP1CODEMP.Value,Frm_Receb.Tb_PedP1LOTSEQ.Value,Frm_Receb.Tb_PedP1CHAVE.Value );



Frm_Receb.Tb_Ped.Close;
Frm_Receb.Tb_Ped.SQL.Clear;
Frm_Receb.Tb_Ped.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1NUMCF,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO, '
              +' max(P1OBS1) as OBS01,'
              +' sum(P1TOTALB) AS P1TOTALB,sum(P1TOTDES) as P1TOTDES, '
              +' sum(P1TOTALL) as P1TOTALL '
              +' from CADP01 '
              +' WHERE P1STATUS<>9 and P1CODEMP=0'+IntToStr(codemp)
//              +iif(rccodemp>100,FloatToStr(rccodemp-100),FloattoStr(100+rccodemp))
              +' and P1LOTSEQ=0'+IntTostr(ls_numped)
              +' and P1CHAVE=0'+FloatToStr(rcchave)
              +' group by P1CODEMP,P1LOTSEQ,P1CHAVE,P1NUMCF,P1DATAP,P1CODCLI,P1CODVEN,P1TIPO ');
Frm_Receb.Tb_Ped.Open;
if not flcadcli(1,0,Frm_Receb.Tb_PedP1CODCLI.AsString) then
   begin
   MessageDlg('Erro ao Ler o Cadastro de Cliente!',mtWarning,[mbOk],0);
   exit;
   end;
if Frm_Receb.Tb_PedP1TIPO.Value=0 then
   fRecebFatPed(0);
fRecebFormapag(0);
Frm_Fpgto.Free;
close;

end;


procedure TFrm_ReeCupom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

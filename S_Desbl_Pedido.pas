unit S_Desbl_Pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func,S_DM1,db,dbtables,lerarq, ComCtrls;

type
  TFrm_Desbl_Pedido = class(TForm)
    Label1: TLabel;
    bbDesbloquear: TBitBtn;
    bbSair: TBitBtn;
    PC1: TPageControl;
    ts_pedVda: TTabSheet;
    tsPedCpr: TTabSheet;
    Label2: TLabel;
    CHAVEPED: TEdit;
    Label3: TLabel;
    DATAP: TEdit;
    Label4: TLabel;
    VALOR: TEdit;
    Label5: TLabel;
    CLIENTE: TEdit;
    Label6: TLabel;
    PFOR_CHAVEPED: TEdit;
    Label7: TLabel;
    PFOR_DATAP: TEdit;
    Label8: TLabel;
    PFOR_VALOR: TEdit;
    Label9: TLabel;
    PFOR_RAZAO: TEdit;
    tsConhecimento: TTabSheet;
    Label10: TLabel;
    CODCON: TEdit;
    Label11: TLabel;
    DATCON: TEdit;
    VALCON: TEdit;
    Label12: TLabel;
    NOMTRA: TEdit;
    Label13: TLabel;
    procedure bbSairClick(Sender: TObject);
    procedure CHAVEPEDExit(Sender: TObject);
    procedure CHAVEPEDEnter(Sender: TObject);
    procedure bbDesbloquearClick(Sender: TObject);
    procedure PFOR_CHAVEPEDEnter(Sender: TObject);
    procedure PFOR_CHAVEPEDExit(Sender: TObject);
    procedure CODCONEnter(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Desbl_Pedido: TFrm_Desbl_Pedido;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_Desbl_Pedido.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Desbl_Pedido.CHAVEPEDExit(Sender: TObject);
begin
CHAVEPED.Text:=fdeixanum(CHAVEPED.Text);
fdeixanum(CHAVEPED.Text);
if ValInt(CHAVEPED.Text)=0 then
   CHAVEPED.Text:=''
else
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP,sum(P1TOTALL) as P1TOTALL from '
                     +' CADP01 where (P1CODEMP=0'+IntTostr(codemp)+' or P1CODEMP=0'
                     +iif(codemp>100,InttoStr(codemp-100),IntTostr(codemp+100))+')'
                     +' and P1LOTSEQ>=0'
                     +' and P1CHAVE=0'+Trim(CHAVEPED.Text)
                     +' group by P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP ');
   DM1.Query5.Open;
   if not DM1.Query5.Eof then
      begin
      DATAP.Text  :=FormatDateTime(fdt2, DM1.Query5.fieldbyName('P1DATAP').AsDateTime);
      VALOR.Text  :=FormatFloat(mcasas, DM1.Query5.fieldbyName('P1TOTALL').AsFloat);
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Query5.FieldbyName('P1CODCLI').AsString) then
         CLIENTE.Text:=DM1.Query1.fields[0].AsString;
      end
   else
      DM1.Query5.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

   end;

end;

procedure TFrm_Desbl_Pedido.CHAVEPEDEnter(Sender: TObject);
begin
CHAVEPED.Text:='';
DATAP.Text   :='/  /';
VALOR.Text   :='';
CLIENTE.Text :='';


end;

procedure TFrm_Desbl_Pedido.bbDesbloquearClick(Sender: TObject);
begin
if PC1.ActivePage=Ts_PedVda then
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP,sum(P1TOTALL) as P1TOTALL from '
                  +' CADP01 where (P1CODEMP=0'+IntTostr(codemp)+' or P1CODEMP=0'
                  +iif(codemp>100,InttoStr(codemp-100),IntTostr(codemp+100))+')'
                  +' and P1LOTSEQ>=0'
                  +' and P1CHAVE=0'+Trim(CHAVEPED.Text)
                  +' group by P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP ');
   DM1.Query5.Open;
   if DM1.Query5.Eof then
      begin
//      DM1.Query5.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      MessageDlg('Chave não Encontrada!',mtWarning,[mbOk],0);
      CHAVEPED.SetFocus;
      exit;
      end
   else
      DM1.Query5.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADP01 set P1SITPED=0 '
                  +' where P1LOTSEQ=0'+DM1.Query5.FieldByName('P1LOTSEQ').AsString
                  +' and P1CHAVE=0'+DM1.Query5.FieldByName('P1CHAVE').AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,89,'Frm_Desbl_Pedido','CADP01');
      end;
   CHAVEPED.SetFocus;
   end
else if PC1.ActivePage=tsPedCpr then
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select PF1LOTSEQ,PF1CHAVE,PF1CODFOR,PF1DATA,sum(PF1TOTLIQ) as PF1TOTLIQ from '
                     +' CADPF1 where (PF1CODEMP=0'+IntTostr(codemp)+' or PF1CODEMP=0'
                     +iif(codemp>100,InttoStr(codemp-100),IntTostr(codemp+100))+')'
                     +' and PF1LOTSEQ=0'
                     +' and PF1CHAVE=0'+Trim(PFOR_CHAVEPED.Text)
                     +' group by PF1LOTSEQ,PF1CHAVE,PF1CODFOR,PF1DATA ');
   DM1.Query5.Open;
   if DM1.Query5.Eof then
      begin
      MessageDlg('Chave não Encontrada!',mtWarning,[mbOk],0);
      PFOR_CHAVEPED.SetFocus;
      exit;
      end;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Update CADPF1 set PF1SITPED=0 '
                  +' where PF1LOTSEQ=0'+DM1.Query5.FieldByName('PF1LOTSEQ').AsString
                  +' and PF1CHAVE=0'+DM1.Query5.FieldByName('PF1CHAVE').AsString);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,155,'Frm_Desbl_Pedido','CADPF1');
      end;
   PFOR_CHAVEPED.SetFocus;
   end
else
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select C01CODEMP, ');
   DM1.Query5.SQL.Add('    C01CODCON,');
   DM1.Query5.SQL.Add('       C01DATCON,');
   DM1.Query5.SQL.Add('       C01VLRTOT,');
   DM1.Query5.SQL.Add('       C01CODTRA,');
   DM1.Query5.SQL.Add('       TRRAZTRA');
   DM1.Query5.SQL.Add('       from CADCON01,CADTRA where ');
   DM1.Query5.SQL.Add(iif(DM1.Qr_Tid.Locate('TINOME','CADTRA',[]),'',' TRCODEMP(+)=C01CODEMP and '));
   DM1.Query5.SQL.Add(' TRCODTRA(+)=C01CODTRA ');
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query5.SQL.Add(' and C01CODEMP>=0');
   DM1.Query5.SQL.Add(' and C01CODCON=0'+CODCON.Text);
   DM1.Query5.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   DM1.Query5.Open;
   if not DM1.Query5.Eof then
      begin
      DATCON.Text  :=FormatDateTime(fdt2, DM1.Query5.fieldbyName('C01DATCON').AsDateTime);
      VALCON.Text  :=FormatFloat(mcasas, DM1.Query5.fieldbyName('C01VLRTOT').AsFloat);
      NOMTRA.Text  :=DM1.Query5.fieldbyName('TRRAZTRA').AsString;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('UPDATE CADCON01 set C01ESTADO=0'
                         +' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' C01CODEMP>=0 and ')
                         +' C01CODCON=0'+CODCON.Text);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;
   CODCON.SetFocus;
   end;





end;

procedure TFrm_Desbl_Pedido.PFOR_CHAVEPEDEnter(Sender: TObject);
begin
PFOR_CHAVEPED.Text:='';
PFOR_DATAP.Text   :='/  /';
PFOR_VALOR.Text   :='';
PFOR_RAZAO.Text :='';

end;

procedure TFrm_Desbl_Pedido.PFOR_CHAVEPEDExit(Sender: TObject);
begin
fdeixanum(PFOR_CHAVEPED.Text);
if ValInt(PFOR_CHAVEPED.Text)=0 then
   PFOR_CHAVEPED.Text:=''
else
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select PF1LOTSEQ,PF1CHAVE,PF1CODFOR,PF1DATA,sum(PF1TOTLIQ) as PF1TOTLIQ from '
                     +' CADPF1 where (PF1CODEMP=0'+IntTostr(codemp)+' or PF1CODEMP=0'
                     +iif(codemp>100,InttoStr(codemp-100),IntTostr(codemp+100))+')'
                     +' and PF1LOTSEQ=0'
                     +' and PF1CHAVE=0'+Trim(PFOR_CHAVEPED.Text)
                     +' group by PF1LOTSEQ,PF1CHAVE,PF1CODFOR,PF1DATA ');
   DM1.Query5.Open;
   if not DM1.Query5.Eof then
      begin
      DATAP.Text  :=FormatDateTime(fdt2, DM1.Query5.fieldbyName('PF1DATA').AsDateTime);
      VALOR.Text  :=FormatFloat(mcasas, DM1.Query5.fieldbyName('PF1TOTLIQ').AsFloat);
      if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Query5.FieldbyName('PF1CODFOR').AsString) then
         PFOR_RAZAO.Text:=DM1.Query1.fields[0].AsString;
      end;
   end;


end;

procedure TFrm_Desbl_Pedido.CODCONEnter(Sender: TObject);
begin
CODCON.Text:='';
DATCON.Text   :='/  /';
VALCON.Text   :='';
NOMTRA.Text :='';

end;

procedure TFrm_Desbl_Pedido.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum(CODCON.Text);
if ValInt(CODCON.Text)=0 then
   CODCON.Text:=''
else
   begin
   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select C01CODEMP, ');
   DM1.Query5.SQL.Add('    C01CODCON,');
   DM1.Query5.SQL.Add('       C01DATCON,');
   DM1.Query5.SQL.Add('       C01VLRTOT,');
   DM1.Query5.SQL.Add('       C01CODTRA,');
   DM1.Query5.SQL.Add('       TRRAZTRA');
   DM1.Query5.SQL.Add('       from CADCON01,CADTRA where ');
   DM1.Query5.SQL.Add(iif(DM1.Qr_Tid.Locate('TINOME','CADTRA',[]),'',' TRCODEMP(+)=C01CODEMP and '));
   DM1.Query5.SQL.Add(' TRCODTRA(+)=C01CODTRA ');
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      DM1.Query5.SQL.Add(' and C01CODEMP>=0');
   DM1.Query5.SQL.Add(' and C01CODCON=0'+CODCON.Text);
//   DM1.Query5.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   DM1.Query5.Open;
   if not DM1.Query5.Eof then
      begin
      DATCON.Text  :=FormatDateTime(fdt2, DM1.Query5.fieldbyName('C01DATCON').AsDateTime);
      VALCON.Text  :=FormatFloat(mcasas, DM1.Query5.fieldbyName('C01VLRTOT').AsFloat);
      NOMTRA.Text  :=DM1.Query5.fieldbyName('TRRAZTRA').AsString;
      end;
   end;


end;

procedure TFrm_Desbl_Pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

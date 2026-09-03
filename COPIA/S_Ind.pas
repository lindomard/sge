unit S_Ind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls,S_DM1,func,lerarq,S_DM2,S_Moe,DB,DBTABLES;

type
  TFrm_Ind = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CODMOE: TEdit;
    NOMMOE: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    MDATA: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    VLRCOMCPR: TEdit;
    VLRCOMVDA: TEdit;
    VLRPARCPR: TEdit;
    VLRPARVDA: TEdit;
    bbGravar: TBitBtn;
    bbCancelar: TBitBtn;
    bbExcluir: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure CODMOEKeyPress(Sender: TObject; var Key: Char);
    procedure CODMOEEnter(Sender: TObject);
    procedure CODMOEExit(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure MDATAExit(Sender: TObject);
    procedure MDATAEnter(Sender: TObject);
    procedure VLRCOMCPRExit(Sender: TObject);
    procedure VLRCOMVDAExit(Sender: TObject);
    procedure VLRPARCPRExit(Sender: TObject);
    procedure VLRPARVDAExit(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure VLRCOMCPRKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ind: TFrm_Ind;
  mIndCasas: String='#,##0.000';
implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_Ind.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ind.CODMOEKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODMOE.Text:=fChamaMoe(0,'frm_ind',Key);
   CODMOEExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Ind.CODMOEEnter(Sender: TObject);
begin
NOMMOE.Text:='';
Panel1.Enabled:=False;
VLRCOMCPR.Text:='';
VLRCOMVDA.Text:='';
VLRPARCPR.Text:='';
VLRPARVDA.Text:='';
MDATA.Text    :='/  /';
bbExcluir.Enabled :=False;
bbGravar.Enabled  :=False;
bbCancelar.Enabled:=False;
end;

procedure TFrm_Ind.CODMOEExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
if ValFloat(CODMOE.Text)<=0 then
   CODMOE.Text:='';
if Trim(CODMOE.Text)<>'' then
   begin
   if not flcadmoe(1,1,0,Trim(CODMOE.Text)) then
      begin
      MessageDlg('Moeda não Cadastrada!',mtWarning,[mbOk],0);
      CODMOE.SetFocus;
      exit;
      end
   else
      begin
      NOMMOE.Text:=DM2.Tb_MoeMNOME.Value;
      bbAtualizar.Click;
      end;
   end;

end;

procedure TFrm_Ind.bbAtualizarClick(Sender: TObject);
begin
if ValFloat(CODMOE.Text)<=0 then
   CODMOE.Text:='';
CODMOE.Text:=fdeixanum(CODMOE.Text);
if not flcadmoe(1,1,0,Trim(CODMOE.Text)) then
   begin
   MessageDlg('Moeda não Cadastrada!',mtWarning,[mbOk],0);
   CODMOE.SetFocus;
   exit;
   end;
VLRCOMCPR.Text:='';
VLRCOMVDA.Text:='';
VLRPARCPR.Text:='';
VLRPARVDA.Text:='';
MDATA.Text    :=FormatDateTime(fdt2, date);
Panel1.Enabled    :=true;
bbExcluir.Enabled :=False;
bbGravar.Enabled  :=False;
bbCancelar.Enabled:=False;
MDATA.SetFocus;


end;

procedure TFrm_Ind.MDATAExit(Sender: TObject);
var
query_exe: tQuery;
begin
if Trim(MDATA.Text)<>'/  /' then
   begin
   Try
      MDATA.Text:=FormatDateTime(fdt2, StrToDate(MDATA.Text))
   except
      MessageDlg('Data Inválida!',mtWarning,[mbOk],0);
      MDATA.SetFocus;
      exit;
      end;
   if not flcadind(0,0,0,Trim(CODMOE.Text),FormatDateTime(fdt, StrTodate(MDATA.Text))) then
      begin
      query_exe:=tQuery.create(nil);
      query_exe.DatabaseName:='SG_ASSOC';

      query_exe.Close;
      query_exe.SQL.Clear;
      query_exe.SQL.Add('Insert into CADIND ('
                        +' ICODMOE '
                        +',IDATA '
                        +',IVLRPARCPR '
                        +',IGVLRPARVDA '
                        +',IVLRCOMCPR '
                        +',IVLRCOMVDA '
                        +',ICODUSR_INC '
                        +',INOMUSR_INC '
                        +',IDATHOR_INC '

                        +') Values ('
                        +Trim(CODMOE.Text)
                        +','+chr(39)+FormatDatetime(fdt, StrTodate(MDATA.Text))+chr(39)
                        +',0,0,0,0'
                        +',:ICODUSR_INC '
                        +',:INOMUSR_INC '
                        +',SYSDATE '
                        +')');
      query_exe.parambyName('ICODUSR_INC').value:=codusr;
      query_exe.parambyName('INOMUSR_INC').value:=nomusr;
      Try
         query_exe.ExecSQL;
         fdm1StartCommit;
      except
         ex_erroSql(01,171,'Frm_Ind','CADIND');
         end;
      freeandnil(query_exe);
      if not flcadind(0,0,0,Trim(CODMOE.Text),FormatDateTime(fdt, StrTodate(MDATA.Text))) then
         begin
         MessageDlg('Erro no 174 CADIND, avisar suporte!',mtError,[MbOk],0);
         close;
         end;
      end;
   VLRCOMCPR.Text:=FormatFloat(mIndCasas, DM2.Tb_IndIVLRCOMCPR.Value);
   VLRCOMVDA.Text:=FormatFloat(mIndCasas, DM2.Tb_IndIVLRCOMVDA.Value);
   VLRPARCPR.Text:=FormatFloat(mIndCasas, DM2.Tb_IndIVLRPARCPR.Value);
   VLRPARVDA.Text:=FormatFloat(mIndCasas, DM2.Tb_IndIGVLRPARVDA.Value);
   bbGravar.Enabled  :=True;
   bbCancelar.Enabled:=True;
   bbExcluir.Enabled :=True;
   VLRCOMCPR.Enabled  :=True;
   VLRCOMVDA.Enabled  :=True;
   VLRPARCPR.Enabled  :=True;
   VLRPARVDA.Enabled  :=True;
   VLRCOMCPR.SetFocus
   end;
end;

procedure TFrm_Ind.MDATAEnter(Sender: TObject);
begin
VLRCOMCPR.Text:='';
VLRCOMVDA.Text:='';
VLRPARCPR.Text:='';
VLRPARVDA.Text:='';
bbGravar.Enabled   :=False;
bbCancelar.Enabled :=False;
bbExcluir.Enabled  :=False;
VLRCOMCPR.Enabled  :=False;
VLRCOMVDA.Enabled  :=False;
VLRPARCPR.Enabled  :=False;
VLRPARVDA.Enabled  :=False;

end;

procedure TFrm_Ind.VLRCOMCPRExit(Sender: TObject);
begin
VLRCOMCPR.Text:=FormatFloat(mIndCasas,ValFloat(VLRCOMCPR.Text));
end;

procedure TFrm_Ind.VLRCOMVDAExit(Sender: TObject);
begin
VLRCOMVDA.Text:=FormatFloat(mIndCasas,ValFloat(VLRCOMVDA.Text));

end;

procedure TFrm_Ind.VLRPARCPRExit(Sender: TObject);
begin
VLRPARCPR.Text:=FormatFloat(mIndCasas,ValFloat(VLRPARCPR.Text));

end;

procedure TFrm_Ind.VLRPARVDAExit(Sender: TObject);
begin
VLRPARVDA.Text:=FormatFloat(mIndCasas,ValFloat(VLRPARVDA.Text));

end;

procedure TFrm_Ind.bbGravarClick(Sender: TObject);
var
mCondicao_old: String;
begin

mCondicao_old:=' where ICODMOE='+DM2.Tb_IndICODMOE.AsString+' and IDATA='+QuotedStr(FormatDatetime(fdt2, DM2.Tb_IndIDATA.AsDateTime));
fGerarTabelas_Old(9
                   ,0 //codigo novo valor chave
                   ,'ICODNOV' //nome do campo do novo valor (chave)
                   ,'IDATHOR_EVE' // nome do campo data e hora do evento
                   ,'ICODUSR_EVE' // nome do campo do usuario
                   ,'ISTATUS_EVE' // nome do campo de status
                   ,'CADIND' // nome da tabela
                   ,mCondicao_old);


DM2.Tb_Ind.Edit;
DM2.Tb_IndIVLRPARCPR.Value:=ValFloat(VLRPARCPR.Text);
DM2.Tb_IndIGVLRPARVDA.Value:=ValFloat(VLRPARVDA.Text);
DM2.Tb_IndIVLRCOMCPR.Value:=ValFloat(VLRCOMCPR.Text);
DM2.Tb_IndIVLRCOMVDA.Value:=ValFloat(VLRCOMVDA.Text);

DM2.Tb_IndICODUSR_ALT.Value:=codusr;
DM2.Tb_IndINOMUSR_ALT.Value:=nomusr;
DM2.Tb_IndIDATHOR_ALT.Value:=Now;

DM2.Tb_Ind.Post;
MDATA.SetFocus;

end;

procedure TFrm_Ind.bbCancelarClick(Sender: TObject);
begin
MDATA.SetFocus;
end;

procedure TFrm_Ind.bbExcluirClick(Sender: TObject);
var
mCondicao_old: string;
begin
if fmensagem('Quer Realmente Excluir o Registro Selecionado?',0,['1','2'],2)=mrYes then
   begin
   mCondicao_old:=' where ICODMOE='+DM2.Tb_IndICODMOE.AsString+' and IDATA='+QuotedStr(FormatDatetime(fdt2, DM2.Tb_IndIDATA.AsDateTime));
   fGerarTabelas_Old(9
                      ,0 //codigo novo valor chave
                      ,'ICODNOV' //nome do campo do novo valor (chave)
                      ,'IDATHOR_EVE' // nome do campo data e hora do evento
                      ,'ICODUSR_EVE' // nome do campo do usuario
                      ,'ISTATUS_EVE' // nome do campo de status
                      ,'CADIND' // nome da tabela
                      ,mCondicao_old);

   DM2.Tb_Ind.Delete;
   MDATA.SetFocus;
   end;
end;

procedure TFrm_Ind.VLRCOMCPRKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator;
end;

procedure TFrm_Ind.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

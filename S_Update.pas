unit S_Update;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1, Grids, DBGrids, DB,func, DBTables;

type
  TFrm_Update = class(TForm)
    Label1: TLabel;
    TABELA: TEdit;
    Label2: TLabel;
    CAMPO: TEdit;
    Label3: TLabel;
    CONDICAO: TEdit;
    bbExecutar: TBitBtn;
    bbLimpar: TBitBtn;
    bbSair: TBitBtn;
    Query1: TQuery;
    procedure bbSairClick(Sender: TObject);
    procedure bbLimparClick(Sender: TObject);
    procedure bbExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Update: TFrm_Update;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_Update.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Update.bbLimparClick(Sender: TObject);
begin
TABELA.Text  :='';
CAMPO.Text   :='';
CONDICAO.Text:='';
end;

procedure TFrm_Update.bbExecutarClick(Sender: TObject);
var
mqtdReg: Integer;
query_exe: tquery;
begin
if Trim(TABELA.Text)='' then
   begin
   MessageDlg('Nome da Tabela Campo Obrigatório!',mtWarning,[mbOk],0);
   TABELA.SetFocus;
   exit;
   end;                                  
if Trim(CAMPO.Text)='' then
   begin
   MessageDlg('Nome do Campo é Obrigatório!',mtWarning,[mbOk],0);
   CAMPO.SetFocus;
   exit;
   end;
verteclado(0);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select count(*) from '+TABELA.Text);
if Trim(CONDICAO.Text)<>'' then
   DM1.Query1.SQL.add(' where '+CONDICAO.Text);
try
   DM1.query1.Open;
   mqtdReg:=DM1.Query1.Fields[0].AsInteger;
except on e : exception do
      begin
      MessageDlg(e.Message+' Condição Escrita de Maneira incorreta!',mtWarning,[mbOk],0);
      exit;
      end;
      end;

if mqtdReg>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update '+TABELA.Text+' set '+CAMPO.Text);
   if Trim(CONDICAO.Text)<>'' then
      DM1.Query1.SQL.add(' where '+CONDICAO.Text);
   try
      DM1.query1.ExecSQL;
      fdm1StartCommit;
   except on e : exception do
        begin
        MessageDlg(e.Message+' Erro Ao Executar Comando!',mtWarning,[mbOk],0);
        exit;
        end;
      end;
   query_exe:=tquery.create(nil);
   query_exe.databasename:=DM1.SG_ASSOC.DatabaseName;
   query_exe.sql.add('Insert into CADUPDATE ('
                    +' CUDATHOR '
                    +',CUTERMINAL '
                    +',CUCODUSR_LOGADO '
                    +',CUORIGEM_INFO '
                    +',CUCOMANDO  '
                    +',CURESULTADO  '
                    +') values ('
                    +' SYSDATE '
                    +', userenv('+QuotedStr('TERMINAL')+') '
                    +',:CODUSR_LOGADO '
                    +',:CUORIGEM_INFO '
                    +',:CUCOMANDO  '
                    +',:CURESULTADO  '
                    +') ');
   query_exe.ParamByName('CODUSR_LOGADO').AsString:=Inttostr(codusr)+'|'+nomusr;
   query_exe.ParamByName('CUORIGEM_INFO').AsString:='SGE Atualizar dados';
   query_exe.ParamByName('CUCOMANDO').AsMemo      := DM1.Query1.SQL.Text;
   query_exe.ParamByName('CURESULTADO').AsString  :=iif(mqtdreg>1,'Foram Atualizados '+IntToStr(mqtdReg)+' Registros'
                            ,'Foi Atualiza '+IntToStr(mqtdReg)+' Registro');
   try
      query_exe.execsql;
      fdm1startcommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,126,'frm lrs'+e.Message ,'CADUPDATE');
      freeandnil(query_exe);
      exit;
      end;
      end;
   query_exe.close;
   freeandnil(query_exe);


   MessageDlg('Comando Executado com Sucesso!'+#13
             +iif(mqtdreg>1,'Foram Atualizados '+IntToStr(mqtdReg)+' Registros'
                            ,'Foi Atualiza '+IntToStr(mqtdReg)+' Registro'),mtInformation,[mbOk],0);
   end
else
   begin
   MessageDlg('Não havia nenhum registros que satisfez a necessidade!',mtInformation,[mbOk],0);
   end;

end;

procedure TFrm_Update.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

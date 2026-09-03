unit S_REVECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables;

type
  TFrm_REVECF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cb_mes: TComboBox;
    cb_ano: TComboBox;
    Label2: TLabel;
    btn_gerarecf: TButton;
    edt_arquivo: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cb_modelo: TComboBox;
    Label5: TLabel;
    CODCON: TEdit;
    NOMCOM: TEdit;
    Tb_RevECF: TQuery;
    Tb_RevECFSERIE: TMemoField;
    Tb_RevECFIDEN: TStringField;
    Tb_RevECFRAZAO: TStringField;
    Tb_RevECFCCNPJ: TFloatField;
    Tb_RevECFCCPF: TFloatField;
    Tb_RevECFIE: TStringField;
    Tb_RevECFENDERECO: TStringField;
    Tb_RevECFUF: TStringField;
    Tb_RevECFNUMNF: TFloatField;
    Tb_RevECFDATA_NF: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure btn_gerarecfClick(Sender: TObject);
    procedure cb_mesChange(Sender: TObject);
    procedure cb_anoChange(Sender: TObject);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_REVECF: TFrm_REVECF;

implementation

uses Func, S_DM1, S_mensagem, lerarq;

{$R *.dfm}

procedure TFrm_REVECF.FormCreate(Sender: TObject);
var
  ano : Integer;
begin
ano:=StrToInt(FormatDateTime('yyyy',Date));
cb_ano.Items.Clear;
cb_ano.Items.Add(IntToStr(ano-2));
cb_ano.Items.Add(IntToStr(ano-1));
cb_ano.Items.Add(IntToStr(ano));
end;

procedure TFrm_REVECF.btn_gerarecfClick(Sender: TObject);
var
  Arq: Textfile;
  Qtd: Integer;
  mesano: String;
begin
mesano:=FormatFloat('00',cb_mes.ItemIndex+1)+cb_ano.Text;
Tb_RevECF.Close;
Tb_RevECF.SQL.Clear;
Tb_RevECF.SQL.Add(' select p2complemento as serie,');
Tb_RevECF.SQL.Add('           pdrefer as Iden,');
Tb_RevECF.SQL.Add('           crazao as razao,');
Tb_RevECF.SQL.Add('           ccnpj, ccpf,');
Tb_RevECF.SQL.Add('           cie as ie,');
Tb_RevECF.SQL.Add('           clog||'+chr(39)+' '+chr(39)+'||cbairro||'+chr(39)+' '+chr(39)+'||ccidade as endereco, ');
Tb_RevECF.SQL.Add('           cuf as uf,');
Tb_RevECF.SQL.Add('           p1numnf as numnf,');
Tb_RevECF.SQL.Add('           p1datanf as data_nf');
Tb_RevECF.SQL.Add(' from cadp01, cadp02, cadcli, cadpro');
Tb_RevECF.SQL.Add(' where p1chave=p2chave and p1codemp=p2codemp and p1lotseq=p2lotseq');
Tb_RevECF.SQL.Add('       and p1status<'+mstatus_excluido+' and p1codcli=ccodcli and p1emidoc=1 and p1tipo=1');
Tb_RevECF.SQL.Add('       and pdcodpro=p2codpro');
Tb_RevECF.SQL.Add('       and to_char(p1datanf,'+chr(39)+'mmyyyy'+chr(39)+')='+chr(39)+mesano+chr(39));
Tb_RevECF.SQL.Add('       and pdcodcon='+CODCON.Text);
try
  Tb_RevECF.Open;
except
  fmensagem('Erro ao Abrir Tb_REVECF',0,['0'],0);
  Tb_RevECF.SQL.SaveToFile('c:\sql.txt');
  Exit;
  end;
Qtd:=0;
edt_arquivo.Text:='C:\SGE\REVECF'+UpperCase(Copy(cb_mes.Text,1,3))+cb_ano.Text+'.txt';
AssignFile(Arq,edt_arquivo.Text);
rewrite(Arq);
WriteLn(Arq,'F1'
           +inttostr(cb_modelo.ItemIndex+1)
           +COMPLETA_COM(DM1.Tb_EmpCGC.AsString,'0',14,0)
           +COMPLETA_COM(DM1.Tb_EmpRAZAO.AsString,' ',50,1)
           +COMPLETA_COM(DM1.Tb_EmpENDERECO.AsString+' '+DM1.Tb_EmpCIDADE.AsString,' ',50,1)
           +COMPLETA_COM(DM1.Tb_EmpUF.AsString,' ',2,1)
           +COMPLETA_COM(inttostr(cb_mes.ItemIndex+1),'0',2,0)
           +cb_ano.text
           +COMPLETA_COM(DM1.Tb_EmpRESPONS.AsString,' ',50,1)
           +'2');
while not Tb_RevECF.Eof do
  begin
  Qtd:=Qtd+1;
  WriteLn(Arq,'F2'
             +COMPLETA_COM(Tb_RevECFIDEN.AsString,'0',06,0)
             +COMPLETA_COM(Tb_RevECFSERIE.AsString,' ',20,1)
             +COMPLETA_COM('',' ',20,0)
             +COMPLETA_COM('',' ',12,0)
             +COMPLETA_COM('',' ',12,0)
             +COMPLETA_COM('',' ',12,0)
             +COMPLETA_COM('',' ',12,0)
             +COMPLETA_COM('',' ',01,0)
             +COMPLETA_COM('',' ',07,0)
             +COMPLETA_COM('',' ',07,0)             
             +COMPLETA_COM(Tb_RevECFRAZAO.AsString,' ',40,1)
             +COMPLETA_COM(iif(Tb_RevECFCCNPJ.AsFloat>0,Tb_RevECFCCNPJ.AsString,Tb_RevECFCCPF.AsString),'0',14,0)
             +COMPLETA_COM(fdeixanum(Tb_RevECFIE.AsString),' ',15,1)
             +COMPLETA_COM('',' ',15,1)
             +COMPLETA_COM(Tb_RevECFENDERECO.AsString,' ',48,1)
             +COMPLETA_COM(Tb_RevECFUF.AsString,' ',02,1)
             +COMPLETA_COM(Tb_RevECFNUMNF.AsString,'0',06,0)
             +COMPLETA_COM(FormatDateTime('yyyymmdd',Tb_RevECFDATA_NF.AsDateTime),' ',08,0)
             +'2'
             +'2');
  Tb_RevECF.Next;
  end;
WriteLn(Arq,'F9'
           +COMPLETA_COM(DM1.Tb_EmpCGC.AsString,'0',14,0)
           +iif(Qtd>0,'SIM','NÃO')
           +COMPLETA_COM(IntToStr(Qtd),'0',6,0));
Closefile(Arq);
fmensagem('Concluido',0,['0'],0);
end;

procedure TFrm_REVECF.cb_mesChange(Sender: TObject);
begin
edt_arquivo.Text:='C:\SGE\REVECF'+UpperCase(Copy(cb_mes.Text,1,3))+cb_ano.Text+'.txt';
end;

procedure TFrm_REVECF.cb_anoChange(Sender: TObject);
begin
edt_arquivo.Text:='C:\SGE\REVECF'+UpperCase(Copy(cb_mes.Text,1,3))+cb_ano.Text+'.txt';
end;

procedure TFrm_REVECF.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  CODCON.Text:=ValReal(fChamaTCon(0,'frm_Pro_Nov',Key));
  if Trim(CODCON.Text) <> '' then
    CODCONExit(Self);
  key:=#0;
  end;
end;

procedure TFrm_REVECF.CODCONExit(Sender: TObject);
begin
if not flqr1('CCODCON,CNOME,CRESTCON','C','CADCON','N','CCODCON',Trim(CODCON.Text)) then
  begin
  verteclado(0);
  fMensagem('Controle não Cadastrado!',0,['0'],0);
  CODCON.SetFocus;
  end
else
  begin
  NOMCOM.Text :=DM1.Query1.fields[1].AsString;
  end;
end;

end.


unit S_ElimDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,S_DM1, DB, DBTables,func,S_Agde,S_DM2,lerarq;

type
  TFrm_ElimDados = class(TForm)
    BitBtn1: TBitBtn;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    StaticText1: TStaticText;
    cb_naopagos: TCheckBox;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    BitBtn2: TBitBtn;
    Qr_Triggers: TQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     function FCriarTriggers(ptipo: Integer): Boolean;
     function FDeletarTriggers(ptipo: Integer): Boolean;

    { Private declarations }
  public
    { Public declarations }
  end;
var
  Frm_ElimDados: TFrm_ElimDados;

implementation

{$R *.dfm}

procedure TFrm_ElimDados.BitBtn1Click(Sender: TObject);
var
mcodemp: Integer;
mSenha: String;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      MessageDlg('Data Inicial maior que Final, Invalido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
mcodemp:=codemp;
if not flcademp(1,0,IntTostr(mcodemp)) then
   begin
   MessageDlg('Empresa não Encontrada!',mtWarning,[mbOk],0);
   exit;
   end;
mcinst:='Tem Certeza que quer excluir os Movimentos da Empresa '+#13
        +'Codigo: '+IntToStr(mcodemp)+' '+DM2.Tb_EmpRAZAO.Value;
if fmensagem(pchar(mcinst),0,['1','2'],2)<>mrYes then
   exit;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Excluindo dados da Empresa: '+DM2.Tb_EmpCODEMP.AsString
                        +' '+dm1.Tb_EmpRAZAO.AsString
                        +' '+fperiodo(0,MDT1.Text,MDT2.Text)+'. Aguarde...';
if DM2.Tb_EmpCODEMP.AsInteger<100 then
   begin
   mSenha:=InputBox('Digite a Senha Master da Intersys Para Confirmar esta exclusao!','Entre com a Senha:','');
   if (trim(msenha)='') and (not smaster(mSenha)) then
      begin
      fmensagem('Senha Invalida!',0,['0'],0);
      close;
      end;
   end;

Frm_Agde.Label1.Font.Height:=-30;
Frm_Agde.label2.Visible:=true;
Frm_Agde.Label2.Caption:='Criando Triggers Temporarias...';
Frm_Agde.Show;
verteclado(0);


FCriarTriggers(0);

Frm_Agde.Label2.Caption:='Eliminando Tabela de Acertos de Remessa...';
verteclado(0);

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADACRE01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' AR1CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+'AR1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' AR1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 64 ao Excluir o CADACRE01 ',mtError,[mbOk],0);
   end;
// inicio do cadastro de ajustes
Frm_Agde.Label2.Caption:='Eliminando Tabela de Ajuste de Estoque...';
verteclado(0);

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADAJU ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADAJU',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' AJCODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+'AJDATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' AJDATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 106 ao Excluir o CADAJU ',mtError,[mbOk],0);
   end;

// inicio do cadastro de ajuste de precos por lote
Frm_Agde.Label2.Caption:='Eliminando Tabela de Ajuste de Preços por Lote...';
verteclado(0);

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADAL1 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADAL1',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' AL1CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+'AL1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' AL1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 106 ao Excluir o CADAJU ',mtError,[mbOk],0);
   end;



// inicio do cadastro de ajuste de precos por lote
Frm_Agde.Label2.Caption:='Eliminando Tabela de Balanços...';
verteclado(0);

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADBAL01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADBAL01',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' B1CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' B1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' B1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 161 ao Excluir o CADBAL01 ',mtError,[mbOk],0);
   end;



// inicio do cadastro de ajuste de precos por lote
Frm_Agde.Label2.Caption:='Eliminando Tabela de Baixas de cheques por lote...';
verteclado(0);

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADBCL01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADBCL01',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' BL1CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' BL1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' BL1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 161 ao Excluir o CADBAL01 ',mtError,[mbOk],0);
   end;


Frm_Agde.Label2.Caption:='Eliminando Tabela de Controle de Acessos...';
verteclado(0);

// inicio do cadastro de ajuste de precos por lote
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADCAC ');
mcinst:=' where ';
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CADATAI>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CADATAF<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 213 ao Excluir o CADCAC ',mtError,[mbOk],0);
   end;

Frm_Agde.Label2.Caption:='Eliminando Tabela de Cartas de Correçoes...';
verteclado(0);


// inicio do cadastro de ajuste de precos por lote
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADCCOR01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADBCL01',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CC1CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CC1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CC1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 236 ao Excluir o CADCCOR ',mtError,[mbOk],0);
   end;

Frm_Agde.Label2.Caption:='Eliminando Tabela de Cheques Emitidos...';
verteclado(0);


// inicio do cadastro de Cheques de Propria Emissao
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADCHCP ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADCHCP',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CHCODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CHDTDEP>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CHDTDEP<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 270 ao Excluir o CADCHCP ',mtError,[mbOk],0);
   end;


Frm_Agde.Label2.Caption:='Eliminando Tabela de Cheques de Clientes...';
verteclado(0);

// inicio do cadastro de Cheques de Propria Emissao
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADCHQ ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADCHQ',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CHCODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CHDTDEP>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CHDTDEP<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 270 ao Excluir o CADCHCP ',mtError,[mbOk],0);
   end;

Frm_Agde.Label2.Caption:='Eliminando Tabela de comissões por lote...';
verteclado(0);


// inicio do COMISSAO POR LOTE
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADCL01');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADCL01',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CL1CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CL1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CL1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 328 ao Excluir o CADCL01 ',mtError,[mbOk],0);
   end;

Frm_Agde.Label2.Caption:='Eliminando Tabela de Custo de Produção...';
verteclado(0);



// inicio do CUSTO DE PRODUCAO
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADCP01');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADCP01',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CP1CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CP1DATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CP1DATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 358 ao Excluir o CADCP01 ',mtError,[mbOk],0);
   end;


   // COMEÇA PELO LOTE

Frm_Agde.Label2.Caption:='Eliminando Tabela de Duplicatas/Pedidos de Clientes...';
verteclado(0);


// inicio dE DUPLICATAS A RECEBER
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADDAR');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CRCODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if cb_naopagos.Checked then
   begin
   if Trim(MDT1.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      mcinst:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      mcinst:=' and ';
      end;
   end
else
   begin
   if Trim(MDT1.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CRDTBX>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      mcinst:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CRDTBX<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      mcinst:=' and ';
      end;
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 391 ao Excluir o CADDAR ',mtError,[mbOk],0);
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('delete from CADP02 where P2CHAVE IN ( select P1CHAVE from CADP01'
                  +' where 1=1 ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  DM1.Query1.SQL.Add(' and P1CODEMP=0'+InttoStr(mcodemp));
if Trim(MDT1.Text)<>'/  /' then
  DM1.query1.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
if Trim(MDT2.Text)<>'/  /' then
  DM1.query1.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
DM1.Query1.SQL.Add(' ) ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  DM1.Query1.SQL.Add(' and P2CODEMP=0'+InttoStr(mcodemp));
try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  MessageDlg('Erro 490 ao Excluir o CADP01 ',mtError,[mbOk],0);
  end;


DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADP01');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  begin
  DM1.Query1.SQL.Add(mcinst+' P1CODEMP=0'+InttoStr(mcodemp));
  mcinst:=' and ';
  end;
if Trim(MDT1.Text)<>'/  /' then
  begin
  DM1.query1.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));
  mcinst:=' and ';
  end;
if Trim(MDT2.Text)<>'/  /' then
  begin
  DM1.query1.SQL.add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
  mcinst:=' and ';
  end;
try
  DM1.Query1.ExecSQL;
  fdm1StartCommit;
except
  MessageDlg('Erro 490 ao Excluir o CADP01 ',mtError,[mbOk],0);
  end;


// inicio dE DUPLICATAS A RECEBER
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from OLD_CADDAR');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADDAR',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CRCODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CRDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CRDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 391 ao Excluir o CADDAR ',mtError,[mbOk],0);
   end;


Frm_Agde.Label2.Caption:='Eliminando Tabela de Duplicatas/Pedidos de Fornecedores...';
verteclado(0);


// inicio dE DUPLICATAS A PAGAR
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADDAP');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CACODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if cb_naopagos.Checked then
   begin
   if Trim(MDT1.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CADTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      mcinst:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CADTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      mcinst:=' and ';
      end;
   end
else
   begin
   if Trim(MDT1.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CADTBX>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      mcinst:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' CADTBX<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      mcinst:=' and ';
      end;
   end;

try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 481 ao Excluir o CADDAP ',mtError,[mbOk],0);
   end;


// inicio dE DUPLICATAS A RECEBER
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from OLD_CADDAP');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADDAP',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CACODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CADTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' CADTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 509 ao Excluir o CADDAP ',mtError,[mbOk],0);
   end;


   // COMEÇA PELO LOTE



{
CADDUPDREC                     TABLE
CADDUPREC                      TABLE
CADLC1                         TABLE
CADLC2                         TABLE
CADLFOL                        TABLE
CADOPET                        TABLE
CADOP01                        TABLE
CADOP02                        TABLE
CADOP03                        TABLE
CADOS01                        TABLE
CADOS02                        TABLE
CADOS03                        TABLE
CADOS04                        TABLE
CADOS05                        TABLE
CADOS05D                       TABLE
CADPEN                         TABLE
CADPNF                         TABLE
CADPO99                        TABLE
CADRD01                        TABLE
CADRD02                        TABLE
CADRFOL                        TABLE
CADRM1                         TABLE
CADRM2                         TABLE
OLD_CADPED


NAO COLOCADOS
}


Frm_Agde.Label2.Caption:='Eliminando Tabela de Estoque por dia...';
verteclado(0);

// inicio dE estoque por dia
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADEDIA');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CED_CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+'( CED_ANO>='+chr(39)+FormatDateTime('yyyy', StrToDate(MDT1.Text))+chr(39)
                             +' and CED_MES>='+chr(39)+FormatDateTime('mm', StrToDate(MDT1.Text))+chr(39)+')');
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+'( CED_ANO<='+chr(39)+FormatDateTime('yyyy', StrToDate(MDT2.Text))+chr(39)
                             +' and CED_MES<='+chr(39)+FormatDateTime('mm', StrToDate(MDT2.Text))+chr(39)+')');
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 552 ao Excluir o CADEDIAP ',mtError,[mbOk],0);
   end;

Frm_Agde.Label2.Caption:='Eliminando Tabela de Estoque por dia Grade/Lote...';
verteclado(0);


// inicio dE ESTOQUE POR DIA GRADE
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADEGD');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CED_CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+'( CED_ANO>='+chr(39)+FormatDateTime('yyyy', StrToDate(MDT1.Text))+chr(39)
                             +' and CED_MES>='+chr(39)+FormatDateTime('mm', StrToDate(MDT1.Text))+chr(39)+')');
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+'( CED_ANO<='+chr(39)+FormatDateTime('yyyy', StrToDate(MDT2.Text))+chr(39)
                             +' and CED_MES<='+chr(39)+FormatDateTime('mm', StrToDate(MDT2.Text))+chr(39)+')');
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 552 ao Excluir o CADEDIAP ',mtError,[mbOk],0);
   end;

// inicio dE MOVIMENTO DE CAIXA CADLDR
Frm_Agde.Label2.Caption:='Eliminando Tabela de Fluxo de Caixa...';
verteclado(0);

DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADLDR');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADLDR',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' CODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;

if cb_naopagos.Checked then
   begin
   if Trim(MDT1.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' DATAREF>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      mcinst:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' DATAREF<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      mcinst:=' and ';
      end;
   end
else
   begin
   if Trim(MDT1.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' DATAREAL>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      mcinst:=' and ';
      end;
   if Trim(MDT2.Text)<>'/  /' then
      begin
      DM1.Query1.SQL.add(mcinst+' DATAREAL<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
      mcinst:=' and ';
      end;
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 552 ao Excluir o CADEDIAP ',mtError,[mbOk],0);
   end;
Frm_Agde.Label2.Caption:='Eliminando Tabela de Notas de Entradas...';
verteclado(0);


   // inicio dE notas de entradas
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADNE');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADNE',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' NECODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' NEDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' NEDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 552 ao Excluir o CADNE ',mtError,[mbOk],0);
   end;

Frm_Agde.Label2.Caption:='Eliminando Tabela de Notas de Saidas...';
verteclado(0);


   // inicio dE notas de entradas
DM1.Query1.Close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.add('Delete from CADNS');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADNS',[]) then
   begin
   DM1.Query1.SQL.Add(mcinst+' NSCODEMP=0'+InttoStr(mcodemp));
   mcinst:=' and ';
   end;

if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' NSDTEMIS>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.SQL.add(mcinst+' NSDTEMIS<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   MessageDlg('Erro 688 ao Excluir o CADNS ',mtError,[mbOk],0);
   end;

FDeletarTriggers(0);
Frm_Agde.Label2.Visible:=False;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);



end;

procedure TFrm_ElimDados.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ElimDados.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_ElimDados.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt2.SetFocus;
      end;
   end;

end;

function TFrm_ElimDados.FCriarTriggers(ptipo: Integer): Boolean;
// esta trigger é para deletar os registros relacionados que
// nao possui o numero do lote de envio ou qualquer referencia
begin
if pbanco=0 then
   begin
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER FPCRDUP_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON FPCRDUP ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM FPCR  where FPCODEMP=:OLD.FPCODEMP ');
   Qr_Triggers.SQL.add('                     and FPLOTSEQ=:OLD.FPLOTSEQ ');
   Qr_Triggers.SQL.add('                     and FPLOTE=:OLD.FPLOTE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   if cb_naopagos.Checked then
      begin
      Qr_Triggers.Close;
      Qr_Triggers.SQL.Clear;
      Qr_Triggers.SQL.add(' CREATE TRIGGER CADDAR_TRIG_TMP01 AFTER DELETE');
      Qr_Triggers.SQL.add(' ON CADDAR ');
      Qr_Triggers.SQL.add(' FOR EACH ROW');
      Qr_Triggers.SQL.add(' BEGIN ');
      Qr_Triggers.SQL.add(' IF DELETING THEN ');
      Qr_Triggers.SQL.add('    DELETE FROM FPCRDUP where FPDUP_CODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and FPNUMERO=:OLD.CRNUMERO ');
      Qr_Triggers.SQL.add('                     and FPDESD  =:OLD.CRDESD ');
      Qr_Triggers.SQL.add('                     and FPTIPO  =:OLD.CRDUP ');
      Qr_Triggers.SQL.add('                     and FPDTEMIS=:OLD.CRDTEMIS; ');
      Qr_Triggers.SQL.add('     END IF; ');
      Qr_Triggers.SQL.add('END;');
      try
         Qr_Triggers.ExecSQL;
         fdm1StartCommit;
      except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
         end;


      Qr_Triggers.Close;
      Qr_Triggers.SQL.Clear;
      Qr_Triggers.SQL.add(' CREATE TRIGGER CADP01_TRIG_TMP01 AFTER DELETE');
      Qr_Triggers.SQL.add(' ON CADP01 ');
      Qr_Triggers.SQL.add(' FOR EACH ROW');
      Qr_Triggers.SQL.add(' BEGIN ');
      Qr_Triggers.SQL.add(' IF DELETING THEN ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01D where P1DCODEMP=:OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P1DLOTSEQ=:OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P1DCHAVE =:OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01V where P1VCODEMP=:OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P1VLOTSEQ=:OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P1VCHAVE =:OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02 where P2CODEMP=:OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P2LOTSEQ=:OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P2CHAVE =:OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02D where P2DCODEMP=:OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P2DLOTSEQ=:OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P2DCHAVE =:OLD.P1LOTSEQ; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02S where P2SCODEMP=:OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P2SLOTSEQ=:OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P2SCHAVE =:OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADPFP where PFPCODEMP=:OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and PFPLOTSEQ=:OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and PFPCHAVE =:OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADCSF where CFCODEMP=:OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and CFLOTSEQ=:OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and CFCHAVEP =:OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('     END IF; ');
      Qr_Triggers.SQL.add('END;');
      try
         Qr_Triggers.ExecSQL;
         fdm1StartCommit;
      except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
         end;
      end
   else
      begin
      Qr_Triggers.Close;
      Qr_Triggers.SQL.Clear;
      Qr_Triggers.SQL.add(' CREATE TRIGGER CADDAR_TRIG_TMP01 AFTER DELETE');
      Qr_Triggers.SQL.add(' ON CADDAR ');
      Qr_Triggers.SQL.add(' FOR EACH ROW');
      Qr_Triggers.SQL.add(' BEGIN ');
      Qr_Triggers.SQL.add(' IF DELETING THEN ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01  where P1CODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P1LOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P1CHAVE =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01D where P1DCODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P1DLOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P1DCHAVE =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01V where P1VCODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P1VLOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P1VCHAVE =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02 where P2CODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P2LOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P2CHAVE =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02D where P2DCODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P2DLOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P2DCHAVE =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02S where P2SCODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P2SLOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P2SCHAVE =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADPFP where PFPCODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and PFPLOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and PFPCHAVE =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADCSF where CFCODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and CFLOTSEQ=:OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and CFCHAVEP =:OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM FPCRDUP where FPDUP_CODEMP=:OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and FPNUMERO=:OLD.CRNUMERO ');
      Qr_Triggers.SQL.add('                     and FPDESD  =:OLD.CRDESD ');
      Qr_Triggers.SQL.add('                     and FPTIPO  =:OLD.CRDUP ');
      Qr_Triggers.SQL.add('                     and FPDTEMIS=:OLD.CRDTEMIS; ');
      Qr_Triggers.SQL.add('     END IF; ');
      Qr_Triggers.SQL.add('END;');
      try
         Qr_Triggers.ExecSQL;
         fdm1StartCommit;
      except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
         end;
      end;

// LIGADOS AO CADDAP
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER FPCPDUP_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON FPCPDUP ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM FPCP  where FPCODEMP=:OLD.FPCODEMP ');
   Qr_Triggers.SQL.add('                     and FPLOTSEQ=:OLD.FPLOTSEQ ');
   Qr_Triggers.SQL.add('                     and FPLOTE=:OLD.FPLOTE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADDAP_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADDAP ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF1  where PF1CODEMP=:OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and PF1LOTSEQ=:OLD.CALOTSEQ_CP ');
   Qr_Triggers.SQL.add('                     and PF1CHAVE =:OLD.CACHAVEP; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF1V where PF1VCODEMP=:OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and PF1VLOTSEQ=:OLD.CALOTSEQ_CP ');
   Qr_Triggers.SQL.add('                     and PF1VCHAVE =:OLD.CACHAVEP; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF2 where PF2CODEMP=:OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and PF2LOTSEQ=:OLD.CALOTSEQ_CP ');
   Qr_Triggers.SQL.add('                     and PF2CHAVE =:OLD.CACHAVEP; ');
   Qr_Triggers.SQL.add('    DELETE FROM FPCPDUP where FPCODEMP=:OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and FPNUMERO=:OLD.CANUMERO ');
   Qr_Triggers.SQL.add('                     and FPDESD  =:OLD.CADESD ');
   Qr_Triggers.SQL.add('                     and FPTIPO   =:OLD.CADUP ');
   Qr_Triggers.SQL.add('                     and FPDTEMIS=:OLD.CADTEMIS ');
   Qr_Triggers.SQL.add('                     and FPCODFOR=:OLD.CACODFOR; ');

   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

// TERMINO CADDÁP
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADACRE01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADACRE01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADACRE02  where AR2CODEMP=:OLD.AR1CODEMP ');
   Qr_Triggers.SQL.add('                     and AR2CHAVE=:OLD.AR1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADAL1_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADAL1 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADAL2  where AL2CODEMP=:OLD.AL1CODEMP ');
   Qr_Triggers.SQL.add('                     and AL2LOTSEQ=:OLD.AL1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and AL2LOTE  =:OLD.AL1LOTE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADBAL01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADBAL01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADBAL02  where B2CODEMP=:OLD.B1CODEMP ');
   Qr_Triggers.SQL.add('                     and B2CHAVE=:OLD.B1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADBCL01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADBCL01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADBCL02  where BL2CODEMP=:OLD.BL1CODEMP ');
   Qr_Triggers.SQL.add('                     and BL2CHAVE=:OLD.BL1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCB01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADCB01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCB02  where CB2CODEMP=:OLD.CB1CODEMP ');
   Qr_Triggers.SQL.add('                     and CB2LOTSEQ=:OLD.CB1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CB2CHAVE =:OLD.CB1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCCOR01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADCCOR01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCCOR02  where CC2CODEMP=:OLD.CC1CODEMP ');
   Qr_Triggers.SQL.add('                     and CC2CHAVE =:OLD.CC1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCL01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADCL01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCL02  where CL2CODEMP=:OLD.CL1CODEMP ');
   Qr_Triggers.SQL.add('                     and CL2LOTSEQ =:OLD.CL1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CL2CHAVE =:OLD.CL1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCP01_TRIG_TMP01 AFTER DELETE');
   Qr_Triggers.SQL.add(' ON CADCP01 ');
   Qr_Triggers.SQL.add(' FOR EACH ROW');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add(' IF DELETING THEN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02  where CP2CODEMP=:OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2LOTSEQ =:OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2CHAVE =:OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02_MPER  where CP2MPERCODEMP=:OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2MPERLOTSEQ =:OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2MPERCHAVE =:OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02_MPAR  where CP2MPARCODEMP=:OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2MPARLOTSEQ =:OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2MPARCHAVE =:OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02_PREN  where CP2PRENCODEMP=:OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2PRENLOTSEQ =:OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2PRENCHAVE =:OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM OLD_CADCP01  where CP1CODEMP=:OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP1LOTSEQ =:OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP1CHAVE =:OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM OLD_CADCP02  where CP2CODEMP=:OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2LOTSEQ =:OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2CHAVE =:OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('     END IF; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   end
else
   begin
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER FPCPDUP_TRIG_TMP01 FOR FPCPDUP');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM FPCP  where FPCODEMP=OLD.FPCODEMP ');
   Qr_Triggers.SQL.add('                     and FPLOTSEQ=OLD.FPLOTSEQ ');
   Qr_Triggers.SQL.add('                     and FPLOTE=OLD.FPLOTE; ');
   Qr_Triggers.SQL.add('END;');
   try
      Qr_Triggers.ExecSQL;
      fdm1StartCommit;
   except
//      Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
      end;


   if cb_naopagos.Checked then
      begin
      Qr_Triggers.Close;
      Qr_Triggers.SQL.Clear;
      Qr_Triggers.SQL.add(' CREATE TRIGGER CADDAR_TRIG_TMP01 FOR CADDAR');
      Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
      Qr_Triggers.SQL.add(' BEGIN ');
      Qr_Triggers.SQL.add('    DELETE FROM FPCRDUP where FPDUP_CODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and FPNUMERO=OLD.CRNUMERO ');
      Qr_Triggers.SQL.add('                     and FPDESD  =OLD.CRDESD ');
      Qr_Triggers.SQL.add('                     and FPTIPO   =OLD.CRDUP ');
      Qr_Triggers.SQL.add('                     and FPDTEMIS=OLD.CRDTEMIS; ');
      Qr_Triggers.SQL.add('END;');
      try
         Qr_Triggers.ExecSQL;
         fdm1StartCommit;
      except
//         Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
         end;

      Qr_Triggers.Close;
      Qr_Triggers.SQL.Clear;
      Qr_Triggers.SQL.add(' CREATE TRIGGER CADP01_TRIG_TMP01 FOR CADP01');
      Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
      Qr_Triggers.SQL.add(' BEGIN ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01D where P1DCODEMP=OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P1DLOTSEQ=OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P1DCHAVE =OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01V where P1VCODEMP=OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P1VLOTSEQ=OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P1VCHAVE =OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02 where P2CODEMP=OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P2LOTSEQ=OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P2CHAVE =OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02D where P2DCODEMP=OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P2DLOTSEQ=OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P2DCHAVE =OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02S where P2SCODEMP=OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and P2SLOTSEQ=OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and P2SCHAVE =OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADPFP where PFPCODEMP=OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and PFPLOTSEQ=OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and PFPCHAVE =OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADCSF where CFCODEMP=OLD.P1CODEMP ');
      Qr_Triggers.SQL.add('                     and CFLOTSEQ=OLD.P1LOTSEQ ');
      Qr_Triggers.SQL.add('                     and CFCHAVEP =OLD.P1CHAVE; ');
      Qr_Triggers.SQL.add('END;');
      try
         Qr_Triggers.ExecSQL;
         fdm1StartCommit;
      except
//         Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
         end;
      end
   else
      begin
      Qr_Triggers.Close;
      Qr_Triggers.SQL.Clear;
      Qr_Triggers.SQL.add(' CREATE TRIGGER CADDAR_TRIG_TMP01 FOR CADDAR');
      Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
      Qr_Triggers.SQL.add(' BEGIN ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01  where P1CODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P1LOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P1CHAVE =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01D where P1DCODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P1DLOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P1DCHAVE =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP01V where P1VCODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P1VLOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P1VCHAVE =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02 where P2CODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P2LOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P2CHAVE =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02D where P2DCODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P2DLOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P2DCHAVE =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADP02S where P2SCODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and P2SLOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and P2SCHAVE =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADPFP where PFPCODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and PFPLOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and PFPCHAVE =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM CADCSF where CFCODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and CFLOTSEQ=OLD.CRLOTSEQ_CP ');
      Qr_Triggers.SQL.add('                     and CFCHAVEP =OLD.CRNPED; ');
      Qr_Triggers.SQL.add('    DELETE FROM FPCRDUP where FPDUP_CODEMP=OLD.CRCODEMP ');
      Qr_Triggers.SQL.add('                     and FPNUMERO=OLD.CRNUMERO ');
      Qr_Triggers.SQL.add('                     and FPDESD  =OLD.CRDESD ');
      Qr_Triggers.SQL.add('                     and FPTIPO   =OLD.CRDUP ');
      Qr_Triggers.SQL.add('                     and FPDTEMIS=OLD.CRDTEMIS; ');
      Qr_Triggers.SQL.add('END;');
      try
         Qr_Triggers.ExecSQL;
         fdm1StartCommit;
      except
//         Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
      end;
   end;

// INICIO CADDAP
   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER FPCRDUP_TRIG_TMP01 FOR FPCRDUP');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM FPCR  where FPCODEMP=OLD.FPCODEMP ');
   Qr_Triggers.SQL.add('                     and FPLOTSEQ=OLD.FPLOTSEQ ');
   Qr_Triggers.SQL.add('                     and FPLOTE=OLD.FPLOTE; ');
   Qr_Triggers.SQL.add('END;');
   try
      Qr_Triggers.ExecSQL;
      fdm1StartCommit;
   except
//      Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
      end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADDAP_TRIG_TMP01 FOR CADDAP');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');


   Qr_Triggers.SQL.add('    DELETE FROM CADPF1  where PF1CODEMP=OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and PF1LOTSEQ=OLD.CALOTSEQ_CP ');
   Qr_Triggers.SQL.add('                     and PF1CHAVE =OLD.CACHAVEP; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF1V where PF1VCODEMP=OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and PF1VLOTSEQ=OLD.CALOTSEQ_CP ');
   Qr_Triggers.SQL.add('                     and PF1VCHAVE =OLD.CACHAVEP; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADPF2 where PF2CODEMP=OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and PF2LOTSEQ=OLD.CALOTSEQ_CP ');
   Qr_Triggers.SQL.add('                     and PF2CHAVE =OLD.CACHAVEP; ');
   Qr_Triggers.SQL.add('    DELETE FROM FPCPDUP where FPCODEMP=OLD.CACODEMP ');
   Qr_Triggers.SQL.add('                     and FPNUMERO=OLD.CANUMERO ');
   Qr_Triggers.SQL.add('                     and FPDESD  =OLD.CADESD ');
   Qr_Triggers.SQL.add('                     and FPTIPO   =OLD.CADUP ');
   Qr_Triggers.SQL.add('                     and FPDTEMIS=OLD.CADTEMIS ');
   Qr_Triggers.SQL.add('                     and FPCODFOR=OLD.CACODFOR; ');


   Qr_Triggers.SQL.add('END;');
   try
      Qr_Triggers.ExecSQL;
      fdm1StartCommit;
   except
//      Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
      end;

// TERMINO CADDAP



   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADACRE01_TRIG_TMP01 FOR CADACRE01');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADACRE02  where AR2CODEMP=OLD.AR1CODEMP ');
   Qr_Triggers.SQL.add('                     and AR2CHAVE=OLD.AR1CHAVE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADAL1_TRIG_TMP01 FOR CADAL1');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADAL2  where AL2CODEMP=OLD.AL1CODEMP ');
   Qr_Triggers.SQL.add('                     and AL2LOTSEQ=OLD.AL1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and AL2LOTE  =OLD.AL1LOTE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADBAL01_TRIG_TMP01 FOR CADBAL01');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADBAL02  where B2CODEMP=OLD.B1CODEMP ');
   Qr_Triggers.SQL.add('                     and B2CHAVE=OLD.B1CHAVE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADBCL01_TRIG_TMP01 FOR CADBCL01');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADBCL02  where BL2CODEMP=OLD.BL1CODEMP ');
   Qr_Triggers.SQL.add('                     and BL2CHAVE=OLD.BL1CHAVE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCB01_TRIG_TMP01 FOR CADCB01');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCB02  where CB2CODEMP=OLD.CB1CODEMP ');
   Qr_Triggers.SQL.add('                     and CB2LOTSEQ=OLD.CB1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CB2CHAVE=OLD.CB1CHAVE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;

   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCCOR01_TRIG_TMP01 FOR CADCCOR01');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCCOR02  where CC2CODEMP=OLD.CC1CODEMP ');
   Qr_Triggers.SQL.add('                     and CC2CHAVE=OLD.CC1CHAVE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCL01_TRIG_TMP01 FOR CADCL01');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCL02  where CL2CODEMP=OLD.CL1CODEMP ');
   Qr_Triggers.SQL.add('                     and CL2LOTSEQ=OLD.CL1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CL2CHAVE=OLD.CL1CHAVE; ');
   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;


   Qr_Triggers.Close;
   Qr_Triggers.SQL.Clear;
   Qr_Triggers.SQL.add(' CREATE TRIGGER CADCP01_TRIG_TMP01 FOR CADCP01');
   Qr_Triggers.SQL.add(' AFTER DELETE AS  ');
   Qr_Triggers.SQL.add(' BEGIN ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02  where CP2CODEMP=OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2LOTSEQ=OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2CHAVE=OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02_MPER  where CP2MPERCODEMP=OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2MPERLOTSEQ =OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2MPERCHAVE =OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02_MPAR  where CP2MPARCODEMP=OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2MPARLOTSEQ =OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2MPARCHAVE =OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM CADCP02_PREN  where CP2PRENCODEMP=OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2PRENLOTSEQ =OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2PRENCHAVE =OLD.CP1CHAVE; ');

   Qr_Triggers.SQL.add('    DELETE FROM OLD_CADCP01  where CP1CODEMP=OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP1LOTSEQ=OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP1CHAVE=OLD.CP1CHAVE; ');
   Qr_Triggers.SQL.add('    DELETE FROM OLD_CADCP02  where CP2CODEMP=OLD.CP1CODEMP ');
   Qr_Triggers.SQL.add('                     and CP2LOTSEQ=OLD.CP1LOTSEQ ');
   Qr_Triggers.SQL.add('                     and CP2CHAVE=OLD.CP1CHAVE; ');

   Qr_Triggers.SQL.add('END;');
   try
     Qr_Triggers.ExecSQL;
     fdm1StartCommit;
   except
//     Qr_Triggers.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
     end;
   end;
result:=true;

end;

function TFrm_ElimDados.FDeletarTriggers(ptipo: Integer): Boolean;
begin
Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER FPCRDUP_TRIG_TMP01 ');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add('  DROP TRIGGER CADDAR_TRIG_TMP01 ');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

// LIGADOS AO CADDAP
Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER FPCPDUP_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;


Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADDAP_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
  //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADP01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
  //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

// TERMINO CADDÁP
Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADACRE01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADAL1_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADBAL01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADBCL01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;

Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADCB01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;


Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADCCOR01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
//  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;


Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADCL01_TRIG_TMP01 ');
try
   Qr_Triggers.ExecSQL;
   fdm1StartCommit;
except
   //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;


Qr_Triggers.Close;
Qr_Triggers.SQL.Clear;
Qr_Triggers.SQL.add(' DROP TRIGGER CADCP01_TRIG_TMP01');
try
  Qr_Triggers.ExecSQL;
  fdm1StartCommit;
except
 //  MessageDlg('Erro ao Criar Trigges',mtWarning,[mbOk],0);
  end;
result:=true;

end;

procedure TFrm_ElimDados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree
end;

end.

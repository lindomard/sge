unit s_frm_corrige_foreingkey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls,db,dbtables, Buttons;

type
  Tfrm_corrige_foreingkey = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    CB_CADPF: TCheckBox;
    Label1: TLabel;
    edt_codpro: TEdit;
    lbl_nompro: TLabel;
    bbSalvar: TBitBtn;
    CB_CADPF2_CADPRO: TCheckBox;
    CB_CADPED: TCheckBox;
    CB_CADP02_CADPRO: TCheckBox;
    CB_CADPF1_CADFOR: TCheckBox;
    lbl_nomfor: TLabel;
    edt_codfor: TEdit;
    Label3: TLabel;
    CB_CADP01_CADCLI: TCheckBox;
    Label2: TLabel;
    edt_codcli: TEdit;
    lbl_crazao: TLabel;
    procedure edt_codproExit(Sender: TObject);
    procedure edt_codproKeyPress(Sender: TObject; var Key: Char);
    procedure bbSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codforExit(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    function fAtualizarCadpf2: boolean;
    function fAtualizarCadpf1: boolean;

    function fAtualizarCadp01: boolean;

    function fAtualizarCadp02: boolean;

    function fAtualizarCadpf2SemCabecalho: boolean;

    function fAtualizarCadp02SemCabecalho: boolean;

    procedure fSalvarPadrao;


    procedure fLerPadrao;





    function fCriarFkCadpf2(): boolean;
    function fCriarFkCadp02(): boolean;


    function fCriarFkCadpf2Pro(): boolean;
    function fCriarFkCadp02Pro(): boolean;


    function fCriarFkCadpf1For(): boolean;

    function fCriarFkCadp01Cli(): boolean;

    procedure fAtualizarStatus();


  public
    { Public declarations }
  end;

var
  frm_corrige_foreingkey: Tfrm_corrige_foreingkey;

implementation

uses S_DM1, Func, lerarq, func_excecoes, flerarq,s_lerarq_geral, S_DM4;

{$R *.dfm}

procedure Tfrm_corrige_foreingkey.edt_codproExit(Sender: TObject);
begin
edt_CODPRO.Text:=fdeixanum2(edt_CODPRO.Text);
if Trim(edt_CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,edt_CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      edt_CODpro.SetFocus;
      end
   else
      begin
      lbl_nompro.Caption:=DM1.Tb_ProPDCODPRO.ASSTRING+' - '+DM1.Tb_ProPDNOME.AsString;
      end;

   end;

end;


function Tfrm_corrige_foreingkey.fAtualizarCadpf2: boolean;
var
query_PF2: tQuery;
begin
query_PF2:=tQuery.create(nil);
query_pf2.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_PF2.close;
query_PF2.SQL.add('update CADPF2 SET PF2CODPRO='+edt_codpro.text);
query_PF2.SQL.add(' WHERE PF2CODPRO IN ( ');
query_PF2.SQL.add(' SELECT PF2CODPRO ');
query_PF2.SQL.add(' FROM CADPF2 '
                 +' LEFT JOIN CADPRO ON (PDCODPRO = PF2CODPRO) '
                 +' WHERE PDNOME IS NULL '
                 +' group by PF2CODPRO '
                 +') ');
try
   query_PF2.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pf2,79,'SGE','CADPF2');
   result:=false;
   end;
   end;
query_pf2.close;
freeandnil(query_pf2);
result:=true;


end;


function Tfrm_corrige_foreingkey.fAtualizarCadp02: boolean;
var
query_PF2: tQuery;
begin
query_PF2:=tQuery.create(nil);
query_pf2.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_PF2.close;
query_PF2.SQL.add('update CADP02 SET P2CODPRO='+edt_codpro.text);
query_PF2.SQL.add(' WHERE P2CODPRO IN ( ');
query_PF2.SQL.add(' SELECT P2CODPRO ');
query_PF2.SQL.add(' FROM CADP02 '
                 +' LEFT JOIN CADPRO ON (PDCODPRO = P2CODPRO) '
                 +' WHERE PDNOME IS NULL '
                 +' group by P2CODPRO '
                 +') ');
try
   query_PF2.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pf2,79,'SGE','CADP02');
   result:=false;
   end;
   end;
query_pf2.close;
freeandnil(query_pf2);
result:=true;


end;



procedure Tfrm_corrige_foreingkey.edt_codproKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codpro.Text:=fChamaPro(0,'frm_pro_corrige',key);
   key:=#0;
   edt_codproExit(Self);
   end;

end;

procedure Tfrm_corrige_foreingkey.bbSalvarClick(Sender: TObject);
var
mMensagem: String;
begin
mMensagem:='';
if trim(lbl_nompro.caption)='' then
   begin
   mMensagem:=mMensagem+'Código do Produto é obrigatório!'+mQuebraLinha;
   end;
if trim(mMensagem)<>'' then
   begin
   MessageDlg(mMensagem,mtWarning,[mbOk],0);
   exit;
   end;

fSalvarPadrao;

fAtualizarCadpf2;
fAtualizarCadpf1;
fAtualizarCadp02;
fAtualizarCadp01;
fAtualizarStatus();

if (CB_CADPF.Visible  and CB_CADPF.Checked)
   OR (CB_CADPF2_CADPRO.Visible  and CB_CADPF2_CADPRO.Checked)  then
    fAtualizarCadpf2SemCabecalho;
if CB_CADPF.Visible   and CB_CADPF.Checked then
   begin
   if not fCriarFkCadpf2 then
      exit;
   end;
fAtualizarStatus();

if CB_CADPF2_CADPRO.Visible   and CB_CADPF2_CADPRO.Checked then
   begin
   if not fCriarFkCadpf2Pro then
      exit;
   end;
fAtualizarStatus();


//if CB_CADPF1_CADFOR.Visible  and CB_CADPF1_CADFOR.Checked then fAtualizarCadpf2SemCabecalho;
if CB_CADPF1_CADFOR.Visible   and CB_CADPF1_CADFOR.Checked then
   begin
   if not fCriarFkCadpf1For then
      exit;
   end;
fAtualizarStatus();


// PEDIDO DE VENDA



if (CB_CADPED.Visible  and CB_CADPED.Checked) OR 
   (CB_CADP02_CADPRO.Visible  and CB_CADP02_CADPRO.Checked)  then
   fAtualizarCadp02SemCabecalho;
if CB_CADPED.Visible   and CB_CADPED.Checked then
   begin
   if not fCriarFkCadp02 then
      exit;
   end;
fAtualizarStatus();



if CB_CADP02_CADPRO.Visible   and CB_CADP02_CADPRO.Checked then
   begin
   if not fCriarFkCadp02Pro then
      exit;
   end;
fAtualizarStatus();



if CB_CADP01_CADCLI.Visible   and CB_CADP01_CADCLI.Checked then
   begin
   if not fCriarFkCadp01Cli then
      exit;
   end;
fAtualizarStatus();


// PEDIDO DE VENDA




end;

procedure Tfrm_corrige_foreingkey.FormCreate(Sender: TObject);
begin
lbl_nompro.Caption:='';

end;

procedure Tfrm_corrige_foreingkey.fSalvarPadrao;
begin
fDeletaPadroes(1111, '_'+frm_corrige_foreingkey.Name,'');
fGravaPadroes(codusr,'EDT_CODPRO'        ,'TEXT'  ,'_'+frm_corrige_foreingkey.Name,edt_codpro.text);
fGravaPadroes(codusr,'EDT_CODFOR'        ,'TEXT'  ,'_'+frm_corrige_foreingkey.Name,edt_codfor.text);
fGravaPadroes(codusr,'EDT_CODCLI'        ,'TEXT'  ,'_'+frm_corrige_foreingkey.Name,edt_codcli.text);



end;


procedure Tfrm_corrige_foreingkey.fLerPadrao;
begin

if flfilpad(1111,'_'+frm_corrige_foreingkey.Name,'') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODPRO',[]) then
      begin
      edt_codpro.text:=DM4.Tb_FilPad2FPVALOR.Value;
      edt_codproExit(self);
      end;

   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODFOR',[]) then
      begin
      edt_codfor.text:=DM4.Tb_FilPad2FPVALOR.Value;
      edt_codforExit(self);
      end;


   if DM4.Tb_FilPad2.Locate('FPCOMP','EDT_CODCLI',[]) then
      begin
      edt_codcli.text:=DM4.Tb_FilPad2FPVALOR.Value;
      edt_codcliExit(self);
      end;

   end;   

end;

procedure Tfrm_corrige_foreingkey.FormShow(Sender: TObject);
begin
fLerPadrao;
fAtualizarStatus();
end;
procedure Tfrm_corrige_foreingkey.fAtualizarStatus();
begin
CB_CADPF.Visible := not fExisteForeingKey('CADPF2',Banco_Usuario,'CADPF2_FK');
CB_CADPF2_CADPRO.Visible := not fExisteForeingKey('CADPF2',Banco_Usuario,'CADPF2_FK_PRO');
CB_CADPF1_CADFOR.Visible := not fExisteForeingKey('CADPF1',Banco_Usuario,'CADPF1_FK_FOR');

//CB_CADPED.Visible := not fExisteForeingKey('CADP02',Banco_Usuario,'CADP02_FK');
CB_CADP02_CADPRO.Visible := not fExisteForeingKey('CADP02',Banco_Usuario,'CADP02_FK_PRO');
CB_CADP01_CADCLI.Visible := not fExisteForeingKey('CADP01',Banco_Usuario,'CADP01_FK_CLI');


end;


function Tfrm_corrige_foreingkey.fAtualizarCadpf2SemCabecalho: boolean;
var
query_PF2: tQuery;
begin
query_PF2:=tQuery.create(nil);
query_pf2.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_PF2.close;
query_PF2.SQL.add('DELETE  FROM CADPF2  FORA '
                 +' WHERE EXISTS ( '
                 +' select PF1CHAVE '
                 +' from CADPF2 DENTRO '
                 +' left join CADPF1 on (PF1CHAVE=PF2CHAVE AND PF1CODEMP=DENTRO.PF2CODEMP AND PF1LOTSEQ=DENTRO.PF2LOTSEQ) '
                 +' WHERE '
                 +' FORA.PF2CHAVE = DENTRO.PF2CHAVE '
                 +' AND FORA.PF2CODEMP = DENTRO.PF2CODEMP '
                 +' AND FORA.PF2LOTSEQ = DENTRO.PF2LOTSEQ '
                 +' AND PF1CHAVE IS NULL '
                 +' ) ');

try
   query_PF2.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pf2,190,'SGE','CADPF2');
   result:=false;
   end;
   end;
query_PF2.close;
freeandnil(query_pf2);
result:=true;


end;




function Tfrm_corrige_foreingkey.fAtualizarCadp02SemCabecalho: boolean;
var
query_PF2: tQuery;
begin
query_PF2:=tQuery.create(nil);
query_pf2.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_PF2.close;
query_PF2.SQL.add('DELETE  FROM CADP02  FORA '
                 +' WHERE EXISTS ( '
                 +' select P1CHAVE '
                 +' from CADP02 DENTRO '
                 +' left join CADP01 on (P1CHAVE=P2CHAVE AND P1CODEMP=DENTRO.P2CODEMP AND P1LOTSEQ=DENTRO.P2LOTSEQ AND P1ORDEM=DENTRO.P2ORDEM) '
                 +' WHERE '
                 +' FORA.P2CHAVE = DENTRO.P2CHAVE '
                 +' AND FORA.P2CODEMP = DENTRO.P2CODEMP '
                 +' AND FORA.P2LOTSEQ = DENTRO.P2LOTSEQ '
                 +' AND P1CHAVE IS NULL '
                 +' ) ');

try
   query_PF2.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pf2,381,'SGE','CADP02');
   result:=false;
   end;
   end;
query_PF2.close;
freeandnil(query_pf2);
result:=true;


end;




function Tfrm_corrige_foreingkey.fCriarFkCadpf2(): boolean;
var

query_FK: tQuery;
mMensagem: String;
begin
result:=false;
query_FK:=tQuery.create(nil);
query_FK.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_FK.close;
query_FK.SQL.Clear;
query_FK.SQL.add('alter table CADPF2 '
                +' add constraint CADPF2_FK foreign key (PF2ID_PED01_NEW) '
                +'  references CADPF1 (PF1ID_NEW) ');
try
   query_FK.ExecSQL;
   fdm1StartCommit;
   CB_CADPF.Visible:=false;
except on e : exception do
   begin
   mMensagem:='Erro ao criar foreing key uma das possiveis causas ' + mQuebraLinha
              +'existem indices nao criados '+mQuebraLinha
              +'existem detalhes sem cabecalhos tabela de pedido de comprar ';
   MessageDlg(mMensagem,mtWarning,[mbok],0);
   ex_erroSql_Novo(query_FK,190,'SGE','CADPF2');
   end;
   end;

query_fk.close;
freeandnil(query_fk);

end;



function Tfrm_corrige_foreingkey.fCriarFkCadp02(): boolean;
var

query_FK: tQuery;
mMensagem: String;
begin
result:=false;
query_FK:=tQuery.create(nil);
query_FK.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_FK.close;
query_FK.SQL.Clear;
query_FK.SQL.add('alter table CADP02 '
                +' add constraint CADP02_FK foreign key (P2CHAVE,P2LOTSEQ,P2CODEMP,P2ORDEM) '
                +'  references CADP01 (P1CHAVE,P1LOTSEQ,P1CODEMP,P1ORDEM) ');
try
   query_FK.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   mMensagem:='Erro ao criar foreing key uma das possiveis causas ' + mQuebraLinha
              +'existem indices nao criados '+mQuebraLinha
              +'existem detalhes sem cabecalhos tabela de pedido de vendas ';
   MessageDlg(mMensagem,mtWarning,[mbok],0);
   ex_erroSql_Novo(query_FK,496,'SGE','CADP02');
   end;
   end;

query_fk.close;
freeandnil(query_fk);

end;


function Tfrm_corrige_foreingkey.fCriarFkCadpf2Pro(): boolean;
var

query_FK: tQuery;
mMensagem: String;
campo_emp_pf2: string;
campo_emp_pro: string;
begin


campo_emp_pf2 :=fAdicionaCodemp('CADPRO','PF2CODEMP');
if trim(campo_emp_pf2)<>'' then
   campo_emp_pf2:=','+campo_emp_pf2;

campo_emp_pro :=fAdicionaCodemp('CADPRO','PDCODEMP');
if trim(campo_emp_pro)<>'' then
   campo_emp_pro:=','+campo_emp_pro;

result:=false;
query_FK:=tQuery.create(nil);
query_FK.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_FK.close;
query_FK.SQL.Clear;
query_FK.SQL.add('alter table CADPF2 '
                +' add constraint CADPF2_FK_PRO foreign key (PF2CODPRO'+campo_emp_pf2+') '
                +'  references CADPRO (PDCODPRO'+campo_emp_pro+') ');
try
   query_FK.ExecSQL;                                       
   fdm1StartCommit;
except on e : exception do
   begin
   mMensagem:='Erro ao criar foreing key CADPF2/CADPRO uma das possiveis causas ' + mQuebraLinha
              +'existem indices nao criados '+mQuebraLinha
              +'existem detalhes sem cabecalhos tabela de pedido de comprar ';
   MessageDlg(mMensagem,mtWarning,[mbok],0);
   ex_erroSql_Novo(query_FK,190,'SGE','CADPF2');
   end;
   end;

query_fk.close;
freeandnil(query_fk);

end;



function Tfrm_corrige_foreingkey.fCriarFkCadp02Pro(): boolean;
var

query_FK: tQuery;
mMensagem: String;
campo_emp_pf2: string;
campo_emp_pro: string;
begin


campo_emp_pf2 :=fAdicionaCodemp('CADPRO','P2CODEMP');
if trim(campo_emp_pf2)<>'' then
   campo_emp_pf2:=','+campo_emp_pf2;

campo_emp_pro :=fAdicionaCodemp('CADPRO','PDCODEMP');
if trim(campo_emp_pro)<>'' then
   campo_emp_pro:=','+campo_emp_pro;

result:=false;
query_FK:=tQuery.create(nil);
query_FK.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_FK.close;
query_FK.SQL.Clear;
query_FK.SQL.add('alter table CADP02 '
                +' add constraint CADP02_FK_PRO foreign key (P2CODPRO'+campo_emp_pf2+') '
                +'  references CADPRO (PDCODPRO'+campo_emp_pro+') ');
try
   query_FK.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   mMensagem:='Erro ao criar foreing key CADP02/CADPRO uma das possiveis causas ' + mQuebraLinha
              +'existem indices nao criados '+mQuebraLinha
              +'existem detalhes sem cabecalhos tabela de pedido de comprar ';
   MessageDlg(mMensagem,mtWarning,[mbok],0);
   ex_erroSql_Novo(query_FK,588,'SGE','CADP02');
   end;
   end;

query_fk.close;
freeandnil(query_fk);

end;




procedure Tfrm_corrige_foreingkey.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;



function Tfrm_corrige_foreingkey.fCriarFkCadpf1For(): boolean;
var

query_FK: tQuery;
mMensagem: String;
campo_emp_pf2: string;
campo_emp_pro: string;
begin


campo_emp_pf2 :=fAdicionaCodemp('CADFOR','PF1CODEMP');
if trim(campo_emp_pf2)<>'' then
   campo_emp_pf2:=','+campo_emp_pf2;

campo_emp_pro :=fAdicionaCodemp('CADFOR','FCODEMP');
if trim(campo_emp_pro)<>'' then
   campo_emp_pro:=','+campo_emp_pro;

result:=false;
query_FK:=tQuery.create(nil);
query_FK.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_FK.close;
query_FK.SQL.Clear;
query_FK.SQL.add('alter table CADPF1 '
                +' add constraint CADPF1_FK_FOR foreign key (PF1CODFOR'+campo_emp_pf2+') '
                +'  references CADFOR (FCODFOR'+campo_emp_pro+') ');
try
   query_FK.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   mMensagem:='Erro ao criar foreing key CADPF1/CADFOR uma das possiveis causas ' + mQuebraLinha
              +'existem indices nao criados '+mQuebraLinha
              +'existem codigo fornecedor nao cadastrado';
   MessageDlg(mMensagem,mtWarning,[mbok],0);
   ex_erroSql_Novo(query_FK,416,'SGE','CADPF1');
   end;
   end;

query_fk.close;
freeandnil(query_fk);

end;



function Tfrm_corrige_foreingkey.fCriarFkCadp01Cli(): boolean;
var

query_FK: tQuery;
mMensagem: String;
campo_emp_pf2: string;
campo_emp_pro: string;
begin


campo_emp_pf2 :=fAdicionaCodemp('CADCLI','P1CODEMP');
if trim(campo_emp_pf2)<>'' then
   campo_emp_pf2:=','+campo_emp_pf2;

campo_emp_pro :=fAdicionaCodemp('CADCLI','CCODEMP');
if trim(campo_emp_pro)<>'' then
   campo_emp_pro:=','+campo_emp_pro;

result:=false;
query_FK:=tQuery.create(nil);
query_FK.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_FK.close;
query_FK.SQL.Clear;
query_FK.SQL.add('alter table CADP01 '
                +' add constraint CADP01_FK_CLI foreign key (P1CODCLI'+campo_emp_pf2+') '
                +'  references CADCLI (CCODCLI'+campo_emp_pro+') ');
try
   query_FK.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   mMensagem:='Erro ao criar foreing key CADP0/CADCLI uma das possiveis causas ' + mQuebraLinha
              +'existem indices nao criados '+mQuebraLinha
              +'existem codigo clientes  nao cadastrado';
   MessageDlg(mMensagem,mtWarning,[mbok],0);
   ex_erroSql_Novo(query_FK,693,'SGE','CADP01');
   end;
   end;

query_fk.close;
freeandnil(query_fk);

end;




procedure Tfrm_corrige_foreingkey.edt_codforExit(Sender: TObject);
begin
edt_CODFOR.Text:=fdeixanum2(edt_codfor.Text);
if Trim(edt_codfor.Text)<>'' then
   begin
   if not flcadfor(1,0,edt_CODFOR.Text) then
      begin
      fmensagem('Forncedor nao Cadastrado!',0,['0'],0);
      edt_CODfor.SetFocus;
      end
   else
      begin
      lbl_nomfor.Caption:=DM1.Tb_ForFCODFOR.ASSTRING+' - '+DM1.Tb_forFRAZAO.AsString;
      end;

   end;

end;

procedure Tfrm_corrige_foreingkey.edt_codforKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfor.Text:=fChamaFor(0,'frm_pro_corrige',key);
   key:=#0;
   edt_codforExit(Self);
   end;

end;



function Tfrm_corrige_foreingkey.fAtualizarCadpf1: boolean;
var
query_PF2: tQuery;
begin
query_PF2:=tQuery.create(nil);
query_pf2.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_PF2.close;
query_PF2.SQL.add('update CADPF1 SET PF1CODFOR='+edt_codfor.text);
query_PF2.SQL.add(' WHERE PF1CODFOR IN ( ');
query_PF2.SQL.add(' SELECT PF1CODFOR ');
query_PF2.SQL.add(' FROM CADPF1 '
                 +' LEFT JOIN CADFOR ON (FCODFOR = PF1CODFOR) '
                 +' WHERE FRAZAO IS NULL '
                 +' group by PF1CODFOR '
                 +') ');
try
   query_PF2.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pf2,499,'SGE','CADPF1');
   result:=false;
   end;
   end;
query_pf2.close;
freeandnil(query_pf2);
result:=true;


end;



function Tfrm_corrige_foreingkey.fAtualizarCadp01: boolean;
var
query_PF2: tQuery;
begin
query_PF2:=tQuery.create(nil);
query_pf2.DatabaseName:=DM1.SG_ASSOC.DatabaseName;
query_PF2.close;
query_PF2.SQL.add('update CADP01 SET P1CODCLI='+edt_codcli.text);
query_PF2.SQL.add(' WHERE P1CODCLI IN ( ');
query_PF2.SQL.add(' SELECT P1CODCLI ');
query_PF2.SQL.add(' FROM CADP01 '
                 +' LEFT JOIN CADCLI ON (CCODCLI = P1CODCLI) '
                 +' WHERE CRAZAO IS NULL '
                 +' group by P1CODCLI '
                 +') ');
try
   query_PF2.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_pf2,499,'SGE','CADP01');
   result:=false;
   end;
   end;
query_pf2.close;
freeandnil(query_pf2);
result:=true;


end;


procedure Tfrm_corrige_foreingkey.edt_codcliExit(Sender: TObject);
begin
edt_codcli.Text:=fdeixanum2(edt_codcli.Text);
if Trim(edt_codcli.Text)<>'' then
   begin
   if not flcadcli(1,0,edt_codcli.Text) then
      begin
      fmensagem('Cliente nao Cadastrado!',0,['0'],0);
      edt_codcli.SetFocus;
      end
   else
      begin
      lbl_crazao.Caption:=DM1.Tb_CliCRAZAO.ASSTRING+' - '+DM1.Tb_CliCRAZAO.AsString;
      end;

   end;

end;

procedure Tfrm_corrige_foreingkey.edt_codcliKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text:=fChamaCli(0,'frm_pro_corrige',key);
   key:=#0;
   edt_codcliExit(Self);
   end;

end;

end.

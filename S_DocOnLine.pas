unit S_DocOnLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls,S_DM1,S_DM4,func, ExtCtrls, Spin, DB, DBTables;

type
  TFrm_DocOnLine = class(TForm)
    CB_ONLINE_LSEP: TCheckBox;
    CB_ONLINE_ORC: TCheckBox;
    BB_ONLINE_LSEP: TBitBtn;
    BB_ONLINE_ORC: TBitBtn;
    CB_ONLINE_VAL: TCheckBox;
    BB_ONLINE_VAL: TBitBtn;
    CB_ONLINE_NF: TCheckBox;
    BB_ONLINE_NF: TBitBtn;
    bbSair: TBitBtn;
    CB_ONLINE_LSEP_CONF: TCheckBox;
    CB_ONLINE_ORC_CONF: TCheckBox;
    CB_ONLINE_VAL_CONF: TCheckBox;
    CB_ONLINE_NF_CONF: TCheckBox;
    CB_ONLINE_LSEP_SELIMP: TCheckBox;
    CB_ONLINE_ORC_SELIMP: TCheckBox;
    lbl_valido: TLabel;
    Timer1: TTimer;
    gb_nota: TGroupBox;
    Memo_notas: TMemo;
    Panel_boleto: TPanel;
    CB_ONLINE_BOL: TCheckBox;
    BB_ONLINE_BOL: TBitBtn;
    Label2: TLabel;
    CB_ONLINE_BOL_PADRAO: TComboBox;
    CB_ONLINE_BOL_VISUALIZAR: TCheckBox;
    edt_online_bol_qtdvias: TSpinEdit;
    Label3: TLabel;
    Panel_duplicata: TPanel;
    CB_ONLINE_DUP: TCheckBox;
    BB_ONLINE_DUP: TBitBtn;
    Label1: TLabel;
    cb_online_dup_padrao: TComboBox;
    cb_online_dup_visualizar: TCheckBox;
    Label10: TLabel;
    edt_ONLINE_DUP_QTDVIAS: TSpinEdit;
    CB_ONLINE_DUP_CART: TCheckBox;
    Panel1: TPanel;
    CB_NFCE_online: TCheckBox;
    bbNFCE_Salvar: TBitBtn;
    cb_NAO_nfce_visualizar: TCheckBox;
    Label4: TLabel;
    spin_nfce_qtdvias: TSpinEdit;
    procedure bbSairClick(Sender: TObject);
    procedure CB_ONLINE_LSEPClick(Sender: TObject);
    procedure CB_ONLINE_ORCClick(Sender: TObject);
    procedure CB_ONLINE_VALClick(Sender: TObject);
    procedure CB_ONLINE_NFClick(Sender: TObject);
    procedure CB_ONLINE_DUPClick(Sender: TObject);
    procedure CB_ONLINE_BOLClick(Sender: TObject);
    procedure BB_ONLINE_LSEPClick(Sender: TObject);
    procedure BB_ONLINE_ORCClick(Sender: TObject);
    procedure BB_ONLINE_VALClick(Sender: TObject);
    procedure BB_ONLINE_NFClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RG_DUPPADRAOClick(Sender: TObject);
    procedure RG_BOLPADRAOClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_ONLINE_DUPClick(Sender: TObject);
    procedure BB_ONLINE_BOLClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Panel_boletoEnter(Sender: TObject);
    procedure Panel_boletoExit(Sender: TObject);
    procedure Panel_duplicataEnter(Sender: TObject);
    procedure Panel_duplicataExit(Sender: TObject);
    procedure CB_NFCE_onlineClick(Sender: TObject);
    procedure bbNFCE_SalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure pAtualizaNotas(pOrigem: String);

    procedure fIncluirDocOnline;

    function fAtualizarDocOnline(pDocumento: String; pQtdVias: Integer; pVisualizar: String; pOnline: String): Boolean;

    procedure fLerDocOnline;


  public
    { Public declarations }
  end;

var
  Frm_DocOnLine: TFrm_DocOnLine;

implementation

uses func_excecoes, lerarq;

{$R *.dfm}

procedure TFrm_DocOnLine.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DocOnLine.CB_ONLINE_LSEPClick(Sender: TObject);
begin
if not BB_ONLINE_LSEP.Enabled then
   BB_ONLINE_LSEP.Enabled:=true;

end;

procedure TFrm_DocOnLine.CB_ONLINE_ORCClick(Sender: TObject);
begin
if not BB_ONLINE_ORC.Enabled then
   BB_ONLINE_ORC.Enabled:=true;

end;

procedure TFrm_DocOnLine.CB_ONLINE_VALClick(Sender: TObject);
begin
if not BB_ONLINE_VAL.Enabled then
   BB_ONLINE_VAL.Enabled:=true;

end;

procedure TFrm_DocOnLine.CB_ONLINE_NFClick(Sender: TObject);
begin
if not BB_ONLINE_NF.Enabled then
   BB_ONLINE_NF.Enabled:=true;

end;

procedure TFrm_DocOnLine.CB_ONLINE_DUPClick(Sender: TObject);
begin
if not BB_ONLINE_DUP.Enabled then
   BB_ONLINE_DUP.Enabled:=true;

end;

procedure TFrm_DocOnLine.CB_ONLINE_BOLClick(Sender: TObject);
begin
if not BB_ONLINE_BOL.Enabled then
   BB_ONLINE_BOL.Enabled:=true;

end;

procedure TFrm_DocOnLine.BB_ONLINE_LSEPClick(Sender: TObject);
begin
BB_ONLINE_LSEP.Enabled:=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPAR set PONLINE_LSEP=0'+iif(CB_ONLINE_LSEP.Checked,'1','0')
                  +' ,PONLINE_LSEP_CONF=0'+iif(CB_ONLINE_LSEP_CONF.Checked,'1','0')
                  +' ,PONLINE_LSEP_SELIMP=0'+iif(CB_ONLINE_LSEP_SELIMP.Checked,'1','0')
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PCODSEQ=1');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,111,'Frm_DocOnLine','CADPAR');
   end;
end;

procedure TFrm_DocOnLine.BB_ONLINE_ORCClick(Sender: TObject);
begin
BB_ONLINE_ORC.Enabled:=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPAR set PONLINE_ORC=0'+iif(CB_ONLINE_ORC.Checked,'1','0')
                  +', PONLINE_ORC_CONF=0'+iif(CB_ONLINE_ORC_CONF.Checked,'1','0')
                  +', PONLINE_ORC_SELIMP=0'+iif(CB_ONLINE_ORC_SELIMP.Checked,'1','0')
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PCODSEQ=1');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,130,'Frm_DocOnLine','CADPAR');
   end;

end;

procedure TFrm_DocOnLine.BB_ONLINE_VALClick(Sender: TObject);
begin
BB_ONLINE_VAL.Enabled:=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPAR set PONLINE_VAL=0'+iif(CB_ONLINE_VAL.Checked,'1','0')
                  +' ,PONLINE_VAL_CONF=0'+iif(CB_ONLINE_VAL_CONF.Checked,'1','0')
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PCODSEQ=1');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,150,'Frm_DocOnLine','CADPAR');
   end;

end;

procedure TFrm_DocOnLine.BB_ONLINE_NFClick(Sender: TObject);
begin
BB_ONLINE_NF.Enabled:=false;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADPAR set PONLINE_NF=0'+iif(CB_ONLINE_NF.Checked,'1','0')
                  +' ,PONLINE_NF_CONF=0'+iif(CB_ONLINE_NF_CONF.Checked,'1','0')
                  +' where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPAR',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                  +' PCODSEQ=1');
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(01,166,'Frm_DocOnLine','CADPAR');
   end;

end;

procedure TFrm_DocOnLine.FormActivate(Sender: TObject);
begin
lbl_valido.caption:='Valido somente para a empresa '+inttostr(codemp);
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
if DM4.Tb_Par01.Eof then
   begin
   DM4.Tb_Par01.Append;
   DM4.Tb_Par01PCODEMP.Value:=codemp;
   DM4.Tb_Par01PCODSEQ.Value:=1;
   DM4.Tb_Par01.Post;
   end;
CB_ONLINE_LSEP.Checked        :=DM4.Tb_Par01PONLINE_LSEP.Value=1;
CB_ONLINE_LSEP_CONF.Checked   :=DM4.Tb_Par01PONLINE_LSEP_CONF.Value=1;
CB_ONLINE_LSEP_SELIMP.Checked := DM4.Tb_Par01PONLINE_LSEP_SELIMP.Value=1;
CB_ONLINE_ORC.Checked         :=DM4.Tb_Par01PONLINE_ORC.Value=1;
CB_ONLINE_ORC.Checked         :=DM4.Tb_Par01PONLINE_ORC_CONF.Value=1;
CB_ONLINE_ORC_SELIMP.Checked  := DM4.Tb_Par01PONLINE_ORC_SELIMP.Value=1;
CB_ONLINE_VAL.Checked      :=DM4.Tb_Par01PONLINE_VAL.Value=1;
CB_ONLINE_VAL.Checked      :=DM4.Tb_Par01PONLINE_VAL_CONF.Value=1;
CB_ONLINE_NF.Checked       :=DM4.Tb_Par01PONLINE_NF.Value=1;
CB_ONLINE_NF.Checked       :=DM4.Tb_Par01PONLINE_NF_CONF.Value=1;



CB_ONLINE_DUP.Checked                :=fdadosconfig_geral('ONLINE_DUP_'+inttostr(codemp))='true';
cb_online_dup_padrao.ItemIndex       :=valint(fdadosconfig_geral('ONLINE_DUP_PADRAO_'+inttostr(codemp)));
cb_online_dup_visualizar.Checked     :=fdadosconfig_geral('ONLINE_DUP_VISUALIZAR_'+inttostr(codemp))='false';
edt_ONLINE_DUP_QTDVIAS.Value         :=VALINT(fdadosconfig_geral('ONLINE_DUP_QTDVIAS_'+inttostr(codemp)));
CB_ONLINE_DUP_CART.Checked           :=fdadosconfig_geral('ONLINE_DUP_SO_CARTEIRA_'+inttostr(codemp))='true';

IF edt_ONLINE_DUP_QTDVIAS.Value<1 then
   edt_ONLINE_DUP_QTDVIAS.Value:=1;



CB_ONLINE_BOL.Checked                :=fdadosconfig_geral('ONLINE_BOL_'+inttostr(codemp))='true';
cb_online_BOL_padrao.ItemIndex       :=valint(fdadosconfig_geral('ONLINE_BOL_PADRAO_'+inttostr(codemp)));
cb_online_BOL_visualizar.Checked     :=fdadosconfig_geral('ONLINE_BOL_VISUALIZAR_'+inttostr(codemp))='false';
edt_ONLINE_BOL_QTDVIAS.Value         :=VALINT(fdadosconfig_geral('ONLINE_BOL_QTDVIAS_'+inttostr(codemp)));


IF edt_ONLINE_BOL_QTDVIAS.Value<1 then
   edt_ONLINE_BOL_QTDVIAS.Value:=1;

BB_ONLINE_LSEP.Enabled    :=False;
BB_ONLINE_ORC.Enabled     :=False;
BB_ONLINE_VAL.Enabled     :=False;
BB_ONLINE_NF.Enabled      :=False;
BB_ONLINE_DUP.Enabled     :=False;
BB_ONLINE_BOL.Enabled     :=False;


end;

procedure TFrm_DocOnLine.RG_DUPPADRAOClick(Sender: TObject);
begin
if not BB_ONLINE_DUP.Enabled then
   BB_ONLINE_DUP.Enabled:=true;

end;

procedure TFrm_DocOnLine.RG_BOLPADRAOClick(Sender: TObject);
begin
if not BB_ONLINE_BOL.Enabled then
   BB_ONLINE_BOL.Enabled:=true;

end;

procedure TFrm_DocOnLine.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
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

end;

procedure TFrm_DocOnLine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_DocOnLine.BB_ONLINE_DUPClick(Sender: TObject);
begin
BB_ONLINE_DUP.Enabled:=false;
IF edt_ONLINE_DUP_QTDVIAS.Value<1 then
   edt_ONLINE_DUP_QTDVIAS.Value:=1;


fGravarconfig_geral('ONLINE_DUP_'+inttostr(codemp),iif( CB_ONLINE_DUP.Checked=true,'true','false'));
fGravarconfig_geral('ONLINE_DUP_PADRAO_'+inttostr(codemp),Inttostr(cb_online_dup_padrao.itemindex));
fGravarconfig_geral('ONLINE_DUP_VISUALIZAR_'+inttostr(codemp),iif( CB_ONLINE_DUP_VISUALIZAR.Checked=true,'false','true'));
fGravarconfig_geral('ONLINE_DUP_QTDVIAS_'+inttostr(codemp),edt_online_duP_qtdvias.Text);
fGravarconfig_geral('ONLINE_DUP_SO_CARTEIRA_'+inttostr(codemp),iif( CB_ONLINE_DUP_CART.Checked=true,'true','false'));


end;

procedure TFrm_DocOnLine.BB_ONLINE_BOLClick(Sender: TObject);
begin
BB_ONLINE_BOL.Enabled:=false;

IF edt_ONLINE_BOL_QTDVIAS.Value<1 then
   edt_ONLINE_BOL_QTDVIAS.Value:=1;


fGravarconfig_geral('ONLINE_BOL_'+inttostr(codemp),iif( CB_ONLINE_BOL.Checked=true,'true','false'));
fGravarconfig_geral('ONLINE_BOL_PADRAO_'+inttostr(codemp),Inttostr(cb_online_BOL_padrao.itemindex));
fGravarconfig_geral('ONLINE_BOL_VISUALIZAR_'+inttostr(codemp),iif( CB_ONLINE_BOL_VISUALIZAR.Checked=true,'false','true'));
fGravarconfig_geral('ONLINE_BOL_QTDVIAS_'+inttostr(codemp),edt_online_BOL_qtdvias.Text);


end;

procedure TFrm_DocOnLine.Timer1Timer(Sender: TObject);
begin
if lbl_valido.font.color=clWindow then
   lbl_valido.font.color:=cllime
else
   lbl_valido.font.color:=clWindow;

end;



procedure tFrm_doconline.pAtualizaNotas(pOrigem: String);
begin
memo_notas.lines.clear;
if pOrigem='' then
   begin
   gb_nota.Visible:=false;
   end
else
   begin
   gb_nota.Visible:=true;         
   if pOrigem='BOLETO' then
      begin
      memo_notas.lines.add('Para a Emissao de Boleto Bancario online:');
      memo_notas.lines.add('1) - Pedido tem que ser feito com um codigo de banco. Confirme configurações e Homologação do banco');
      memo_notas.lines.add('2) - a forma de pagamento Tem que ser uma que possui vinculo com cobrança bancaria');
      end
   else if pOrigem='DUPLICATA' then
      begin
      memo_notas.lines.add('Para a Emissao de Duplicatas online:');
      memo_notas.lines.add('1) - se marcado so carteira nao sera impresso para os boletos que possuir codigo do banco');
      end;
   end;

end;

procedure TFrm_DocOnLine.Panel_boletoEnter(Sender: TObject);
begin
pAtualizaNotas('BOLETO');

end;

procedure TFrm_DocOnLine.Panel_boletoExit(Sender: TObject);
begin
pAtualizaNotas('');

end;

procedure TFrm_DocOnLine.Panel_duplicataEnter(Sender: TObject);
begin
pAtualizaNotas('DUPLICATA');

end;

procedure TFrm_DocOnLine.Panel_duplicataExit(Sender: TObject);
begin
pAtualizaNotas('');

end;

procedure TFrm_DocOnLine.CB_NFCE_onlineClick(Sender: TObject);
begin
   bbNFCE_Salvar.Enabled:=true;

end;

procedure TFrm_DocOnLine.bbNFCE_SalvarClick(Sender: TObject);
begin

bbNFCE_Salvar.Enabled:=false;

fAtualizarDocOnline('NFCE',spin_nfce_qtdvias.Value, IIF(cb_NAO_nfce_visualizar.Checked=TRUE,'N','S'), iif(CB_NFCE_online.Checked=true,'S','N'));


end;


procedure TFrm_DocOnLine.fIncluirDocOnline;
var
query_exe: tQuery;
begin
query_exe:=tQuery.create(nil);
query_exe.databasename:=DM1.sg_ASSOC.databasename;
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('select count(*) as qtd from  CADDOCONLINE '
                 +' where DO_DOCUMENTO=:DO_DOCUMENTO');
query_exe.Parambyname('DO_DOCUMENTO').asstring :='NFCE';
try
   query_exe.open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_exe,456,'SGE'+E.Message,'CADDOCONLINE');
   end;
   end;
if (query_exe.IsEmpty) or (query_exe.fieldbyname('qtd').AsInteger<1) THEN
   begin
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('insert into CADDOCONLINE ('
                     +'DO_DOCUMENTO'
                     +',DO_QTDVIAS'
                     +',DO_VISUALIZAR'
                     +',DO_ONLINE'
                     +') values ('
                     +':DO_DOCUMENTO'
                     +',:DO_QTDVIAS'
                     +',:DO_VISUALIZAR'
                     +',:DO_ONLINE'
                     +') ');

   query_exe.Parambyname('DO_DOCUMENTO').asstring :='NFCE';
   query_exe.Parambyname('DO_QTDVIAS').asinteger   :=1;
   query_exe.Parambyname('DO_VISUALIZAR').asstring :='N';
   query_exe.Parambyname('DO_ONLINE').Asstring     :='N';
   try
      query_exe.execsql;
      fdm1StartCommit;
   except on e : exception do
      begin
      ex_erroSql_Novo(query_exe,478,'SGE'+E.Message,'CADDOCONLINE');
      end;
      end;
   end;   
query_exe.close;
freeandnil(query_exe);

end;
procedure TFrm_DocOnLine.FormShow(Sender: TObject);
begin
fIncluirDocOnline;
fLerDocOnline;


end;



function TFrm_DocOnLine.fAtualizarDocOnline(pDocumento: String; pQtdVias: Integer; pVisualizar: String; pOnline: String): Boolean;

var
query_exe: tQuery;
begin
query_exe:=tQuery.create(nil);
query_exe.databasename:=DM1.sg_ASSOC.databasename;
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Update  CADDOCONLINE set '
                  +' DO_QTDVIAS = :DO_QTDVIAS'
                  +',DO_VISUALIZAR = :DO_VISUALIZAR '
                  +',DO_ONLINE = :DO_ONLINE '
                  +' where DO_DOCUMENTO = :DO_DOCUMENTO ');
query_exe.Parambyname('DO_DOCUMENTO').asstring :=pDocumento;
query_exe.Parambyname('DO_QTDVIAS').asinteger   :=pqtdVias;
query_exe.Parambyname('DO_VISUALIZAR').asstring :=pVisualizar;
query_exe.Parambyname('DO_ONLINE').Asstring     :=pOnline;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   ex_erroSql_Novo(query_exe,478,'SGE'+E.Message,'CADDOCONLINE');
   end;
   end;
query_exe.close;
freeandnil(query_exe);

end;




procedure TFrm_DocOnLine.fLerDocOnline;
var
query_exe: tQuery;
begin
query_exe:=tQuery.create(nil);
query_exe.databasename:=DM1.sg_ASSOC.databasename;
query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('select  '
                  +' DO_DOCUMENTO'
                  +',DO_QTDVIAS'
                  +',DO_VISUALIZAR'
                  +',DO_ONLINE'
                  +' from  CADDOCONLINE '
                  +' where DO_DOCUMENTO = :DO_DOCUMENTO '
                  +' ');

query_exe.Parambyname('DO_DOCUMENTO').asstring :='NFCE';
try
   query_exe.Open;
except on e : exception do
   begin
   ex_erroSql_Novo(query_exe,478,'SGE'+E.Message,'CADDOCONLINE');
   end;
   end;
if query_exe.IsEmpty=false then
   begin
   CB_NFCE_online.Checked         := query_exe.fieldbyname('DO_ONLINE').AsString='S';
   cb_NAO_nfce_visualizar.Checked := query_exe.fieldbyname('DO_VISUALIZAR').AsString='N';
   spin_nfce_qtdvias.Value        := query_exe.fieldbyname('DO_QTDVIAS').AsInteger;
   end;
query_exe.close;
freeandnil(query_exe);

end;

end.

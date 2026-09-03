unit s_Farma_SNGPC_DadosDaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CheckLst, Mask, ToolEdit, ExtCtrls, Grids,
  DBGrids, DB, DBTables, RxDBComb;

type
  TFrm_Farma_SNGPC_DadosdaCompra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    MDT1: TDateEdit;
    MDT2: TDateEdit;
    tipo_dados: TCheckListBox;
    bbExportar: TBitBtn;
    bbSair: TBitBtn;
    bbAtualizar: TBitBtn;
    gb_pedenc: TGroupBox;
    DBGrid1: TDBGrid;
    gb_itensped: TGroupBox;
    DBGrid_itens: TDBGrid;
    gb_dadositens: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    edt_numlot: TEdit;
    edt_quant: TEdit;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    Qr_PedFor: TQuery;
    src_pedfor: TDataSource;
    Qr_PedForPF1CHAVE: TFloatField;
    Qr_PedForPF1LOTSEQ: TFloatField;
    Qr_PedForPF1CODEMP: TFloatField;
    Qr_PedForPF1CODFOR: TFloatField;
    Qr_PedForPF1TOTLIQ: TFloatField;
    Qr_PedForPF1DATANF: TDateTimeField;
    Qr_PedForPF1NUMNF: TFloatField;
    Qr_PedForFRAZAO: TStringField;
    Qr_PedForFBAIRRO: TStringField;
    Qr_PedForFCIDADE: TStringField;
    Qr_PedForFUF: TStringField;
    Src_ItensPed: TDataSource;
    Qr_ItensPed: TQuery;
    Qr_ItensPedPF2CHAVE: TFloatField;
    Qr_ItensPedPF2CODEMP: TFloatField;
    Qr_ItensPedPF2LOTSEQ: TFloatField;
    Qr_ItensPedPF2CODPRO: TFloatField;
    Qr_ItensPedPF2ITEM: TFloatField;
    Qr_ItensPedPF2PU: TFloatField;
    Qr_ItensPedPF2TOTDES: TFloatField;
    Qr_ItensPedPF2QTDP: TFloatField;
    Qr_ItensPedPDNOME: TStringField;
    Qr_ItensPedPDUND: TStringField;
    Src_DadosComp: TDataSource;
    Qr_DadosComp: TQuery;
    Qr_DadosCompPF2L_CODEMP: TFloatField;
    Qr_DadosCompPF2L_CODPRO: TFloatField;
    Qr_DadosCompPF2L_LOTSEQ: TFloatField;
    Qr_DadosCompPF2L_CHAVE: TFloatField;
    Qr_DadosCompPF2L_ITEM: TFloatField;
    Qr_DadosCompPF2L_LOTE: TStringField;
    Qr_DadosCompPF2L_DTFAB: TDateTimeField;
    Qr_DadosCompPF2L_DTVCTO: TDateTimeField;
    Qr_DadosCompPF2L_QTD: TFloatField;
    Label17: TLabel;
    edt_datfab: TDateEdit;
    Label3: TLabel;
    edt_datven: TDateEdit;
    Qr_DadosCompPF2L_SNGPC_ENVIAR: TStringField;
    Label4: TLabel;
    CB_SNGPC_ENVIAR: TComboBox;
    procedure bbAtualizarClick(Sender: TObject);
    procedure src_pedforDataChange(Sender: TObject; Field: TField);
    procedure ALTERARClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure Src_ItensPedDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }

    function fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;

  public
    { Public declarations }
  end;

var
  Frm_Farma_SNGPC_DadosdaCompra: TFrm_Farma_SNGPC_DadosdaCompra;

implementation

uses S_DM1, lerarq, Func;

{$R *.dfm}

procedure TFrm_Farma_SNGPC_DadosdaCompra.bbAtualizarClick(Sender: TObject);
begin

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADFOR','FCODEMP(+)','PF1CODEMP','FCODFOR','PF1CODFOR');
la_instrucao:=la_instrucao+' and ';
FInnerjoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');
la_instrucao:=la_instrucao+' and ';
FInnerjoin3(1,'CADPF2','PF2CODEMP','PF1CODEMP','PF2LOTSEQ','PF1LOTSEQ','PF2CHAVE','PF1CHAVE');

if ((tipo_dados.Checked[0]=true) and (tipo_dados.Checked[1]=false)) or
   ((tipo_dados.Checked[0]=false) and (tipo_dados.Checked[1]=true)) then
   begin
   la_instrucao:=la_instrucao+' and ';
   fInnerJoin4(0,'CADPF2_LOTES_ORC','PF2L_CODEMP(+)','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','P2CHAVE','PF2L_CODPRO','PF2CODPRO');
   end;




Qr_PedFor.close;
Qr_PedFor.SQL.Clear;
Qr_PedFor.SQL.Add('Select UNIQUE PF1CHAVE,PF1LOTSEQ,PF1CODEMP,PF1CODFOR,PF1TOTLIQ,PF1DATANF,PF1NUMNF,FRAZAO, '
                 +' FBAIRRO,FCIDADE,FUF FROM CADPF1 '
                 +iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where PF1STATUS<>9 '
                 +' and PF1STATUS=1 '
                 +' and PDSGNPC=1 '
                 +iif(la_Empresas='','',' and ')+la_Empresas
                 +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                 );


Qr_PedFor.SQL.add(' and  PF1CODEMP='+IntToStr(codemp));


if ((tipo_dados.Checked[0]=true) and (tipo_dados.Checked[1]=false)) then
   Qr_PedFor.SQL.add(' and (PF2L_CODPRO is null or PF2L_CODPRO=0)');

if ((tipo_dados.Checked[0]=false) and (tipo_dados.Checked[1]=true)) then
   Qr_PedFor.SQL.add(' and  not (PF2L_CODPRO is null or PF2L_CODPRO=0)');
if fsonumero(MDT1.Text)<>0 then
   begin
   Qr_PedFor.SQL.add(' and  PF1DATAENT>=:DATAINI ');
   Qr_PedFor.ParamByName('DATAINI').AsDateTime:=MDT1.Date;

   end;


if fsonumero(MDT2.Text)<>0 then
   begin
   Qr_PedFor.SQL.add(' and  PF1DATAENT<=:DATAFIN ');
   Qr_PedFor.ParamByName('DATAFIN').AsDateTime:=MDT2.Date;
   end;
Try
   Qr_PedFor.Open;
except
   Qr_PedFor.SQL.SaveToFile('c:\sql.txt');
   end;
//ShowMessage('qUANTIDADE DE Registros: '+Inttostr(Qr_PedCli.RecordCount));
Qr_PedFor.SQL.SaveToFile('c:\sqlSGNPC.txt');


end;

procedure TFrm_Farma_SNGPC_DadosdaCompra.src_pedforDataChange(
  Sender: TObject; Field: TField);
begin
if (not Qr_ItensPed.Active) or (Qr_ItensPedPF2CHAVE.AsFloat<>Qr_PedForPF1CHAVE.AsFloat) then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

   Qr_ItensPed.Close;
   Qr_ItensPed.SQL.Clear;
   Qr_ItensPed.SQL.Add('Select PF2CHAVE,PF2CODEMP,PF2LOTSEQ,PF2CODPRO,PF2ITEM,PF2PU,PF2TOTDES,PF2QTDP,PDNOME,PDUND'
                     +' FROM CADPF2 ' +iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where PF2CHAVE=:CHAVE  '
                      +' and PF2CODEMP=:CODEMP '
                      +' and PF2LOTSEQ=:LOTSEQ  '
                      +' and PDSGNPC=1 '
                      +iif(la_Empresas='','',' and ')+la_Empresas
                      +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                       );

   Qr_ItensPed.ParamByName('CHAVE').AsFloat:=Qr_PedForPF1CHAVE.AsFloat;
   Qr_ItensPed.ParamByName('CODEMP').AsFloat:=Qr_PedForPF1CODEMP.AsFloat;
   Qr_ItensPed.ParamByName('LOTSEQ').AsFloat:=Qr_PedForPF1LOTSEQ.AsFloat;
   try
      Qr_ItensPed.Open;
   except
      Qr_ItensPed.SQL.SaveToFile('c:\sql.txt');
      end;
   end;


end;

procedure TFrm_Farma_SNGPC_DadosdaCompra.ALTERARClick(Sender: TObject);
begin
   fBloqueiaLiberaCampos(true);
   GRAVAR.Enabled:=true;
   ALTERAR.Enabled:=false;

end;

function TFrm_Farma_SNGPC_DadosdaCompra.fBloqueiaLiberaCampos(pLibera: Boolean): Boolean;
begin
edt_numlot.Enabled := pLibera;
edt_datfab.Enabled := pLibera;
edt_datven.Enabled := pLibera;
edt_quant.Enabled  := pLibera;
CB_SNGPC_ENVIAR.Enabled:=pLibera;

result:=true;
end;


procedure TFrm_Farma_SNGPC_DadosdaCompra.GRAVARClick(Sender: TObject);
var
query_dadcomop: TQuery;
begin
fBloqueiaLiberaCampos(false);
GRAVAR.Enabled :=false;
ALTERAR.Enabled:=true;
query_dadcomop:=TQuery.Create(nil);
query_dadcomop.DatabaseName:='SG_ASSOC';
query_dadcomop.SQL.Clear;
query_dadcomop.SQL.Add('Select count(*) from cadpf2_lotes_orc where '
                      +' PF2L_CODEMP=:CODEMP '
                      +' and PF2L_LOTSEQ=:LOTSEQ '
                      +' and PF2L_CHAVE=:CHAVE '
                      +' and PF2L_ITEM=:ITEM ');
query_dadcomop.parambyName('CODEMP').Value:=Qr_ItensPedPF2CODEMP.AsFloat;
query_dadcomop.parambyName('CHAVE').Value :=Qr_ItensPedPF2CHAVE.AsFloat;
query_dadcomop.parambyName('LOTSEQ').Value:=Qr_ItensPedPF2LOTSEQ.AsFloat;
query_dadcomop.parambyName('ITEM').Value  :=Qr_ItensPedPF2ITEM.AsFloat;
try
   query_dadcomop.Open;
except
   query_dadcomop.SQL.SaveToFile('c:\sqlsgnpc.txt');
   end;
if query_dadcomop.Fields[0].AsInteger=0 then
   begin
   query_dadcomop.Close;
   query_dadcomop.SQL.Clear;
   query_dadcomop.SQL.Add('insert into CADPF2_LOTES_ORC ('
                         +'PF2L_CODEMP, '
                         +'PF2L_CODPRO, '
                         +'PF2L_LOTSEQ, '
                         +'PF2L_CHAVE, '
                         +'PF2L_ITEM, '
                         +'PF2L_LOTE, '
                         +'PF2L_DTFAB, '
                         +'PF2L_DTVCTO, '
                         +'PF2L_QTD '
                         +',PF2L_SNGPC_ENVIAR'
                           +') values ('
                         +':PF2L_CODEMP, '
                         +':PF2L_CODPRO, '
                         +':PF2L_LOTSEQ, '
                         +':PF2L_CHAVE, '
                         +':PF2L_ITEM, '
                         +':PF2L_LOTE, '
                         +':PF2L_DTFAB, '
                         +':PF2L_DTVCTO, '
                         +':PF2L_QTD '
                         +',:PF2L_SNGPC_ENVIAR'

                          +')');
   end
else
   begin
   query_dadcomop.Close;
   query_dadcomop.SQL.Clear;
   query_dadcomop.SQL.Add('Update CADPF2_LOTES_ORC set '
                         +'PF2L_LOTE=:PF2L_LOTE, '
                         +'PF2L_DTFAB=:PF2L_DTFAB, '
                         +'PF2L_DTVCTO=:PF2L_DTVCTO, '
                         +'PF2L_QTD=:PF2L_QTD '
                         +',PF2L_SNGPC_ENVIAR=:PF2L_SNGPC_ENVIAR'
                          +' where '
                         +'PF2L_CODEMP=:PF2L_CODEMP and  '
                         +'PF2L_CODPRO=:PF2L_CODPRO and  '
                         +'PF2L_LOTSEQ=:PF2L_LOTSEQ and  '
                         +'PF2L_CHAVE=:PF2L_CHAVE and  '
                         +'PF2L_ITEM=:PF2L_ITEM  ');
   end;


query_dadcomop.ParamByName('PF2L_CODEMP').Value  :=Qr_ItensPedPF2CODEMP.AsFloat;
query_dadcomop.ParamByName('PF2L_CODPRO').Value  :=Qr_ItensPedPF2CODPRO.AsFloat;
query_dadcomop.ParamByName('PF2L_LOTSEQ').Value  :=Qr_ItensPedPF2LOTSEQ.AsFloat;
query_dadcomop.ParamByName('PF2L_CHAVE').Value   :=Qr_ItensPedPF2CHAVE.AsFloat;
query_dadcomop.ParamByName('PF2L_ITEM').Value    :=Qr_ItensPedPF2ITEM.AsFloat;
query_dadcomop.ParamByName('PF2L_LOTE').Value    :=edt_numlot.Text;
query_dadcomop.ParamByName('PF2L_DTFAB').Value   :=edt_datfab.Date;
query_dadcomop.ParamByName('PF2L_DTVCTO').Value  :=edt_datven.Date;
query_dadcomop.ParamByName('PF2L_QTD').Value     :=valfloat(edt_quant.Text);
query_dadcomop.ParamByName('PF2L_SNGPC_ENVIAR').Value :=iif(CB_SNGPC_ENVIAR.ItemIndex=0,'S','N');

try
   query_dadcomop.ExecSQL;
   fdm1StartCommit;
except
   end;

FreeAndNil(query_dadcomop);

end;

procedure TFrm_Farma_SNGPC_DadosdaCompra.FormShow(Sender: TObject);
begin
Height:=600;
Width:=933;
fBloqueiaLiberaCampos(false);

end;

procedure TFrm_Farma_SNGPC_DadosdaCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   action:=cafree;

end;

procedure TFrm_Farma_SNGPC_DadosdaCompra.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Farma_SNGPC_DadosdaCompra.Src_ItensPedDataChange(
  Sender: TObject; Field: TField);
begin
if ( not Qr_DadosComp.Active) or
   ( (Qr_DadosCompPF2L_CHAVE.AsFloat<>Qr_ItensPedPF2CHAVE.AsFloat) or (Qr_DadosCompPF2L_ITEM.AsFloat<>Qr_ItensPedPF2ITEM.AsFloat)) then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   FInnerjoin4(0,'CADPF2_LOTES_ORC','PF2L_CODEMP(+)','PF2CODEMP','PF2L_LOTSEQ','PF2LOTSEQ','PF2L_CHAVE','PF2CHAVE','PF2L_ITEM','PF2ITEM');

   Qr_DadosComp.Close;
   Qr_DadosComp.SQL.Clear;
   Qr_DadosComp.SQL.Add('select PF2L_CODEMP ,PF2L_CODPRO,PF2L_LOTSEQ '
                       +',PF2L_CHAVE,PF2L_ITEM,PF2L_LOTE,PF2L_DTFAB '
                       +',PF2L_DTVCTO,PF2L_QTD,PF2L_SNGPC_ENVIAR from cadpf2 '+iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                         +' where PF2CODEMP=:CODEMP '
                         +iif(la_Empresas='','',' and ')+la_Empresas
                         +'      '+        iif(la_instrucao='','',' and ')+la_instrucao
                        +' and PF2ITEM=:ITEM '
                         +' and PF2CHAVE=:CHAVE '
                         +' and PF2LOTSEQ=:LOTSEQ '
                          );
   Qr_DadosComp.ParamByName('CODEMP').AsFloat  :=Qr_ItensPedPF2CODEMP.AsFloat;
   Qr_DadosComp.ParamByName('ITEM').AsFloat    :=Qr_ItensPedPF2ITEM.AsFloat;
   Qr_DadosComp.ParamByName('CHAVE').AsFloat   :=Qr_ItensPedPF2CHAVE.AsFloat;

   Qr_DadosComp.ParamByName('LOTSEQ').AsFloat:=Qr_ItensPedPF2LOTSEQ.AsFloat;
   try
      Qr_DadosComp.Open;
   except
      Qr_DadosComp.sql.savetofile('c:\sql.txt');
      end;
   edt_numlot.Text:=Qr_DadosCompPF2L_LOTE.AsString;


   if Qr_DadosCompPF2L_DTFAB.IsNull then
      edt_datfab.Text:='/  /'
   else
      begin
      edt_datfab.Date:=Qr_DadosCompPF2L_DTFAB.AsDateTime;
      end;

   if Qr_DadosCompPF2L_DTVCTO.IsNull then
      edt_datven.Text:='/  /'
   else
      begin
      edt_datven.Date:=Qr_DadosCompPF2L_DTVCTO.AsDateTime;
      end;

   edt_quant.Text:=FormatFloat(mcasqtd,  Qr_DadosCompPF2L_QTD.AsFloat);
   if Qr_DadosCompPF2L_SNGPC_ENVIAR.Value='S' then
      CB_SNGPC_ENVIAR.ItemIndex:=0
   else
      CB_SNGPC_ENVIAR.ItemIndex:=1;
   edt_numlot.Text           :=Qr_DadosCompPF2L_LOTE.AsString;
   if Qr_DadosCompPF2L_QTD.AsFloat=0 then
      edt_quant.Text            :=FormatFloat(mcasqtd, Qr_ItensPedPF2QTDP.AsFloat)
   else
      edt_quant.Text            :=FormatFloat(mcasqtd, Qr_DadosCompPF2L_QTD.AsFloat);

   ALTERAR.Enabled:=true;
   end;


end;

end.

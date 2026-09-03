unit S_BloqueioVenda_Motivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,func,lerarq;

type
  TFrm_BloqueioVenda_Motivo = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    bbSair: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    function fMotivo(pTipo: Integer; pCodVen,pCodFor,pCodLoc,pCodbai,pCodrCli,pCodCli,pCodrPro,pCodpro,pCodCPro: Real;
         pCodUF: String): Boolean;

  end;


var
  Frm_BloqueioVenda_Motivo: TFrm_BloqueioVenda_Motivo;

implementation

uses S_DM1;

{$R *.dfm}
                      
function tFrm_BloqueioVenda_Motivo.fMotivo(pTipo: Integer; pCodVen,pCodFor,pCodLoc,pCodbai,pCodrCli,pCodCli,pCodrPro,pCodpro,pCodCPro: Real;
         pCodUF: String): Boolean;
begin

DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.add('Select * from CADBLQ where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADBLQ',[]),'',' BQCODEMP=0'+IntToStr(codemp)+' and '));
DM1.Query2.SQL.Add('     ( BQCODVEN=0'+FloatToStr(pCodVen)+' or BQCODVEN=0 or BQCODVEN=-1)' );
DM1.Query2.SQL.Add(' and ( BQCODFOR=0'+FloatToStr(pCodFor)+' or BQCODFOR=0 or BQCODFOR=-1)' );
DM1.Query2.SQL.Add(' and ( BQCODUF='+chr(39)+trim(pCodUF)+chr(39)+' or BQCODUF='+chr(39)+' '+chr(39)+' or BQCODUF is null or BQCODUF='+chr(39)+'-1'+chr(39)+' )'  );
DM1.Query2.SQL.Add(' and ( BQCODLOC=0'+FloatToStr(pCodLoc)+' or BQCODLOC=0 or BQCODLOC=-1)' );
DM1.Query2.SQL.Add(' and ( BQCODBAI=0'+FloatToStr(pCodbai)+' or BQCODBAI=0 or BQCODBAI=-1)' );
if pCodrCli=0 then
   DM1.Query2.SQL.Add(' and ( BQCODRCLI=0'+FloatToStr(pCodrCli)+' )' )
else
   DM1.Query2.SQL.Add(' and ( BQCODRCLI=0'+FloatToStr(pCodrCli)+' or BQCODRCLI=0 or BQCODRCLI=-1)' );

DM1.Query2.SQL.Add(' and ( BQCODCLI=0'+FloatToStr(pCodCli)+' or BQCODCLI=0 or BQCODCLI=-1)' );
if pCodrPro=0 then
   DM1.Query2.SQL.Add(' and ( BQCODRPRO=0'+FloatToStr(pCodrPro)+')' )
else
   DM1.Query2.SQL.Add(' and ( BQCODRPRO=0'+FloatToStr(pCodrPro)+' or BQCODRPRO=0 or BQCODRPRO=-1)' );

if pCodCPro=0 then
   DM1.Query2.SQL.Add(' and ( BQCODCPRO=0'+FloatToStr(pCodCPro)+' )' )
else
   DM1.Query2.SQL.Add(' and ( BQCODCPRO=0'+FloatToStr(pCodCPro)+' or BQCODCPRO=0 or BQCODCPRO=-1)' );

DM1.Query2.SQL.Add(' and ( BQCODPRO=0'+FloatToStr(pCodpro)+' or BQCODPRO=0 or BQCODPRO=-1)' );
DM1.Query2.Open;
//DM1.Query2.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

Frm_BloqueioVenda_Motivo.memo1.Lines.Clear;
Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Motivos do Bloqueio: ');
mcinst:='';
While not DM1.Query2.Eof do
   begin
   if DM1.Query2.FieldByName('BQCODVEN').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Vendedores');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODVEN').AsFloat>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Query2.FieldByName('BQCODVEN').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Vendedor: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODVEN').AsString);
         mcinst:=' e ';
         end;
      end;
   if DM1.Query2.FieldByName('BQCODFOR').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Fornecedores');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODFOR').AsFloat>0 then
      begin
      if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',DM1.Query2.FieldByName('BQCODFOR').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Fornecedor: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODFOR').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODUF').AsString='-1' then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Estados');
      mcinst:=' e ';
      end
   else if Trim(DM1.Query2.FieldByName('BQCODUF').AsString)='' then
      begin
      if flqr1('PNOM','P','CADUF','C','PUF',DM1.Query2.FieldByName('BQCODUF').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Estado: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODUF').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODLOC').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todas as Cidades');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODLOC').AsFloat>0 then
      begin
      if flqr1('LNOME','L','CADLOC','N','LCODLOC',DM1.Query2.FieldByName('BQCODLOC').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para a Cidade: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODLOC').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODBAI').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Bairros');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODBAI').AsFloat>0 then
      begin
      if flqr1('BNOME','B','CADBAI','N','BCODBAI',DM1.Query2.FieldByName('BQCODBAI').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Bairro: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODBAI').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODRCLI').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Ramos de Clientes');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODRCLI').AsFloat>0 then
      begin
      if flqr1('RNOME','R','CADRCLI','R','RCODRAM',DM1.Query2.FieldByName('BQCODRCLI').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Ramo de Clientes: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODRCLI').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODCLI').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Clientes');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODCLI').AsFloat>0 then
      begin
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',DM1.Query2.FieldByName('BQCODCLI').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Cliente: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODCLI').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODRPRO').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Ramos de Produtos');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODRPRO').AsFloat>0 then
      begin
      if flqr1('RNOME','R','CADRAM','R','RCODRAM',DM1.Query2.FieldByName('BQCODRPRO').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Ramo de Produto: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODRPRO').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODCPRO').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Produtos com Controle');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODCPRO').AsFloat>0 then
      begin
      if flqr1('CNOME','C','CADCON','C','CCODCON',DM1.Query2.FieldByName('BQCODCPRO').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para Controle de Produto: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODCPRO').AsString);
         mcinst:=' e ';
         end;
      end;

   if DM1.Query2.FieldByName('BQCODPRO').AsFloat=-1 then
      begin
      Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada a Todos os Produtos ');
      mcinst:=' e ';
      end
   else if DM1.Query2.FieldByName('BQCODPRO').AsFloat>0 then
      begin
      if flqr1('PDNOME','PD','CADPRO','C','PDCODPRO',DM1.Query2.FieldByName('BQCODPRO').AsString) then
         begin
         Frm_BloqueioVenda_Motivo.Memo1.Lines.Add('Venda Bloqueada Para o Produto: '+DM1.Query1.Fields[0].AsString+' '+DM1.Query2.FieldByName('BQCODPRO').AsString);
         mcinst:=' e ';
         end;
      end;

   DM1.Query2.Next;
   end;
if DM1.Query2.IsEmpty then
   result:=false
else
   result:=true;
end;

procedure TFrm_BloqueioVenda_Motivo.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_BloqueioVenda_Motivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

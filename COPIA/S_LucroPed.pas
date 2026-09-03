unit S_LucroPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, DBTables,AlinharEdit,
  RLReport, ComCtrls;

type
  TFrm_LucroPed = class(TForm)
    Panel2: TPanel;
    StaticText12: TStaticText;
    atualiza: TBitBtn;
    Panel4: TPanel;
    chave: TEdit;
    Ds_LucroPed: TDataSource;
    Tb_LucroPed: TQuery;
    Tb_LucroPedP2CODPRO: TFloatField;
    Tb_LucroPedPDNOME: TStringField;
    Tb_LucroPedP2QTD: TFloatField;
    Tb_LucroPedVALORTOT: TFloatField;
    Tb_LucroPedTOTCUSTO: TFloatField;
    Tb_LucroPedLUCRO: TFloatField;
    Tb_LucroPedP2PRECO: TFloatField;
    Tb_LucroPedPERCLUCRO: TFloatField;
    qtditem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    qtdetot: TEdit;
    Label4: TLabel;
    valortotal: TEdit;
    Label5: TLabel;
    totalcusto: TEdit;
    Label6: TLabel;
    totallucro: TEdit;
    Label7: TLabel;
    perclucro: TEdit;
    bbSair: TBitBtn;
    MCODEMP: TEdit;
    Query2: TQuery;
    Tb_LucroPedTOTPCOFPG: TFloatField;
    Tb_LucroPedP2PCOFPG: TFloatField;
    Tb_LucroPedP2TOTDES: TFloatField;
    Label3: TLabel;
    valorliquido: TEdit;
    Tb_LucroPedESTOQUE_DEP: TFloatField;
    Tb_LucroPedPERCDESC: TFloatField;
    percdesconto: TEdit;
    Label8: TLabel;
    Tb_LucroPedCUSTO: TFloatField;
    InstEmp: TEdit;
    cb_Licitacao: TCheckBox;
    Tb_LucroPedP_DESC: TFloatField;
    cb_lucrosemret: TCheckBox;
    PageControl1: TPageControl;
    Ts_DadosPed: TTabSheet;
    DBGrid1: TDBGrid;
    procedure atualizaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbSairClick(Sender: TObject);
    procedure chaveExit(Sender: TObject);
    procedure MCODEMPExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Tb_LucroPedCalcFields(DataSet: TDataSet);
    procedure cb_lucrosemretClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_LucroPed: TFrm_LucroPed;
  mlp_QtdeTot: Real;
  mlp_ValorTotal: Real;
  mlp_totalcusto: Real;
  mlp_totalLucro: Real;
  mlp_PerLucro:   Real;
  mlp_ValorLiquido : Real;
  mlp_mediadesc  : Real;

implementation

uses S_DM1, Func, lerarq, S_DM4;

{$R *.dfm}

procedure TFrm_LucroPed.atualizaClick(Sender: TObject);
var
  mcampo_qtd: String;
  mCampo_totliq: string;
begin
if cb_lucrosemret.Checked then
  mCampo_totliq:='ROUND( (P2QTD*P2PRECO) ,'+DM1.Tb_PargerPCASAS.AsString+')'
else
  mCampo_totliq:='P2TOTLIQ';


if not cb_Licitacao.Checked then
  begin
  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  fInnerJoin4(1,'cadp02' ,'p2codemp','p1codemp' ,'p2lotseq' ,'p1lotseq','p2chave' ,'p1chave','p2ordem' ,'p1ordem');
  if pbanco=0 then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin1(1,'cadpro','pdcodpro','p2codpro');
  la_Empresas:=InstEmp.Text;
  Query2.Close;
  Query2.SQL.Clear;
  Query2.SQL.Add(' select * from cadp01 where ');
  query2.sql.add(' P1LOTSEQ='+IntToStr(ls_numped));
  query2.sql.add(' and p1chave = '+chave.Text+' and p1codemp='+MCODEMP.Text);
  Query2.Open;
  if Query2.FieldByName('p1formace').AsInteger=0 then
    begin
    Tb_LucroPed.close;
    Tb_LucroPed.sql.Clear;
    Tb_LucroPed.sql.add('select ');
    Tb_LucroPed.sql.add(' p2codpro, pdnome, p2item,'
                  +' sum(P2QTD)  as p2qtd,'
                  +' max(p2preco) as p2preco, '
                  +' max(DECODE(P2PCOFPG,0,P2PRECO,P2PCOFPG)) AS p2pcofpg,  '
                  +' sum(P2QTD*DECODE(p2pcofpg,0,P2PRECO,P2PCOFPG)) as totpcofpg, '
                  +' sum('+mCampo_totliq+') as valortot,');
    Tb_LucroPed.sql.add(' sum(P2QTD*p2pcocus) as totcusto, max(P2PCOCUS) as Custo, ');
    Tb_LucroPed.sql.add(' sum( '
                  +'    ('+mCampo_totliq+') ) '
                  +'   - sum((P2QTD*p2pcocus) ) as lucro, '
                  +' sum(p2pcocus) as custo, ');
    Tb_LucroPed.sql.add(' ( sum('+mCampo_totliq+') '
                  +' -   sum(P2QTD*p2pcocus)  ) '
                  +' /      sum('+mCampo_totliq+') *100 '
                  +'    as perclucro  ');
    Tb_LucroPed.SQL.add(', (sum(p2preco*p2qtd)-sum('+mCampo_totliq+'))/sum(p2preco*p2qtd)*100 as percdesc ');
    Tb_LucroPed.SQL.add(', sum(P2TOTDES) as P2TOTDES ');
    Tb_LucroPed.SQL.add(', sum(pdsaldo) as estoque_dep ');
    Tb_LucroPed.sql.add(' from cadp01 '+iif(la_tabelas='','',',')+la_tabelas
           +'       '+la_Join
           +'       where p1chave =0'+chave.text
           +'       and p1status<'+mstatus_excluido+'  and P1LOTSEQ='+IntToStr(ls_numped)
           +'       and (P2CONSIG is null or P2CONSIG<>1) '
           +        iif(la_Empresas='','',' and '+la_empresas)
           +        iif(la_instrucao='','',' and '+la_instrucao));
    Tb_LucroPed.sql.Add(' Group by p2codpro,pdnome,p2item');
    end
  else
    begin
    Tb_LucroPed.close;
    Tb_LucroPed.sql.Clear;
    Tb_LucroPed.sql.add('select ');
    Tb_LucroPed.sql.add(' p2codpro, pdnome, p2item,'
                  +' max(P2QTD)  as p2qtd,'
                  +' sum(p2preco) as p2preco, '
                  +' sum(DECODE(P2PCOFPG,0,P2PRECO,P2PCOFPG)) AS p2pcofpg,  '
                  +' sum(P2QTD*DECODE(p2pcofpg,0,P2PRECO,P2PCOFPG)) as totpcofpg, '
                  +' sum('+mCampo_totliq+') as valortot,');
    Tb_LucroPed.sql.add(' sum(P2QTD*p2pcocus) as totcusto, ');
    Tb_LucroPed.sql.add(' sum( '
                  +'    ('+mCampo_totliq+') ) '
                  +'   - sum((P2QTD*p2pcocus) ) as lucro, '
                  +' sum(p2pcocus) as custo, ');
    Tb_LucroPed.sql.add(' ( sum('+mCampo_totliq+') '
                  +' -   sum(P2QTD*p2pcocus)  ) '
                  +' /      sum('+mCampo_totliq+') *100 '
                  +'    as perclucro  ');
    Tb_LucroPed.SQL.add(', (sum(p2preco)-sum('+mCampo_totliq+'))/sum(p2preco)*100 as percdesc ');
    Tb_LucroPed.SQL.add(', sum(P2TOTDES) as P2TOTDES ');
    Tb_LucroPed.SQL.add(', sum(pdsaldo) as estoque_dep ');
    Tb_LucroPed.sql.add(' from cadp01 '+iif(la_tabelas='','',',')+la_tabelas
           +'       '+la_Join
           +'       where p1chave =0'+chave.text
           +'       and p1status <'+mstatus_excluido+'  and P1LOTSEQ='+IntToStr(ls_numped)
           +'       and (P2CONSIG is null or P2CONSIG<>1) '
           +        iif(la_Empresas='','',' and '+la_empresas)
           +        iif(la_instrucao='','',' and '+la_instrucao));

    Tb_LucroPed.sql.Add(' Group by p2codpro,pdnome,p2item');
    end;
//    Query1.sql.savetofile('c:\sql.txt');
  try
    Tb_LucroPed.Open;
  except
//    Query1.sql.savetofile('c:\sql.txt');
    end;
  if Tb_LucroPed.IsEmpty then
    begin
    Fmensagem('Chave do Pedido Inexistente!!!',0,['0'],0);
    exit;
    end;
  mlp_QtdeTot      :=0;
  mlp_ValorTotal   :=0;
  mlp_totalcusto   :=0;
  mlp_totalLucro   :=0;
  mlp_PerLucro     :=0;
  mlp_ValorLiquido :=0;
  mlp_mediadesc    :=0;
  Tb_LucroPed.First;
  While not Tb_LucroPed.Eof do
    begin
    mlp_QtdeTot      := mlp_QtdeTot+Tb_LucroPed.fieldbyName('P2QTD').AsFloat;
    mlp_ValorLiquido := mlp_ValorLiquido+Tb_LucroPed.fieldbyName('VALORTOT').AsFloat;
    mlp_ValorTotal   := mlp_ValorTotal+(Tb_LucroPed.fieldbyName('P2PCOFPG').AsFloat*Tb_LucroPed.fieldbyName('P2QTD').AsFloat);
    mlp_TotalCusto   := mlp_TotalCusto+Tb_LucroPed.fieldbyName('TOTCUSTO').AsFloat;
    mlp_TotalLucro   := mlp_totalLucro+Tb_LucroPed.fieldbyName('LUCRO').AsFloat;
    mlp_mediadesc    := mlp_mediadesc+Tb_LucroPed.fieldbyname('percdesc').asFloat;
    Tb_LucroPed.next;
    end;
  if mlp_ValorLiquido = 0 then
    mlp_ValorLiquido := 1;
  mlp_PerLucro       := (mlp_totalcusto/mlp_ValorLiquido);
  mlp_PerLucro       := mlp_PerLucro * 100;
  mlp_PerLucro       := 100 - mlp_PerLucro;
  qtdetot.text       := FormatFloat(mcasas,mlp_QtdeTot);
  valortotal.text    := FormatFloat(mcasas,mlp_ValorTotal);
  valorliquido.Text  := FormatFloat(mcasas,mlp_valorliquido);
  totalcusto.text    := FormatFloat(mcasas,mlp_totalcusto);
  totallucro.text    := FormatFloat(mcasas,mlp_totalLucro);
  perclucro.text     := FormatFloat('#0.00',mlp_PerLucro);
  if mlp_ValorTotal  < 0 then
    valortotal.Font.Color := clred;
  if mlp_totalcusto  < 0 then
    totalcusto.Font.Color := clred;
  if mlp_totalLucro   < 0 then
    totallucro.Font.Color := clred;
  if mlp_PerLucro < 0 then
    perclucro.Font.Color := clred;
  QTDITEM.text := inttostr(Tb_LucroPed.RecordCount);
  percdesconto.Text := FormatFloat('#0',(mlp_mediadesc/ValInt(qtditem.Text)));
  end
else
  begin
  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  fInnerJoin3(1,'cadlc2' ,'lc2_codemp','lc1_codemp' ,'lc2_lotseq' ,'lc1_lotseq','lc2_chave' ,'lc1_chave');
  if pbanco=0 then
    la_instrucao:=la_instrucao+' and ';
  fInnerJoin1(1,'cadpro','pdcodpro','lc2_codpro');
  la_Empresas:=InstEmp.Text;
  Query2.Close;
  Query2.SQL.Clear;
  Query2.SQL.Add(' select * from cadlc1 where ');
  query2.sql.add(' LC1_LOTSEQ='+IntToStr(ls_numped));
  query2.sql.add(' and LC1_chave = '+chave.Text+' and LC1_codemp='+MCODEMP.Text);
  Query2.Open;
  Tb_LucroPed.close;
  Tb_LucroPed.sql.Clear;
  Tb_LucroPed.sql.add('select ');
  Tb_LucroPed.sql.add(' LC2_codpro AS P2codpro, LC2_nom01 as pdnome, LC2_UND as p2und,'
                +' sum(LC2_QTD)  as p2qtd,'
                +' max(LC2_PCOAV) as p2preco, '
                +' max(PDPRECO1) AS p2pcofpg,  '
                +' sum(LC2_QTD*PDPRECO1) as totpcofpg, '
                +' sum(lc2_qtd*LC2_PCOAV) as valortot,');
  Tb_LucroPed.sql.add(' sum(lc2_QTD*pdprecoc) as totcusto, max(pdprecoc) as Custo, ');
  Tb_LucroPed.sql.add(' sum( '
                +'    (lc2_qtd*LC2_PCOAV) ) '
                +'   - sum((lc2_QTD*pdprecoc) ) as lucro, '
                +' sum(pdprecoc) as custo, ');
  Tb_LucroPed.sql.add(' ( sum(lc2_qtd*LC2_PCOAV) '
                +' -   sum(lc2_QTD*pdprecoc)  ) '
                +' /      sum(lc2_qtd*decode(LC2_PCOAV,0,0.0001,LC2_PCOAV)) *100 '
                +'    as perclucro  ');
  Tb_LucroPed.SQL.add(', case '
                +'  when ((sum(lc2_qtd*PDPRECO1)/sum(lc2_qtd*decode(LC2_PCOAV,0,0.0001,LC2_PCOAV)))-1)*100 <0 '
                +'  then 0 '
                +'  else ((sum(lc2_qtd*PDPRECO1)/sum(lc2_qtd*decode(LC2_PCOAV,0,0.0001,LC2_PCOAV)))-1)*100 '
                +'  end as percdesc ');
  Tb_LucroPed.SQL.add(', case '
                +' when sum(lc2_qtd*PDPRECO1)-sum(lc2_qtd*decode(LC2_PCOAV,0,0.0001,LC2_PCOAV)) <0 '
                +' then 0'
                +' else sum(lc2_qtd*PDPRECO1)-sum(lc2_qtd*LC2_PCOAV)'
                +' end as P2TOTDES ');


  Tb_LucroPed.SQL.add(', sum(pdsaldo) as estoque_dep ');
  Tb_LucroPed.sql.add(' from cadlc1 '+iif(la_tabelas='','',',')+la_tabelas
         +'       '+la_Join
         +'       where lc1_chave =0'+chave.text
         +'       and lc1_status <> 9  and lc1_LOTSEQ='+IntToStr(ls_numped)
         +        iif(la_Empresas='','',' and '+la_empresas)
         +        iif(la_instrucao='','',' and '+la_instrucao));
  Tb_LucroPed.sql.Add(' Group by lc2_codpro,lc2_nom01,lc2_und, lc2_item');
  try
    Tb_LucroPed.Open;
  except
    Tb_LucroPed.sql.savetofile('c:\sql.txt');
    end;
  if Tb_LucroPed.IsEmpty then
    begin
    Tb_LucroPed.sql.savetofile('c:\sql.txt');
    Fmensagem('Chave da Licitação Inexistente!!!',0,['0'],0);
    exit;
    end;
  mlp_QtdeTot      :=0;
  mlp_ValorTotal   :=0;
  mlp_totalcusto   :=0;
  mlp_totalLucro   :=0;
  mlp_PerLucro     :=0;
  mlp_ValorLiquido :=0;
  mlp_mediadesc    :=0;
  Tb_LucroPed.First;
  While not Tb_LucroPed.Eof do
    begin
    mlp_QtdeTot      := mlp_QtdeTot+Tb_LucroPed.fieldbyName('p2qtd').AsFloat;
    mlp_ValorLiquido := mlp_ValorLiquido+Tb_LucroPed.fieldbyName('VALORTOT').AsFloat;
    mlp_ValorTotal   := mlp_ValorTotal+(Tb_LucroPed.fieldbyName('P2PCOFPG').AsFloat*Tb_LucroPed.fieldbyName('p2qtd').AsFloat);
    mlp_TotalCusto   := mlp_TotalCusto+Tb_LucroPed.fieldbyName('TOTCUSTO').AsFloat;
    mlp_TotalLucro   := mlp_totalLucro+Tb_LucroPed.fieldbyName('LUCRO').AsFloat;
    mlp_mediadesc    := mlp_mediadesc+Tb_LucroPed.fieldbyname('percdesc').asFloat;
    Tb_LucroPed.next;
    end;
  if mlp_ValorLiquido = 0 then
    mlp_ValorLiquido := 1;
  mlp_PerLucro       := (mlp_totalcusto/mlp_ValorLiquido);
  mlp_PerLucro       := mlp_PerLucro * 100;
  mlp_PerLucro       := 100 - mlp_PerLucro;
  qtdetot.text       := FormatFloat(mcasas,mlp_QtdeTot);
  valortotal.text    := FormatFloat(mcasas,mlp_ValorTotal);
  valorliquido.Text  := FormatFloat(mcasas,mlp_valorliquido);
  totalcusto.text    := FormatFloat(mcasas,mlp_totalcusto);
  totallucro.text    := FormatFloat(mcasas,mlp_totalLucro);
  perclucro.text     := FormatFloat('#0.00',mlp_PerLucro);
  if mlp_ValorTotal  < 0 then
    valortotal.Font.Color := clred;
  if mlp_totalcusto  < 0 then
    totalcusto.Font.Color := clred;
  if mlp_totalLucro   < 0 then
    totallucro.Font.Color := clred;
  if mlp_PerLucro < 0 then
    perclucro.Font.Color := clred;
  QTDITEM.text := inttostr(Tb_LucroPed.RecordCount);
  percdesconto.Text := FormatFloat('#0',(mlp_mediadesc/ValInt(qtditem.Text)));
  end;
end;

procedure TFrm_LucroPed.FormCreate(Sender: TObject);
begin
    Tb_LucroPedP2PCOFPG.DisplayFormat  	    := mcasas;
    Tb_LucroPedP2PRECO.DisplayFormat  	      := mcasas;
    Tb_LucroPedP2QTD.DisplayFormat  	        := mcasqtd;
    Tb_LucroPedTOTCUSTO.DisplayFormat  	    := mcasas;
    Tb_LucroPedVALORTOT.DisplayFormat  	    := mcasas;
    Tb_LucroPedLUCRO.DisplayFormat  	        := mcasas;
    Tb_LucroPedPERCLUCRO.DisplayFormat       := '#0.00';
    Tb_LucroPedESTOQUE_DEP.DisplayFormat     := mcasqtd;
    Tb_LucroPedPERCDESC.DisplayFormat        := '#0';
    Tb_LucroPedCUSTO.DisplayFormat           := mcasas;

    qtdetot.Alignment      := TAlignment(1);
    valortotal.Alignment   := TAlignment(1);
    totalcusto.Alignment   := TAlignment(1);
    totallucro.Alignment   := TAlignment(1);
    perclucro.Alignment    := TAlignment(1);
    valorliquido.Alignment := TAlignment(1);
    percdesconto.Alignment := TAlignment(1);
if flfilpad(-1,'_LUCROPED','CB_LUCROSEMRET') then
   cb_lucrosemret.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';
cb_lucrosemret.Visible:=codusr=1111;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_LucroPed.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
with DBGrid1 do
   begin
   if Column.Index=6 then
      begin
      if Tb_LucroPedLUCRO.AsFloat < 0 then
         Canvas.Font.Color:= clred
      else
         Canvas.Font.Color:= clWindowText;
      end;

if Column.Index=3 then
   begin
   if Tb_LucroPedP2PRECO.AsFloat < 0 then
      Canvas.Font.Color:= clred
   else
      Canvas.Font.Color:= clWindowText;
   end;
if Column.Index=7 then
   begin
   if Tb_LucroPedPERCLUCRO.AsFloat < 0 then
      Canvas.Font.Color:= clred
   else
      Canvas.Font.Color:= clWindowText;
   end;
if Column.Index=5 then
   begin
   if Tb_LucroPedTOTCUSTO.AsFloat < 0 then
      Canvas.Font.Color:= clred
   else
      Canvas.Font.Color:= clWindowText;
   end;

if Column.Index=4 then
   begin
   if Tb_LucroPedVALORTOT.AsFloat < 0 then
      Canvas.Font.Color:= clred
   else
      Canvas.Font.Color:= clWindowText;
   end;

   end;



//      DBGrid1.Canvas.Font.Color  :=clred;
//      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
//   end;
DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFrm_LucroPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_LucroPed.chaveExit(Sender: TObject);
begin
chave.Text:=fdeixanum2(CHAVE.Text);
end;

procedure TFrm_LucroPed.MCODEMPExit(Sender: TObject);
begin
MCODEMP.Text:=fdeixanum2(MCODEMP.Text);
end;

procedure TFrm_LucroPed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_LucroPed.FormActivate(Sender: TObject);
begin
SetWindowPos (Handle, HWND_TOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

end;

procedure TFrm_LucroPed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;
end;

procedure TFrm_LucroPed.Tb_LucroPedCalcFields(DataSet: TDataSet);
begin
if Tb_LucroPedPERCDESC.AsFloat<=0  then
  Tb_LucroPedP_DESC.AsFloat:=0
else
  Tb_LucroPedP_DESC.AsFloat:=Tb_LucroPedPERCDESC.AsFloat;
end;

procedure TFrm_LucroPed.cb_lucrosemretClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_LUCROPED','CB_LUCROSEMRET');

fGravaPadroes(-1,'CB_LUCROSEMRET'     ,'checked' ,'_LUCROPED',iif(cb_lucrosemret.Checked,'true','false'));

end;

end.

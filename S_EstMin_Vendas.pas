unit S_EstMin_Vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, DB, DBTables, S_SelEmp, Mask, ToolEdit,s_lerarq_geral;

type
  TFrm_EstMin_Vendas = class(TForm)
    btn_gerar: TButton;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    CODTIP: TEdit;
    lbx_codtip: TListBox;
    OMITIR_TPRO: TCheckBox;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    CODGRU: TEdit;
    lbx_codgru: TListBox;
    OMITIR_GRU: TCheckBox;
    Label6: TLabel;
    CODRAM: TEdit;
    lbx_codram: TListBox;
    OMITIR_RAM: TCheckBox;
    Label14: TLabel;
    CODDEP: TEdit;
    lbx_coddep: TListBox;
    OMITIR_DEP: TCheckBox;
    StaticText10: TStaticText;
    CLBNivel: TCheckListBox;
    Label7: TLabel;
    Label8: TLabel;
    produto: TQuery;
    btn_Sair: TButton;
    dtIni: TDateEdit;
    Label3: TLabel;
    dtFim: TDateEdit;
    procedure btn_gerarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SairClick(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUExit(Sender: TObject);
    procedure CODGRUMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codgruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CODTIPExit(Sender: TObject);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codtipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODRAMExit(Sender: TObject);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_codramKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODDEPExit(Sender: TObject);
    procedure CODDEPKeyPress(Sender: TObject; var Key: Char);
    procedure CODDEPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
     Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_EstMin_Vendas: TFrm_EstMin_Vendas;


implementation

uses Func, lerarq, S_DM1, S_DM6;
{$R *.dfm}

procedure TFrm_EstMin_Vendas.btn_gerarClick(Sender: TObject);
var
  mes1, ano1, mes2, ano2: Integer;
  data1, data2 : String;
  meses: real;
begin
meses := dtFim.Date-dtIni.Date;
meses := Arredonda(meses / 30,0);
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
produto.close;
produto.SQL.Clear;
produto.SQL.Add(' update cadpro set pdestmin=(    ');
produto.SQL.Add(' select round(sum(p2qtd)/'+FloatToStr(meses)+',0) as venda ');
produto.SQL.Add(' from cadp02, cadp01 where p1chave=p2chave ');
produto.SQL.Add(' and p1lotseq=p2lotseq ');
produto.SQL.Add(' and p1ordem=p2ordem and p1codemp=p2codemp ');
produto.SQL.Add(' and p1tipo=1 ');
produto.SQL.Add(' and p1datdoc>='+chr(39)+dtIni.Text+chr(39));
produto.SQL.Add(' and p1datdoc<='+chr(39)+dtFim.Text+chr(39));
produto.SQL.Add(iif(trim(la_empresas)<>'',' and '+la_empresas,''));
produto.SQL.Add(' and p2codpro=pdcodpro      )');
produto.SQL.Add(' where pdcodpro is not null ');
//eliminando nulos
produto.SQL.Add(' and (select round(sum(p2qtd)/'+FloatToStr(meses)+',0) as venda from cadp02, ');
produto.SQL.Add('  cadp01 where p1chave=p2chave and p1ordem=p2ordem  ');
produto.SQL.Add('  and p1lotseq=p2lotseq and p1codemp=p2codemp       ');
produto.SQL.Add('  and p1tipo=1 and p2codpro=pdcodpro                ');
produto.SQL.Add('  and p1datdoc>='+chr(39)+dtIni.Text+chr(39));
produto.SQL.Add('  and p1datdoc<='+chr(39)+dtFim.Text+chr(39));
produto.SQL.Add(iif(trim(la_empresas)<>'',' and '+la_empresas,''));
produto.SQL.Add(') is not null   ');
//eliminando nulos

mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and  PDCODPRO '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODFOR '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codtip,OMITIR_TPRO);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODTIP '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codgru,OMITIR_GRU);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODGRU '+mcinst2);

mcinst2:=fItensListBox(0,lbx_codram,OMITIR_RAM);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODRAM '+mcinst2);

mcinst2:=fItensListBox(0,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDCODDEP '+mcinst2);

mcinst2:=fItenstCheckListBox(0,CLBNivel);
if trim(mcinst2)<>'' then
   produto.SQL.Add(' and PDNIVEL '+mcinst2);
try
  produto.ExecSql;
  fmensagem('Concluido!',0,['0'],0);
except
  produto.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
  fmensagem('Erro ao processar instrução!',0,['0'],0);
  end;
end;

procedure TFrm_EstMin_Vendas.FormShow(Sender: TObject);
var
  n: Integer;
  nivel  : TNivPro;
begin
CLBNivel.Clear;
nivel:=CarregaNivel;
for n:=0 to 11 do
  begin
  CLBNivel.Items.Add(nivel[n]);
  end;
CLBNivel.Items.Add('Todos');
end;

procedure TFrm_EstMin_Vendas.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_EstMin_Vendas.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_EstMin_Vendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_EstMin_Vendas.btn_SairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EstMin_Vendas.CODGRUKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_estmin_vendas',key);
   if valfloat(CODGRU.Text)<>0 then
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_GproGRCODGRU.AsString))
                                   +' - '+DM1.Tb_GproGRNOME.AsString);
      CODGRU.text := '';
      end;
   key:=#0;
   end;
end;

procedure TFrm_EstMin_Vendas.CODGRUExit(Sender: TObject);
begin
   if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      fmensagem('Grupo Não Cadastrado!',0,['0'],0);
      CODGRU.SetFocus;
      exit;
      end else
      begin
      lbx_codgru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      codgru.setfocus;
      end;
   end;
end;

procedure TFrm_EstMin_Vendas.CODGRUMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codgru.Hint := 'Informe Codigo do Grupo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_EstMin_Vendas.lbx_codgruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codgru.ItemIndex>=0 then
      lbx_codgru.Items.Delete(lbx_codgru.ItemIndex);

end;

procedure TFrm_EstMin_Vendas.CODPROExit(Sender: TObject);
begin
   if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;
end;

procedure TFrm_EstMin_Vendas.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'frm_estmin_vendas',key)
      else
         CODPRO.Text:=fChamaPro(0,'frm_estmin_vendas',key);
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                 +' - '+DM1.Tb_ProPDNOME.Value);
      codpro.text := '';
      codpro.setfocus;
      key:=#0;
      end;
   end;
end;

procedure TFrm_EstMin_Vendas.CODPROMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   CODPRO.Hint := 'Informe Codigo do Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_EstMin_Vendas.lbx_codproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);
end;

procedure TFrm_EstMin_Vendas.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      end;
   end;
end;

procedure TFrm_EstMin_Vendas.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);
end;

procedure TFrm_EstMin_Vendas.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.text := fchamafor(0,'frm_estmin_vendas',key);
   if valfloat(CODFOR.Text)<>0 then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
      end;
   CODFOR.Text:='';
   key:=#0;
   end;
end;

procedure TFrm_EstMin_Vendas.CODFORMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codfor.Hint := 'Informe Codigo do Fornecedor ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_EstMin_Vendas.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if trim(codtip.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                  +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
      end
   else
      begin
      fmensagem('Tipo Produto não Cadastrado!',0,['0'],0);
      CODTIP.SetFocus;
      end;
   end;

end;

procedure TFrm_EstMin_Vendas.CODTIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_estmin_vendas',key);
   if valfloat(CODTIP.Text)<>0 then
      begin
      lbx_codtip.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.AsString))
                                    +' - '+DM1.Tb_TproTNOME.AsString);
      CODTIP.text := '';
      end;
   key:=#0;
   end;
end;

procedure TFrm_EstMin_Vendas.CODTIPMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codtip.Hint := 'Informe Codigo do Tipo de Produto ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_EstMin_Vendas.lbx_codtipKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codtip.ItemIndex>=0 then
      lbx_codtip.Items.Delete(lbx_codtip.ItemIndex);
end;

procedure TFrm_EstMin_Vendas.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if ValFloat(CODRAM.Text)<=0 then
   EXIT;
if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
   BEGIN
   lbx_codram.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
   codram.text := '';
   END
else
   begin
   fmensagem('Ramo não Cadastrado!',0,['0'],0);
   CODRAM.SetFocus;
   end;

end;

procedure TFrm_EstMin_Vendas.CODRAMKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_estmin_vendas',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;
end;

procedure TFrm_EstMin_Vendas.CODRAMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   codram.Hint := 'Informe Codigo do Ramo ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_EstMin_Vendas.lbx_codramKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codram.ItemIndex>=0 then
      lbx_codram.Items.Delete(lbx_codram.ItemIndex);
end;

procedure TFrm_EstMin_Vendas.CODDEPExit(Sender: TObject);
begin
CODDEP.Text:=fdeixanum2(CODDEP.Text);
if Trim(CODDEP.Text)<>'' then
  begin
  if not flcadpro_dpto(1,0,CODDEP.Text) then
    begin
    fmensagem('Departamento não Cadastrado!',0,['0'],0);
    if lbx_coddep.Focused then
      CODDEP.SetFocus;
    end
  else
    begin
    lbx_coddep.Items.Add(FormatFloat('0000000', DM6.Tb_Prod_DepPRODEP_CODDEP.AsFloat)
                             +' - '+DM6.Tb_Prod_DepPRODEP_NOME.AsString);
    CODDEP.text := '';
    if lbx_coddep.Focused then
      CODDEP.SetFocus;
    end;
  end;
end;

procedure TFrm_EstMin_Vendas.CODDEPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODDEP.Text:= fChamaDepto(0,'frm_estmin_vendas',key);
   key:=#0;
   CODDEPExit(Self);
   end;
end;

procedure TFrm_EstMin_Vendas.CODDEPMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
codram.Hint := 'Informe Codigo do Departamento ou '+#13+'Tecle Uma Letra P/ Consultar';
end;

procedure TFrm_EstMin_Vendas.lbx_coddepKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);
end;

end.

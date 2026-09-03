unit s_comp_comiss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,S_DM1,db,dbtables,func,S_Pro,lerarq, Mask, Buttons,S_For,
  Grids, DBGrids,s_dm2, RLReport, S_SelEmp,s_lerarq_geral;

type
  Tfrm_comp_comiss = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CODPRO: TEdit;
    NOMPRO: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    CODCLI: TEdit;
    nomcli: TEdit;
    UND: TEdit;
    CB_CONFIRMADAS: TCheckBox;
    bb_imprel: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    rl_prod_comp: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    rl_emp: TRLLabel;
    rl_data: TRLLabel;
    rl_fornecedores: TRLLabel;
    rl_produtos: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    rl_nomepro: TRLLabel;
    rl_dataped: TRLLabel;
    rl_codfor: TRLLabel;
    rl_razaofor: TRLLabel;
    rl_precouni: TRLLabel;
    rl_qtd: TRLLabel;
    rl_valtot: TRLLabel;
    rl_chaveped: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    qr_comp_comiss: TQuery;
    src_comp_comiss: TDataSource;
    qr_comp_comissvalor_total: TFloatField;
    qr_comp_comissP1CHAVE: TFloatField;
    qr_comp_comissP1CODCLI: TFloatField;
    qr_comp_comissP1CODVEN: TFloatField;
    qr_comp_comissP1DATAP: TDateTimeField;
    qr_comp_comissP2VCOMIS: TFloatField;
    qr_comp_comissP2CODPRO: TFloatField;
    qr_comp_comissP2QTD: TFloatField;
    qr_comp_comissP2PRECO: TFloatField;
    qr_comp_comissP2PCOTAB: TFloatField;
    qr_comp_comissP2TOTDES: TFloatField;
    qr_comp_comissP2DESCRAT: TFloatField;
    qr_comp_comissP2DESCM: TFloatField;
    qr_comp_comissP2TOTLIQ: TFloatField;
    qr_comp_comissPDNOME: TStringField;
    qr_comp_comissPDPRECO1: TFloatField;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText11: TRLDBText;
    procedure bbAplicarClick(Sender: TObject);
    procedure bb_imprelClick(Sender: TObject);
    procedure CODPROEnter(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp; 
  end;

var
  frm_comp_comiss: Tfrm_comp_comiss;

implementation

{$R *.dfm}

procedure Tfrm_comp_comiss.bbAplicarClick(Sender: TObject);
var
  error:string;
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if bbSair.Focused then
   exit;
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if not (flcadpro(1,0,0,Trim(CODPRO.Text))) and (Trim(CODPRO.Text)<>'') then
  begin
  fmensagem('Produto não cadastrado!',0,['0'],0);
  CODPRO.setfocus;
  exit;
  end
else if (Trim(CODPRO.Text)='') then
  begin
  NOMPRO.Text:='***Todas os Produtos Cadastrados';
  UND.Text   :='';
  end
else
  begin
  NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
  UND.Text   :=DM1.Tb_ProPDUND.Value;
  end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);
qr_comp_comiss.Close;
qr_comp_comiss.SQL.Clear;
qr_comp_comiss.SQL.Add(' Select ');
Qr_comp_comiss.SQL.Add('     P1CHAVE, P1CODCLI, P1CODVEN, P1DATAP, ');
Qr_comp_comiss.SQL.Add('     P2VCOMIS, P2CODPRO, P2QTD, P2PRECO, P2PCOTAB, P2TOTDES, P2DESCRAT, P2DESCM, P2TOTLIQ,');
Qr_comp_comiss.SQL.Add('     PDNOME, PDPRECO1 ');
Qr_comp_comiss.SQL.Add(' from ');
Qr_comp_comiss.SQL.Add('     CADP01,CADP02,CADPRO ');
Qr_comp_comiss.SQL.Add(' where ');
Qr_comp_comiss.SQL.Add('     P1CODEMP=P2CODEMP ');
Qr_comp_comiss.SQL.Add(' and P1CODEMP=PDCODEMP ');
Qr_comp_comiss.SQL.Add(' and P1CHAVE=P2CHAVE   ');
Qr_comp_comiss.SQL.Add(' and P2CODPRO=PDCODPRO ');
Qr_comp_comiss.SQL.Add(' and P1LOTSEQ=P2LOTSEQ ');
Qr_comp_comiss.SQL.Add(' and P1STATUS<>9       ');
if trim(CODPRO.Text)<>'' then
  begin
  Qr_comp_comiss.SQL.Add(' and P2CODPRO='+CODPRO.Text);
  end;
{Qr_CPCM.SQL.Add(iif(la_Empresas='','',' and ')+la_Empresas);
Qr_CPCM.SQL.Add(iif(DM1.Qr_TID.Locate('TINOME','CADP02',[]),'',' and P2CODEMP=P1CODEMP '));}
if CB_CONFIRMADAS.Checked then
  begin
  Qr_comp_comiss.SQL.Add(' and P1TIPO=1 and P1Emidoc=1 ');
  end
else
  begin
  Qr_comp_comiss.SQL.Add(' and P1TIPO<2');
  end;
if Trim(MDT1.Text)<>'/  /' then
  Qr_comp_comiss.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

if Trim(MDT2.Text)<>'/  /' then
  Qr_comp_comiss.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
if Trim(CODCLI.Text)<>'' then
  Qr_comp_comiss.SQL.add(' and P1CODCLI=0'+Trim(CODCLI.Text));
Qr_comp_comiss.SQL.Add(' order by P1DATAP Desc, P1CHAVE ');
try
  Qr_comp_comiss.Open;
except
  error:=SALVA_NOME('c:\sge\errosql\','ex');
  Qr_comp_comiss.SQL.SaveToFile(error);
  ShowMessage('Foi Gerado um ErroSql '+error);
  end;
end;

procedure Tfrm_comp_comiss.bb_imprelClick(Sender: TObject);
begin
rl_emp.Caption:=dm1.Tb_EmpRAZAO.AsString;
if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
  begin
  rl_data.Caption:='Perido selecionado de '+MDT1.Text+' a '+MDT2.Text;
  end
else if (trim(MDT1.Text)<>'/  /') then
  begin
  rl_data.Caption:='Apartir do dia '+MDT1.Text;
  end
else if (trim(MDT2.Text)<>'/  /') then
  begin
  rl_data.Caption:='Até o dia '+MDT2.Text;
  end
else
  begin
  rl_data.Caption:='Sem filtro de data';
  end;
if trim(CODCLI.Text)<>'' then
  begin
  rl_fornecedores.Caption:=NOMCLI.Text;
  end
else
  begin
  rl_fornecedores.Caption:='***Todos os Clientes';
  end;
if trim(CODPRO.Text)<>'' then
  begin
  rl_produtos.Caption:=NOMPRO.Text;
  end
else
  begin
  rl_produtos.Caption:='***Todos os Produtos';
  end;
rl_prod_comp.PreviewModal;
end;

procedure Tfrm_comp_comiss.CODPROEnter(Sender: TObject);
begin
if Qr_comp_comiss.Active then
   Qr_comp_comiss.Close;
end;

procedure Tfrm_comp_comiss.CODPROExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if not (flcadpro(1,0,0,Trim(CODPRO.Text))) and (Trim(CODPRO.Text)<>'') then
  begin
  fmensagem('Produto não cadastrado!',0,['0'],0);
  CODPRO.setfocus;
  exit;
  end
else if (Trim(CODPRO.Text)='') then
  begin
  NOMPRO.Text:='***Todas os Produtos Cadastrados';
  UND.Text   :='';
  end
else
  begin
  NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
  UND.Text   :=DM1.Tb_ProPDUND.Value;
  end;
end;

procedure Tfrm_comp_comiss.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_UltCPR',key);
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
  begin
  key:=#0;
  end;
end;

procedure Tfrm_comp_comiss.CODCLIExit(Sender: TObject);
begin
if bbSair.Focused then
   exit;
CODCLI.Text:=fdeixanum(CODCLI.Text);
if ValFloat(CODCLI.Text)<=0 then
   CODCLI.Text:='';
if Trim(CODCLI.Text)='' then
   nomcli.Text:='Todos...'
else
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
   end;
end;

procedure Tfrm_comp_comiss.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'frm_comp_comiss',Key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(Self);
   key:=#0;
   end
else if not (key in ['0'..'9']) and (key<>#8) then
  key:=#0;
end;

procedure Tfrm_comp_comiss.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;
end;

procedure Tfrm_comp_comiss.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;
end;

procedure Tfrm_comp_comiss.bbSairClick(Sender: TObject);
begin
close;
end;

procedure Tfrm_comp_comiss.FormCreate(Sender: TObject);
begin
qr_comp_comissP2PRECO.DisplayFormat      :=mcasaspu;
Qr_comp_comissP2TOTDES.DisplayFormat     :=mcasas;
Qr_comp_comissP2DESCRAT.DisplayFormat    :=mcasas;
Qr_comp_comissP2QTD.DisplayFormat        :=mcasqtd;
Qr_comp_comissvalor_total.DisplayFormat  :=mcasas;
Qr_comp_comissP1DATAP.DisplayFormat      :=fdt2;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure Tfrm_comp_comiss.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure Tfrm_comp_comiss.FormKeyDown(Sender: TObject; var Key: Word;
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

end.

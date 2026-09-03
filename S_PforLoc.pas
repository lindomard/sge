unit S_PForLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Mask, db, dbtables, func, S_DM1,
  S_For,lerarq,S_DM4, DBGrids, S_SelEmp;

type
  TFrm_PForLoc = class(TForm)
    GroupBox1: TGroupBox;
    bbLocalizar: TBitBtn;
    Panel1: TPanel;
    bb_sair: TBitBtn;
    periodo: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    a: TLabel;
    chavedopedido: TLabel;
    CODFOR: TEdit;
    CHAVEI: TEdit;
    NOMCLI: TEdit;
    codcliente: TLabel;
    Qr_PFor: TQuery;
    Qr_PForPF1CHAVE: TFloatField;
    Qr_PForPF1DATA: TDateTimeField;
    Qr_PForPF1TOTLIQ: TFloatField;
    Qr_PForFRAZAO: TStringField;
    Qr_PForPF1LOTSEQ: TFloatField;
    MLOTSEQ: TEdit;
    lbl_lotseq: TLabel;
    obs_lotseq: TLabel;
    Src_Pfor: TDataSource;
    DBGrid1: TDBGrid;
    Qr_PForPF1NUMNF: TFloatField;
    Qr_PForPF1DATANF: TDateTimeField;
    Qr_PForPF1DATAENT: TDateTimeField;
    Label1: TLabel;
    CHAVEF: TEdit;
    RG_FILTRO: TRadioGroup;
    gb_mercad: TGroupBox;
    Label2: TLabel;
    NUMNFI: TEdit;
    Label3: TLabel;
    NUMNFF: TEdit;
    DBGrid2: TDBGrid;
    Qr_PFor02: TQuery;
    Src_PFor02: TDataSource;
    Qr_PFor02PF2CODPRO: TFloatField;
    Qr_PFor02PF2ITEM: TFloatField;
    Qr_PFor02PF2LOTE: TStringField;
    Qr_PFor02PF2DATAV: TDateTimeField;
    Qr_PFor02PF2QTDP: TFloatField;
    Qr_PFor02PF2PU: TFloatField;
    Qr_PFor02PF2DESC01: TFloatField;
    Qr_PFor02PF2DESC02: TFloatField;
    Qr_PFor02PF2DESC03: TFloatField;
    Qr_PFor02PF2SIT: TStringField;
    Qr_PFor02PF2BASEN: TFloatField;
    Qr_PFor02PF2ICMSN: TFloatField;
    Qr_PFor02PF2BASER: TFloatField;
    Qr_PFor02PF2ICMSR: TFloatField;
    Qr_PFor02PF2TOTDES: TFloatField;
    Qr_PFor02PF2CFO: TFloatField;
    Qr_PFor02PDMARCA: TStringField;
    Qr_PFor02PDUND: TStringField;
    Qr_PFor02TOTITEM: TFloatField;
    Qr_PFor02PF2CODEMP: TFloatField;
    Qr_PFor02PF2LOTSEQ: TFloatField;
    Qr_PFor02PF2CHAVE: TFloatField;
    Qr_PForPF1CODEMP: TFloatField;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    edt_condpagto: TEdit;
    Qr_PForPF1CONDPAG: TStringField;
    Qr_PFor02PF2NOMPRO: TStringField;
    procedure CHAVEIKeyPress(Sender: TObject; var Key: Char);
    procedure bb_sairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure bbLocalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure STG1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MLOTSEQExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CHAVEIExit(Sender: TObject);
    procedure NUMNFIExit(Sender: TObject);
    procedure NUMNFFExit(Sender: TObject);
    procedure CHAVEFExit(Sender: TObject);
    procedure Src_PforDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_PForLoc: TFrm_PForLoc;

implementation

{$R *.dfm}

procedure TFrm_PForLoc.CHAVEIKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_PForLoc.bb_sairClick(Sender: TObject);
begin
if not Qr_PForPF1CHAVE.IsNull then
   begin
   CHAVEI.Text  :=Qr_PForPF1CHAVE.AsString;
   MLOTSEQ.Text:=Qr_PForPF1LOTSEQ.AsString;
   end;
modalResult:=mrok;
end;

procedure TFrm_PForLoc.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.text));
   except
      ShowMessage('Favor digitar uma data Valida');
      MDT1.SetFocus;
      end
   end;
end;

procedure TFrm_PForLoc.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrtoDate(MDT2.text));
      if StrtoDate(MDT2.Text)<StrtoDate(MDT1.Text) then
       begin
         ShowMessage('Data inicial maior que final. Invalido!');
         MDT1.SetFocus;
         Exit;
       end;
   except
      ShowMessage('Favor digitar uma data Valida');
      MDT2.SetFocus;
      end
   end;
end;

procedure TFrm_PForLoc.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_PForLoc',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_PForLoc.CODFORExit(Sender: TObject);
begin
if bb_sair.Focused then
   exit;
if Trim(CODFOR.Text)='' then
   NOMCLI.text:='Todos...'
else
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_For.Eof then
      begin
      ShowMessage('Fornecedor nao Cadastrado');
      CODFOR.SetFocus;
      end
   else
      NOMCLI.Text:=DM1.Tb_ForFRAZAO.Value;
   end;
end;

procedure TFrm_PForLoc.bbLocalizarClick(Sender: TObject);
begin

if (valint(CHAVEI.Text)>0) and (valint(CHAVEF.Text)>0) then
   begin
   if valint(CHAVEI.Text)>valint(CHAVEF.Text) then
      begin
      fmensagem('Chave inicial não pode ser maior que final!',0,['0'],0);
      CHAVEI.SetFocus;
      exit;
      end;
   end;
if (valint(NUMNFI.Text)>0) and (valint(NUMNFF.Text)>0) then
   begin
   if valint(NUMNFI.Text)>valint(NUMNFF.Text) then
      begin
      fmensagem('Numero da nota inicial não pode ser maior que final!',0,['0'],0);
      NUMNFI.SetFocus;
      exit;
      end;
   end;

if (trim(mdt1.Text)<>'/  /') and (trim(mdt2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data Inicial não pode ser maior que final!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADFOR','FCODEMP','PF1CODEMP','FCODFOR','PF1CODFOR');
la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);


Qr_Pfor.Close;
Qr_Pfor.SQl.Clear;
Qr_Pfor.SQl.Add('Select PF1CODEMP,PF1LOTSEQ,PF1CHAVE,PF1DATA,PF1TOTLIQ,PF1NUMNF,PF1DATANF,PF1DATAENT,PF1CONDPAG,FRAZAO from '
              +'CADPF1 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' PF1STATUS<2 ');
if Trim(MLOTSEQ.Text)<>'' then
   Qr_PFor.SQL.add(' and PF1LOTSEQ=0'+Trim(MLOTSEQ.Text));

if ValInt(CHAVEI.Text)>0 then
   Qr_Pfor.Sql.Add(' and PF1CHAVE>=0'+CHAVEI.Text);
if ValInt(CHAVEF.Text)>0 then
   Qr_Pfor.Sql.Add(' and PF1CHAVE<=0'+CHAVEF.Text);
if ValInt(NUMNFI.Text)>0 then
   Qr_Pfor.Sql.Add(' and PF1NUMNF>=0'+NUMNFI.Text);
if ValInt(NUMNFF.Text)>0 then
   Qr_Pfor.Sql.Add(' and PF1NUMNF<=0'+NUMNFF.Text);

if ValInt(CODFOR.Text)>0 then
   Qr_Pfor.Sql.add(' and PF1CODFOR=0'+CODFOR.Text);
if Trim(MDT1.Text)<>'/  /' then
   Qr_Pfor.SQl.add(' and PF1DATA>='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_Pfor.SQl.add(' and PF1DATA<='+chr(39)+FormatDateTime(fdt,StrtoDate(MDT2.Text))+chr(39));
if RG_FILTRO.ItemIndex<>2 then
   Qr_Pfor.Sql.Add(' and PF1STATUS=0'+Inttostr(RG_FILTRO.ItemIndex));
Qr_Pfor.Sql.Add(' Order by PF1DATA,PF1CHAVE');
Qr_Pfor.Open;
end;

procedure TFrm_PForLoc.FormCreate(Sender: TObject);
begin
Qr_PForPF1DATA.DisplayFormat  :=fdt2;
Qr_PForPF1TOTLIQ.DisplayFormat:=mcasas;
Qr_PFor02PF2QTDP.DisplayFormat:=mcasqtd;
Qr_PFor02PF2PU.DisplayFormat  :=mcasaspu;
Qr_PFor02TOTITEM.DisplayFormat:=mcasas;

DM1.Query1.SQL.Clear;
//flcadpar01(0,iif(codemp>100,codemp-100,codemp),'1');
flcadpar01(0,codemp,'1');
MLOTSEQ.Text:=IntToStr(ls_numpf);
CHAVEI.Text:=FloatToStr(DM4.Tb_Par01PNUMPF.Value-1);
flcadpar01(0,codemp,'1');
if DM1.Tb_PargerPLS_NUMPF.Value=1 then
   begin
   obs_lotseq.Visible:=True;
   lbl_lotseq.Visible:=True;
   MLOTSEQ.Visible   :=True;
   end;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

end;

procedure TFrm_PForLoc.STG1Click(Sender: TObject);
begin
CHAVEI.Text  :=Qr_PForPF1CHAVE.AsString;
MLOTSEQ.Text:=Qr_PForPF1LOTSEQ.AsString;
end;

procedure TFrm_PForLoc.FormActivate(Sender: TObject);
begin
CHAVEI.SetFocus;
end;

procedure TFrm_PForLoc.MLOTSEQExit(Sender: TObject);
begin
if Trim(MLOTSEQ.Text)='' then
   exit
else
   MLOTSEQ.Text:=fdeixanum(MLOTSEQ.Text);

end;

procedure TFrm_PForLoc.DBGrid1DblClick(Sender: TObject);
begin
CHAVEI.Text  :=Qr_PForPF1CHAVE.AsString;
MLOTSEQ.Text:=Qr_PForPF1LOTSEQ.AsString;
bb_sair.Click;

end;

procedure TFrm_PForLoc.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=9) or (key=27) then
   begin
   CHAVEI.Text  :=Qr_PForPF1CHAVE.AsString;
   MLOTSEQ.Text:=Qr_PForPF1LOTSEQ.AsString;
   bb_sair.Click;
   end;

end;

procedure TFrm_PForLoc.CHAVEIExit(Sender: TObject);
begin
CHAVEI.Text:=fdeixanum2(CHAVEI.Text);
if (valint(CHAVEI.Text)>0) and (valint(CHAVEF.Text)=0) then
   CHAVEF.Text:=CHAVEI.Text;

end;

procedure TFrm_PForLoc.NUMNFIExit(Sender: TObject);
begin
NUMNFI.Text:=fdeixanum2(NUMNFI.Text);
if (valint(NUMNFI.Text)>0) and (valint(NUMNFF.Text)=0) then
   NUMNFF.Text:=NUMNFI.Text;

end;

procedure TFrm_PForLoc.NUMNFFExit(Sender: TObject);
begin
NUMNFF.Text:=fdeixanum2(NUMNFF.Text);
end;

procedure TFrm_PForLoc.CHAVEFExit(Sender: TObject);
begin
CHAVEF.Text:=fdeixanum2(CHAVEF.Text);
end;

procedure TFrm_PForLoc.Src_PforDataChange(Sender: TObject; Field: TField);
begin
edt_condpagto.Text:=Qr_PForPF1CONDPAG.AsString;

if (not Qr_PFor02.Active) or
 (Qr_PForPF1LOTSEQ.AsFloat<>Qr_PFor02PF2LOTSEQ.AsFloat) or
 (Qr_PForPF1CHAVE.AsFloat<>Qr_PFor02PF2CHAVE.AsFloat) or
 (Qr_PForPF1CODEMP.AsFloat<>Qr_PFor02PF2CODEMP.AsFloat) then
  begin

  la_empresas :='';
  la_tabelas  :='';
  la_Join     :='';
  la_instrucao:='';
  fInnerJoin(1,'CADPRO','PDCODEMP','PF2CODEMP','PDCODPRO','PF2CODPRO');

  Qr_PFor02.Close;
  Qr_Pfor02.SQl.Clear;
  Qr_PFor02.SQL.Add('Select PF2CODEMP,PF2LOTSEQ,PF2CHAVE,PF2CODPRO,'
                   +'NVL(TRIM(PF2NOMPRO),PDNOME) AS PF2NOMPRO,PF2ITEM,'
                   +' PF2LOTE,PF2DATAV,PF2QTDP,PF2PU,PF2DESC01,PF2DESC02, '
                   +' PF2DESC03,PF2SIT,PF2BASEN,PF2ICMSN, '
                   +' PF2BASER,PF2ICMSR,PF2TOTDES,PF2CFO,PDMARCA,PDUND, '
                   +' PF2PU*PF2QTDP AS TOTITEM from '
                   +' CADPF2'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' PF2CODEMP=0'+Qr_PForPF1CODEMP.AsString
               +' and  PF2LOTSEQ=0'+Qr_PForPF1LOTSEQ.AsString
               +' and  PF2CHAVE=0'+Qr_PForPF1CHAVE.AsString);
  try
     Qr_PFor02.Open;
  except
     Qr_PFor02.sql.savetofile(mpastatemp + 'SQL.TXT');
     end;
  end;
end;

procedure TFrm_PForLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

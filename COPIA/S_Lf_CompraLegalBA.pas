unit S_Lf_CompraLegalBA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, DB, DBTables, Grids, DBGrids;

type
  TFrm_Lf_CompraLegalBA = class(TForm)
    Panel1: TPanel;
    bbGerar: TBitBtn;
    bbSair: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    Label3: TLabel;
    NumNF_I: TEdit;
    Label4: TLabel;
    NumNF_F: TEdit;
    Label5: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    Label7: TLabel;
    MPASTA: TEdit;
    sbnProc: TSpeedButton;
    Label8: TLabel;
    NOMARQ: TEdit;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Src_CompraLegal: TDataSource;
    Qr_CompraLegal: TQuery;
    Qr_CompraLegalP1NUMNF: TFloatField;
    Qr_CompraLegalP1SERIE: TStringField;
    Qr_CompraLegalP1DATANF: TDateTimeField;
    Qr_CompraLegalCIE: TStringField;
    Qr_CompraLegalCUF: TStringField;
    Qr_CompraLegalP2CFO: TFloatField;
    Qr_CompraLegalP1BASER: TFloatField;
    Qr_CompraLegalP1ICMSR: TFloatField;
    Qr_CompraLegalP1TOTALL: TFloatField;
    Qr_CompraLegalP1VALFRE: TFloatField;
    Qr_CompraLegalP1VALSEG: TFloatField;
    Qr_CompraLegalP1TOTDES: TFloatField;
    Qr_CompraLegalP2VALIPI: TFloatField;
    Qr_CompraLegalP1TOTALB: TFloatField;
    Qr_CompraLegalTRIE: TStringField;
    Qr_CompraLegalTRCNPJ: TFloatField;
    Qr_CompraLegalTRRAZTRA: TStringField;
    Qr_CompraLegalTRUF: TStringField;
    Qr_CompraLegalTRBAIRRO: TStringField;
    Qr_CompraLegalP1QTDVOL: TFloatField;
    Qr_CompraLegalP1ESPECIE: TStringField;
    Qr_CompraLegalP1PESOB: TFloatField;
    Qr_CompraLegalP1PESOL: TFloatField;
    Qr_CompraLegalP1PLACAV: TStringField;
    Qr_CompraLegalP1UFPV: TStringField;
    Qr_CompraLegalTRCIDADE: TStringField;
    Qr_CompraLegalP1OBS1: TStringField;
    Qr_CompraLegalP1FRETEPC: TFloatField;
    Qr_CompraLegalP1PROCESSO: TStringField;
    Qr_CompraLegalCCNPJ: TFloatField;
    Qr_CompraLegalCRAZAO: TStringField;
    Qr_CompraLegalCLOG: TStringField;
    Qr_CompraLegalCBAIRRO: TStringField;
    Qr_CompraLegalCCEP: TStringField;
    Qr_CompraLegalCFONE01: TStringField;
    Qr_CompraLegalCCIDADE: TStringField;
    Qr_CompraLegalP2CODPRO: TFloatField;
    Qr_CompraLegalPDNOME: TStringField;
    Qr_CompraLegalP2SIT: TStringField;
    Qr_CompraLegalPDUND: TStringField;
    Qr_CompraLegalP2QTD: TFloatField;
    Qr_CompraLegalP2TOTLIQ: TFloatField;
    Qr_CompraLegalP2ALIPI: TFloatField;
    Qr_CompraLegalP2ALIQ: TFloatField;
    Qr_CompraLegalTOTIPI: TFloatField;
    Qr_CompraLegalDATSAI: TDateTimeField;
    Qr_CompraLegalP1BASEN: TFloatField;
    Qr_CompraLegalP1ICMSN: TFloatField;
    Qr_CompraLegalP2PRECO: TFloatField;
    Qr_CompraLegalOUTDESP: TFloatField;
    Qr_CompraLegalP2TOTDES: TFloatField;
    Qr_CompraLegalP2ITEM: TFloatField;
    Qr_CompraLegalP1DATAP: TDateTimeField;
    Qr_CompraLegalP2ALIQNR: TFloatField;
    Qr_CompraLegalTRCNPF: TFloatField;
    bbAplicar: TBitBtn;
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure bbGerarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure NumNF_IExit(Sender: TObject);
    procedure NumNF_FExit(Sender: TObject);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbnProcClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Lf_CompraLegalBA: TFrm_Lf_CompraLegalBA;

implementation

uses S_DM1, Func, lerarq, S_DefBac;

{$R *.dfm}

procedure TFrm_Lf_CompraLegalBA.CODCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Lf_CompraLegalBA.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Lf_CompraLegalBA.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;
end;


procedure TFrm_Lf_CompraLegalBA.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      begin
      fmensagem('Cliente não cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end
   else
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;
end;

procedure TFrm_Lf_CompraLegalBA.bbGerarClick(Sender: TObject);
var
   mNumNF_Ant: Real;
   mlinha : String;
   F      : TextFile;
   mItem  : Integer;
begin
bbGerar.Enabled:=false;

bbAplicarClick(self);

if Frm_Lf_CompraLegalBA.Qr_CompraLegal.isempty then
   begin
   fmensagem('Nao ha Registro ha Ser Gerado!',0,['0'],0);
   bbGerar.Enabled:=true;
   exit;
   end;
mNumNF_Ant:= -1;
AssignFile(F, MPASTA.Text+NOMARQ.Text);
try
   Rewrite(F);
except
   verteclado(0);
   fmensagem('Este Arquivo: '+MPASTA.Text+NOMARQ.Text+#13
             +'Esta Sendo Usado Por Outro Programa'+#13
             +'Feche-o e Tente Novamente!',0,['0'],0);
   bbGerar.Enabled:=true;
   exit;
   end;

while not Frm_Lf_CompraLegalBA.Qr_CompraLegal.Eof do

   begin
   if mNumNF_ant<> Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1NUMNF').AsFloat then
      begin
      mItem:=0;
      mNumNF_Ant:= Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1NUMNF').AsFloat;
      mlinha:= '1';
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1NUMNF').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1SERIE').AsString;
      mlinha:= mlinha+'|'+copy(insere(DM1.Tb_EmpCGC.AsString,'0',14),1,8);
      mlinha:= mlinha+'|'+copy(insere(DM1.Tb_EmpCGC.AsString,'0',14),9,4);
      mlinha:= mlinha+'|'+copy(insere(DM1.Tb_EmpCGC.AsString,'0',14),13,2);
      mlinha:= mlinha+'|'+ FormatDateTime('dd/mm/yyyy', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1DATANF').AsDateTime);
      if DM1.Tb_EmpUF.Value='BA' then
         mlinha:= mlinha+'|'+DM1.Tb_EmpINSCRICAO.AsString
      else
         mlinha:= mlinha+'|';
      mlinha:= mlinha+'|'+DM1.Tb_EmpUF.AsString;
      if Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1DATANF').AsDateTime>pdatanula then
         mlinha:= mlinha+'|'+FormatDateTime('dd/mm/yyyy', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('DATSAI').AsDateTime)
      else
         mlinha:= mlinha+'|'+FormatDateTime('dd/mm/yyyy', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1DATANF').AsDateTime);
      mlinha:= mlinha+'|'+FormatFloat('0000', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2CFO').AsInteger);
      mlinha:= mlinha+'|'+mudavp(FormatFloat('000.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1BASEN').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1BASER').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1ICMSN').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1ICMSR').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1TOTALB').AsFloat));

      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1VALFRE').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1VALSEG').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('OUTDESP').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TOTIPI').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1TOTALL').AsFloat
                                             + Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1TOTDES').AsFloat));


      if Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRIE').AsString='BA' then
         mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRIE').AsString
      else
         mlinha:= mlinha+'|';
      if Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCNPJ').AsFloat>0 then
        begin
        mlinha:= mlinha+'|'+copy(insere(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCNPJ').AsString,'0',14),1,8);
        mlinha:= mlinha+'|'+copy(insere(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCNPJ').AsString,'0',14),9,4);
        mlinha:= mlinha+'|'+copy(insere(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCNPJ').AsString,'0',14),13,2);
        end
      else if Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCNPF').AsFloat>0 then
        begin
        mlinha:= mlinha+'|'+copy(insere(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCNPF').AsString,'0',11),1,8);
        mlinha:= mlinha+'|0';
        mlinha:= mlinha+'|';
        end
      else
        begin
        mlinha:= mlinha+'|';
        mlinha:= mlinha+'|';
        mlinha:= mlinha+'|';
        end;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRRAZTRA').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRUF').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCIDADE').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1QTDVOL').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1ESPECIE').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1PESOB').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1PESOL').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1PLACAV').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1UFPV').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('TRCIDADE').AsString;
      mlinha:= mlinha+'|'+FTextoVal( Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1OBS1').AsString);
      mlinha:= mlinha+'|'+IntToStr(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1FRETEPC').Asinteger-1);
      mlinha:= mlinha+'|'+AnsiToAscii(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1PROCESSO').AsString);
      mlinha:= mlinha+'|'+copy(insere(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CCNPJ').AsString,'0',14),1,8);
      mlinha:= mlinha+'|'+copy(insere(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CCNPJ').AsString,'0',14),9,4);
      mlinha:= mlinha+'|'+copy(insere(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CCNPJ').AsString,'0',14),13,2);
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CRAZAO').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CLOG').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CBAIRRO').AsString;
      mlinha:= mlinha+'|'+insere2(fdeixanum2(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CCEP').AsString),'0',8);
      mlinha:= mlinha+'|'+insere2(fdeixanum2(copy(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CFONE01').AsString,1,6)),'0',2);
      mlinha:= mlinha+'|'+fdeixanum2(copy(Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CFONE01').AsString,7,10));
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CUF').AsString;
      mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('CCIDADE').AsString;
      mlinha:= mlinha+'|'; // percentual de desconto nao informado
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1TOTALL').AsFloat));
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1TOTDES').AsFloat));
      mlinha:= mlinha+'|0'; // status
      mlinha:= mlinha+'|'; // codigo da esfera
      mlinha:= mlinha+'|'; // Numero do convenio
      mlinha:= mlinha+'|'; // sigla da unidade da federaçcao
      mlinha:= mlinha+'|'; // descricao do municipio

      mlinha:= mlinha+'|'; // final


      Writeln(F, mlinha);
      end;
   mItem:=mItem+1;
   mlinha:= '2';
   mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1NUMNF').AsString;
   mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1SERIE').AsString;
   mlinha:= mlinha+'|'+copy(insere(DM1.Tb_EmpCGC.AsString,'0',14),1,8);
   mlinha:= mlinha+'|'+copy(insere(DM1.Tb_EmpCGC.AsString,'0',14),9,4);
   mlinha:= mlinha+'|'+copy(insere(DM1.Tb_EmpCGC.AsString,'0',14),13,2);
   mlinha:= mlinha+'|'+ FormatDateTime('dd/mm/yyyy', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P1DATANF').AsDateTime);
   mlinha:= mlinha+'|'+IntTostr(mItem);
   mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2CODPRO').AsString;
   mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('PDNOME').AsString;
   mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2SIT').AsString;
   mlinha:= mlinha+'|'+Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('PDUND').AsString;
   mlinha:= mlinha+'|'+Mudavp(FormatFloat('0.000000', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2QTD').AsFloat));
   mlinha:= mlinha+'|'+mudavp(FormatFloat('0.000000', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2PRECO').AsFloat));
   mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2ALIPI').AsFloat));
   if Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2ALIQ').AsFloat=0 then
      mlinha:= mlinha+'|'+mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2ALIQNR').AsFloat))
   else
      mlinha:= mlinha+'|'+Mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2ALIQ').AsFloat));
   mlinha:= mlinha+'|'+Mudavp(FormatFloat('0.000000', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2TOTDES').AsFloat));
   mlinha:= mlinha+'|'; // PERCENTUAL DE DESCONTO NAO INFORMADO
   mlinha:= mlinha+'|'+Mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2QTD').AsFloat
                      *Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2PRECO').AsFloat));
   mlinha:= mlinha+'|'+Mudavp(FormatFloat('0.00', Frm_Lf_CompraLegalBA.Qr_CompraLegal.FieldByName('P2TOTLIQ').AsFloat));
   mlinha:= mlinha+'|';

   Writeln(F, mlinha);
   Frm_Lf_CompraLegalBA.Qr_CompraLegal.Next;
   end;
CloseFile(F);
bbGerar.Enabled:=true;
fmensagem('Arquivo Gerado!',0,['0'],0);
end;

procedure TFrm_Lf_CompraLegalBA.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Lf_CompraLegalBA.NumNF_IExit(Sender: TObject);
begin
NumNF_I.Text:=fdeixanum2(NumNF_I.Text);
end;

procedure TFrm_Lf_CompraLegalBA.NumNF_FExit(Sender: TObject);
begin
NumNF_F.Text:=fdeixanum2(NumNF_F.Text);
end;

procedure TFrm_Lf_CompraLegalBA.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_Lf_CompraLegalBA.sbnProcClick(Sender: TObject);
begin
testeform := TFrm_Lf_CompraLegalBA(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
frm_DefBac.Caption:='Definir Caminho onde sera gerado o arquivo';
frm_DefBac.DirectoryListBox1.Directory:=MPASTA.Text;
Frm_DefBac.ShowModal;
if trim(Frm_DefBac.mcam)<>'' then
   MPASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);

end;

procedure TFrm_Lf_CompraLegalBA.FormCreate(Sender: TObject);
begin
mdt1.Text:=FormatDateTime(fdt2, date);
mdt2.Text:=FormatDateTime(fdt2, date);
Qr_CompraLegalP1DATANF.DisplayFormat:=fdt2;
Qr_CompraLegalP1DATAP.DisplayFormat:=fdt2;
Qr_CompraLegalP1TOTALL.DisplayFormat:=mcasas;
end;

procedure TFrm_Lf_CompraLegalBA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Lf_CompraLegalBA.bbAplicarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data inicial maior que final. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

if (trim(NumNF_I.Text)<>'') and (trim(NumNF_F.Text)<>'') then
   begin
   if fsonumero(NumNF_F.Text)<fsonumero(NumNF_I.Text) then
      begin
      fmensagem('Numero Inicial Maior que Final. Invalido!',0,['0'],0);
      NumNF_I.SetFocus;
      exit;
      end;
   end;

if not DirectoryExists(MPASTA.Text) then
   begin
   fmensagem('Favor Selecionar uma Pasta Valida!',0,['0'],0);
   MPASTA.SetFocus;
   exit;
   end;
if trim(NOMARQ.Text)='' then
   begin
   fmensagem('Favor Digitar um nome de Arquivo Válido!',0,['0'],0);
   NOMARQ.SetFocus;
   exit;
   end;

if MPASTA.Text[Length(MPASTA.Text)]<>'\' then
   MPASTA.Text:=MPASTA.Text+'\';

la_Empresas :='';
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADTRA','TRCODEMP','P1CODEMP','TRCODTRA','P1CODTRA');

if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');



Frm_Lf_CompraLegalBA.Qr_CompraLegal.Close;
Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.Clear;
Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.Add('SELECT P1NUMNF, P1SERIE, P1DATANF,P1PREVENT AS DATSAI, CIE, CUF, '
                                           +' P2CFO, P1BASEN, P1BASER, P1ICMSR,P1TOTALL, P1VALFRE, '
                                           +' P1VALSEG,  P2VALIPI, P1TOTALB, TRIE, TRCNPJ, TRCNPF, '
                                           +' TRRAZTRA, TRUF, TRBAIRRO, P1QTDVOL, P1ESPECIE, '
                                           +' P1PESOB, P1PESOL, P1PLACAV, P1UFPV, TRCIDADE, P1OBS1, '
                                           +' CASE WHEN P1FRETEPC<1 THEN 1 ELSE P1FRETEPC END AS  P1FRETEPC, '
                                           +' P1PROCESSO, CCNPJ, CRAZAO, CLOG, CBAIRRO, CCEP, CFONE01, CCIDADE, '
                                           +' P1TOTDES,  P2CODPRO, PDNOME, P2SIT, PDUND, P2QTD, P2TOTLIQ, '
                                           +'  P2ALIPI, P2ALIQ ,P2PRECO,P2ITEM,P1DATAP '
                                           +' , P1IPIINA+P1IPIPOS+P1IPINEG  AS TOTIPI,P1ICMSN '
                                           +' ,P1TARBAN AS OUTDESP,P2TOTDES,P2ALIQNR '
                                           +' FROM CADP01  '+iif(la_tabelas='','',',')+la_tabelas
                                           +'       '+la_Join
                                           +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                                           +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                                           +' P1NUMNF>0 and '
//                                           +'  (P1STATUS<'+mstatus_excluido+') ');
                                           +'  (P1STATUS<'+mstatus_excluido+') and CUF='+chr(39)+'BA'+chr(39));

if Trim(MDT1.Text)<>'/  /' then
   Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

if Trim(MDT2.Text)<>'/  /' then
   Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.Add(' '+fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));

mcinst2:=fItensListBox(0,Lbx_Codcli,OMITIR_cli);
if trim(mcinst2)<>'' then Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.Add(' and P1CODCLI'+mcinst2);

if trim(NumNF_I.Text)<>'' then
   Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.Add(' and P1NumNF>='+NumNF_I.Text);

if trim(NumNF_F.Text)<>'' then
   Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.Add(' and P1NumNF<='+NumNF_F.Text);
//Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.SaveToFile('C:\SGE_TESTE_TESTE.txt');

try
   Frm_Lf_CompraLegalBA.Qr_CompraLegal.Open;
except
   Frm_Lf_CompraLegalBA.Qr_CompraLegal.SQL.SaveToFile('C:\SGE_TESTE_TESTE.txt');
   end;

end;

end.

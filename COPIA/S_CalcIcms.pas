unit S_CalcIcms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, Gauges,func,lerarq,db,dbtables,S_DM1,S_Cli;

type
  TFrm_CalcIcms = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    Label2: TLabel;
    UF: TEdit;
    NOMUF: TEdit;
    Label4: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    RG_Progres: TGroupBox;
    Gauge1: TGauge;
    Tb_Ped: TQuery;
    Tb_PedP1CODEMP: TFloatField;
    Tb_PedP1CHAVE: TFloatField;
    Tb_PedP1ORDEM: TFloatField;
    Tb_PedP1CODCLI: TFloatField;
    Tb_PedCUF: TStringField;
    Tb_PedCREPAS: TFloatField;
    Tb_PedCALIQA: TFloatField;
    Tb_PedCALIQB: TFloatField;
    Tb_PedCICMSR: TFloatField;
    Tb_PedCICMSTP: TFloatField;
    Tb_PedP1TIPO: TFloatField;
    Tb_PedP1DESC01: TFloatField;
    Tb_PedP1DESC02: TFloatField;
    Tb_PedP1VLRDES: TFloatField;
    Tb_PedP1VALFRE: TFloatField;
    Tb_PedP1TPPCO: TFloatField;
    Tb_PedCCONSF: TFloatField;
    Tb_PedP1PACREGER: TFloatField;
    Tb_PedP1PACRECONV: TFloatField;
    Tb_Ped02S: TQuery;
    Tb_Ped02SP2SCODEMP: TFloatField;
    Tb_Ped02SP2SCHAVE: TFloatField;
    Tb_Ped02SP2SORDEM: TFloatField;
    Tb_Ped02SP2SITEM: TFloatField;
    Tb_Ped02SP2SCODPRO: TFloatField;
    Tb_Ped02SP2SQTD: TFloatField;
    Tb_Ped02SP2SDESC1: TFloatField;
    Tb_Ped02SP2SDESC2: TFloatField;
    Tb_Ped02SP2SVALDES: TFloatField;
    Tb_Ped02SP2SDESCRAT: TFloatField;
    Tb_Ped02SP2SPRECO: TFloatField;
    Tb_Ped02SP2SSIT: TStringField;
    Tb_Ped02SP2SCODFAB: TFloatField;
    Tb_Ped02SP2SBCISSQN: TFloatField;
    Tb_Ped02SP2SVISSQN: TFloatField;
    Tb_Ped02SP2SLISTA: TFloatField;
    Tb_Ped02SP2SSTATUS: TFloatField;
    Tb_Ped02SP2SPCOTAB: TFloatField;
    Tb_Ped02SP2STOTDES: TFloatField;
    Tb_Ped02SP2STABELA: TStringField;
    Tb_Ped02SP2SISENTAS: TFloatField;
    Tb_Ped02SP2SALIQ: TFloatField;
    Tb_Ped02SP2SPCOMIS: TFloatField;
    Tb_Ped02SP2SVCOMIS: TFloatField;
    Tb_Ped02SP2SDESCM: TFloatField;
    Tb_Ped02SP2SCFO: TFloatField;
    Tb_Ped02SP2SSEMCOM: TFloatField;
    Tb_Ped02SP2SPDESCF: TFloatField;
    Tb_Ped02SP2SVDESCF: TFloatField;
    Tb_Ped02SP2SPCOCUS: TFloatField;
    Tb_Ped02SP2SVCOM02: TFloatField;
    Tb_Ped02SP2SVCOM03: TFloatField;
    CB_SITTRI: TCheckBox;
    Tb_PedP1DATANF: TDateTimeField;
    Tb_PedP1DATACF: TDateTimeField;
    Tb_PedP1LOTSEQ: TFloatField;
    Tb_Ped02: TQuery;
    Tb_Ped02P2CODEMP: TFloatField;
    Tb_Ped02P2LOTSEQ: TFloatField;
    Tb_Ped02P2CHAVE: TFloatField;
    Tb_Ped02P2ORDEM: TFloatField;
    Tb_Ped02P2ITEM: TFloatField;
    Tb_Ped02P2CODPRO: TFloatField;
    Tb_Ped02P2CODANT: TFloatField;
    Tb_Ped02P2QTD: TFloatField;
    Tb_Ped02P2LOTE: TStringField;
    Tb_Ped02P2DTVCTO: TDateTimeField;
    Tb_Ped02P2DESC1: TFloatField;
    Tb_Ped02P2DESC2: TFloatField;
    Tb_Ped02P2VALDES: TFloatField;
    Tb_Ped02P2PRECO: TFloatField;
    Tb_Ped02P2SIT: TStringField;
    Tb_Ped02P2CODFAB: TFloatField;
    Tb_Ped02P2BASEN: TFloatField;
    Tb_Ped02P2ICMSN: TFloatField;
    Tb_Ped02P2REPAS: TFloatField;
    Tb_Ped02P2BASER: TFloatField;
    Tb_Ped02P2ICMSR: TFloatField;
    Tb_Ped02P2LISTA: TFloatField;
    Tb_Ped02P2STATUS: TFloatField;
    Tb_Ped02P2PCOTAB: TFloatField;
    Tb_Ped02P2UCPR: TFloatField;
    Tb_Ped02P2PCOCUS: TFloatField;
    Tb_Ped02P2PCOMAX: TFloatField;
    Tb_Ped02P2TOTDES: TFloatField;
    Tb_Ped02P2DESCRAT: TFloatField;
    Tb_Ped02P2TABELA: TStringField;
    Tb_Ped02P2ALIPI: TFloatField;
    Tb_Ped02P2VALIPI: TFloatField;
    Tb_Ped02P2BCINR: TFloatField;
    Tb_Ped02P2ICMSNR: TFloatField;
    Tb_Ped02P2ISENTAS: TFloatField;
    Tb_Ped02P2TOTOUT: TFloatField;
    Tb_Ped02P2ALIQ: TFloatField;
    Tb_Ped02P2ALIQNR: TFloatField;
    Tb_Ped02P2PCOMIS: TFloatField;
    Tb_Ped02P2VCOMIS: TFloatField;
    Tb_Ped02P2VCOM02: TFloatField;
    Tb_Ped02P2VCOM03: TFloatField;
    Tb_Ped02P2DESCM: TFloatField;
    Tb_Ped02P2CFO: TFloatField;
    Tb_Ped02P2SEMCOM: TFloatField;
    Tb_Ped02P2TOTLIQ: TFloatField;
    Tb_Ped02P2PDESCF: TFloatField;
    Tb_Ped02P2VDESCF: TFloatField;
    Tb_Ped02P2ACRECONV: TFloatField;
    Tb_Ped02P2ACREGER: TFloatField;
    Tb_Ped02SP2SLOTSEQ: TFloatField;
    CB_TOTPED: TCheckBox;
    Label5: TLabel;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure UFExit(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CalcIcms: TFrm_CalcIcms;

implementation

{$R *.dfm}

procedure TFrm_CalcIcms.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_CalcIcms.MDT2Exit(Sender: TObject);
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

procedure TFrm_CalcIcms.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CalcIcms.BitBtn1Click(Sender: TObject);
var
mcfo,mqtd, mlid: Integer;
mcalc: Real;

mrepas,micmsd,micmsc,mbaser,micmsr,mbasen,micmsn,mbicmsnr,micmsnr,misentas: Real;
mtotal,mvalipi,maliq,malissqn,mvissqn,mbissqn,mdesrat,macrecv,macreger: Real;
mdesc,maliqnr,mredut: Real;

mcfop: String;
// do pedido 01
mtotb,mtotl,mbasenp,mbasenn,mbaseni: Real;
micmsnp, micmsnn, micmsni,mbaserp,mbasern,mbaseri: Real;
micmsrp, micmsrn, micmsri,mbasenrp,mbasenri,mbasenrn: Real;
micmsnrp, micmsnrn, micmsnri, mipiina, mipipos, mipineg : Real;
mtottri, mtotret, mtotise, mtotout, mtotpos, mtotneg, mtotina: Real;
mbascal,  mpiscofn, mpiscofr, mtotdes,mdesped: Real;
msemcom, mdescitem, mdescfin: Real;
mtotdi01, mtotdi02, mtotdivl: Real;
mtotcom02, mtotcom03: Real;
mcomis, mcomist, mcomiss : Real;
mcfo01, mcfo02: String;
y:Integer;
msit: String;

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
Tb_Ped.Close;
Tb_Ped.SQL.Clear;
Tb_Ped.SQL.Add('Select P1CODEMP,P1CHAVE,P1LOTSEQ,P1ORDEM,P1CODCLI,'
              +'           CUF,CREPAS,CALIQA,CALIQB,CICMSR, '
              +'           P1TIPO,P1DESC01,P1DESC02,P1VLRDES,P1VALFRE, P1TPPCO,'
              +'           P1PACREGER,P1PACRECONV,P1DATANF, P1DATACF, '
              +'            CICMSTP,CCONSF from CADP01,CADCLI where '
              +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntToStr(codemp)+' and ')
              +' CCODCLI=P1CODCLI ');
if Trim(MDT1.Text)<>'/  /' then
   Tb_Ped.SQL.Add(' and P1DATAP>='+chr(39)+FormatDateTime(fdt, StrTodate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Tb_Ped.SQL.Add(' and P1DATAP<='+chr(39)+FormatDateTime(fdt, StrTodate(MDT2.Text))+chr(39));
if Trim(UF.Text)<>'' then
   Tb_Ped.SQL.Add(' and CUF='+chr(39)+UF.Text+chr(39));
if Trim(CODCLI.Text)<>'' then
   Tb_Ped.SQL.Add(' and P1CODCLI=0'+Trim(CODCLI.Text));
Tb_Ped.Open;
mqtd:=Tb_Ped.RecordCount;
mlid:=0;

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
DM1.Query3.Params.CreateParam(ftString,'BASEN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ICMSN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'DESCRAT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'TOTDES',ptInput);
DM1.Query3.Params.CreateParam(ftString,'REPAS',ptInput);
DM1.Query3.Params.CreateParam(ftString,'BCINR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ICMSNR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ISENTAS',ptInput);
DM1.Query3.Params.CreateParam(ftString,'TOTOUT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ALIQNR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ALIQ',ptInput);
DM1.Query3.Params.CreateParam(ftString,'TOTLIQ',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ACRECONV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ACREGER',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CFO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ORDEM',ptInput);
DM1.Query3.Params.CreateParam(ftString,'ITEM',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODPRO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'SIT',ptInput);
DM1.Query3.SQL.Add('Update CADP02 set '
                  +'P2BASEN   =:BASEN,'
                  +'P2ICMSN   =:ICMSN,'
                  +'P2DESCRAT =:DESCRAT, '
                  +'P2TOTDES  =:TOTDES, '
                  +'P2REPAS   =:REPAS, '
                  +'P2BCINR   =:BCINR, '
                  +'P2ICMSNR  =:ICMSNR, '
                  +'P2ISENTAS =:ISENTAS, '
                  +'P2TOTOUT  =:TOTOUT, '
                  +'P2ALIQNR  =:ALIQNR, '
                  +'P2ALIQ    =:ALIQ, '
                  +'P2TOTLIQ  =:TOTLIQ, '
                  +'P2ACRECONV=:ACRECONV, '
                  +'P2ACREGER =:ACREGER, '
                  +'P2CFO     =:CFO, '
                  +'P2SIT     =:SIT '
                  +' where P2CODEMP=:CODEMP '
                  +'   and P2CHAVE =:CHAVE '
                  +'   and P2LOTSEQ=:LOTSEQ '
                  +'   and P2ORDEM =:ORDEM '
                  +'   and P2ITEM  =:ITEM '
                  +'   and P2CODPRO =:CODPRO ');


DM1.Query4.Close;
DM1.Query4.SQL.Clear;
DM1.Query4.Params.CreateParam(ftString,'BASEN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ICMSN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'BASENP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'BASENN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'BASENI',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ICMSNP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ICMSNN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ICMSNI',ptInput);
DM1.Query4.Params.CreateParam(ftString,'BASENRP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'BASENRN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'BASENRI',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ICMSNRP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ICMSNRN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ICMSNRI',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTTRI',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTRET',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTISE',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTOUT',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTPOS',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTNEG',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTINA',ptInput);
DM1.Query4.Params.CreateParam(ftString,'PISCOFN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'PISCOFR',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTDES',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTDI01',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTDI02',ptInput);
DM1.Query4.Params.CreateParam(ftString,'TOTDIVL',ptInput);
DM1.Query4.Params.CreateParam(ftString,'REPAS',ptInput);
DM1.Query4.Params.CreateParam(ftString,'COMIS',ptInput);
DM1.Query4.Params.CreateParam(ftString,'COMV02',ptInput);
DM1.Query4.Params.CreateParam(ftString,'COMV03',ptInput);
DM1.Query4.Params.CreateParam(ftString,'COMIST',ptInput);
DM1.Query4.Params.CreateParam(ftString,'BCISSQN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'VISSQN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'DESCFIN',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ACRECONV',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ACREGER',ptInput);
DM1.Query4.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query4.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ORDEM',ptInput);
if CB_TOTPED.Checked then
   DM1.Query4.Params.CreateParam(ftString,'P1TOTALL',ptInput);

DM1.Query4.SQL.Add('Update CADP01 set '
                  +'P1BASEN   =:BASEN, '
                  +'P1ICMSN   =:ICMSN,'
                  +'P1BASENP  =:BASENP, '
                  +'P1BASENN  =:BASENN, '
                  +'P1BASENI  =:BASENI, '
                  +'P1ICMSNP  =:ICMSNP,'
                  +'P1ICMSNN  =:ICMSNN,'
                  +'P1ICMSNI  =:ICMSNI,'
                  +'P1BASENRP =:BASENRP,'
                  +'P1BASENRN =:BASENRN,'
                  +'P1BASENRI =:BASENRI,'
                  +'P1ICMSNRP =:ICMSNRP,'
                  +'P1ICMSNRN =:ICMSNRN,'
                  +'P1ICMSNRI =:ICMSNRI,'
                  +'P1TOTTRI  =:TOTTRI,'
                  +'P1TOTRET  =:TOTRET,'
                  +'P1TOTISE  =:TOTISE,'
                  +'P1TOTOUT  =:TOTOUT,'
                  +'P1TOTPOS  =:TOTPOS,'
                  +'P1TOTNEG  =:TOTNEG,'
                  +'P1TOTINA  =:TOTINA,'
//                  +'P1PISCOFN =:PISCOFN,'
                  +'P1PISCOFR =:PISCOFR,'
                  +'P1TOTDES  =:TOTDES,'
                  +'P1TOTDI01 =:TOTDI01,'
                  +'P1TOTDI02 =:TOTDI02,'
                  +'P1TOTDIVL =:TOTDIVL,'
                  +'P1REPAS   =:REPAS,'
                  +'P1COMIS   =:COMIS,'
                  +'P1COMV02  =:COMV02,'
                  +'P1COMV03  =:COMV03,'
                  +'P1COMISS  =:COMISS,'
                  +'P1COMIST  =:COMIST,'
                  +'P1BCISSQN =:BCISSQN,'
                  +'P1VISSQN  =:VISSQN,'
                  +'P1DESCFIN =:DESCFIN,'
                  +'P1ACRECONV=:ACRECONV,'
                  +'P1ACREGER =:ACREGER '
                  +iif(CB_TOTPED.Checked,',P1TOTALL =:P1TOTALL ','')
                  +' where P1CODEMP=:CODEMP '
                  +' and   P1LOTSEQ=:LOTSEQ '
                  +' and   P1CHAVE =:CHAVE '
                  +' and   P1ORDEM =:ORDEM');


DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.Params.CreateParam(ftString,'CFO01',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CFO02',ptInput);
DM1.Query5.Params.CreateParam(ftString,'BASENI',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ICMSNI',ptInput);
DM1.Query5.Params.CreateParam(ftString,'BASENP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ICMSNP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'BASENN',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ICMSNN',ptInput);
DM1.Query5.Params.CreateParam(ftString,'TOTPROI',ptInput);
DM1.Query5.Params.CreateParam(ftString,'TOTPROP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'TOTPRON',ptInput);
DM1.Query5.Params.CreateParam(ftString,'BASENRI',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ICMSNRI',ptInput);
DM1.Query5.Params.CreateParam(ftString,'BASENRP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ICMSNRP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'BASENRN',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ICMSNRN',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ALIQ',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ALIQ2',ptInput);
DM1.Query5.Params.CreateParam(ftString,'TOTISEN',ptInput);
DM1.Query5.Params.CreateParam(ftString,'TOTOUT',ptInput);
DM1.Query5.Params.CreateParam(ftString,'TOTRET',ptInput);
DM1.Query5.Params.CreateParam(ftString,'TOTNOR',ptInput);
DM1.Query5.Params.CreateParam(ftString,'BASEN',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ICMSN',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'LOTSEQ_CP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query5.Params.CreateParam(ftString,'ORDEM',ptInput);
DM1.Query5.Params.CreateParam(ftString,'DTEMIS',ptInput);
DM1.Query5.Params.CreateParam(ftString,'DATACF',ptInput);
DM1.Query5.Params.CreateParam(ftString,'NSTOTNOTA',ptInput);

DM1.Query5.SQL.Add('Update CADNS set '
                  +' NSCFO1  =:CFO01, '
                  +' NSCFO2  =:CFO02, '
                  +' NSBASENI=:BASENI, '
                  +' NSICMSNI=:ICMSNI, '
                  +' NSBASENP=:BASENP, '
                  +' NSICMSNP=:ICMSNP, '
                  +' NSBASENN=:BASENN, '
                  +' NSICMSNN=:ICMSNN, '
                  +' NSTOTPROI=:TOTPROI, '
                  +' NSTOTPROP=:TOTPROP, '
                  +' NSTOTPRON=:TOTPRON, '
                  +' NSBASENRI=:BASENRI, '
                  +' NSICMSNRI=:ICMSNRI, '
                  +' NSBASENRP=:BASENRP, '
                  +' NSICMSNRP=:ICMSNRP, '
                  +' NSBASENRN=:BASENRN, '
                  +' NSICMSNRN=:ICMSNRN, '
                  +' NSALIQ   =:ALIQ, '
                  +' NSALIQ2  =:ALIQ2, '
                  +' NSTOTISEN=:TOTISEN, '
                  +' NSTOTOUT =:TOTOUT, '
                  +' NSTOTRET =:TOTRET, '
                  +' NSTOTNOR =:TOTNOR, '
                  +' NSBASEN  =:BASEN, '
                  +' NSICMSN  =:ICMSN, '
                  +' NSDTEMIS =:DTEMIS, '
                  +' NSDATCUP =:DATACF '
                  +IIF(CB_TOTPED.Checked,', NSTOTNOTA=:NSTOTNOTA ','')
                  +' where NSCODEMP   =:CODEMP '
                  +' and   NSLOTSEQ_CP=:LOTSEQ_CP '
                  +' and   NSCHAVEP   =:CHAVE '
                  +' and   NSORDEMP   =:ORDEM');





RG_Progres.Visible:=true;
mqtd:=Tb_Ped.RecordCount;
label5.Visible:=true;
While not Tb_Ped.Eof do
   begin
//   if Tb_PedP1CHAVE.Value<>23227 then
//      begin
//      Tb_Ped.Next;
//      Continue;
//      end;
   label5.Caption:='Processando Chave: '+Tb_PedP1CHAVE.AsString+' Data Cupom: '+FormatDatetime(fdt2, Tb_PedP1DATACF.Value)+' Data Nf: '+FormatDatetime(fdt2, Tb_PedP1DATACF.Value);
   Label5.Update;
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;

   if not flcaduf(0,0,0,Tb_PedCUF.Value) then
      begin
      Tb_Ped.Next;
      Continue;
      end;
{
   if Tb_PedP1TIPO.Value=2 then
      begin
      mcfo01:=FormatFloat('0000',DM1.Tb_UFPCFOSRN.Value);
      mcfo02:=Formatfloat('0000',DM1.Tb_UFPCFOSRR.Value);
      end
   else if Tb_PedP1TIPO.Value=3 then
      begin
      mcfo01:=FormatFloat('0000',DM1.Tb_UFPCFODFN.Value);
      mcfo02:=FormatFloat('0000',DM1.Tb_UFPCFODFR.Value);
      end
   else if Tb_PedP1TIPO.Value=4 then
      begin
      mcfo01:=Formatfloat('0000',DM1.Tb_UFPCFOSRN.Value);
      mcfo02:=Formatfloat('0000',DM1.Tb_UFPCFOSRR.Value);
      end
   else if Tb_PedP1TIPO.Value=5 then
      begin
      mcfo01:=FormatFloat('0000',DM1.Tb_UFPCFOTRN.Value);
      mcfo02:=FormatFloat('0000',DM1.Tb_UFPCFOTRR.Value);
      end
   else if Tb_PedP1TIPO.Value=6 then
      begin
      mcfo01:=Formatfloat('0000',DM1.Tb_UFPCFOBEN.Value);
      mcfo02:=Formatfloat('0000',DM1.Tb_UFPCFOBER.Value);
      end
   else if Tb_PedP1TIPO.Value=7 then
      begin
      mcfo01:=FormatFloat('0000',DM1.Tb_UFPCFORVFEO.Value);
      mcfo02:=FormatFloat('0000',DM1.Tb_UFPCFORVFER.Value);
      end
   else if Tb_PedP1TIPO.Value=8 then
      begin
      mcfo01:=Formatfloat('0000',DM1.Tb_UFPCFODCN.Value);
      mcfo02:=Formatfloat('0000',DM1.Tb_UFPCFODCR.Value);
      end
   else if Tb_PedCCONSF.Value=1 then
      begin
      mcfo01:=Formatfloat('0000',DM1.Tb_UFPCFORVN.Value);
      mcfo02:=Formatfloat('0000',DM1.Tb_UFPCFORVR.Value);
      end
   else
      begin
      mcfo01:=Formatfloat('0000',DM1.Tb_UFPCFOCFN.Value);
      mcfo02:=Formatfloat('0000',DM1.Tb_UFPCFOCFR.Value);
      end;


}
   Tb_Ped02.Close;
   Tb_Ped02.ParamByName('CODEMP').AsString:=Tb_PedP1CODEMP.AsString;
   Tb_Ped02.ParamByName('LOTSEQ').AsString :=Tb_PedP1LOTSEQ.AsString;
   Tb_Ped02.ParamByName('CHAVE').AsString :=Tb_PedP1CHAVE.AsString;
   Tb_Ped02.ParamByName('ORDEM').AsString :=Tb_PedP1ORDEM.AsString;
   Tb_Ped02.Open;
   While not Tb_Ped02.Eof do
      begin
      mrepas:=0;
      micmsd:=0;
      micmsc:=0;
      mbaser:=0;
      micmsr:=0;
      mbasen:=0;
      micmsn:=0;
      mbicmsnr:=0;
      micmsnr:=0;
      misentas:=0;
      mtotal:=0;
      mvalipi:=0;
      maliq:=0;
      malissqn:=0;
      mvissqn:=0;
      mbissqn:=0;
      mdesrat:=0;
      macrecv:=0;
      macreger:=0;
      maliqnr:=0;
      mredut :=0;
      mtotal:=Tb_Ped02P2QTD.Value*Tb_Ped02P2PRECO.Value;
      mdesc:=Tb_Ped02P2VALDES.Value;
      if CB_SITTRI.Checked then
         begin
         if flqr1('PDSIT','PD','CADPRO','N','PDCODPRO',Tb_Ped02P2CODPRO.AsString) then
            msit:=DM1.Query1.Fields[0].AsString
         else
            msit:=Tb_Ped02P2SIT.Value;
         end
      else
         msit:=Tb_Ped02P2SIT.Value;
      if Tb_PedP1TPPCO.Value<>3 then
         begin
         mdesc:=mdesc+((mtotal-mdesc)*Tb_Ped02P2DESC1.Value/100);
         mdesc:=mdesc+((mtotal-mdesc)*Tb_Ped02P2DESC2.Value/100);
         mdesc:=arredonda(mdesc,mcasger);
         end;
      mdesc:=mdesc+((mtotal-mdesc)*Tb_PedP1DESC01.Value/100);
      mdesc:=mdesc+((mtotal-mdesc)*Tb_PedP1DESC02.Value/100);
      mdesc:=arredonda(mdesc,mcasger);
//      mdesrat:=(mtotal-mdesc)*Tb_PedP1VLRDES.Value/100;
 //     mdesrat:=arredonda(mdesrat,mcasger);
      mdesrat:=Tb_Ped02P2DESCRAT.Value;
      mdesc:=mdesc+mdesrat;
      if (DM1.Tb_UFPREPAS.Value>0) and (Tb_PedCREPAS.Value=1) then
         mrepas:=(mtotal-mdesc)*DM1.Tb_UFPREPAS.Value/100
      else
         mrepas:=0;
      mrepas:=arredonda(mrepas,mcasger);
      if (Tb_Ped02P2TABELA.Value='B') and not (Tb_PedCALIQB.Value=0) then
         maliq:=Tb_PedCALIQB.Value
      else
         maliq:=Tb_PedCALIQA.Value;
      if Tb_PedCALIQB.Value=0 then
         maliqnr :=Tb_PedCALIQA.Value
      else
         maliqnr :=Tb_PedCALIQB.Value;
      mbicmsnr:=0;
      micmsnr :=0;
      if (Tb_PedCICMSR.Value=1) and (msit[2] in ['1','6']) then
         begin
         if DM1.Tb_UFPCALCRET.Value=1 then
            mbaser:=mtotal-mdesc-mrepas
         else
            mbaser:=mtotal;
         if Tb_Ped02P2LISTA.Value=2 then
            mbaser:=mbaser+(mbaser*DM1.Tb_UFPIVANEG.Value/100)
         else if Tb_Ped02P2LISTA.Value=1 then
            mbaser:=mbaser+(mbaser*DM1.Tb_UFPIVAPOS.Value/100)
         else
            mbaser:=mbaser+(mbaser*DM1.Tb_UFPIVAINA.Value/100);
         if Tb_Ped02P2TABELA.Value='B' then
            mbaser:=mbaser-(mbaser*DM1.Tb_UFPREDUTRB.Value/100)
         else
            mbaser:=mbaser-(mbaser*DM1.Tb_UFPREDUTRA.Value/100);
         mbaser:=arredonda(mbaser,mcasger);
         micmsd:=mbaser*DM1.Tb_UFPICMSD.Value/100;
         micmsc:=mtotal-mdesc-mrepas;
         mbicmsnr:=micmsc;
         micmsnr :=mbicmsnr*maliqnr/100;
         micmsc:=micmsc*DM1.Tb_UFPICMSC.Value/100;
         micmsr:=micmsr+(micmsd-micmsc);
         micmsr:=arredonda(micmsr,mcasger);
         end
      else if msit[2]='4' then
         begin
         misentas:=mtotal-mdesc-mrepas;
         misentas:=arredonda(misentas,mcasger);
         end;
      if msit[2]='4' then
         begin
         mbasen:=0; micmsn:=0;
         end
      else if (Tb_PedCICMSTP.Value=1) or
         not (msit[2] in ['1','4','6']) then
         begin
         mbasen:=mtotal-mdesc-mrepas;
         mbasen:=arredonda(mbasen,mcasger);
         if msit[2] in ['1','6'] then
            mbicmsnr:=0
         else
            mbicmsnr:=0;
         if not (msit[2] in ['1','4','6']) then
            begin
            if Tb_Ped02P2TABELA.Value='B' then
               begin
               if (DM1.Tb_UFPREDUTNB.Value>0) and not (DM1.Tb_UFPREDUTNB.IsNull) Then
                  begin
                  mredut:=arredonda(mbasen*DM1.Tb_UFPREDUTNB.Value/100,mcasger);
                  mbasen:=mbasen-mredut;
                  end;
               end
            else
               begin
               if (DM1.Tb_UFPREDUTNA.Value>0) and not (DM1.Tb_UFPREDUTNA.IsNull) Then
                  begin
                  mredut:=arredonda(mbasen*DM1.Tb_UFPREDUTNA.Value/100,mcasger);
                  mbasen:=mbasen-mredut;
                  end;
               end;
             end;
         micmsn:=arredonda(mbasen* maliq/100,mcasger);
         micmsnr:=Arredonda(mbicmsnr*maliqnr/100,mcasger);
         end
      else if (msit[2] in ['1','6']) then
         begin
         mbicmsnr:=mtotal-mdesc-mrepas;
         mbicmsnr:=arredonda(mbicmsnr,mcasger);
         micmsnr:=Arredonda(mbicmsnr*maliqnr/100,mcasger);
         end;
{
      if Tb_PedP1TIPO.Value=2 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFOSRR.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFOSRN.AsInteger;
         end
      else if Tb_PedP1TIPO.Value=3 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFODFR.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFODFN.AsInteger;
         end
      else if Tb_PedP1TIPO.Value=4 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFOSRR.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFOSRN.AsInteger;
         end
      else if Tb_PedP1TIPO.Value=5 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFOTRR.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFOTRN.AsInteger;
         end
      else if Tb_PedP1TIPO.Value=6 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFOBER.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFOBEN.AsInteger;
         end
      else if Tb_PedP1TIPO.Value=7 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFORVFER.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFORVFEO.AsInteger;
         end
      else if Tb_PedP1TIPO.Value=8 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFODCR.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFODCN.AsInteger;
         end
      else if Tb_PedCCONSF.Value=1 then
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFORVR.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFORVN.AsInteger;
         end
      else
         begin
         if msit[2] in ['1','6'] then
            mcfo:=DM1.Tb_UFPCFOCFR.AsInteger
         else
            mcfo:=DM1.Tb_UFPCFOCFN.AsInteger;
         end;
      if mbasen>0 then
         begin
         mtotout:=(mtotal-mdesc)-mbasen;
         end
      else
         mtotout:=0;
}         
      macreger:=Arredonda((mtotal*Tb_PedP1PACREGER.Value/100),2);
      macrecv :=Arredonda(((mtotal+macreger)*Tb_PedP1PACRECONV.Value/100),2);
      DM1.Query3.Close;
      DM1.Query3.ParambyName('BASEN').AsFloat   := mbasen;
      DM1.Query3.ParambyName('ICMSN').AsFloat   := micmsn;
      DM1.Query3.ParambyName('DESCRAT').AsFloat := mdesrat;
      DM1.Query3.ParambyName('TOTDES').AsFloat  := mdesc;
      DM1.Query3.ParambyName('REPAS').AsFloat   := mrepas;
      DM1.Query3.ParambyName('BCINR').AsFloat   := mbicmsnr;
      DM1.Query3.ParambyName('ICMSNR').AsFloat  := micmsnr;
      DM1.Query3.ParambyName('ISENTAS').AsFloat := misentas;
      DM1.Query3.ParambyName('TOTOUT').AsFloat  := mtotout;
      DM1.Query3.ParambyName('ALIQNR').AsFloat  := maliqnr;
      DM1.Query3.ParambyName('ALIQ').AsFloat    := maliq;
      DM1.Query3.ParambyName('TOTLIQ').AsFloat  := mtotal-mdesc+mdesrat;
      DM1.Query3.ParambyName('ACRECONV').AsFloat:= macrecv;
      DM1.Query3.ParambyName('ACREGER').AsFloat := macreger;
      DM1.Query3.ParambyName('CFO').AsFloat     := mcfo;
      DM1.Query3.ParambyName('SIT').AsString    := msit;
      DM1.Query3.ParambyName('CODEMP').AsFloat  := Tb_Ped02P2CODEMP.Value;
      DM1.Query3.ParambyName('LOTSEQ').AsFloat  := Tb_Ped02P2LOTSEQ.Value;
      DM1.Query3.ParambyName('CHAVE').AsFloat   := Tb_Ped02P2CHAVE.Value;
      DM1.Query3.ParambyName('ORDEM').AsFloat   := Tb_Ped02P2ORDEM.Value;
      DM1.Query3.ParambyName('ITEM').AsFloat    := Tb_Ped02P2ITEM.Value;
      DM1.Query3.ParambyName('CODPRO').AsFloat  := Tb_Ped02P2CODPRO.Value;
      DM1.Query3.ExecSQL;
      Tb_Ped02.Next;
      end;
   Tb_Ped02.Close;
   Tb_Ped02.ParamByName('CODEMP').AsString:=Tb_PedP1CODEMP.AsString;
   Tb_Ped02.ParamByName('LOTSEQ').AsString :=Tb_PedP1LOTSEQ.AsString;
   Tb_Ped02.ParamByName('CHAVE').AsString :=Tb_PedP1CHAVE.AsString;
   Tb_Ped02.ParamByName('ORDEM').AsString :=Tb_PedP1ORDEM.AsString;
   Tb_Ped02.Open;
   macrecv :=0; macreger:=0;
   mtotb   :=0; mtotl   :=0; mbasen  :=0; micmsn  :=0; mbaser  :=0; micmsr  :=0; mbasenp:=0; mbasenn:=0; mbaseni:=0;
   micmsnp :=0; micmsnn :=0; micmsni :=0; mbaserp :=0; mbasern :=0; mbaseri :=0;
   micmsrp :=0; micmsrn :=0; micmsri :=0; mbasenrp:=0; mbasenri:=0; mbasenrn:=0;
   micmsnrp:=0; micmsnrn:=0; micmsnri:=0; mipiina :=0; mipipos :=0; mipineg :=0;
   mtottri :=0; mtotret :=0; mtotise :=0; mtotpos :=0; mtotneg :=0; mtotina :=0;
   mpiscofn:=0; mpiscofr:=0; mtotdes :=0; mbissqn :=0; mvissqn :=0;
   msemcom :=0; mcomis  :=0; mcomist :=0; mcomiss :=0; mdesped :=0; mrepas :=0;
   mdescfin:=0; mtotout :=0;
   mtotdi01:=0; mtotdi02:=0; mtotdivl:=0;
   mtotcom02:=0; mtotcom03:=0;

   While not Tb_Ped02.Eof do
      begin
      msit:=Tb_Ped02P2SIT.Value;
      mtotb   :=mtotb+Arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger);
      mbasen  :=mbasen+Tb_Ped02P2BASEN.Value;
      micmsn  :=micmsn+Tb_Ped02P2ICMSN.Value;
      mbaser  :=mbaser+Tb_Ped02P2BASER.Value;
      micmsr  :=micmsr+Tb_Ped02P2ICMSR.Value;
      mbascal :=(Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value);
      mbascal :=mbascal-Tb_Ped02P2VALDES.Value-Tb_Ped02P2REPAS.Value;
      mbascal :=mbascal-(mbascal*Tb_PedP1DESC01.Value/100);
      mbascal :=mbascal-(mbascal*Tb_PedP1DESC02.Value/100);
      mbascal :=mbascal-Tb_Ped02P2DESCRAT.Value;
      mcomis  :=mcomis+(mbascal*Tb_Ped02P2VCOMIS.Value/100);
      mcomiss  :=mcomiss+(mbascal*DM1.Tb_PargerPCOMSUP.Value/100);
      mcomist  :=mcomist+(mbascal*DM1.Tb_PargerPCOMTLV.Value/100);
      mtotdivl :=mtotdivl+Tb_Ped02P2VALDES.Value;
      macrecv  :=macrecv+Tb_Ped02P2ACRECONV.Value;
      macreger :=macreger +Tb_Ped02P2ACREGER.Value;
      mdescitem:=arredonda((mtotb*Tb_Ped02P2DESC1.Value/100),2);
      mtotdi01 :=mtotdi01+mdescitem;
      mdescitem:=arredonda(((mtotb-mdescitem)*Tb_Ped02P2DESC2.Value/100),2);
      mtotdi02 :=mtotdi02+mdescitem;
      mtotcom02:=mtotcom02+Tb_Ped02P2VCOM02.Value;
      mtotcom03:=mtotcom03+Tb_Ped02P2VCOM03.Value;
      if Tb_Ped02p2lista.Value=1 then
         begin
         mbasenp :=mbasenp+Tb_Ped02p2basen.Value;
         micmsnp :=micmsnp+Tb_Ped02p2icmsn.Value;
         mbaserp :=mbaserp+Tb_Ped02P2BASER.Value;
         micmsrp :=micmsrp+Tb_Ped02P2ICMSR.Value;
         mbasenrp:=mbasenrp+Tb_Ped02P2BCINR.Value;
         micmsnrp:=micmsnrp+Tb_Ped02P2ICMSNR.Value;
         mipipos :=mipipos+Tb_Ped02P2VALIPI.Value;
         mtotpos:=mtotpos+arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         end
      else if Tb_Ped02p2lista.Value=1 then
         begin
         mbasenn :=mbasenn+Tb_Ped02p2basen.Value;
         micmsnn :=micmsnn+Tb_Ped02p2icmsn.Value;
         mbasern :=mbasern+Tb_Ped02P2BASER.Value;
         micmsrn :=micmsrn+Tb_Ped02P2ICMSR.Value;
         mbasenrn:=mbasenrn+Tb_Ped02P2BCINR.Value;
         micmsnrn:=micmsnrn+Tb_Ped02P2ICMSNR.Value;
         mipineg :=mipineg+Tb_Ped02P2VALIPI.Value;
         mtotneg:=mtotneg+arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         end
      else
         begin
         mbaseni :=mbaseni+Tb_Ped02p2basen.Value;
         micmsni :=micmsni+Tb_Ped02p2icmsn.Value;
         mbaseri :=mbaseri+Tb_Ped02P2BASER.Value;
         micmsri :=micmsri+Tb_Ped02P2ICMSR.Value;
         mbasenri:=mbasenri+Tb_Ped02P2BCINR.Value;
         micmsnri:=micmsnri+Tb_Ped02P2ICMSNR.Value;
         mipiina :=mipiina+Tb_Ped02P2VALIPI.Value;
         mtotina :=mtotina+arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         end;
      if msit[2] in ['1','6'] then
         begin
         mtotret:=mtotret+arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         mpiscofr:=mpiscofr+arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         end
      else if msit[2] in ['4'] then
         begin
         mpiscofn:=mpiscofn+arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         end
      else
         begin
         mpiscofn:=mpiscofn+arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         mtottri:=mtottri+Arredonda((Tb_Ped02P2PRECO.Value*Tb_Ped02P2QTD.Value),mcasger)-Tb_Ped02P2TOTDES.Value;
         end;
      mtotdes:=mtotdes+(Tb_Ped02P2TOTDES.Value-Tb_Ped02P2DESCRAT.Value);
      mrepas:=mrepas+Tb_Ped02P2REPAS.Value;
      if Tb_Ped02P2SEMCOM.Value=1 then
         msemcom:=msemcom+mbascal;
      mdescfin:=mdescfin+Tb_Ped02P2VDESCF.Value;
      mtotout :=mtotout+Tb_Ped02P2TOTOUT.Value;
      mtotise :=mtotise+Tb_Ped02P2ISENTAS.Value;
      Tb_Ped02.Next;
      end;
   Tb_Ped02S.Close;
   Tb_Ped02S.ParamByName('CODEMP').AsString:=Tb_PedP1CODEMP.AsString;
   Tb_Ped02S.ParamByName('LOTSEQ').AsString:=Tb_PedP1LOTSEQ.AsString;
   Tb_Ped02S.ParamByName('CHAVE').AsString :=Tb_PedP1CHAVE.AsString;
   Tb_Ped02S.ParamByName('ORDEM').AsString :=Tb_PedP1ORDEM.AsString;
   Tb_Ped02S.Open;
   While not Tb_Ped02S.Eof do
      begin
      mtotb   :=mtotb+arredonda((Tb_Ped02SP2SPRECO.Value*Tb_Ped02SP2SQTD.Value),mcasger);
      mbascal :=(Tb_Ped02SP2SPRECO.Value*Tb_Ped02SP2SQTD.Value);
      mbascal :=mbascal-Tb_Ped02SP2SVALDES.Value;
      mbascal :=mbascal-(mbascal*Tb_PedP1DESC01.Value/100);
      mbascal :=mbascal-(mbascal*Tb_PedP1DESC02.Value/100);
      mbascal :=mbascal-Tb_Ped02SP2SDESCRAT.Value;
      mcomis  :=mcomis+(mbascal*Tb_Ped02SP2SPCOMIS.Value/100);
      mcomiss :=mcomiss+(mbascal*DM1.Tb_PargerPCOMSUP.Value/100);
      mcomist :=mcomist+(mbascal*DM1.Tb_PargerPCOMTLV.Value/100);
      mtotdes :=mtotdes+(Tb_Ped02SP2STOTDES.Value-Tb_Ped02SP2SDESCRAT.Value);
      mtotcom02:=mtotcom02+Tb_Ped02SP2SVCOM02.Value;
      mtotcom03:=mtotcom03+Tb_Ped02SP2SVCOM03.Value;
      mbissqn :=mbissqn+Tb_Ped02SP2SBCISSQN.Value;
      mvissqn :=mvissqn+Tb_Ped02SP2SVISSQN.Value;
      if Tb_Ped02SP2SSEMCOM.Value=1 then
         msemcom:=msemcom+mbascal;
      Tb_Ped02S.Next;
      end;
   mtotdes:=mtotdes+mdesped;
   mtotl:=mtotb-mtotdes-mrepas+micmsr+macrecv+macreger;
   DM1.Query4.Close;
   DM1.Query4.ParambyName('BASEN').AsFloat   :=mbasen;
   DM1.Query4.ParambyName('ICMSN').AsFloat   :=micmsn;
   DM1.Query4.ParambyName('BASENP').AsFloat  :=mbasenp;
   DM1.Query4.ParambyName('BASENN').AsFloat  :=mbasenn;
   DM1.Query4.ParambyName('BASENI').AsFloat  :=mbaseni;
   DM1.Query4.ParambyName('ICMSNP').AsFloat  :=micmsnp;
   DM1.Query4.ParambyName('ICMSNN').AsFloat  :=micmsnn;
   DM1.Query4.ParambyName('ICMSNI').AsFloat  :=micmsni;
   DM1.Query4.ParambyName('BASENRP').AsFloat :=mbasenrp;
   DM1.Query4.ParambyName('BASENRN').AsFloat :=mbasenrn;
   DM1.Query4.ParambyName('BASENRI').AsFloat :=mbasenri;
   DM1.Query4.ParambyName('ICMSNRP').AsFloat :=micmsnrp;
   DM1.Query4.ParambyName('ICMSNRN').AsFloat :=micmsnrn;
   DM1.Query4.ParambyName('ICMSNRI').AsFloat :=micmsnri;
   DM1.Query4.ParambyName('TOTTRI').AsFloat  :=mtottri;
   DM1.Query4.ParambyName('TOTRET').AsFloat  :=mtotret;
   DM1.Query4.ParambyName('TOTISE').AsFloat  :=mtotise;
   DM1.Query4.ParambyName('TOTOUT').AsFloat  :=mtotout;
   DM1.Query4.ParambyName('TOTPOS').AsFloat  :=mtotpos;
   DM1.Query4.ParambyName('TOTNEG').AsFloat  :=mtotneg;
   DM1.Query4.ParambyName('TOTINA').AsFloat  :=mtotina;
   DM1.Query4.ParambyName('PISCOFN').AsFloat :=mpiscofn;
   DM1.Query4.ParambyName('PISCOFR').AsFloat :=mpiscofr;
   DM1.Query4.ParambyName('TOTDES').AsFloat  :=mtotdes;
   DM1.Query4.ParambyName('TOTDI01').AsFloat :=mtotdi01;
   DM1.Query4.ParambyName('TOTDI02').AsFloat :=mtotdi02;
   DM1.Query4.ParambyName('TOTDIVL').AsFloat :=mtotdivl;
   if CB_TOTPED.Checked then
      begin
      DM1.Query4.ParambyName('P1TOTALL').AsFloat :=(mtotpos+mtotneg+mtotina); //-mtotdes;
      end;
   DM1.Query4.ParambyName('REPAS').AsFloat   :=mrepas;
   DM1.Query4.ParambyName('COMIS').AsFloat   :=mcomis;
   DM1.Query4.ParambyName('COMV02').AsFloat  :=mtotcom02;
   DM1.Query4.ParambyName('COMV03').AsFloat  :=mtotcom03;
   DM1.Query4.ParambyName('COMIST').AsFloat  :=mcomist;
   DM1.Query4.ParambyName('BCISSQN').AsFloat :=mbissqn;
   DM1.Query4.ParambyName('VISSQN').AsFloat  :=mvissqn;
   DM1.Query4.ParambyName('DESCFIN').AsFloat :=mdescfin;
   DM1.Query4.ParambyName('ACRECONV').AsFloat:=macrecv;
   DM1.Query4.ParambyName('ACREGER').AsFloat :=macreger;
   DM1.Query4.ParambyName('CODEMP').AsFloat  :=Tb_PedP1CODEMP.Value;
   DM1.Query4.ParambyName('LOTSEQ').AsFloat  :=Tb_PedP1LOTSEQ.Value;
   DM1.Query4.ParambyName('CHAVE').AsFloat   :=Tb_PedP1CHAVE.Value;
   DM1.Query4.ParambyName('ORDEM').AsFloat   :=Tb_PedP1ORDEM.Value;

   DM1.Query5.Close;


   DM1.Query5.ParambyName('CFO01').AsString :=mcfo01;
   DM1.Query5.ParambyName('CFO02').AsString :=mcfo02;
   DM1.Query5.ParambyName('BASENI').AsFloat :=mbaseni;
   DM1.Query5.ParambyName('ICMSNI').AsFloat :=micmsni;
   DM1.Query5.ParambyName('BASENP').AsFloat :=mbasenp;
   DM1.Query5.ParambyName('ICMSNP').AsFloat :=micmsnp;
   DM1.Query5.ParambyName('BASENN').AsFloat :=mbasenn;
   DM1.Query5.ParambyName('ICMSNN').AsFloat :=micmsnn;
   DM1.Query5.ParambyName('TOTPROI').AsFloat:=mtotina;
   DM1.Query5.ParambyName('TOTPROP').AsFloat:=mtotpos;
   DM1.Query5.ParambyName('TOTPRON').AsFloat:=mtotneg;
   DM1.Query5.ParambyName('BASENRI').AsFloat:=mbasenri;
   DM1.Query5.ParambyName('ICMSNRI').AsFloat:=micmsnri;
   DM1.Query5.ParambyName('BASENRP').AsFloat:=mbasenrp;
   DM1.Query5.ParambyName('ICMSNRP').AsFloat:=micmsnrp;
   DM1.Query5.ParambyName('BASENRN').AsFloat:=mbasenrn;
   DM1.Query5.ParambyName('ICMSNRN').AsFloat:=micmsnrn;
   if CB_TOTPED.Checked then
      begin
      DM1.Query5.ParambyName('NSTOTNOTA').AsFloat :=(mtotpos+mtotneg+mtotina); //-mtotdes;
      end;
   DM1.Query5.ParambyName('ALIQ').AsFloat   :=maliq;
   DM1.Query5.ParambyName('ALIQ2').AsFloat  :=maliqnr;
   DM1.Query5.ParambyName('TOTISEN').AsFloat:=mtotise;
   DM1.Query5.ParambyName('TOTOUT').AsFloat :=mtotout;
   DM1.Query5.ParambyName('TOTRET').AsFloat :=mtotret;
   DM1.Query5.ParambyName('TOTNOR').AsFloat :=mtottri;
   DM1.Query5.ParambyName('BASEN').AsFloat  :=mbasen;
   DM1.Query5.ParambyName('ICMSN').AsFloat  :=micmsn;
   DM1.Query5.ParambyName('CODEMP').AsFloat :=Tb_PedP1CODEMP.Value;
   DM1.Query5.ParambyName('LOTSEQ_CP').AsFloat :=Tb_PedP1LOTSEQ.Value;
   DM1.Query5.ParambyName('CHAVE').AsFloat  :=Tb_PedP1CHAVE.Value;
   DM1.Query5.ParambyName('ORDEM').AsFloat    :=Tb_PedP1ORDEM.Value;
//   if Tb_PedP1DATANF.Value<=pdatanula then
 //     DM1.Query5.ParambyName('DTEMIS').AsDateTime:=Tb_PedP1DATACF.Value
//   else
   DM1.Query5.ParambyName('DTEMIS').AsDateTime:=Tb_PedP1DATANF.Value;
//   if Tb_PedP1DATACF.Value<=pdatanula then
//      DM1.Query5.ParambyName('DATACF').AsDateTime:=Tb_PedP1DATANF.Value
//   else
  DM1.Query5.ParambyName('DATACF').AsDateTime:=Tb_PedP1DATACF.Value;

   DM1.Query5.ExecSQL;
   Tb_Ped.Next;
   end;
MessageDlg('Concluido!',mtInformation,[mbOk],0);
end;

procedure TFrm_CalcIcms.UFExit(Sender: TObject);
begin
if Trim(UF.Text)='' then
   NOMUF.Text:='Todos...'
else
   begin
   if not flcaduf(0,0,0,UF.Text) then
      begin
      MessageDlg('Estado não Cadastrado!',mtWarning,[mbOk],0);
      exit;
      end
   else
      NOMUF.Text:=DM1.Tb_UFPNOM.Value;
   end;
end;

procedure TFrm_CalcIcms.CODCLIExit(Sender: TObject);
begin
if ValFloat(CODCLI.Text)<=0 then
   CODCLI.Text:='';
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      MessageDlg('Cliente não Cadastrado!',mtWarning,[mbOk],0);
      CODCLI.SetFocus;
      end
   else
      NOMCLI.Text:=DM1.Tb_CliCRAZAO.Value;
   end;   
end;

procedure TFrm_CalcIcms.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CalcIcms',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_CalcIcms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

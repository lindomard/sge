unit S_EDUP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, S_DM1, S_DM2, db, dbtables, func, Buttons, S_impres,
  func2,lerarq,Sr_Dup,S_Tab05,S_Per2, Grids, DBGrids,S_Cli,printers, Mask,S_Bco, S_SelEmp,
  ComCtrls, RLReport, RLFilters, RLPDFFilter, Spin;

type
  TFrm_EDUP = class(TForm)
    Src_Dup: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsPromissoria: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_nf: TLabel;
    SB_SalvarPadrao: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    NUMDUPI: TEdit;
    PARC: TEdit;
    bbSair: TBitBtn;
    RG_TIPO: TRadioGroup;
    NUMDUPF: TEdit;
    Edit1: TEdit;
    bbEmitir: TBitBtn;
    CB_SOMAR: TCheckBox;
    CB_PEND: TCheckBox;
    bbAplicar: TBitBtn;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    NUMNF: TEdit;
    cb_vis: TCheckBox;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    CB_VENDAS: TCheckBox;
    CB_ORDEM: TComboBox;
    bbNTPromissoria: TBitBtn;
    edt_qtdvias: TSpinEdit;
    lbl_qtdvias: TLabel;
    procedure bbSairClick(Sender: TObject);
    procedure bbEmitirClick(Sender: TObject);
    procedure NUMDUPIExit(Sender: TObject);
    procedure NUMDUPFExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure NUMDUPIChange(Sender: TObject);
    procedure CB_SOMARClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure NUMNFKeyPress(Sender: TObject; var Key: Char);
    procedure NUMNFExit(Sender: TObject);
    procedure CB_SOMARExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure RG_TIPOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SB_SalvarPadraoClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbNTPromissoriaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mdoc: String;

  public
    { Public declarations }




    Form_SelEmp: TFrm_SelEmp;

  end;

var
  Frm_EDUP: TFrm_EDUP;

implementation

uses S_SQL, func_excecoes, S_DM4, s_NotaPromissoria;

{$R *.dfm}

procedure TFrm_EDUP.bbSairClick(Sender: TObject);
begin
close;

end;




procedure TFrm_EDUP.bbEmitirClick(Sender: TObject);
var
x: Integer;
begin
if not DM2.Tb_Dar.Active then
   begin
   FMensagem('Favor Aplicar a Seleção Primeiro!',0,['0'],0);
   exit;
   end;
DM2.Tb_Dar.First;
if DM2.Tb_Dar.Eof then
   begin
   FMensagem('Não há títulos Selecionado!',0,['0'],0);
   exit;
   end;
mdoc:='NF';
if RG_TIPO.ItemIndex=1 then
   begin
   if not fltdvca(0,0,mdoc,'Duplicata','CADTAB') then 
      begin
      FMensagem('Não ha uma tabulação adequada!',0,['0'],0);
      exit;
      end;
   end;

if RG_TIPO.ItemIndex=1 then
   FEmiteDP(0,codemp)
else
   begin
   if Qr_Dup=nil then
       Application.CreateForm(TQr_Dup, Qr_Dup)
   else
      begin
      Qr_Dup.Free;
      Qr_Dup:=nil;
      Application.CreateForm(TQr_Dup, Qr_Dup)
      end;
  fCarregarQrDup(edt_qtdvias.Value);


//   Qr_Dup.PrinterSettings.Copies:=edt_qtdvias.Value;
   Qr_Dup.Endereco.Caption:='Endereço: '+Trim(DM1.Tb_EmpENDERECO.Value)+' '+DM1.Tb_EmpBAIRRO.Value;
   Qr_Dup.CepCidade.Caption:='CEP.: '+DM1.Tb_EmpCEP.Value+' - '+Trim(DM1.Tb_EmpCIDADE.Value)+' - '+DM1.Tb_EmpUF.Value;
   Qr_Dup.CNPJ.Caption     :='C.N.P.J.: '+FormatFloat('00"."000"."000"/"0000"-"00',DM1.Tb_EmpCGC.Value);
   Qr_Dup.IE.Caption       :='Inscrição Estadual.: '+DM1.Tb_EmpINSCRICAO.Value;


   fSalvarImagem('LOGO4','C:\SGE\LOGO4.JPG');
   if FileExists('C:\SGE\LOGO4.jpg') then
      begin
      Qr_Dup.QRImage1.Picture.LoadFromFile('C:\SGE\LOGO4.jpg');
      mtemlogotipo01:=true;
      end
   else
      begin
      FMensagem('Para que seja impresso o logotipo da empresa na duplicata'+#13
                +'é necessário que este logotipo esteja gravado como C:\SGE\LOGO4.jpg',
                0,['0'],0);
      mtemlogotipo01:=false;
      end;

   fSalvarImagem('LOGO5','C:\SGE\LOGO5.JPG');

   if FileExists('C:\SGE\LOGO5.jpg') then
      begin
      Qr_Dup.QRImage2.Picture.LoadFromFile('C:\SGE\LOGO5.jpg');
      mtemlogotipo02:=true;
      end
   else
      begin
      FMensagem('Para que seja impresso o nome da empresa na linha vertical'+#13
                +'é necessário que este logotipo esteja gravado como C:\SGE\LOGO5.jpg',
                0,['0'],0);
      mtemlogotipo02:=false;
      end;
    Qr_Dup.PrinterSettings.PrinterIndex := -1;
    if flcadimp_sys(1,DM2.Tb_DarCRCODEMP.AsInteger,0,'DUPLIC_LAS') then
       begin
       for x:=0 to Printer.printers.Count-1 do
          begin
          if DM4.Tb_Imp_SysCIPORTA.Value=printer.Printers[x] then
             begin
             Qr_Dup.PrinterSettings.PrinterIndex := x;
             break;
             end
          end;
       end;
   if cb_vis.Checked then
      begin
      try
         verteclado(0);
         Qr_Dup.PreviewModal;
      except
         FMensagem('Erro 140 ao Imprimir relatorio!',0,['0'],0);
         end;
      end
   else
      begin
      try
         fTravaTeclado(0); // trava o teclado
         Qr_Dup.Print;
         fTravaTeclado(1); // trava o teclado

      except
         FMensagem('Erro 148 ao imprimir relatorio!',0,['0'],0);
         end;
      end;
//   Qr_Dup.PrinterSettings.PrinterIndex
//   mcinst:=Qr_Dup.PrinterSettings.
//QuickRep1.PrinterSettings.PrinterIndex := 1;
//QuickRep1.PrinterSettings.PrinterIndex := 1;
   Qr_Dup.Free;
   Qr_Dup:=nil;
   end;
if fmensagem('A Impressão Foi Bem Sucedida?',0,['1','2'],2)<>MrYes then
   exit;

if CB_SOMAR.Checked then
   begin
   DM2.Tb_Dar.Close;
   DM2.Tb_Dar.SQL.Clear;
   DM2.Tb_Dar.SQL.Add('Select CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRCODCLI,CRVALOR,CRDTEMIS, '
                      +'       CRDTVCTO,CRDTPAG,CRDTBX,CRNPED,CRORDEM,CRVALPAG,CRCODVEN,'
                      +'        CROBS,CRDESC,CRDEVOL,CRJUROS,CRCODBCO,CRLOTE,CRICMSR,CRDESCF, '
                      +'       CRDTDESCF,CRJURD,CREMIDUP,CREMIBLQ,CRVALFRE,CRNOSNUM,CRTIPCOB, '
                      +'       CRCODLDR,CRSTATUS,CRTOTNF,CRNFACUM,CRNUMPARC,CRQTDPARC, '
                      +'        VNOME,BCBANCO,CRAZAO,CDENOM,CUF,CCIDADE,CBAIRRO,CLOG,CNUM,CCOMPL'
                      +' ,CFONE02 AS CFONERES,CFONE01 AS CFONECOM,CCELULAR, '
                      +'       CCIDADEC,CBAIRROC,CENDERC,CUFC,CCEPC,CRTOTCGRU,CRTOTSGRU,'
                      +'        CNOMRED,CRDTVCTO-CRDTEMIS AS PRAZO, '
                      +'       RAZAO,FANTASIA,CRMULTA, '
                      +'       CIDADE,UF,CGC,INSCRICAO, '
                      +'       FONE,FAX,E_MAIL from CADDAR,CADEMP'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where CODEMP=0'+IntToStr(codemp)+iif(la_Empresas='','',' and ')+la_Empresas
                      +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   if CB_PEND.Checked=false then
      DM2.Tb_Dar.SQL.add(' and CREMIDUP=0');
   if ValFloat(NUMDUPI.Text)>0 then
      DM2.Tb_Dar.SQL.add(' and CRNUMERO>=0'+Trim(NUMDUPI.Text));
   if Trim(CODCLI.Text)<>'' then
      DM2.Tb_Dar.SQL.add(' and CRCODCLI=0'+Trim(CODCLI.Text));
   if ValFloat(NUMDUPF.Text)>0 then
      DM2.Tb_Dar.SQL.add(' and CRNUMERO<=0'+Trim(NUMDUPF.Text));
   if Trim(PARC.Text)<>'' then
      DM2.Tb_Dar.SQL.add(' and CRDESD='+chr(39)+Trim(PARC.Text)+chr(39));
   DM2.Tb_Dar.Open;
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'NUMERO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DESD',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DTEMIS',ptInput);
DM1.Query2.SQL.add('Update CADDAR set CREMIDUP=1 '
                  +' where CRCODEMP=:CODEMP '
                  +' and   CRNUMERO=:NUMERO '
                  +' and   CRDESD  =:DESD '
                  +' and   CRDUP   =:DUP '
                  +' and   CRDTEMIS=:DTEMIS and CREMIDUP=0');
DM2.Tb_Dar.First;
While not DM2.Tb_Dar.Eof do
   begin
   DM1.Query2.ParamByName('CODEMP').AsFloat   :=DM2.Tb_DarCRCODEMP.Value;
   DM1.Query2.ParamByName('NUMERO').AsFloat   :=DM2.Tb_DarCRNUMERO.Value;
   DM1.Query2.ParamByName('DESD').AsString    :=DM2.Tb_DarCRDESD.Value;
   DM1.Query2.ParamByName('DUP').AsFloat      :=DM2.Tb_DarCRDUP.Value;
   DM1.Query2.ParamByName('DTEMIS').AsDateTime:=DM2.Tb_DarCRDTEMIS.Value;
   try
      DM1.Query2.ExecSQL;
   except
      ex_erroSql(02,173,'Manped','CADDAR');
      fdm1StartCommit;
      exit;
      end;
   DM2.Tb_Dar.Next;
   end;
DM2.Tb_Dar.Close;

end;

procedure TFrm_EDUP.NUMDUPIExit(Sender: TObject);
begin
NUMDUPI.Text:=fdeixanum(NUMDUPI.Text);
end;

procedure TFrm_EDUP.NUMDUPFExit(Sender: TObject);
begin
NUMDUPF.Text:=fdeixanum(NUMDUPF.Text);
if valfloat(NUMDUPF.Text)<valfloat(NUMDUPI.Text) then
   begin
   NUMDUPF.Text:=numdupi.Text;
   NUMDUPF.Update;
   end;
end;

procedure TFrm_EDUP.FormCreate(Sender: TObject);
begin
tsPromissoria.TabVisible:=false;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
DM4.Tb_FilPad.Close;
DM4.Tb_FilPad.Open;
DM4.Tb_FilPad.First;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EDUP','RG_TIPO']),[]) then
   RG_TIPO.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EDUP','CB_VIS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      cb_vis.Checked:=true
   else
      cb_vis.Checked:=false;
   end
else
   cb_vis.Checked:=true;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EDUP','CB_PEND']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_PEND.Checked:=true
   else
      CB_PEND.Checked:=false;
   end
else
   CB_PEND.Checked:=true;

if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EDUP','CB_VENDAS']),[]) then
   begin
   if DM4.Tb_FilPadFPVALOR.Value='true' then
      CB_VENDAS.Checked:=true
   else
      CB_VENDAS.Checked:=false;
   end
else
   CB_VENDAS.Checked:=true;
if DM4.Tb_FilPad.Locate('FPCODUSR;FPFORM;FPCOMP',vararrayof([codusr,'_EDUP','CB_ORDEM']),[]) then
   CB_ORDEM.ItemIndex:=ValInt(DM4.Tb_FilPadFPVALOR.Value);


MDT1.Text:=FormatDatetime(fdt2, Date);




end;

procedure TFrm_EDUP.bbAplicarClick(Sender: TObject);
var
mnumnf: String;
x_vias: integer;
minstrucao: string;
begin
if (Trim(mdt1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrTodate(MDT1.Text)>StrToDate(MDT2.Text) then
      begin
      FMensagem('Data inicial maior que data final. Inválido!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(0,'CADVEN','VCODEMP','CRCODEMP','VCODVEN','CRCODVEN');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADBCO','BCCODEMP','CRCODEMP','BCCODBCO','CRCODBCO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');

la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

if CB_SOMAR.Checked then
   begin
   if Trim(NUMNF.Text)='' then
      mnumnf:='       MAX(CRNFACUM)  as CRNFACUM, '
   else
      mnumnf:=chr(39)+NUMNF.Text+chr(39)+' as CRNFACUM,';


   DM2.Tb_Dar.Close;
   DM2.Tb_Dar.SQL.Clear;
   DM2.Tb_Dar.SQL.Add('Select SUM(CRVALPAG) as CRVALPAG, '
                      +'       SUM(CRVALOR)  as CRVALOR, '
                      +'       SUM(CRDESC)   as CRDESC, '
                      +'       SUM(CRDEVOL)  as CRDEVOL, '
                      +'       SUM(CRJUROS)  as CRJUROS, '
                      +'       SUM(CRICMSR)  as CRICMSR, '
                      +'       SUM(CRDESCF)  as CRDESCF, '
                      +'       SUM(CRJURD)   as CRJURD, '
                      +'       SUM(CRVALFRE) as CRVALFRE, '
                      +'       SUM(CRTOTNF)  as CRTOTNF, '
                      +'       sum(CRTOTCGRU) as  CRTOTCGRU,'
                      +'       sum(CRTOTSGRU) as  CRTOTSGRU, '
                      +'       sum(CRMULTA)   as  CRMULTA, '
                      +'       MIN(CRCODEMP) as CRCODEMP, '
                      +'       MIN(CRNUMERO) as CRNUMERO, '
                      +'       MIN(CRDTPAG)  as CRDTPAG, '
                      +'       MIN(CRDTBX)   as CRDTBX, '
                      +'       MIN(CRNPED)   as CRNPED, '
                      +'       MIN(CRORDEM)  as CRORDEM, '
                      +'       MIN(CRCODVEN) as CRCODVEN, '
                      +'       MAX(CROBS)    as CROBS, '
                      +'       MAX(CRCODBCO)  as CRCODBCO, '
                      +'       MAX(CRLOTE)    as CRLOTE, '
                      +'       MAX(CRDTDESCF) as CRDTDESCF, '
                      +'       MAX(CREMIDUP)  as CREMIDUP, '
                      +'       MAX(CREMIBLQ)  as CREMIBLQ, '
                      +'       MAX(CRNOSNUM)  as CRNOSNUM, '
                      +'       MAX(CRCODLDR)  as CRCODLDR, '
                      +'       MAX(CRSTATUS)  as CRSTATUS, '
                      +'       MAX(CRNUMPARC) as CRNUMPARC, '
                      +'       MAX(CRQTDPARC) as CRQTDPARC, '



                      +mnumnf
//INICIO DO GRUPO
                       +'      max(CNOMRED) as CNOMRED,CRDTVCTO-CRDTEMIS AS PRAZO, '

                      +'       CRDESD,CRDUP,CRCODCLI,CRDTEMIS, '
                      +'       CRCODBCO,CRDTVCTO,CRTIPCOB, '
                      +'        VNOME,BCBANCO,CRAZAO,CDENOM,CUF,CCIDADE,CBAIRRO,CLOG,CNUM,CCOMPL,'
                      +' ,CFONE02 AS CFONERES,CFONE01 AS CFONECOM,CCELULAR, '
                      +'       CCIDADEC,CBAIRROC,CENDERC,CUFC,CCEPC,'

                      +'        RAZAO,FANTASIA, '
                      +'       CIDADE,UF,CGC,INSCRICAO, '
                      +'       FONE,FAX,E_MAIL from CADDAR,CADEMP'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where CODEMP=0'+IntToStr(codemp)+iif(la_Empresas='','',' and ')+la_Empresas
                      +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   end
else
   begin
   DM2.Tb_Dar.Close;
   DM2.Tb_Dar.SQL.Clear;
   DM2.Tb_Dar.SQL.Add('Select CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRCODCLI,CRVALOR,CRDTEMIS, '
                      +'       CRDTVCTO,CRDTPAG,CRDTBX,CRNPED,CRORDEM,CRVALPAG,CRCODVEN,'
                      +'        CROBS,CRDESC,CRDEVOL,CRJUROS,CRCODBCO,CRLOTE,CRICMSR,CRDESCF, '
                      +'       CRDTDESCF,CRJURD,CREMIDUP,CREMIBLQ,CRVALFRE,CRNOSNUM,CRTIPCOB, '
                      +'       CRCODLDR,CRSTATUS,CRTOTNF,CRNFACUM,CRNUMPARC,CRQTDPARC, '
                      +'        VNOME,BCBANCO,CRAZAO,CDENOM,CUF,CCIDADE,CBAIRRO,CLOG,CNUM,CCOMPL'
                      +' ,CFONE02 AS CFONERES,CFONE01 AS CFONECOM,CCELULAR, '
                      +'       CCIDADEC,CBAIRROC,CENDERC,CUFC,CCEPC,CRTOTCGRU,CRTOTSGRU,'
                      +'        CNOMRED,CRDTVCTO-CRDTEMIS AS PRAZO,CRMULTA, '
                      +'        RAZAO,FANTASIA, '
                      +'       CIDADE,UF,CGC,INSCRICAO, '
                      +'       FONE,FAX,E_MAIL from CADDAR,CADEMP'+iif(la_tabelas='','',',')+la_tabelas
                      +'       '+la_Join
                      +'       where CODEMP=0'+IntToStr(codemp)+iif(la_Empresas='','',' and ')+la_Empresas
                      +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);
   end;

DM2.Tb_Dar.SQL.Add(' and CRSTATUS<>9');
if trim(CODBCO.Text)<>'' then
   DM2.Tb_Dar.SQL.Add(' and CRCODBCO='+CODBCO.Text);

if CB_PEND.Checked=false then
   DM2.Tb_Dar.SQL.add(' and CREMIDUP=0');
if Trim(CODCLI.Text)<>'' then
   DM2.Tb_Dar.SQL.add(' and CRCODCLI=0'+Trim(CODCLI.Text));

if ValFloat(NUMDUPI.Text)>0 then
   DM2.Tb_Dar.SQL.add(' and CRNUMERO>=0'+Trim(NUMDUPI.Text));
if ValFloat(NUMDUPF.Text)>0 then
   DM2.Tb_Dar.SQL.add(' and CRNUMERO<=0'+Trim(NUMDUPF.Text));
if Trim(PARC.Text)<>'' then
   DM2.Tb_Dar.SQL.add(' and CRDESD='+chr(39)+Trim(PARC.Text)+chr(39));
if trim(MDT1.Text)<>'/  /' then
   DM2.Tb_Dar.SQL.add(' and CRDTEMIS>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM2.Tb_Dar.SQL.add(' and CRDTEMIS<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
if CB_VENDAS.Checked then
   DM2.Tb_Dar.SQL.add(' and crcodori=1');

if CB_SOMAR.Checked then
   begin
   DM2.Tb_Dar.SQL.Add('Group by CRDESD,CRDUP,CRCODCLI,CRDTEMIS, '
                      +'       CRCODBCO,CRDTVCTO,CRTIPCOB, '
                      +'        VNOME,BCBANCO,CRAZAO,CDENOM,CUF,CCIDADE,CBAIRRO,CLOG,CNUM,CCOMPL,'
                      +'        CFONE02,CFONERES,CFONECOM,CCELULAR, CFONE01,CCELULAR, '
                      +'       CCIDADEC,CBAIRROC,CENDERC,CUFC,CCEPC, '
                      +'        RAZAO,FANTASIA, '
                      +'       CIDADE,UF,CGC,INSCRICAO, '
                      +'       FONE,FAX,E_MAIL ');
   end;

minstrucao:='select * from ('+ DM2.Tb_Dar.SQL.Text;
{for x_vias:=2 to edt_qtdvias.Value do
   begin
   minstrucao:=minstrucao+' union all '+DM2.Tb_Dar.SQL.Text;
   end;
}   
DM2.Tb_dar.sql.Text:=minstrucao+') ';
if CB_ORDEM.ItemIndex=0 then
   DM2.Tb_Dar.sql.Add(' Order by CCIDADE,CRNUMERO')
else if CB_ORDEM.ItemIndex=1 then
   DM2.Tb_Dar.sql.Add(' Order by CRDTEMIS,CRNUMERO')
else if CB_ORDEM.ItemIndex=2 then
   DM2.Tb_Dar.sql.Add(' Order by CRDTVCTO,CRNUMERO')
else if CB_ORDEM.ItemIndex=3 then
   DM2.Tb_Dar.sql.Add(' Order by CRNUMERO')
else if CB_ORDEM.ItemIndex=4 then
   DM2.Tb_Dar.sql.Add(' Order by CRAZAO,CRNUMERO')
else
   DM2.Tb_Dar.sql.Add(' Order by VNOME,CRCODVEN,CRNUMERO');

try
   DM2.Tb_Dar.Open;
except
   DM2.Tb_Dar.sql.SaveToFile('c:\sqldup.txt');
   end;

end;

procedure TFrm_EDUP.NUMDUPIChange(Sender: TObject);
begin
if DM2.Tb_Dar.Active then
   DM2.Tb_Dar.Close;
end;

procedure TFrm_EDUP.CB_SOMARClick(Sender: TObject);
begin
if DM2.Tb_Dar.Active then
   DM2.Tb_Dar.Close;
if CB_SOMAR.Checked then
   begin
   lbl_nf.Visible:=true;
   NUMNF.Visible :=true;
   end
else
   begin
   lbl_nf.Visible:=false;
   NUMNF.Visible :=false;
   end;
end;

procedure TFrm_EDUP.CODCLIExit(Sender: TObject);
begin
if FSonumero(CODCLI.Text)<=0 then
   CODCLI.Text:='';
if Trim(CODCLI.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Trim(CODCLI.Text)) then
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      FMensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.SetFocus;
      end;
   end;
end;

procedure TFrm_EDUP.NUMNFKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,100,NUMNF.Text,key) then
   key:=#0;

end;

procedure TFrm_EDUP.NUMNFExit(Sender: TObject);
begin
if not fTestaTam(0,100,NUMNF.Text,'') then
   NUMNF.Text:=copy(numnf.Text,1,100);

end;

procedure TFrm_EDUP.CB_SOMARExit(Sender: TObject);
begin
if CB_SOMAR.Checked then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select NSNUMERO from CADNS ');
   mcinst:=' where ';
   if not DM1.Qr_Tid.Locate('TINOME','CADNS',[]) then
      begin
      DM1.Query2.SQL.add(mcinst+' NSCODEMP=0'+IntTostr(codemp));
      mcinst:=' and ';
      end;
   if ValFloat(NUMDUPI.Text)>0 then
      begin
      DM1.Query2.SQL.add(mcinst+' NSNUMERO>=0'+Trim(NUMDUPI.Text));
      mcinst:=' and ';
      end;
   if ValFloat(NUMDUPF.Text)>0 then
      begin
      DM1.Query2.SQL.add(mcinst+' NSNUMERO<=0'+Trim(NUMDUPF.Text));
      mcinst:=' and ';
      end;

   if ValFloat(CODCLI.Text)>0 then
      begin
      DM1.Query2.SQL.add(mcinst+' NSCODCLI=0'+Trim(CODCLI.Text));
      mcinst:=' and ';
      end;
   DM1.Query2.SQL.add(' order by NSNUMERO');
   DM1.Query2.Open;
   if DM1.Query2.Eof then
      exit;
   NUMNF.Text:='';
   NUMNF.Text:=FormatFloat('000000',DM1.Query2.Fields[0].AsFloat);
   DM1.Query2.Next;
   While not DM1.Query2.Eof do
      begin
//      NUMNF.Text:=NUMNF.Text+'/'+copy(FormatFloat('000000',DM1.Query2.Fields[0].AsFloat),4,3);
      NUMNF.Text:=NUMNF.Text+'/'+FormatFloat('000000',DM1.Query2.Fields[0].AsFloat);
      DM1.Query2.Next;
      end;
   if Length(NUMNF.Text)>100 then
      NUMNF.Text:=copy(NUMNF.Text,1,100);
   end;
end;

procedure TFrm_EDUP.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_EDUP',key);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_EDUP.RG_TIPOClick(Sender: TObject);
begin
if RG_TIPO.ItemIndex=0 then
   begin
   cb_vis.Checked:=true;
   lbl_qtdvias.Visible:=true;
   edt_qtdvias.Visible:=true;
   end
else
   begin
   cb_vis.Checked:=false;
   lbl_qtdvias.Visible:=false;
   edt_qtdvias.Visible:=false;

   end;

end;

procedure TFrm_EDUP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM2.Tb_Dar.Close;
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_EDUP.SB_SalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(codusr,'_EDUP','');
fGravaPadroes(codusr,'CB_VIS'        ,'checked'   ,'_EDUP',iif(cb_vis.Checked,'true','false'));
fGravaPadroes(codusr,'RG_TIPO'       ,'itemindex' ,'_EDUP',IntTostr(RG_TIPO.ItemIndex));
fGravaPadroes(codusr,'CB_PEND'       ,'checked'   ,'_EDUP',iif(CB_PEND.Checked,'true','false'));
fGravaPadroes(codusr,'CB_VENDAS'     ,'checked'   ,'_EDUP',iif(CB_VENDAS.Checked,'true','false'));
fGravaPadroes(codusr,'CB_ORDEM'      ,'itemindex' ,'_EDUP',IntTostr(CB_ORDEM.ItemIndex));
FMensagem('Gravado!',0,['0'],0);

end;

procedure TFrm_EDUP.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      FMensagem('Data inválida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_EDUP.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      FMensagem('Data inválida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_EDUP.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if CODBCO.Text='0' then
   NOMBCO.Text:='Carteira'
else if CODBCO.Text='' then
   NOMBCO.Text:='Todos...'
else
   begin
   if not flcadbco(1,0,0,CODBCO.Text) then
      begin
      fMensagem('Banco não Cadastrado!',0,['0'],0);
      CODBCO.SetFocus;
      end
   else
      NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
   end;



end;

procedure TFrm_EDUP.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_EDUP',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_EDUP.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_EDUP.bbNTPromissoriaClick(Sender: TObject);
var
form_notapromissoria: TFrm_NotaPromissoria;
begin
if not DM2.Tb_Dar.Active then
   begin
   FMensagem('Favor Aplicar a Seleção Primeiro!',0,['0'],0);
   exit;
   end;
DM2.Tb_Dar.First;
if DM2.Tb_Dar.Eof then
   begin
   FMensagem('Não há títulos Selecionado!',0,['0'],0);
   exit;
   end;

Application.CreateForm(TFrm_NotaPromissoria, form_notapromissoria);



la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(0,'CADCLI','CCODEMP' ,'CRCODEMP','CCODCLI' ,'CRCODCLI');
la_Empresas:=fEmpresas_Selecionadas('CADDAR','CRCODEMP',Form_SelEmp.CLB_EMPRESAS);


form_notapromissoria.Qr_NtPromissoria.close;
form_notapromissoria.Qr_NtPromissoria.SQL.clear;
form_notapromissoria.Qr_NtPromissoria.sql.add('Select CRDTVCTO,CRDTEMIS,CRNUMERO || '+QuotedStr('-')+' || CRDESD AS NUMERO, CRVALOR '
                        +','+QuotedStr('C')+' AS ORIGEM '
                        +',CLOG AS ENDERECO '
                        +',CCIDADE AS CIDADE '
                        +',CUF AS UF '

                        +',CRAZAO ,TO_CHAR(CCNPJ) AS CCNPJ,TO_CHAR(CCPF) AS CCPF from CADDAR '+iif(la_tabelas='','',',')+la_tabelas
                         +'       '+la_Join
                         +'       where CRCODEMP=0'+IntToStr(codemp)+iif(la_Empresas='','',' and ')+la_Empresas
                         +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);

form_notapromissoria.Qr_NtPromissoria.SQL.Add(' and CRSTATUS<>9');
if trim(CODBCO.Text)<>'' then
   form_notapromissoria.Qr_NtPromissoria.SQL.Add(' and CRCODBCO='+CODBCO.Text);

if CB_PEND.Checked=false then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and CREMIDUP=0');
if Trim(CODCLI.Text)<>'' then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and CRCODCLI=0'+Trim(CODCLI.Text));

if ValFloat(NUMDUPI.Text)>0 then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and CRNUMERO>=0'+Trim(NUMDUPI.Text));
if ValFloat(NUMDUPF.Text)>0 then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and CRNUMERO<=0'+Trim(NUMDUPF.Text));
if Trim(PARC.Text)<>'' then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and CRDESD='+chr(39)+Trim(PARC.Text)+chr(39));
if trim(MDT1.Text)<>'/  /' then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and CRDTEMIS>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and CRDTEMIS<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));

   form_notapromissoria.Qr_NtPromissoria.SQL.Add(' and CRDUP=4 ');


if CB_VENDAS.Checked then
   form_notapromissoria.Qr_NtPromissoria.SQL.add(' and crcodori=1');
try
   form_notapromissoria.Qr_NtPromissoria.open;
except on e : exception do
   ex_erroSql_Novo(form_notapromissoria.Qr_NtPromissoria,835,'func Erro:'+e.Message ,'CADDAR');
   end;
form_notapromissoria.RLReport1.PreviewModal;
freeandnil(form_notapromissoria);
end;

procedure TFrm_EDUP.FormShow(Sender: TObject);
begin
RG_TIPOClick(SELF);
end;

end.

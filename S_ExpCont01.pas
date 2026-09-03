unit S_ExpCont01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, S_DM1, S_DM5, func, db, dbtables, Grids, DBGrids,
  StdCtrls, Mask, Buttons, S_LRS, S_LRE, S_Pgb,lerarq,S_Stru,S_UF,S_DefBac,
  ComCtrls;

type
  TFrm_ExpCont01 = class(TForm)
    Qr_Tempor: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    sbSalvarPadrao: TSpeedButton;
    bbSair: TBitBtn;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SB01: TSpeedButton;
    Label5: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    RGTNF: TRadioGroup;
    UF: TEdit;
    NOMUF: TEdit;
    MPASTA: TEdit;
    RG_DOC: TRadioGroup;
    NARQ: TEdit;
    RG_MODELO: TRadioGroup;
    NUMNF: TEdit;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    STG_CFOP_COMP: TStringGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    SpeedButton1: TSpeedButton;
    bbEditar: TBitBtn;
    Panel7: TPanel;
    bbExcluir: TBitBtn;
    txt_cfop: TEdit;
    txt_aliq: TEdit;
    txt_codcomp: TEdit;
    lbl_sit: TLabel;
    bbCancelar: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure UFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UFExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SB01Click(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
    procedure txt_cfopExit(Sender: TObject);
    procedure txt_aliqExit(Sender: TObject);
    procedure bbEditarClick(Sender: TObject);
    procedure txt_cfopEnter(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure bbExcluirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure STG_CFOP_COMPDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure txt_codcompExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function FBuscaCompCFOP(pCfop,pAliq: Real): String;

  public
    { Public declarations }
  end;

var
  Frm_ExpCont01: TFrm_ExpCont01;
  mRegistro: array[1..22] of string;
  mpag,mlin: Integer;
  mlinha,marq: String;
  mtot10, mtot11, mtot50, mtot51, mtot53,mtot54: Real;
  mtot55, mtot60, mtot61, mtot70, mtot71,mtot74: Real;
  mtot75, mtot90: Real;


  mtot60M, mtot60A, mtot60D, mtot60I, mtot60R: Real;

  mcodcon: Integer;
  mdatai, mdataf: TDateTime;
  f: TextFile;
  fdt4: String;
  mcomp_oper: Integer=0;
  mcomp_col_edit: Integer=0;
  mpund: Real=0;  
implementation

uses func_excecoes, S_Impres, S_Agde, S_DM4;


{$R *.dfm}

procedure TFrm_ExpCont01.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpCont01.FormCreate(Sender: TObject);
var
dia,mes,ano : Word;
x: Integer;
begin
DecodeDate(date, ano,mes,dia);
if dia<28 then
   begin
   mes:=mes-1;
   if mes<1 then
      begin
      mes:=12;
      ano:=ano-1;
      end;
   end;
mdt1.Text:='01/'+FormatFloat('00',mes)+'/'+FormatFloat('0000',ano);
mdt2.Text:=FormatDateTime(fdt2, fdatafinal(1,StrToDate(mdt1.Text)));
Application.CreateForm(TFrm_Stru, Frm_Stru);

DM5.Qr_NS.Close;
DM5.Qr_NE.Close;
mboolean:=false;
if flfilpad(0,'_EXPCONT01','') then
   mboolean:=true;
if not mboolean then
   begin
   if flfilpad(codusr,'_EXPCONT01','') then
      mboolean:=true;
   end;
if mboolean then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','RGTNF',[]) then
      RGTNF.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_DOC',[]) then
      RG_DOC.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','RG_MODELO',[]) then
      RG_MODELO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   if DM4.Tb_FilPad2.Locate('FPCOMP','MPASTA',[]) then
      MPASTA.Text:=DM4.Tb_FilPad2FPVALOR.Value;

   end;
if not flfilpad(-1,'_EXPCONT01','') then
   begin
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0001'+'-'+'5102'+'-'+insere('17,00',' ',08)+'-'+'005');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0002'+'-'+'5102'+'-'+insere('19,00',' ',08)+'-'+'007');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0003'+'-'+'5202'+'-'+insere('17,00',' ',08)+'-'+'005');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0004'+'-'+'5910'+'-'+insere('17,00',' ',08)+'-'+'005');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0005'+'-'+'5910'+'-'+insere('19,00',' ',08)+'-'+'006');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0006'+'-'+'5927'+'-'+insere('17,00',' ',08)+'-'+'005');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0007'+'-'+'5917'+'-'+insere('17,00',' ',08)+'-'+'005');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0008'+'-'+'6102'+'-'+insere('12,00',' ',08)+'-'+'004');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0009'+'-'+'6202'+'-'+insere('7,00' ,' ',08)+'-'+'002');
   fGravaPadroes(-1,'STG_CFOP_COMP'       ,'itemindex','_EXPCONT01' ,'0010'+'-'+'6202'+'-'+insere('12,00',' ',08)+'-'+'004');
   end;
STG_CFOP_COMP.RowCount:=2;
STG_CFOP_COMP.Cells[00,00]:='CFOP';
STG_CFOP_COMP.Cells[01,00]:='Aliq.';
STG_CFOP_COMP.Cells[02,00]:='Obs.';
STG_CFOP_COMP.Rows[1].Clear;

if flfilpad(-1,'_EXPCONT01','') then
   begin
   While not DM4.Tb_FilPad2.Eof do
      begin
      x:=ValInt(copy(DM4.Tb_FilPad2FPVALOR.Value,01,04));
      if (STG_CFOP_COMP.RowCount-1)<x then
         STG_CFOP_COMP.RowCount:=x+1;
      STG_CFOP_COMP.Cells[00,x]:=copy(DM4.Tb_FilPad2FPVALOR.Value,06,04);
      STG_CFOP_COMP.Cells[01,x]:=trim(copy(DM4.Tb_FilPad2FPVALOR.Value,11,08));
      STG_CFOP_COMP.Cells[02,x]:=copy(DM4.Tb_FilPad2FPVALOR.Value,20,03);
      DM4.Tb_FilPad2.Next;
      end;
   end;


if codusr=1111 then
   NUMNF.Visible:=true;


end;

procedure TFrm_ExpCont01.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Frm_Stru.Free;
Frm_Stru:=nil;

end;

procedure TFrm_ExpCont01.UFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   UF.Text:=fChamaUF(0,'frm_ExpCont01','');
   end;

end;

procedure TFrm_ExpCont01.UFExit(Sender: TObject);
begin
if Trim(UF.Text)='' then
   UF.Text:='Todos...'
else
   begin
   if not flcaduf(0,0,0,UF.Text) then
      begin
      fmensagem('Estado Não Cadastrado!',0,['0'],0);
      UF.SetFocus;
      end;
   end;

end;



procedure TFrm_ExpCont01.BitBtn1Click(Sender: TObject);
var
fSaida  : TextFile;
mtemdup: Boolean;
mavista: Boolean;
mlinha : String;
mespaco: String;
x: Integer;
mSeqFrete,mSequencia: Integer;
mtmp_Emit: String;
mbaseipi: Real;
mNumNf_Ant: Real;
mSeqDoc: Integer;
mFrete: Real;
mSeqNF: Integer;
mAliq: Real;
minstrucao_qrns: string;

begin
if Trim(NARQ.Text)='' then
   begin
   fmensagem('Nome do arquivo, Campo Obrigatório!',0,['0'],0);
   exit;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

DM5.Qr_NS.Close;
DM5.Qr_NE.Close;

fdt4:='DD/MM/YY';
if trim(MDT1.Text)='/  /' then
   begin
   fmensagem('Data Inicial tem que ser preenchida!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
if trim(MDT2.Text)='/  /' then
   begin
   fmensagem('Data Final tem que ser preenchida!',0,['0'],0);
   MDT2.SetFocus;
   exit;
   end;

if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text) > StrToDate(MDT2.Text) then
      begin
      fmensagem('Invalido!. Data Inicial Maior que Final',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

DM5.Qr_Ns.Close;
DM5.Qr_Ns.Sql.Clear;


if RG_MODELO.ItemIndex=0 then
   begin
   DM5.Tb_Pro.Close;
   DM5.Tb_Pro.Open;

   mtmp_Emit :=fProcTemp(11);
   if DM5.Tb_Emit.Active then
      DM5.Tb_Emit.Close;
   if DM5.Tb_Emit.Exists then
      DM5.Tb_Emit.DeleteTable;
   DM5.Tb_Emit.TableName:=mtmp_Emit;
   DM5.Tb_Emit.CreateTable;
   DM5.Tb_Emit.Open;


   Application.CreateForm(Tfrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Gerando arquivo, Aguarde...';
   Frm_Agde.Show;
   verteclado(0);
   minstrucao_qrns:='';


   if RGTNF.ItemIndex<>2 then
      begin

      if RG_DOC.ItemIndex<>2 then
         begin
         minstrucao_qrns:=
         fLerdm5qrns(iif(rg_doc.itemindex=1, true,false) ,minstrucao_qrns, 2,RG_DOC.ItemIndex,0,fsonumero(NUMNF.Text),fStringtodatetime(MDT1.TEXT),fStringtodatetime(mdt2.text),uf.text);
         end;
      if RG_DOC.ItemIndex<>1 then
         begin
         if RG_DOC.ItemIndex=0 then
            minstrucao_qrns:=minstrucao_qrns+' union all ';
         minstrucao_qrns:=
         fLerdm5qrns(true ,minstrucao_qrns, 2,RG_DOC.ItemIndex,0,fsonumero(NUMNF.Text),fStringtodatetime(MDT1.TEXT),fStringtodatetime(mdt2.text),uf.text);
         end;

      end;
   if RGTNF.ItemIndex<>1 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(0,'CADFOR' ,'FCODEMP','NECODEMP' ,'FCODFOR' ,'NECODFOR');

      DM5.QR_NE.Close;
      DM5.Qr_NE.SQL.Clear;
      DM5.Qr_Ne.SQL.Add('Select  NECODEMP, NECODFOR '
                       +'       ,NENUMERO '
                       +'       ,NESERIE '
                       +'       ,TO_CHAR(NECFO) AS NECFO '
                       +'       ,NEDTENT '
                       +'       ,NEDTEMIS '
                       +'       ,NESUBSER '
                       +'        ,NEBASEN '
                       +'       ,NEICMSN '
                       +'       ,NEBASER '
                       +'       ,NEICMSR '
                       +'       ,NEFRETE '
                       +'       ,NEALIQ_FRETE '
                       +'       ,NEICMS_FRETE '
                       +'       ,NESEG '
                       +'       ,NEOUTRAS '
                       +'       ,NEOUTRAS_ALIQ '
                       +'       ,NEOUTRAS_IMP '
                       +'       ,NEIPI '
                       +'       ,NETOTMER '
                       +'       ,NETOTNOT '
                       +'        ,NETOTDES '
                       +'       ,NETOTPOS '
                       +'       ,NETOTNEG '
                       +'       ,NETOTINA '
                       +'       ,NECHAVEP '
                       +'       ,(NECHAVEP-NECHAVEP) AS NEORDEM '
                       +'       ,NEALIQ '
                       +'        ,NETIPO '
                       +'       ,NEAVAP '

                       +'       ,NEMODELO '
                       +'       ,FUF '
                       +'       ,NESTATUS '
                       +'        ,FRAZAO '
                       +'       ,FCGC '
                       +'       ,FIE '
                       +'       ,NEIPIFRETE '
                       +'       ,NELOTSEQ_CP '
                       +'       ,NEISENTAS '
                       +'       ,NEFRETEPC '
                       +'       ,NEOUTNINC+NEOUTDESP AS NEOUTNINC  '
                       +'       ,NEOUTDESP '
                       +'       ,'+chr(39)+'E'+chr(39)+' AS ORIGEM '
                       +'        FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                    +' NESTATUS<9 ');
      If Trim(UF.Text)<>'' then
         begin
         DM5.Qr_NE.SQL.Add(' and  FUF='+chr(39)+UF.Text+chr(39));
         end;
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NEDTENT>='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NEDTENT<='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT2.Text))+chr(39));
         if ValInt(NUMNF.Text)>0 then
            DM5.Qr_Ne.SQL.Add(' and (NENUMERO=0'+Trim(NUMNF.Text)+')');

      //DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');

      DM5.Qr_Ne.SQL.add(' union all ');

      // inicio das saidas

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

      DM5.Qr_Ne.SQL.Add('Select  NSCODEMP AS  NECODEMP, NSCODCLI AS NECODFOR '
                       +'       ,NSNUMERO AS NENUMERO '
                       +'       ,NSSERIE AS NESERIE '
                       +'       ,NSCFO1 AS NECFO '
                       +'       ,NSDTEMIS AS NEDTENT '
                       +'       ,NSDTEMIS AS NEDTEMIS '
                       +'       ,NSSUBSER AS NESUBSER '
                       +'       ,NSBASEN AS NEBASEN '
                       +'       ,NSICMSN AS NEICMSN '
                       +'       ,(NSBASERP+NSBASERN+NSBASERI) AS NEBASER '
                       +'       ,(NSICMSRP+NSICMSRN+NSICMSRI) AS NEICMSR '
                       +'       ,NSFRETE AS NEFRETE '
                       +'       ,0 AS NEALIQ_FRETE '
                       +'       ,0 AS NEICMS_FRETE '
                       +'       ,NSICMS_BCSEG AS NESEG '
                       +'       ,0 AS NEOUTRAS '
                       +'       ,0 AS NEOUTRAS_ALIQ '
                       +'       ,0 AS NEOUTRAS_IMP '

                       +'       ,(NSIPIP+NSIPIN+NSIPII) AS NEIPI '
                       +'       ,(NSTOTPROP+NSTOTPRON+NSTOTPROI) AS NETOTMER '
                       +'       ,NSTOTNOTA AS NETOTNOT '
                       +'       ,(NSTOTNOTA-NSTOTNOTA) AS  NETOTDES '
                       +'       ,NSTOTPROP AS NETOTPOS '
                       +'       ,NSTOTPRON AS  NETOTNEG '
                       +'       ,NSTOTPROI AS  NETOTINA '
                       +'       ,NSCHAVEP  AS NECHAVEP '
                       +'       ,NSORDEMP  AS NEORDEM '
                       +'       ,NSALIQ   AS NEALIQ '
                       +'       ,NSTIPO  AS NETIPO '
                       +'       ,NSAVAP  AS NEAVAP '
                       +'       ,NSMODELO AS NEMODELO '
                       +'       ,CUF AS  FUF '
                       +'       ,NSSTATUS AS NESTATUS '
                       +'       ,CRAZAO AS  FRAZAO '
                       +'       ,CCNPJ AS  FCGC '
                       +'       ,CIE AS FIE '
                       +'       ,(NSTOTNOTA-NSTOTNOTA) AS NEIPIFRETE '
                       +'       ,NSLOTSEQ_CP AS  NELOTSEQ_CP '
                       +'       ,NSTOTISEN AS  NEISENTAS '
                       +'       ,NSFRETEPC AS NEFRETEPC '
                       +'       ,(NSTOTOUT) AS NEOUTNINC '
                       +'       ,0 AS NEOUTDESP '
                      +'       ,'+chr(39)+'S'+chr(39)+' AS ORIGEM '
                       +'        FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                    +' NSSTATUS<10 ');
      If Trim(UF.Text)<>'' then
         begin
         DM5.Qr_NE.SQL.Add(' and  CUF='+chr(39)+UF.Text+chr(39));
         end;
      if ValInt(NUMNF.Text)>0 then
         DM5.Qr_NE.SQL.Add(' and (NSNUMERO=0'+Trim(NUMNF.Text)+')');

      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT2.Text))+chr(39));

      DM5.Qr_Ne.SQL.Add(' and NSTIPO=1 ');


      // termino das saidas




      DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');
   //   DM5.Qr_Ne.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      DM5.Qr_NE.Open;
      end;
   if Trim(MPASTA.Text)='' then
      MPASTA.Text:='\';
   if not DirectoryExists(MPASTA.Text) then
      begin
      fmensagem('Pasta destino não Encontrada!',0,['0'],0);
      exit;
      end;
   MPASTA.Text:=Trim(MPASTA.Text);
   if MPASTA.Text[length(MPASTA.Text)]<>'\' then
      MPASTA.Text:=MPASTA.Text+'\';
   // notas de Entradas
   Assignfile(fSaida,   MPASTA.Text+NARQ.Text);
   Rewrite(fSaida);
   mespaco:=' ';
   mSeqFrete :=0;
   mSequencia:=0;
   While not DM5.Qr_Ne.eof do
      begin
      mSeqNF:=0;
      if ((DM5.Qr_NeNECFO.AsFloat>1350) and (DM5.Qr_NeNECFO.AsFloat<1357))  or
           (DM5.Qr_NeNECHAVEP.AsFloat=0) then
          begin
          mlinha:='1';
          mlinha:=mlinha+'E';
          if (DM5.Qr_NeNECFO.AsFloat>1350) and (DM5.Qr_NeNECFO.AsFloat<1357) then
             mlinha:=mlinha+'CON'
          else
             mlinha:=mlinha+'NF ';
          mbaseipi:=0;
          mlinha:=mlinha+insere2(DM5.Qr_NeNESERIE.Value,' ',03);
          mlinha:=mlinha+insere(DM5.Qr_NeNENUMERO.AsString,'0',6);
          mlinha:=mlinha+insere(DM5.Qr_NeNENUMERO.AsString,'0',6);
          mSeqNF:=mSeqNF+1;
          mlinha:=mlinha+insere(IntToStr(mSeqNF),'0',2); // sequencia complementar
          mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NeNEDTENT.Value);
          mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NeNEDTEMIS.Value);
          mlinha:=mlinha+insere2(DM5.Qr_NeNECFO.AsString,'0',04);
          if DM5.Qr_NeORIGEM.AsString='S' then
             begin
             mAliq:=DM5.Qr_NeNEALIQ.AsFloat;
             mlinha:=mlinha+insere2(FBuscaCompCFOP(DM5.Qr_NeNECFO.AsFloat,maliq),' ',03); // codigo de obervação do CFOP
             end
          else
             mlinha:=mlinha+insere2(DM5.Qr_NeNECFO.AsString,' ',03); // codigo de observação do CFOP;
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNETOTNOT.Value*100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEBASEN.Value*100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEALIQ.Value*10000),'0',07);
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEICMSN.Value*100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEISENTAS.Value*100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEOUTRAS.Value+DM5.Qr_NeNEOUTNINC.Value+DM5.Qr_NeNEOUTDESP.Value *100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',mbaseipi*100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NeNEIPI.Value)*100),'0',14);
//          mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NeNEIPI.Value+DM5.Qr_NeNEIPIFRETE.Value)*100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // isentas ipi
          mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // outras ipi
          mlinha:=mlinha+insere2(' ',' ',15);
          mlinha:=mlinha+insere(DM5.Qr_Necgc.AsString,'0',14);
          if mavista then
             mlinha:=mlinha+'V'
          else
             mlinha:=mlinha+'P';
          mlinha:=mlinha+insere2(DM5.Qr_Neuf.Value,' ',02);
          mlinha:=mlinha+'          ';
    //      mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NeNEDTENT.Value);
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEICMSR.Value*100),'0',14);
          mlinha:=mlinha+insere(FormatFloat('000',0),'0',10); // código do municipio/cod.servico
          mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // preço de venda a varejo
          mlinha:=mlinha+insere2(DM5.Qr_NeFRAZAO.Value,' ',50);
          mlinha:=mlinha+insere2(DM5.Qr_Neuf.Value,' ',02);
          mlinha:=mlinha+insere (DM5.Qr_NeNEFRETEPC.AsString,'0',01);
          mlinha:=mlinha+'N'; // nota cancelada N-nao S-Sim
          mlinha:=mlinha+insere2(' ',' ',15); // num.reg.exportação/importação
          mlinha:=mlinha+insere2(' ',' ',12); // num.despacho exportaão
          mlinha:=mlinha+'  '; // codigo auxiliar CNPJ/CPF
          mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEICMSN.Value*100),'0',14);
         Writeln(fsaida,mlinha);
         end
      else
         begin
         if DM5.Qr_NeORIGEM.Value='S' then
            begin
            DM5.Qr_PSintESoma.Close;
            DM5.Qr_PSintESoma.SQL.Clear;
            DM5.Qr_PSintESoma.SQL.add('Select sum(P2TOTDES)   as TOTDES '
                                     +'      ,sum(P2BASEN+P2BCINR)  as BASEN '
                                     +'      ,sum(P2BASER)    as BASER '
                                     +'      ,sum(P2ICMSN+P2ICMSNR)  as ICMSN '
                                     +'      ,sum(P2ICMSR)    as ICMSR '
                                     +'      ,sum(P2VALIPI)      as IPI '
                                     +'      ,sum(P2ISENTAS)  as ISENTAS '
                                     +'      ,sum(P2TOTOUT)   as OUTRAS '
                                     +'      ,sum((P2QTD*P2PRECO)-P2TOTDES) AS TOTLIQ '
                                     +'      ,max(P2ALIPI)  as PF2ALIPI '
                                     +'      ,P2CFO AS PF2CFO'
                                     +'      ,'+chr(39)+'   '+chr(39)+' as PF2CFOP_COMP '
                                     +'           ,P2ALIQ AS PF2ALIQ'
                                     +'      ,P2ALIQNR AS PF2ALIQNR '
                                     +'       from CADP02 where P2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                                     +'       and P2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                                    +'       and P2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                                    +'       and P2ORDEM=0'+DM5.Qr_NeNEORDEM.AsString
                                     +'       group by P2CFO,P2ALIQ,P2ALIQNR ');
            DM5.Qr_PSintESoma.Open;

            end
         else
            begin
            DM5.Qr_PSintESoma.Close;
            DM5.Qr_PSintESoma.SQL.Clear;
            DM5.Qr_PSintESoma.SQL.add('Select sum(PF2TOTDES)   as TOTDES '
                                     +'      ,sum(PF2BASEN)    as BASEN '
                                     +'      ,sum(PF2BASER)    as BASER '
                                     +'      ,sum(PF2ICMSN)    as ICMSN '
                                     +'      ,sum(PF2ICMSR)    as ICMSR '
                                     +'      ,sum(PF2IPI)      as IPI '
                                     +'      ,sum(PF2ISENTAS)  as ISENTAS '
                                     +'      ,sum(PF2OUTRAS)   as OUTRAS '
                                     +'      ,sum((PF2QTDP*PF2PU)-PF2TOTDES) AS TOTLIQ '
                                     +'      ,max(PF2ALIPI)  as PF2ALIPI '
                                     +'      ,PF2CFO'
                                     +'      ,max(PF2CFOP_COMP) as PF2CFOP_COMP '
                                     +'      ,PF2ALIQ,PF2ALIQNR '
                                     +'       from CADPF2 where PF2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                                     +'       and PF2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                                    +'       and PF2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                                     +'       group by PF2CFO,PF2ALIQ,PF2ALIQNR ');
            DM5.Qr_PSintESoma.Open;
            end;
         end;
      mtemdup:=false;
      mavista:=false;
      if (DM5.Qr_NeNECHAVEP.AsFloat>0) then
         begin
         if flcadpf1v(0,DM5.Qr_NeNELOTSEQ_CP.AsInteger,DM5.Qr_NeNECHAVEP.AsString) then
            begin
            if DM1.Tb_Pf1V.RecordCount>1 then
               mavista:=false
            else if DM1.Tb_Pf1VPF1VDATAV.Value=DM5.Qr_NeNEDTEMIS.Value then
               mavista:=true;
            mtemdup:=true;
            end;
         end;
      mFrete:= DM5.Qr_NeNEIPIFRETE.Value;
      While not DM5.Qr_PSintESoma.Eof do
         begin
         mlinha:='1';
         mlinha:=mlinha+'E';
         mlinha:=mlinha+'NF ';
         mlinha:=mlinha+insere2(DM5.Qr_NeNESERIE.Value,' ',03);
         mlinha:=mlinha+insere(DM5.Qr_NeNENUMERO.AsString,'0',6);
         mlinha:=mlinha+insere(DM5.Qr_NeNENUMERO.AsString,'0',6);
         mSeqNF:=mSeqNF+1;
         mlinha:=mlinha+insere(IntToStr(mSeqNF),'0',2); // sequencia complementar
         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NeNEDTENT.Value);
         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NeNEDTEMIS.Value);
         mlinha:=mlinha+insere2(DM5.Qr_PSintESomaPF2CFO.AsString,'0',04);
         if DM5.Qr_NeORIGEM.AsString='S' then
            begin
            if DM5.Qr_PSintESomaPF2ALIQ.AsFloat>0 then
               mAliq:=DM5.Qr_PSintESomaPF2ALIQ.Value
            else
               mAliq:=DM5.Qr_PSintESomaPF2ALIQNR.AsFloat;
            mlinha:=mlinha+insere2(FBuscaCompCFOP(DM5.Qr_PSintESomaPF2CFO.AsFloat,maliq),' ',03); // codigo de observação do CFOP
            end
         else
            mlinha:=mlinha+insere2(DM5.Qr_PSintESomaPF2CFOP_COMP.AsString,' ',03); // codigo de observação do CFOP
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_PSintESomaTOTLIQ.AsFloat*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_PSintESomaBASEN.AsFloat*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_PSintESomaPF2ALIQ.AsFloat*10000),'0',07);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_PSintESomaICMSN.AsFloat*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_PSintESomaISENTAS.Value*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_PSintESomaOUTRAS.Value*100),'0',14);
         if dm5.Qr_PSintESomaIPI.AsFloat>0 then
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_PSintESomaTOTLIQ.AsFloat*100),'0',14)
         else
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_PSintESomaIPI.Value)*100),'0',14);
//         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_PSintESomaIPI.Value+mFrete)*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // isentas ipi
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // outras ipi
         mlinha:=mlinha+insere2(' ',' ',15);
         mlinha:=mlinha+insere(DM5.Qr_Necgc.AsString,'0',14);
         if mavista then
            mlinha:=mlinha+'V'
         else
            mlinha:=mlinha+'P';
         mlinha:=mlinha+insere2(DM5.Qr_Neuf.Value,' ',02);
         mlinha:=mlinha+'          ';
    //     mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NeNEDTENT.Value);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEICMSR.Value*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',10); // código do municipio/cod.servico
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // preço de venda a varejo
         mlinha:=mlinha+insere2(DM5.Qr_NeFRAZAO.Value,' ',50);
         mlinha:=mlinha+insere2(DM5.Qr_Neuf.Value,' ',02);
         mlinha:=mlinha+insere (DM5.Qr_NeNEFRETEPC.AsString,'0',01);
         mlinha:=mlinha+'N'; // nota cancelada N-nao S-Sim
         mlinha:=mlinha+insere2(' ',' ',15); // num.reg.exportação/importação
         mlinha:=mlinha+insere2(' ',' ',12); // num.despacho exportaão
         mlinha:=mlinha+'  '; // codigo auxiliar CNPJ/CPF
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NeNEICMSN.Value*100),'0',14);
         Writeln(fsaida,mlinha);

// inicio
         la_tabelas  :='';
         la_Join     :='';
         la_instrucao:='';
         fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');

         if DM5.Qr_NeORIGEM.Value='S' then
            begin
            DM5.Qr_Pro.Close;
            DM5.Qr_Pro.SQL.Clear;
            DM5.Qr_Pro.SQL.Add('Select P2ITEM    AS ITEM '
                     +'       ,P2QTD       AS QTD '
                     +'       ,P2PRECO      AS PCOUNIT '
                     +'       ,P2CODPRO   AS CODPRO '
                     +'        ,P2TOTDES  AS TOTDES '
                     +'        ,P2BASEN   AS BASEN '
                     +'        ,P2BASER   AS BASER '
                     +'        ,P2ICMSN   AS ICMSN '
                     +'        ,P2ICMSNR   AS ICMSNR '
                     +'        ,P2BCINR   AS BCINR '
                     +'        ,P2ICMSR   AS ICMSR '
                     +'        ,P2ALIPI   AS ALIPI '
                     +'        ,P2VALIPI     AS VALIPI '
                     +'        ,P2ISENTAS AS ISENTAS '
                     +'        ,P2TOTOUT  AS OUTRAS '
                     +'        ,(P2PRECO*P2QTD)-P2TOTDES AS TOTLIQ '
                     +'        ,P2SIT     AS SITTRI '
                     +'        ,P2CFO AS P2CFO,P2ALIQ AS P2ALIQ, P2ALIQNR AS P2ALIQNR'
                           +'       ,PDCODPRO AS PDCODPRO '
                           +'       ,PDNOME   AS PDNOME '
                           +'       ,PDCLAS   AS PDCLAS'
                           +'       ,PDUND    AS PDUND'
                           +'       ,PDSIT    AS PDSIT'
                           +'       ,PDTABICM AS PDTABICM'
                           +'       ,PDPRECO1 AS PDPRECO1'
                           +'       ,PDIPI   AS PDIPI'
                           +'       ,PDMARCA AS PDMARCA'
                           +'       ,PDCODNCM AS PDCODNCM');
          DM5.Qr_Pro.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                       +' P2CODPRO_ORI) as CODPRO_ORI ');
          DM5.Qr_Pro.Sql.add(' from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +'  P2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                     +' and   P2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                     +' and   P2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                     +' and   P2ORDEM=0'+DM5.Qr_NeNECHAVEP.AsString
                     +' and   P2CFO=0'+DM5.Qr_PSintESomaPF2CFO.AsString
                     +' and   P2ALIQ=0'+DM5.Qr_PSintESomaPF2ALIQ.AsString
                     +' and   P2ALIQNR=0'+DM5.Qr_PSintESomaPF2ALIQNR.AsString
                     +' Order by P2ITEM ');

            DM5.Qr_Pro.Open;
            end
         else
            begin
            DM5.Qr_Pro.Close;
            DM5.Qr_Pro.SQL.Clear;
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(1,'CADPRO' ,'PDCODEMP','PF2CODEMP' ,'PDCODPRO' ,'PF2CODPRO');

            DM5.Qr_Pro.SQL.Add('Select PF2ITEM    AS ITEM '
                     +'       ,PF2QTDP     AS QTD '
                     +'       ,PF2PU       AS PCOUNIT '
                     +'       ,PF2CODPRO   AS CODPRO '
                     +'        ,PF2TOTDES  AS TOTDES '
                     +'        ,PF2BASEN   AS BASEN '
                     +'        ,PF2BASER   AS BASER '
                     +'        ,PF2ICMSN   AS ICMSN '
                     +'        ,PF2ICMSN-PF2ICMSN   AS ICMSNR '
                     +'        ,PF2BASEN-PF2BASEN   AS BCINR '
                     +'        ,PF2ICMSR   AS ICMSR '
                     +'        ,PF2ALIPI   AS ALIPI '
                     +'        ,PF2IPI     AS VALIPI '
                     +'        ,PF2ISENTAS AS ISENTAS '
                     +'        ,PF2OUTRAS  AS OUTRAS '
                     +'        ,(PF2PU*PF2QTDP)-PF2TOTDES AS TOTLIQ '
                     +'        ,PF2SIT     AS SITTRI '
                     +'        ,PF2CFO AS P2CFO,PF2ALIQ AS P2ALIQ, PF2ALIQ-PF2ALIQ AS P2ALIQNR'
                           +'       ,PDCODPRO AS PDCODPRO '
                           +'       ,NVL(TRIM(PF2NOMPRO),PDNOME)   AS PDNOME '
                           +'       ,PDCLAS   AS PDCLAS'
                           +'       ,PDUND    AS PDUND'
                           +'       ,PDSIT    AS PDSIT'
                           +'       ,PDTABICM AS PDTABICM'
                           +'       ,PDPRECO1 AS PDPRECO1'
                           +'       ,PDIPI   AS PDIPI'
                           +'       ,PDMARCA AS PDMARCA'
                           +'       ,PDCODNCM AS PDCODNCM');
             DM5.Qr_Pro.Sql.add(',PDNOME as NOMPRO_ORI '
                       +'       ,TO_CHAR(PDCODPRO) as CODPRO_ORI ');
             DM5.Qr_Pro.Sql.add(' from CADPF2 '+iif(la_tabelas='','',',')+la_tabelas
                           +'       '+la_Join
                           +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                           +'  PF2CODEMP=0'+DM5.Qr_NeNECODEMP.AsString
                     +' and   PF2LOTSEQ=0'+DM5.Qr_NeNELOTSEQ_CP.AsString
                     +' and   PF2CHAVE=0'+DM5.Qr_NeNECHAVEP.AsString
                     +' and   PF2CFO=0'+DM5.Qr_PSintESomaPF2CFO.AsString
                     +' and   PF2ALIQ=0'+DM5.Qr_PSintESomaPF2ALIQ.AsString
                     +' and   PF2ALIQNR=0'+DM5.Qr_PSintESomaPF2ALIQNR.AsString

                     +' Order by PF2ITEM ');
            DM5.Qr_Pro.Open;
            end;
         While not DM5.Qr_Pro.Eof do
            begin
            mlinha:='3';
            if length(DM5.Qr_ProPDCODNCM.AsString)>1 then
                mlinha:=mlinha+insere2(DM5.Qr_ProPDCODNCM.AsString,' ',10)
            else
               mlinha:=mlinha+insere2(' ',' ',10);
            mlinha:=mlinha+insere(DM5.Qr_ProQTD.AsString,'0',10);
            mlinha:=mlinha+insere2(DM5.Qr_ProPDUND.AsString,' ',07);
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProTOTLIQ.Value*100),'0',15);
            mlinha:=mlinha+insere(Formatfloat('000', (DM5.Qr_ProICMSN.Value+DM5.Qr_ProICMSNR.Value)*100),'0',15);
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProOUTRAS.Value*100),'0',15);
            mlinha:=mlinha+insere(DM5.Qr_ProPDCODPRO.AsString,'0',14);
            mlinha:=mlinha+insere(DM5.Qr_ProITEM.AsString,'0',03);
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProTOTDES.Value*100),'0',15);
            mlinha:=mlinha+insere(Formatfloat('000', (DM5.Qr_ProBASEN.Value+DM5.Qr_ProBCINR.Value)*100),'0',15);
            if DM5.Qr_ProP2ALIQ.Value=0 then
               mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProP2ALIQNR.Value*100),'0',06)
            else
               mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProP2ALIQ.Value*100),'0',06);
            mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProBASER.Value*100),'0',15);
            Writeln(fSaida,mlinha);
            if not DM5.Tb_Pro.Locate('CODPRO',DM5.Qr_ProCODPRO_ORI.AsString,[]) then
               begin
               flcadpro(1,0,0,DM5.Qr_ProCODPRO.AsString);
               DM5.Tb_Pro.Append;
               DM5.Tb_ProCODPRO.Value     :=DM5.Qr_ProCODPRO_ORI.Value;
               if trim(DM5.Qr_ProNOMPRO_ORI.AsString)='' then
                  DM5.Tb_ProDESCRICAO.Value  :=DM5.Qr_ProPDNOME.Value
               else
                  DM5.Tb_ProDESCRICAO.Value  :=DM5.Qr_ProNOMPRO_ORI.Value;
               DM5.Tb_ProCLAS_FISCAL.Value:=DM5.Qr_ProPDCLAS.Value;
               DM5.Tb_ProUNIDADE.Value    :=DM5.Qr_ProPDUND.Value;
               DM5.Tb_ProSITTRI.Value     :=DM5.Qr_ProPDSIT.Value;
               if DM5.Qr_ProPDSIT.Value[2]='4' then
                  begin
                  DM5.Tb_ProALIQEST.Value :=0;
                  DM5.Tb_ProALIQINT.Value :=0;
                  DM5.Tb_ProRED.Value     :=0;
                  end
               else
                  begin
                  DM1.Query2.Close;
                  DM1.Query2.SQL.Clear;
                  DM1.Query2.SQL.Add('Select PICMSA,PICMSB,PREDUTNA,PREDUTNB from CADUF where '
                                    +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
                  DM1.Query2.Open;
                  if DM5.Qr_ProPDTABICM.Value='B' then
                     begin
                     DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[1].AsFloat;
                     DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[3].AsFloat;
                     end
                  else
                     begin
                     DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[0].AsFloat;
                     DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[2].AsFloat;
                     end;
                  DM1.Query2.Close;
                  DM1.Query2.SQL.Clear;
                  DM1.Query2.SQL.Add('Select max(PICMSA),max(PICMSB) from CADUF where '
                                    +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                    +' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
                  DM1.Query2.Open;
                  if DM5.Qr_ProPDTABICM.Value='B' then
                     DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[1].AsFloat
                  else
                     DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[0].AsFloat;
                  end;
               DM5.Tb_ProALIQIPI.Value      :=DM5.Qr_ProPDIPI.Value;
               DM5.Tb_ProVALIPI.Value       :=DM5.Qr_ProPDPRECO1.Value*DM5.Qr_ProPDIPI.Value/100;
               DM5.Tb_ProREFERENCIA.Value   :=DM5.Qr_ProPDMARCA.Value;
               DM5.Tb_ProCREDOUT.Value      :=0;
               DM5.Tb_Pro.Post;
               end;
            DM5.Qr_Pro.Next;
            end;
         mFrete:=0;
         DM5.Qr_PSintESoma.Next;
         end;
// termino

      if mtemdup then
         begin
         DM1.Tb_Pf1V.First;
         mqtd:=0;
         While not DM1.Tb_Pf1V.Eof do
            begin
            mqtd:=mqtd+1;
            mlinha:='2';
            mlinha:=mlinha+insere2(DM5.Qr_NeNENUMERO.AsString+'-'+chr(64+mqtd),' ',15);
            mlinha:=mlinha+FormatDateTime(fdt4, DM1.Tb_Pf1VPF1VDATAV.Value);
            mlinha:=mlinha+insere(FormatFloat('000',DM1.Tb_Pf1VPF1VVALOR.Value*100),'0',15);
            Writeln(fsaida,mlinha);
            DM1.Tb_Pf1V.Next;
            end;
         end;

      if not DM5.Tb_Emit.FindKey([FormatFloat('00000000000000', fsonumero(DM5.Qr_Necgc.Value))]) then
         begin
         flcadfor(1,0,DM5.Qr_NeNECODFOR.AsString);
         DM5.Tb_Emit.Append;
         DM5.Tb_EmitCNPJCPF.Value :=FormatFloat('00000000000000', fsonumero(DM5.Qr_Necgc.Value));
         DM5.Tb_EmitNOME.Value    :=DM5.Qr_NeFRAZAO.Value;
         DM5.Tb_EmitCIDADE.Value  :=DM1.Tb_ForFCIDADE.Value;
         DM5.Tb_EmitUF.Value      :=DM1.Tb_ForFUF.Value;
         DM5.Tb_EmitINSC_EST.Value:=DM1.Tb_ForFIE.Value;
         DM5.Tb_EmitENDERECO.Value:=DM1.Tb_ForFNLOG.Value;
         DM5.Tb_EmitBAIRRO.Value  :=DM1.Tb_ForFBAIRRO.Value;
         DM5.Tb_EmitCEP.Value     :=DM1.Tb_ForFCEP.Value;
         DM5.Tb_EmitPAIS.Value    :='BRASIL';
         DM5.Tb_EmitFONE.Value    :=fdeixanum(DM1.Tb_ForFFONE.Value);
         DM5.Tb_EmitFAX.Value     :=fdeixanum(DM1.Tb_ForFFAX.Value);
         DM5.Tb_Emit.Post;
         end;
      DM5.Qr_Ne.Next;
      end;

   // Notas fiscais de saida



   While not DM5.Qr_NS.eof do
      begin
      mSeqNF:=0;

      if DM5.Qr_NSNSNUMERO.Value=0 then
         begin
         DM5.Qr_NS.Next;
         Continue;
         end;
      if DM5.Qr_NSNSCHAVEP.Value=0 then
         begin
         mlinha:='1';
         mlinha:=mlinha+'S';
         mlinha:=mlinha+'NF ';
         mtemdup:=false;
         mavista:=false;
         mlinha:=mlinha+insere2(DM5.Qr_NSNSSERIE.Value,' ',03);
         mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
         mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
         mSeqNF:=mSeqNF+1;
         mlinha:=mlinha+insere(IntToStr(mSeqNF),'0',2); // sequencia complementar
         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
         mlinha:=mlinha+insere2(DM5.Qr_NSNSCFO1.AsString,'0',04);
         if DM5.Qr_NSNSALIQ.Value>0 then
            mAliq:=DM5.Qr_NSNSALIQ.Value
         else
            mAliq:=DM5.Qr_NSNSALIQ2.Value;

         mlinha:=mlinha+insere2(FBuscaCompCFOP(DM5.Qr_NSNSCFO1.AsFloat,maliq),' ',03); // codigo de observação do CFOP
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSTOTNOTA.Value*100)),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSBASENI.Value+DM5.Qr_NSNSBASENP.Value+DM5.Qr_NSNSBASENN.Value)*100),'0',14);
         if DM5.Qr_NSNSALIQ.Value>0 then
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSALIQ.Value*10000),'0',07)
         else
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSALIQ2.Value*10000),'0',07);

         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSICMSNI.Value+DM5.Qr_NSNSICMSNP.Value+DM5.Qr_NSNSICMSNN.Value)*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSTOTISEN.Value*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSTOTOUT.Value*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',mbaseipi*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSIPII.Value+DM5.Qr_NSNSIPIP.Value+DM5.Qr_NSNSIPIN.Value)*100),'0',14);
//         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSIPII.Value+DM5.Qr_NSNSIPIP.Value+DM5.Qr_NSNSIPIN.Value+DM5.Qr_NSNSFRETE.Value)*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // isentas ipi
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // outras ipi
         mlinha:=mlinha+insere2(' ',' ',15);
         mlinha:=mlinha+insere(DM5.Qr_NScgc.AsString,'0',14);
         if mavista then
            mlinha:=mlinha+'V'
         else
            mlinha:=mlinha+'P';
         mlinha:=mlinha+insere2(DM5.Qr_NSuf.Value,' ',02);
         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);

         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value)*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',10); // código do municipio/cod.servico
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // preço de venda a varejo
         mlinha:=mlinha+insere2(DM5.Qr_NSrazsoc.Value,' ',50);
         mlinha:=mlinha+insere2(DM5.Qr_NSuf.Value,' ',02);
       //  mlinha:=mlinha+insere (DM5.Qr_Nsns eNEFRETEPC.AsString,'0',01);
         mlinha:=mlinha+'1';
         if DM5.Qr_NSNSSTATUS.Value=9 then
            mlinha:=mlinha+'N' // nota cancelada N-nao S-Sim
         else
            mlinha:=mlinha+'N'; // nota cancelada N-nao S-Sim
         mlinha:=mlinha+insere2(' ',' ',15); // num.reg.exportação/importação
         mlinha:=mlinha+insere2(' ',' ',12); // num.despacho exportaão
         mlinha:=mlinha+'  '; // codigo auxiliar CNPJ/CPF
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSICMSN.Value*100),'0',14);
         Writeln(fsaida,mlinha);
         end
      else
         begin
         DM5.Qr_ProSoma.Close;
         DM5.Qr_ProSoma.SQL.Clear;
         DM5.Qr_ProSoma.SQL.Add('Select sum(P2TOTDES)  AS TOTDES '
                               +'       ,sum(P2BASEN)  AS BASEN '
                               +'       ,sum(P2BASER)  AS BASER '
                               +'       ,sum(P2ICMSN)  AS ICMSN '
                               +'       ,sum(P2ICMSNR) AS ICMSNR '
                               +'       ,sum(P2BCINR)  AS BCINR '
                               +'       ,sum(P2ICMSR)  AS ICMSR '
                               +'       ,sum(P2VALIPI)  AS VALIPI '
                               +'       ,sum(P2ISENTAS) AS ISENTAS '
                               +'       ,sum(P2TOTOUT)  AS OUTRAS '
                               +'       ,sum(P2TOTLIQ) AS TOTLIQ '
                               +'        ,P2CFO,P2ALIQ,P2ALIQNR,P2ALIPI AS ALIPI '
                               +'  ,P2CFO AS CFONF '
                               +' from CADP02 '
                               +' where P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                               +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                               +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                               +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                               +' group by P2CFO,P2ALIQ,P2ALIQNR,P2ALIPI');
         DM5.Qr_ProSoma.Open;
         mtemdup:=false;
         mavista:=false;

         if DM5.Qr_NSNSCHAVEP.Asfloat>0 then
            begin
            if flcadp01V(0,0,DM5.Qr_NSNSLOTSEQ_CP.AsInteger,DM5.Qr_NSNSCHAVEP.AsString,DM5.Qr_NSNSORDEMP.AsString) then
               begin
               if DM1.Tb_Ped01V.RecordCount>1 then
                  mavista:=false
               else if DM1.Tb_Ped01VP1VDATAV.Value=DM5.Qr_NSNSDTEMIS.Value then
                  mavista:=true;
               mtemdup:=true;
               end;
            end;
// inicio
         mFrete:=DM5.Qr_NSNSFRETE.Value;
         While not DM5.Qr_ProSoma.Eof do
            begin
            mlinha:='1';
            mlinha:=mlinha+'S';
            mlinha:=mlinha+'NF ';
//            mtemdup:=false;
//            mavista:=false;
            mlinha:=mlinha+insere2(DM5.Qr_NSNSSERIE.Value,' ',03);
            mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
            mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
            mSeqNF:=mSeqNF+1;
            mlinha:=mlinha+insere(IntToStr(mSeqNF),'0',2); // sequencia complementar
            mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
            mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
            mlinha:=mlinha+insere2(DM5.Qr_ProSomaP2CFO.AsString,'0',04);
            if DM5.Qr_ProSomaP2ALIQ.Value>0 then
               mAliq:=DM5.Qr_ProSomaP2ALIQ.Value
            else
               mAliq:=DM5.Qr_ProSomaP2ALIQNR.Value;
            mlinha:=mlinha+insere2(FBuscaCompCFOP(DM5.Qr_ProSomaP2CFO.AsFloat,maliq),' ',03); // codigo de observação do CFOP

            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaTOTLIQ.Value*100)),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaBASEN.Value+DM5.Qr_ProSomaBCINR.AsFloat)*100),'0',14);
            if DM5.Qr_ProSomaP2ALIQ.Value>0 then
               mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaP2ALIQ.Value*10000),'0',07)
            else
               mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaP2ALIQNR.Value*10000),'0',07);

            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaICMSN.AsFloat+DM5.Qr_ProSomaICMSNR.AsFloat)*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaISENTAS.Value*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaOUTRAS.Value*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',mbaseipi*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaVALIPI.AsFloat)*100),'0',14);
//            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaVALIPI.AsFloat+mFrete)*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // isentas ipi
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // outras ipi
            mlinha:=mlinha+insere2(' ',' ',15);
            mlinha:=mlinha+insere(DM5.Qr_NScgc.AsString,'0',14);
            if mavista then
               mlinha:=mlinha+'V'
            else
               mlinha:=mlinha+'P';
            mlinha:=mlinha+insere2(DM5.Qr_NSuf.Value,' ',02);
            mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);

            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaICMSR.AsFloat)*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',10); // código do municipio/cod.servico
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // preço de venda a varejo
            mlinha:=mlinha+insere2(DM5.Qr_NSrazsoc.Value,' ',50);
            mlinha:=mlinha+insere2(DM5.Qr_NSuf.Value,' ',02);
           //  mlinha:=mlinha+insere (DM5.Qr_Nsns eNEFRETEPC.AsString,'0',01);
            mlinha:=mlinha+'1';
            if DM5.Qr_NSNSSTATUS.Value=9 then
               mlinha:=mlinha+'N' // nota cancelada N-nao S-Sim
            else
               mlinha:=mlinha+'N'; // nota cancelada N-nao S-Sim
            mlinha:=mlinha+insere2(' ',' ',15); // num.reg.exportação/importação
            mlinha:=mlinha+insere2(' ',' ',12); // num.despacho exportaão
            mlinha:=mlinha+'  '; // codigo auxiliar CNPJ/CPF
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaICMSN.AsFloat+DM5.Qr_ProSomaICMSNR.AsFloat*100),'0',14);
            Writeln(fsaida,mlinha);



            DM5.Qr_Pro.Close;
            DM5.Qr_Pro.SQL.Clear;
            la_tabelas  :='';
            la_Join     :='';
            la_instrucao:='';
            fInnerJoin(1,'CADPRO' ,'PDCODEMP','P2CODEMP' ,'PDCODPRO' ,'P2CODPRO');
            DM5.Qr_Pro.SQL.Add('Select  P2ITEM      AS ITEM '
                              +'       ,P2QTD       AS QTD '
                              +'       ,P2PRECO     AS PCOUNIT '
                              +'       ,P2CODPRO    AS CODPRO '
                              +'       ,P2TOTDES    AS TOTDES '
                              +'       ,P2BASEN     AS BASEN '
                              +'       ,P2BASER     AS BASER '
                              +'       ,P2ICMSN     AS ICMSN '
                              +'       ,P2ICMSNR    AS ICMSNR '
                              +'       ,P2BCINR     AS BCINR '
                              +'       ,P2ICMSR     AS ICMSR '
                              +'       ,P2ALIPI     AS ALIPI '
                              +'       ,P2VALIPI    AS VALIPI '
                              +'       ,P2ISENTAS   AS ISENTAS '
                              +'       ,P2TOTOUT    AS OUTRAS '
                              +'       ,P2TOTLIQ    AS TOTLIQ '
                              +'       ,P2SIT     AS SITTRI '
                              +'       ,P2CFO AS P2CFO,P2ALIQ AS P2ALIQ, P2ALIQNR AS P2ALIQNR'
                              +'       ,PDCODPRO AS PDCODPRO '
                              +'       ,PDNOME   AS PDNOME '
                              +'       ,PDCLAS   AS PDCLAS'
                              +'       ,PDUND    AS PDUND'
                              +'       ,PDSIT    AS PDSIT'
                              +'       ,PDTABICM AS PDTABICM'
                              +'       ,PDPRECO1 AS PDPRECO1'
                              +'       ,PDIPI   AS PDIPI'
                              +'       ,PDMARCA AS PDMARCA'
                              +'       ,PDCODNCM AS PDCODNCM');
          DM5.Qr_Pro.Sql.add(',case when length(P2NOMPRO_ORI)>2 then P2NOMPRO_ORI else PDNOME end as NOMPRO_ORI '
                       +'       ,DECODE(P2CODPRO_ORI,null,to_char(PDCODPRO),'+chr(39)+' '+chr(39)+',to_char(PDCODPRO),'
                       +' P2CODPRO_ORI) as CODPRO_ORI ');
          DM5.Qr_Pro.Sql.add(' from CADP02 '+iif(la_tabelas='','',',')+la_tabelas
                              +'       '+la_Join
                              +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                              +'   P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                              +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                              +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                              +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString
                              +' and   P2CFO=0'+DM5.Qr_ProSomaP2CFO.AsString
                              +' and   P2ALIQ=0'+DM5.Qr_ProSomaP2ALIQ.AsString
                              +' and   P2ALIQNR=0'+DM5.Qr_ProSomaP2ALIQNR.AsString
                              +' Order by P2ITEM ');
            DM5.Qr_Pro.Open;
            While not DM5.Qr_Pro.Eof do
               begin
               mlinha:='3';
               if length(DM5.Qr_ProPDCODNCM.AsString)>1 then
                   mlinha:=mlinha+insere2(DM5.Qr_ProPDCODNCM.AsString,' ',10)
               else
                  mlinha:=mlinha+insere2(' ',' ',10);
               mlinha:=mlinha+insere(DM5.Qr_ProQTD.AsString,'0',10);
               mlinha:=mlinha+insere2(DM5.Qr_ProPDUND.AsString,' ',07);
               mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProTOTLIQ.Value*100),'0',15);
               mlinha:=mlinha+insere(Formatfloat('000', (DM5.Qr_ProICMSN.Value+DM5.Qr_ProICMSNR.Value)*100),'0',15);
               mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProOUTRAS.Value*100),'0',15);
               mlinha:=mlinha+insere(DM5.Qr_ProPDCODPRO.AsString,'0',14);
               mlinha:=mlinha+insere(DM5.Qr_ProITEM.AsString,'0',03);
               mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProTOTDES.Value*100),'0',15);
               mlinha:=mlinha+insere(Formatfloat('000', (DM5.Qr_ProBASEN.Value+DM5.Qr_ProBCINR.Value)*100),'0',15);
               if DM5.Qr_ProP2ALIQ.Value=0 then
                  mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProP2ALIQNR.Value*100),'0',06)
               else
                  mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProP2ALIQ.Value*100),'0',06);
               mlinha:=mlinha+insere(Formatfloat('000', DM5.Qr_ProBASER.Value*100),'0',15);
               Writeln(fSaida,mlinha);
               if not DM5.Tb_Pro.Locate('CODPRO',DM5.Qr_ProCODPRO_ORI.Value,[]) then
                  begin
                  flcadpro(1,0,0,DM5.Qr_ProCODPRO.AsString);
                  DM5.Tb_Pro.Append;
                  DM5.Tb_ProCODPRO.Value     :=DM5.Qr_ProCODPRO_ORI.Value;
                  if trim(DM5.Qr_ProNOMPRO_ORI.AsString)='' then
                     DM5.Tb_ProDESCRICAO.Value  :=DM5.Qr_ProPDNOME.Value
                  else
                     DM5.Tb_ProDESCRICAO.Value  :=DM5.Qr_ProNOMPRO_ORI.Value;
                  DM5.Tb_ProCLAS_FISCAL.Value:=DM5.Qr_ProPDCLAS.Value;
                  DM5.Tb_ProUNIDADE.Value    :=DM5.Qr_ProPDUND.Value;
                  DM5.Tb_ProSITTRI.Value     :=DM5.Qr_ProPDSIT.Value;
                  if DM5.Qr_ProPDSIT.Value[2]='4' then
                     begin
                     DM5.Tb_ProALIQEST.Value :=0;
                     DM5.Tb_ProALIQINT.Value :=0;
                     DM5.Tb_ProRED.Value     :=0;
                     end
                  else
                     begin
                     DM1.Query2.Close;
                     DM1.Query2.SQL.Clear;
                     DM1.Query2.SQL.Add('Select PICMSA,PICMSB,PREDUTNA,PREDUTNB from CADUF where '
                                       +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                       +' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
                     DM1.Query2.Open;
                     if DM5.Qr_ProPDTABICM.Value='B' then
                        begin
                        DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[1].AsFloat;
                        DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[3].AsFloat;
                        end
                     else
                        begin
                        DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[0].AsFloat;
                        DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[2].AsFloat;
                        end;
                     DM1.Query2.Close;
                     DM1.Query2.SQL.Clear;
                     DM1.Query2.SQL.Add('Select max(PICMSA),max(PICMSB) from CADUF where '
                                       +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                       +' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
                     DM1.Query2.Open;
                     if DM5.Qr_ProPDTABICM.Value='B' then
                        DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[1].AsFloat
                     else
                        DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[0].AsFloat;
                     end;
                  DM5.Tb_ProALIQIPI.Value      :=DM5.Qr_ProPDIPI.Value;
                  DM5.Tb_ProVALIPI.Value       :=DM5.Qr_ProPDPRECO1.Value*DM5.Qr_ProPDIPI.Value/100;
                  DM5.Tb_ProREFERENCIA.Value   :=DM5.Qr_ProPDMARCA.Value;
                  DM5.Tb_ProCREDOUT.Value      :=0;
                  DM5.Tb_Pro.Post;
                  end;
               DM5.Qr_Pro.Next;
               end;

            DM5.Qr_ProSoma.Next;
            end;
         end;
      if mtemdup then
         begin
         DM1.Tb_Ped01V.First;
         While not DM1.Tb_Ped01V.Eof do
            begin
            mlinha:='2';
            mlinha:=mlinha+insere2(DM5.Qr_NSNSNUMERO.AsString+'-'+chr(64+DM1.Tb_Ped01VP1VCODIGO.AsInteger),' ',15);
            mlinha:=mlinha+FormatDateTime(fdt4, DM1.Tb_Ped01VP1VDATAV.Value);
            mlinha:=mlinha+insere(FormatFloat('000',DM1.Tb_Ped01VP1VVALOR.Value*100),'0',15);
            DM1.Tb_Ped01V.Next;
            Writeln(fsaida,mlinha);
            end;
         end;

      if not DM5.Tb_Emit.FindKey([FormatFloat('00000000000000', DM5.Qr_NScgc.AsFloat)]) then
         begin
         flcadcli(1,0,DM5.Qr_NSNSCODCLI.AsString);
         DM5.Tb_Emit.Append;
         DM5.Tb_EmitCNPJCPF.Value :=FormatFloat('00000000000000', DM5.Qr_NScgc.AsFloat);
         DM5.Tb_EmitNOME.Value    :=DM5.Qr_NSrazsoc.Value;
         DM5.Tb_EmitCIDADE.Value  :=DM1.Tb_CliCCIDADE.Value;
         DM5.Tb_EmitUF.Value      :=DM1.Tb_CliCUF.Value;
         DM5.Tb_EmitINSC_EST.Value:=DM5.Qr_NSinscricao.Value;
         DM5.Tb_EmitENDERECO.Value:=DM1.Tb_CliCLOG.Value;
         DM5.Tb_EmitBAIRRO.Value  :=DM1.Tb_CliCBAIRRO.Value;
         DM5.Tb_EmitCEP.Value     :=DM1.Tb_CliCCEP.Value;
         DM5.Tb_EmitPAIS.Value    :='BRASIL';
         DM5.Tb_EmitFONE.Value    :=fdeixanum(DM1.Tb_CliCFONERES.Value);
         DM5.Tb_EmitFAX.Value     :=fdeixanum(DM1.Tb_CliCFAX.Value);
         DM5.Tb_Emit.Post;
         end;
     DM5.Qr_Ns.Next;
     end;

   DM5.Tb_Pro.First;
   While not DM5.Tb_Pro.Eof do
      begin
      flcadpro(1,0,0,DM5.Tb_ProCODPRO.AsString);
      mlinha:='4';
      mlinha:=mlinha+insere(DM5.Tb_ProCODPRO.AsString,'0',14);
      mlinha:=mlinha+insere2(DM5.Tb_ProDESCRICAO.AsString,' ',40);
      mlinha:=mlinha+insere2(DM1.Tb_ProPDCODNCM.Value,' ',10);
      mlinha:=mlinha+'N';
      Writeln(fSaida,mlinha);
      DM5.Tb_Pro.Next;
      end;



   DM5.Tb_Emit.First;
   While not DM5.Tb_Emit.Eof do
      begin
      mlinha:='5';
      mlinha:=mlinha+insere(DM5.Tb_EmitCNPJCPF.AsString,'0',14);
      mlinha:=mlinha+insere2(DM5.Tb_EmitNOME.AsString,' ',50);
      mlinha:=mlinha+insere2(DM5.Tb_EmitENDERECO.AsString,' ',60);
      mlinha:=mlinha+insere2(DM5.Tb_EmitBAIRRO.AsString,' ',20);
      mlinha:=mlinha+insere2(DM5.Tb_EmitCIDADE.AsString,' ',20);
      mlinha:=mlinha+insere2(DM5.Tb_EmitUF.AsString,' ',02);
      mlinha:=mlinha+insere2(DM5.Tb_EmitCEP.AsString,' ',08);
      mlinha:=mlinha+insere2(DM5.Tb_EmitPAIS.AsString,' ',20);
      mlinha:=mlinha+insere2(DM5.Tb_EmitINSC_EST.AsString,' ',18);
      mlinha:=mlinha+insere2(' ',' ',15); // inscricao municipal
      mlinha:=mlinha+insere2(' ',' ',02); // codigo auxiliar
      Writeln(fSaida,mlinha);
      DM5.Tb_Emit.Next;
      end;




   CloseFile(fSaida);
   {
   // inicio de cupom
   if RG_DOC.ItemIndex<>1 then
      begin
      DM5.Qr_R60M.Close;
      DM5.Qr_R60M.sql.Clear;
      DM5.Qr_R60M.SQL.Add('Select CFSERIE,CFMODDOC,CMDATA,CMCODIMP, ');
      DM5.Qr_R60M.SQL.Add('       CMCOO, ');
      DM5.Qr_R60M.SQL.Add('       CMCOO_FINAL,');
      DM5.Qr_R60M.SQL.Add('       CMCONRED, ');
      DM5.Qr_R60M.SQL.Add('       CMCRO, ');
      DM5.Qr_R60M.SQL.Add('       CMVDABRUT,CMVDALIQ,CMCUPCAN, ');
      DM5.Qr_R60M.SQL.Add('       CMACRECUP,CMDESCUP, ');
      DM5.Qr_R60M.SQL.Add('       CMISENTAS,CMNAOINC, ');
      DM5.Qr_R60M.SQL.Add('       CMSUBTRI,CMISSCUP ');
      DM5.Qr_R60M.SQL.Add('       from CADECF,CADMI01 '
                         +' where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),''
                         ,' CMCODEMP=0'+InttoStr(codemp)+' and CFCODEMP=CMCODEMP and ')
                         +' CFCAIXA=CMCODIMP ');
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_R60M.SQL.Add(' and CMDATA>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_R60M.SQL.Add(' and CMDATA<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));

      DM5.Qr_R60M.Open;
      DM5.Qr_R60I.Close;
      DM5.Qr_R60I.SQL.Clear;
      DM5.Qr_R60I.SQL.Add('SELECT CFSERIE,CFMODDOC,P1NUMCF,P1CODECF,P2CODPRO,P1DATACF,P2ALIQ,P2SIT, ');
      DM5.Qr_R60I.SQL.Add('        P2ITEM ');
      DM5.Qr_R60I.SQL.Add('       ,P2QTD AS QTD ');
      DM5.Qr_R60I.SQL.Add('       ,P2PRECO ');
      DM5.Qr_R60I.SQL.Add('       ,P2TOTLIQ-P2DESCRAT AS TOTLIQ ');
      DM5.Qr_R60I.SQL.Add('       ,P2BASEN AS BASEN,P2ICMSN AS ICMSN ');
      DM5.Qr_R60I.SQL.Add('       ,P2ISENTAS AS ISENTAS ');
      DM5.Qr_R60I.SQL.Add('  from CADP01,CADP02,CADECF where '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                         ,' P1CODEMP=0'+InttoStr(codemp)+' and P2CODEMP=P1CODEMP and ')
                          +' P2LOTSEQ=P1LOTSEQ '
                         +' and P2CHAVE =P1CHAVE '
                         +' and P2ORDEM =P1ORDEM '
                         +' and P1CODECF>0 and P1STATUS<'+mstatus_excluido+' '
                         +iif(DM1.Qr_TID.Locate('TINOME','CADECF',[]),'',
                         ' and CFCODEMP=P1CODEMP ')
                         +' and CFCAIXA =P1CODECF ');
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_R60I.SQL.Add(' and P1DATACF>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_R60I.SQL.Add(' and P1DATACF<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
      DM5.Qr_R60I.SQL.Add('Order by P2LOTSEQ,P2CHAVE,P2ORDEM,P2ITEM ');
      DM5.Qr_R60I.Open;
      While not DM5.Qr_R60I.Eof do
         begin
         mcinst:=Formatfloat('000',fsonumero(DM5.Qr_R60IP2SIT.Value));
         if mcinst[2] in ['1','6'] then
            mcinst:='F'
         else if mcinst[2]='4' then
            mcinst:='I'
         else if DM5.Qr_R60IP2ALIQ.Value=0 then
            mcinst:='I'
         else
            mcinst:=FormatFloat('0000',DM5.Qr_R60IP2ALIQ.Value*100);
         mlinha:=insere2(DM5.Qr_R60ICFSERIE.Value,' ',20);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere2(DM5.Qr_R60ICFMODDOC.Value,' ',2);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(DM5.Qr_R60IP1NUMCF.AsString,'0',06);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_R60IP1DATACF.Value);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(DM5.Qr_R60IP2CODPRO.AsString,'0',06);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(FormatFloat('000', Arredonda(DM5.Qr_R60IQTD.Value,2)*100),'0',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(FormatFloat('000', Arredonda(DM5.Qr_R60IP2PRECO.Value,2)*100),'0',14);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(DM5.Qr_R60IP2SIT.AsString,'0',03);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(FormatFloat('000', Arredonda(DM5.Qr_R60IP2ALIQ.Value,2)*100),'0',04);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(FormatFloat('000', 0),'0',12);
         mlinha:=mlinha+mespaco;
         mlinha:=mlinha+Insere(FormatFloat('000', 0),'0',06);
         Writeln(fitemcup,mlinha);
         if not DM5.Tb_Pro.FindKey([DM5.Qr_R60IP2CODPRO.Value]) then
            begin
            flcadpro(1,0,0,DM5.Qr_R60IP2CODPRO.AsString);
            DM5.Tb_Pro.Append;
            DM5.Tb_ProCODPRO.Value     :=DM1.Tb_ProPDCODPRO.Value;
            DM5.Tb_ProDESCRICAO.Value  :=DM1.Tb_ProPDNOME.Value;
            DM5.Tb_ProCLAS_FISCAL.Value:=DM1.Tb_ProPDCLAS.Value;
            DM5.Tb_ProUNIDADE.Value    :=DM1.Tb_ProPDUND.Value;
            DM5.Tb_ProSITTRI.Value     :=DM1.Tb_ProPDSIT.Value;
            if DM1.Tb_ProPDSIT.Value[2]='4' then
               begin
               DM5.Tb_ProALIQEST.Value :=0;
               DM5.Tb_ProALIQINT.Value :=0;
               DM5.Tb_ProRED.Value     :=0;
               end
            else
               begin
               DM1.Query2.Close;
               DM1.Query2.SQL.Clear;
               DM1.Query2.SQL.Add('Select PICMSA,PICMSB,PREDUTNA,PREDUTNB from CADUF where '
                                 +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                 +' PUF='+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
               DM1.Query2.Open;
               if DM1.Tb_ProPDTABICM.Value='B' then
                  begin
                  DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[1].AsFloat;
                  DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[3].AsFloat;
                  end
               else
                  begin
                  DM5.Tb_ProALIQEST.Value:=DM1.Query2.Fields[0].AsFloat;
                  DM5.Tb_ProRED.Value    :=DM1.Query2.Fields[2].AsFloat;
                  end;
               DM1.Query2.Close;
               DM1.Query2.SQL.Clear;
               DM1.Query2.SQL.Add('Select max(PICMSA),max(PICMSB) from CADUF where '
                                 +iif(DM1.Qr_TID.locate('TINOME','CADUF',[]),'',' PCODEMP=0'+IntToStr(codemp)+' and ')
                                 +' PUF<>'+chr(39)+DM1.Tb_EmpUF.Value+chr(39));
               DM1.Query2.Open;
               if DM1.Tb_ProPDTABICM.Value='B' then
                  DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[1].AsFloat
               else
                  DM5.Tb_ProALIQINT.Value:=DM1.Query2.Fields[0].AsFloat;
               end;
            DM5.Tb_ProALIQIPI.Value      :=DM1.Tb_ProPDIPI.Value;
            DM5.Tb_ProVALIPI.Value       :=DM1.Tb_ProPDPRECO1.Value*DM1.Tb_ProPDIPI.Value/100;
            DM5.Tb_ProREFERENCIA.Value   :=DM1.Tb_ProPDMARCA.Value;
            DM5.Tb_ProCREDOUT.Value      :=0;
            DM5.Tb_Pro.Post;
            end;
         DM5.Qr_R60I.Next;
         end;
      end;
   // fim dos cupons






   DM5.Tb_Pro.First;
   While not DM5.Tb_Pro.Eof do
      begin
      mlinha:=insere(DM5.Tb_ProCODPRO.AsString,'0',6)+' ';
      mlinha:=mlinha+insere2(DM5.Tb_ProDESCRICAO.AsString,' ',40)+' ';
      mlinha:=mlinha+insere2(DM5.Tb_ProCLAS_FISCAL.AsString,' ',10)+' ';
      mlinha:=mlinha+insere2(DM5.Tb_ProUNIDADE.AsString,' ',03)+' ';
      mlinha:=mlinha+insere(DM5.Tb_ProSITTRI.AsString,'0',03)+' ';
      mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProALIQEST.Value,2)*100),'0',06)+' ';
      mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProALIQINT.Value,2)*100),'0',07)+' ';
      mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProRED.Value,2)*100),'0',12)+' ';
      mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProIVA.Value,2)*100),'0',07)+' ';
      mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProALIQIPI.Value,2)*100),'0',07)+' ';
      mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProVALIPI.Value,2)*100),'0',14)+' ';
      mlinha:=mlinha+insere2(DM5.Tb_ProREFERENCIA.Value,' ',10)+' ';
      mlinha:=mlinha+insere(Formatfloat('000', Arredonda(DM5.Tb_ProCREDOUT.Value,2)*100),'0',07);
      Writeln(fProduto,mlinha);
      DM5.Tb_Pro.Next;
      end;
   CloseFile(fcab);
   CloseFile(fTrib);
   CloseFile(fProd);
   CloseFile(fNFrete);
   CloseFile(fProduto);
   CloseFile(fItemCup);
   }
  end
else // modelo da contabilibada da MEDCENTRO
   begin
   Application.CreateForm(Tfrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Gerando arquivo, Aguarde...';
   Frm_Agde.gb_progres.Visible:=true;
   Frm_Agde.Show;
   verteclado(0);
   mpqtd:=0;
   mpund:=0;
   minstrucao_qrns:='';

   if RGTNF.ItemIndex<>2 then
      begin
      if RG_DOC.ItemIndex<>2 then
         begin
         minstrucao_qrns:=
         fLerdm5qrns(iif(rg_doc.itemindex=1, true,false) ,minstrucao_qrns, 2,RG_DOC.ItemIndex,0,fsonumero(NumNF.text),fStringtodatetime(MDT1.Text),fStringtodatetime(MDT2.Text),UF.Text);
         end;
      if RG_DOC.ItemIndex<>1 then
         begin
         if RG_DOC.ItemIndex=0 then
            minstrucao_qrns:=minstrucao_qrns + ' union all ';
         minstrucao_qrns:=
         fLerdm5qrns(true,minstrucao_qrns, 2,RG_DOC.ItemIndex,0,fsonumero(NumNF.text),fStringtodatetime(MDT1.Text),fStringtodatetime(MDT2.Text),UF.Text);
         end;

      mpqtd:=mpqtd+DM5.Qr_NS.RecordCount;
      end;
{
   if RGTNF.ItemIndex<>1 then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(0,'CADFOR' ,'FCODEMP','NECODEMP' ,'FCODFOR' ,'NECODFOR');

      DM5.QR_NE.Close;
      DM5.Qr_NE.SQL.Clear;
      DM5.Qr_Ne.SQL.Add('Select  NECODEMP, NECODFOR '
                       +'       ,NENUMERO '
                       +'       ,NESERIE '
                       +'       ,TO_CHAR(NECFO) AS NECFO '
                       +'       ,NEDTENT '
                       +'       ,NEDTEMIS '
                       +'       ,NESUBSER '
                       +'        ,NEBASEN '
                       +'       ,NEICMSN '
                       +'       ,NEBASER '
                       +'       ,NEICMSR '
                       +'       ,NEFRETE '
                       +'       ,NESEG '
                       +'       ,NEOUTRAS '
                       +'       ,NEIPI '
                       +'       ,NETOTMER '
                       +'       ,NETOTNOT '
                       +'        ,NETOTDES '
                       +'       ,NETOTPOS '
                       +'       ,NETOTNEG '
                       +'       ,NETOTINA '
                       +'       ,NECHAVEP '
                       +'       ,(NECHAVEP-NECHAVEP) AS NEORDEM '
                       +'       ,NEALIQ '
                       +'        ,NETIPO '
                       +'       ,NEAVAP '

                       +'       ,NEMODELO '
                       +'       ,FUF '
                       +'       ,NESTATUS '
                       +'        ,FRAZAO '
                       +'       ,FCGC '
                       +'       ,FIE '
                       +'       ,NEIPIFRETE '
                       +'       ,NELOTSEQ_CP '
                       +'       ,NEISENTAS '
                       +'       ,NEFRETEPC '
                       +'       ,NEOUTNINC+NEOUTDESP AS NEOUTNINC  '
                       +'       ,NEOUTDESP '
                       +'       ,'+chr(39)+'E'+chr(39)+' AS ORIGEM '
                       +'        FROM CADNE'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                    +' NESTATUS<9 ');
      If Trim(UF.Text)<>'' then
         begin
         DM5.Qr_NE.SQL.Add(' and  FUF='+chr(39)+UF.Text+chr(39));
         end;
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NEDTENT>='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NEDTENT<='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT2.Text))+chr(39));

      //DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');

      DM5.Qr_Ne.SQL.add(' union all ');

      // inicio das saidas

      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      fInnerJoin(0,'CADCLI' ,'CCODEMP','NSCODEMP' ,'CCODCLI' ,'NSCODCLI');

      DM5.Qr_Ne.SQL.Add('Select  NSCODEMP AS  NECODEMP, NSCODCLI AS NECODFOR '
                       +'       ,NSNUMERO AS NENUMERO '
                       +'       ,NSSERIE AS NESERIE '
                       +'       ,NSCFO1 AS NECFO '
                       +'       ,NSDTEMIS AS NEDTENT '
                       +'       ,NSDTEMIS AS NEDTEMIS '
                       +'       ,NSSUBSER AS NESUBSER '
                       +'       ,NSBASEN AS NEBASEN '
                       +'       ,NSICMSN AS NEICMSN '
                       +'       ,(NSBASERP+NSBASERN+NSBASERI) AS NEBASER '
                       +'       ,(NSICMSRP+NSICMSRN+NSICMSRI) AS NEICMSR '
                       +'       ,NSFRETE AS NEFRETE '
                       +'       ,NSICMS_BCSEG AS NESEG '
                       +'       ,NSTOTOUT AS NEOUTRAS '
                       +'       ,(NSIPIP+NSIPIN+NSIPII) AS NEIPI '
                       +'       ,(NSTOTPROP+NSTOTPRON+NSTOTPROI) AS NETOTMER '
                       +'       ,NSTOTNOTA AS NETOTNOT '
                       +'       ,(NSTOTNOTA-NSTOTNOTA) AS  NETOTDES '
                       +'       ,NSTOTPROP AS NETOTPOS '
                       +'       ,NSTOTPRON AS  NETOTNEG '
                       +'       ,NSTOTPROI AS  NETOTINA '
                       +'       ,NSCHAVEP  AS NECHAVEP '
                       +'       ,NSORDEMP  AS NEORDEM '
                       +'       ,NSALIQ   AS NEALIQ '
                       +'       ,NSTIPO  AS NETIPO '
                       +'       ,NSAVAP  AS NEAVAP '
                       +'       ,NSMODELO AS NEMODELO '
                       +'       ,CUF AS  FUF '
                       +'       ,NSSTATUS AS NESTATUS '
                       +'       ,CRAZAO AS  FRAZAO '
                       +'       ,CCNPJ AS  FCGC '
                       +'       ,CIE AS FIE '
                       +'       ,(NSTOTNOTA-NSTOTNOTA) AS NEIPIFRETE '
                       +'       ,NSLOTSEQ_CP AS  NELOTSEQ_CP '
                       +'       ,NSTOTISEN AS  NEISENTAS '
                       +'       ,NSFRETEPC AS NEFRETEPC '
                       +'       ,(NSTOTOUT) AS NEOUTNINC '
                       +'       ,0 AS NEOUTDESP '
                      +'       ,'+chr(39)+'S'+chr(39)+' AS ORIGEM '
                       +'        FROM CADNS'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
                    +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+IntToStr(codemp)+' and ')
                    +' NSSTATUS<10 ');
      If Trim(UF.Text)<>'' then
         begin
         DM5.Qr_NE.SQL.Add(' and  CUF='+chr(39)+UF.Text+chr(39));
         end;
      if Trim(MDT1.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NSDTEMIS>='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT1.Text))+chr(39));
      if Trim(MDT2.Text)<>'/  /' then
         DM5.Qr_NE.SQL.Add(' and  NSDTEMIS<='+chr(39)+FormatDatetime(fdt, StrtoDAte(MDT2.Text))+chr(39));

      DM5.Qr_Ne.SQL.Add(' and NSTIPO=1 ');


      // termino das saidas




      DM5.Qr_NE.SQL.Add(' order by NEDTENT, NENUMERO');
   //   DM5.Qr_Ne.Sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      DM5.Qr_NE.Open;
      end;
}
   if Trim(MPASTA.Text)='' then
      MPASTA.Text:='\';
   if not DirectoryExists(MPASTA.Text) then
      begin
      fmensagem('Pasta destino não Encontrada!',0,['0'],0);
      exit;
      end;
   MPASTA.Text:=Trim(MPASTA.Text);
   if MPASTA.Text[length(MPASTA.Text)]<>'\' then
      MPASTA.Text:=MPASTA.Text+'\';
   // notas de Entradas
   Assignfile(fSaida,   MPASTA.Text+NARQ.Text);
   Rewrite(fSaida);
   mespaco:=' ';
   mSeqFrete :=0;
   mSequencia:=0;
   mplid:=0;
   While not DM5.Qr_NS.eof do
      begin
      mplid:=mplid+1;
      mSeqNF:=0;

      Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
      if DM5.Qr_NSNSNUMERO.Value=0 then
         begin
         DM5.Qr_NS.Next;
         Continue;
         end;
      if DM5.Qr_NSNSCHAVEP.Value>0 then
         begin
         DM5.Qr_ProSoma.Close;
         DM5.Qr_ProSoma.SQL.Clear;
         DM5.Qr_ProSoma.SQL.Add('Select sum(P2TOTDES)  AS TOTDES '
                               +'       ,sum(P2BASEN)  AS BASEN '
                               +'       ,sum(P2BASER)  AS BASER '
                               +'       ,sum(P2ICMSN)  AS ICMSN '
                               +'       ,sum(P2ICMSNR) AS ICMSNR '
                               +'       ,sum(P2BCINR)  AS BCINR '
                               +'       ,sum(P2ICMSR)  AS ICMSR '
                               +'       ,sum(P2VALIPI)  AS VALIPI '
                               +'       ,sum(P2ISENTAS) AS ISENTAS '
                               +'       ,sum(P2TOTOUT)  AS OUTRAS '
                               +'       ,sum(P2TOTLIQ) AS TOTLIQ '
                               +'        ,P2CFO,P2ALIQ,P2ALIQNR,P2ALIPI AS ALIPI ');
         if DM5.Qr_NSNUMECF.AsFloat>0 then
            DM5.Qr_ProSoma.SQL.Add(',P2CFOSUBECF AS CFONF ')
         else
            DM5.Qr_ProSoma.SQL.Add(',P2CFO AS CFONF ');
         DM5.Qr_ProSoma.Sql.add(' from CADP02 '
                               +' where P2CODEMP=0'+DM5.Qr_NSNSCODEMP.AsString
                               +' and   P2LOTSEQ=0'+DM5.Qr_NSNSLOTSEQ_CP.AsString
                               +' and   P2CHAVE=0'+DM5.Qr_NSNSCHAVEP.AsString
                               +' and   P2ORDEM=0'+DM5.Qr_NSNSORDEMP.AsString);
         if DM5.Qr_NSNUMECF.AsFloat>0 then
            DM5.Qr_ProSoma.Sql.add(' group by P2CFOSUBECF,P2CFO,P2ALIQ,P2ALIQNR,P2ALIPI')
         else
            DM5.Qr_ProSoma.Sql.add(' group by P2CFO,P2ALIQ,P2ALIQNR,P2ALIPI');
         DM5.Qr_ProSoma.Open;
         mNumNf_Ant:=0;
         While not DM5.Qr_ProSoma.Eof do
            begin
            mlinha:='1';
            mlinha:=mlinha+'S';
            mlinha:=mlinha+'NF ';
            mlinha:=mlinha+insere(DM5.Qr_NSNSSERIE.Value,' ',03);
            mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
            mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
            if mNumNf_Ant<>DM5.Qr_NSNSNUMERO.AsFloat then
               mSeqDoc:=1
            else
               mSeqDoc:=mSeqDoc+1;
            mNumNf_Ant:=DM5.Qr_NSNSNUMERO.AsFloat;

            mSeqNF:=mSeqNF+1;
            mlinha:=mlinha+insere(IntToStr(mSeqNF),'0',2); // sequencia complementar

//            mlinha:=mlinha+insere(IntToStr(mSeqDoc),'0',2); // sequencia complementar
            mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
            mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
            mlinha:=mlinha+insere2(DM5.Qr_ProSomaP2CFO.AsString,'0',04);

            if DM5.Qr_ProSomaP2ALIQ.Value>0 then
               mAliq:=DM5.Qr_ProSomaP2ALIQ.Value
            else
               mAliq:=DM5.Qr_ProSomaP2ALIQNR.Value;
            mlinha:=mlinha+insere2(FBuscaCompCFOP(DM5.Qr_ProSomaP2CFO.AsFloat,maliq),' ',03); // codigo de observação do CFOP
            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaTOTLIQ.Value+DM5.Qr_ProSomaICMSR.Value)*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaBASEN.Value+DM5.Qr_ProSomaBCINR.Value)*100),'0',14);
            if DM5.Qr_ProSomaP2ALIQ.Value>0 then
               mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaP2ALIQ.Value*10000),'0',07)
            else
               mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaP2ALIQNR.Value*10000),'0',07);

            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaICMSN.Value+DM5.Qr_ProSomaICMSNR.Value
                                                    )*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaISENTAS.Value*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaOUTRAS.Value*100),'0',14);
            mbaseipi:=0;
            mlinha:=mlinha+insere(FormatFloat('000',mbaseipi*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaVALIPI.Value)*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // isentas ipi
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // outras ipi
            mlinha:=mlinha+insere2(' ',' ',15);
            mlinha:=mlinha+insere(DM5.Qr_NScgc.AsString,'0',14);
            IF dm5.Qr_NSNSAVAP.Value=0 then
               mavista:=true
            else
               mavista:=false;
            if mavista then
               mlinha:=mlinha+'V'
            else
               mlinha:=mlinha+'P';
            mlinha:=mlinha+insere2(DM5.Qr_NSuf.Value,' ',02);
            mlinha:=mlinha+insere2(' ',' ',08);

            mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_ProSomaICMSR.Value)*100),'0',14);
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',10); // código do municipio/cod.servico
            mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // preço de venda a varejo
            mlinha:=mlinha+insere2(DM5.Qr_NSrazsoc.Value,' ',50);
            mlinha:=mlinha+insere2(' ',' ',02);
         //   mlinha:=mlinha+insere (DM5.Qr_Nsns eNEFRETEPC.AsString,'0',01);
            if DM5.Qr_NSNSFRETEPC.AsInteger<1 then
               mlinha:=mlinha+FormatFloat('0', 2)
            else
               mlinha:=mlinha+FormatFloat('0', DM5.Qr_NSNSFRETEPC.Value);
            if DM5.Qr_NSNSSTATUS.Value=9 then
               mlinha:=mlinha+'N' // nota cancelada N-nao S-Sim
            else
               mlinha:=mlinha+'N'; // nota cancelada N-nao S-Sim
            mlinha:=mlinha+insere2(' ',' ',15); // num.reg.exportação/importação
            mlinha:=mlinha+insere2(' ',' ',12); // num.despacho exportaão
            mlinha:=mlinha+'  '; // codigo auxiliar CNPJ/CPF
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_ProSomaICMSN.Value*100),'0',14);
            Writeln(fsaida,mlinha);
            DM5.Qr_ProSoma.Next;
            end

         end
      else
         begin
         mlinha:='1';
         mlinha:=mlinha+'S';
         mlinha:=mlinha+'NF ';
         mlinha:=mlinha+insere(DM5.Qr_NSNSSERIE.Value,' ',03);
         mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
         mlinha:=mlinha+insere(DM5.Qr_NSNSNUMERO.AsString,'0',6);
         mSeqNF:=mSeqNF+1;
         mlinha:=mlinha+insere(IntToStr(mSeqNF),'0',2); // sequencia complementar

         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
         mlinha:=mlinha+FormatDatetime(fdt4, DM5.Qr_NSNSDTEMIS.Value);
         mlinha:=mlinha+insere2(DM5.Qr_NSNSCFO1.AsString,'0',04);

         if DM5.Qr_ProSomaP2ALIQ.Value>0 then
            mAliq:=DM5.Qr_NSNSALIQ.Value
         else
            mAliq:=DM5.Qr_NSNSALIQ2.Value;
         mlinha:=mlinha+insere2(FBuscaCompCFOP(DM5.Qr_NSNSCFO1.AsFloat,maliq),' ',03); // codigo de observação do CFOP
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSTOTNOTA.Value*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSBASENI.Value+DM5.Qr_NSNSBASENP.Value+DM5.Qr_NSNSBASENN.Value
                                                 +DM5.Qr_NSNSBASENRI.Value+DM5.Qr_NSNSBASENRP.Value+DM5.Qr_NSNSBASENRN.Value      )*100),'0',14);
         if DM5.Qr_NSNSALIQ.Value>0 then
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSALIQ.Value*10000),'0',07)
         else
            mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSALIQ2.Value*10000),'0',07);

         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSICMSNI.Value+DM5.Qr_NSNSICMSNP.Value+DM5.Qr_NSNSICMSNN.Value
                                                 +DM5.Qr_NSNSICMSNRI.Value+DM5.Qr_NSNSICMSNRP.Value+DM5.Qr_NSNSICMSNRN.Value
                                                 )*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSTOTISEN.Value*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSTOTOUT.Value*100),'0',14);
         mbaseipi:=0;
         mlinha:=mlinha+insere(FormatFloat('000',mbaseipi*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSIPII.Value+DM5.Qr_NSNSIPIP.Value+DM5.Qr_NSNSIPIN.Value+DM5.Qr_NSNSFRETE.Value)*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // isentas ipi
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // outras ipi
         mlinha:=mlinha+insere2(' ',' ',15);
         mlinha:=mlinha+insere(DM5.Qr_NScgc.AsString,'0',14);
         IF dm5.Qr_NSNSAVAP.Value=0 then
            mavista:=true
         else
            mavista:=false;
         if mavista then
            mlinha:=mlinha+'V'
         else
            mlinha:=mlinha+'P';
         mlinha:=mlinha+insere2(DM5.Qr_NSuf.Value,' ',02);
         mlinha:=mlinha+insere2(' ',' ',08);

         mlinha:=mlinha+insere(FormatFloat('000',(DM5.Qr_NSNSICMSRI.Value+DM5.Qr_NSNSICMSRP.Value+DM5.Qr_NSNSICMSRN.Value)*100),'0',14);
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',10); // código do municipio/cod.servico
         mlinha:=mlinha+insere(FormatFloat('000',0),'0',14); // preço de venda a varejo
         mlinha:=mlinha+insere2(DM5.Qr_NSrazsoc.Value,' ',50);
         mlinha:=mlinha+insere2(' ',' ',02);
      //   mlinha:=mlinha+insere (DM5.Qr_Nsns eNEFRETEPC.AsString,'0',01);
         if DM5.Qr_NSNSFRETEPC.AsInteger<1 then
            mlinha:=mlinha+FormatFloat('0', 2)
         else
            mlinha:=mlinha+FormatFloat('0', DM5.Qr_NSNSFRETEPC.Value);
         if DM5.Qr_NSNSSTATUS.Value=9 then
            mlinha:=mlinha+'N' // nota cancelada N-nao S-Sim
         else
            mlinha:=mlinha+'N'; // nota cancelada N-nao S-Sim
         mlinha:=mlinha+insere2(' ',' ',15); // num.reg.exportação/importação
         mlinha:=mlinha+insere2(' ',' ',12); // num.despacho exportaão
         mlinha:=mlinha+'  '; // codigo auxiliar CNPJ/CPF
         mlinha:=mlinha+insere(FormatFloat('000',DM5.Qr_NSNSICMSN.Value*100),'0',14);
         Writeln(fsaida,mlinha);
         end;
      DM5.Qr_NS.Next;
      end;
   CloseFile(fSaida);
   end;



Frm_Agde.Label1.Caption:='Concluido!';
Frm_Agde.Label1.Update;

end;

procedure TFrm_ExpCont01.SB01Click(Sender: TObject);
begin
testeform := TFrm_ExpCont01(FindGlobalComponent('frm_defbac'));
if (testeform=nil)  then
   Application.CreateForm(TFrm_DefBac, Frm_DefBac);
frm_DefBac.Caption:='Definindo o caminho para os arquivos';
Frm_DefBac.ShowModal;

if trim(Frm_DefBac.mcam)<>'' then
   MPASTA.Text:=Frm_DefBac.mcam;
FreeAndNIl(Frm_DefBac);


end;

procedure TFrm_ExpCont01.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_EXPCONT01','');
if Trim(MPASTA.Text)<>'' then
   fGravaPadroes(0,'MPASTA'     ,'text'       ,'_EXPCONT01',MPASTA.Text);

fGravaPadroes(0,'RGTNF'         ,'itemindex' ,'_EXPCONT01',IntTostr(RGTNF.ItemIndex));
fGravaPadroes(0,'RG_DOC'        ,'itemindex' ,'_EXPCONT01',IntTostr(RG_DOC.ItemIndex));
fGravaPadroes(0,'RG_MODELO'     ,'itemindex' ,'_EXPCONT01',IntTostr(RG_MODELO.ItemIndex));


end;

procedure TFrm_ExpCont01.txt_cfopExit(Sender: TObject);
begin
txt_cfop.Text:=FormatFloat('0000', fSonumero(txt_cfop.text));

end;

procedure TFrm_ExpCont01.txt_aliqExit(Sender: TObject);
begin
txt_aliq.Text:=FormatFloat(mcasas, ValFloat(txt_aliq.text));

end;

procedure TFrm_ExpCont01.bbEditarClick(Sender: TObject);
begin
if ValInt(STG_CFOP_COMP.Cells[STG_CFOP_COMP.Col,STG_CFOP_COMP.row])=0 then
   begin
   fmensagem('Nao a item a ser alterado!',0,['0'],0);
   txt_cfop.SetFocus;
   end
else

mcomp_oper      :=1;
mcomp_col_edit  :=STG_CFOP_COMP.row;
txt_cfop.Text   :=STG_CFOP_COMP.Cells[00,mcomp_col_edit];
txt_aliq.Text   :=STG_CFOP_COMP.Cells[01,mcomp_col_edit];
txt_codcomp.Text:=STG_CFOP_COMP.Cells[02,mcomp_col_edit];
lbl_sit.Caption:='Alterando';
txt_cfop.SetFocus;
end;

procedure TFrm_ExpCont01.txt_cfopEnter(Sender: TObject);
begin
if ValInt(txt_cfop.Text)=0 then
   lbl_sit.Caption:='Incluindo';

end;

procedure TFrm_ExpCont01.bbCancelarClick(Sender: TObject);
begin
mcomp_oper    :=0;
mcomp_col_edit:=0;
lbl_sit.Caption:='';
txt_cfop.Text  :='';
txt_aliq.Text  :='';
txt_codcomp.Text  :='';
txt_cfop.SetFocus;


end;

procedure TFrm_ExpCont01.bbExcluirClick(Sender: TObject);
var
x: Integer;
begin
x:=STG_CFOP_COMP.Row;

if ValInt(STG_CFOP_COMP.Cells[00,x])=0 then
   exit;
if fMensagem('Quer realmente excluir o item selecionado?',0,['1','2'],2)<>mrYes then
   exit;

if STG_CFOP_COMP.RowCount=2 then
   STG_CFOP_COMP.Rows[1].Clear
else
   begin
   for x:=STG_CFOP_COMP.Row to STG_CFOP_COMP.RowCount-1 do
      begin
      STG_CFOP_COMP.Cells[00,x]:=STG_CFOP_COMP.Cells[00,x+1];
      STG_CFOP_COMP.Cells[01,x]:=STG_CFOP_COMP.Cells[01,x+1];
      STG_CFOP_COMP.Cells[02,x]:=STG_CFOP_COMP.Cells[02,x+1];
      end;
   STG_CFOP_COMP.RowCount:=STG_CFOP_COMP.RowCount-1;
   end;

end;

procedure TFrm_ExpCont01.SpeedButton1Click(Sender: TObject);
var
x: Integer;
begin

fDeletaPadroes(-1,'_EXPCONT01','');
for x:=1 to STG_CFOP_COMP.RowCount do
   begin
   if valint(STG_CFOP_COMP.Cells[00,x])<>0 then
      fGravaPadroes(-1,'STG_CFOP_COMP'    ,'itemindex','_EXPCONT01' ,insere(Inttostr(x),'0',4)+'-'+insere(STG_CFOP_COMP.Cells[00,x],'0',04)+'-'+insere(STG_CFOP_COMP.Cells[01,x],' ',08)
                                                            +'-'+insere(STG_CFOP_COMP.Cells[02,x],'0',03));
   end;

end;

procedure TFrm_ExpCont01.STG_CFOP_COMPDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
  colunas: String;
begin
if ((arow>0) and (acol>0)) then
//Pega o texto da célula
  begin
  Texto := STG_CFOP_COMP.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_CFOP_COMP.Canvas.TextWidth(Texto);
  AlturaTexto := STG_CFOP_COMP.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_CFOP_COMP.Canvas.TextRect(Rect, X, Y, Texto);
  end;



end;

procedure TFrm_ExpCont01.txt_codcompExit(Sender: TObject);
begin
if txt_aliq.Focused then
   exit;
if mcomp_oper=0 then
   begin
   mcomp_col_edit:=STG_CFOP_COMP.RowCount;
   STG_CFOP_COMP.RowCount:=mcomp_col_edit+1;
   end;

STG_CFOP_COMP.Cells[00,mcomp_col_edit]:=txt_cfop.Text;
STG_CFOP_COMP.Cells[01,mcomp_col_edit]:=txt_aliq.Text;
STG_CFOP_COMP.Cells[02,mcomp_col_edit]:=txt_codcomp.Text;
bbCancelarClick(self);

end;
function TFrm_ExpCont01.FBuscaCompCFOP(pCfop,pAliq: Real): String;
var
x: Integer;
mResult:String;
begin
mResult:='   ';
for x:=1 to STG_CFOP_COMP.RowCount do
   begin
   if (ValFloat(STG_CFOP_COMP.Cells[00,x])=pCfop) and (ValFloat(STG_CFOP_COMP.Cells[01,x])=pAliq) then
      begin
      mResult:=STG_CFOP_COMP.Cells[02,x];
      break;
      end;
   end;
result:=mResult;
end;

procedure TFrm_ExpCont01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_Tab05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, S_DM1, S_DM2,func, db, dbtables, RDprint,
  S_For, S_Ram, S_TCon, S_GPro, S_TipPro, Gauges, S_SQL, Mask,lerarq;

type
  TFrm_Tab05 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    Gauge1: TGauge;
    Label6: TLabel;
    NUMCOL: TEdit;
    Label7: TLabel;
    INTCOL: TEdit;
    Label8: TLabel;
    RG_TPCOL: TRadioGroup;
    CB_MPAGGR: TCheckBox;
    CB_GRUPO: TCheckBox;
    CB_AVPTPI: TCheckBox;
    CB_SGRUPO: TCheckBox;
    CB_AVPIPF: TCheckBox;
    CB_MPAGSG: TCheckBox;
    RG_PERIODO: TGroupBox;
    Label11: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label10: TLabel;
    Label1: TLabel;
    MES: TEdit;
    ANO: TEdit;
    Label2: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure INTCOLKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fIRPerCab(pTabOri: String;mOrigem: Integer): Boolean;
function fIRPerCor(pTabOri: String;mOrigem: Integer): Boolean;
function fcondata(pf1,pf2,pvalor: String; ptipo:Integer): String;
function ftab05irel(pTabOri,pNomeImpres:String; ptipo,pQtdCop: Integer):Boolean;
function ftab05tstsg(pTabOri: String;ptipo: Integer):Boolean;
function ftab05tstgru(ptabOri:String; ptipo: Integer):Boolean;
function fimpext(pvalor: Real; ptipo,porigem,ptfonte,ptcext_qtdl
         ,ptlin,ptcext_1lp,ptcext_2lp,ptcext_3lp
         ,ptcext_1lt,ptcext_2lt,ptcext_3lt
         ,ptcext_1ic,ptcext_2ic,ptcext_3ic:Integer): Boolean;

var
  Frm_Tab05: TFrm_Tab05;
  mfonte: TTipoFonte;
  mnumcol: Integer;
  mdetncol: Integer;
  mGrupo,mGrupoA,mSG,mSGA: String;
  mtam:    Integer=0;
  maux:    String='';
  mlmax:   Integer=0;
  plocori: String;
  pperiodo: String;
  pTextoExtra: String;
  pTextoExtra02: String;
  mpaggr: Boolean;
  mpagsg: Boolean;
  mnomrel: String;
  
implementation

uses S_Per2, S_Impres,   S_Tab_CP, S_Tab_Pro, S_Tab_LDR, S_Tab_AJ,
     S_Tab_Gru, S_Tab_Ven, S_Tab_CCU, S_Tab_Cli, S_Tab_Dep, S_Tab_PV,
  S_Tab_Con, S_Tab_NS,S_Tab_Tra, S_Tab_Usr, S_Tab_CR, S_Tab_Tip, S_Tab_UF,
  S_Tab_PF, S_Tab_Bco, S_Tab_NE,S_Tab_Ped, S_Tab_For, S_Tab_Car, S_Tab_Pen,
  S_EBol, S_Tab_Imo, S_Tab_Vei, S_Tab_Moe, S_Tab_OS, S_Tab_MVei, S_Tab_MImo,
  S_DM4, S_Tab_Loc, S_Tab_Fol, S_Tab_Bai, S_Tab_Ram, S_Tab_Lic;

{$R *.dfm}

procedure TFrm_Tab05.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Tab05.BitBtn1Click(Sender: TObject);
var
x: Integer;
begin
if MES.Visible then
   begin
   if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
      begin
      fMensagem('Mês Inválido.',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   end;
mpaggr:=iif(CB_MPAGGR.Checked,true,false);
mpagsg:=iif(CB_MPAGSG.Checked,true,false);

rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
//rpqtdlp:=DM1.Tb_TDVCATCQTD 60;
fnumcol:=StrtoInt('0'+NUMCOL.Text);
fintcol:=StrToInt('0'+INTCOL.Text);
ftpcol :=RG_TPCOL.ItemIndex;



Frm_SQL.STG_COND.RowCount:=1;
Frm_SQl.STG_COND.rows[0].Clear;
if Trim(MDT1.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='>=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT1.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   x:=Frm_SQL.STG_COND.RowCount;
   Frm_SQL.STG_COND.RowCount:=x+1;
   Frm_SQL.STG_COND.Rows[x].Clear;
   Frm_SQL.STG_COND.Cells[00,x-1]:='';
   Frm_SQL.STG_COND.Cells[01,x-1]:=DM1.Tb_TDVCATCPERIODO.Value;
   Frm_SQl.STG_COND.Cells[02,x-1]:='<=';
   Frm_SQL.STG_COND.Cells[03,x-1]:='VARCAR';
   Frm_SQL.STG_COND.Cells[04,x-1]:=FormatDateTime(fdt, StrtoDate(MDT2.Text));
   Frm_SQl.STG_COND.Cells[05,x-1]:='S';
   Frm_SQL.STG_COND.Cells[06,x-1]:='';
   end;


x:=1;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   if valfloat(mes.Text)<1 then
      begin
      fMensagem('Mês Invalido!',0,['0'],0);
      MES.SetFocus;
      exit;
      end;
   x:=4;
   fmontadiv('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mes.Text,ANO.Text,2);
   end;

DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,'',x));
DM2.Qr_ImpRel.Open;
if DM2.Qr_ImpRel.Eof then
   begin
   fMensagem('Nada a ser impresso na condição Solicitada',0,['0'],0);
   exit;
   end;
if CB_GRUPO.Checked  then pimpg:=True  else pimpg :=False;
if CB_SGRUPO.Checked then pimpsg:=True else pimpsg:=False;
if CB_AVPTPI.Checked then pavptpi:=true else pavptpi:=False;
if CB_AVPIPF.Checked then pavpipf:= true else pavpipf:=False;
if RG_PERIODO.Visible then
   pperiodo:=fperiodo(0,mdt1.text,mdt2.Text)
else
   pperiodo:='';
plocori:='FRM_TAB05';
GroupBox2.Visible:=True;
ftab05irel('CADTDV','',1,0);
GroupBox2.Visible:=False;
end;

function fIRPerCab(pTabOri: String;mOrigem: Integer): Boolean;
var
mlinha: Integer;

begin

DM1.Qr_TDVCR.Close;
DM1.Qr_TDVCR.SQL.Clear;
DM1.Qr_TDVCR.Sql.add('Select * from CADTDV where '
                    +iif(DM1.Qr_Tid.Locate('TINOME',PTabOri,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                    +' TDOC='+chr(39)+mreltab+chr(39)
                    +' and TNOME='+chr(39)+mnomrel+chr(39)
                    +' and TLOCAL='+IntToStr(mOrigem));
DM1.Qr_TDVCR.Open;

if DM1.Qr_TDVCR.Eof then
   exit;
if (mOrigem=0)  then
   rppag:=rppag+1;
if mOrigem=99 then
   begin
   if pAVPIPF then
      begin
      rppag:=rppag+1;
      Frm_Impres.RDprint1.Novapagina;
      end;
   end;
if mOrigem=98 then
   begin
   if pAVPTPI then
      begin
      rppag:=rppag+1;
      end;
  end;
mlmax:=0;
While not DM1.Qr_TDVCR.Eof do
   begin
   if Trim(DM1.Qr_TDVCRTCOND01.Value)<>'' then
      begin

      mcinst :='';
      mcinst2:='';
      mcinst3:='';
      mcinst4:='';

      if trim(DM1.Qr_TDVCRTCOND_02_02.AsString)<>'' then
         begin
         mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCOND_02_01.Value)).AsString;
         if Trim(DM1.Tb_TDVTCOND_02_T2.AsString)='V' then
            mcinst2:=DM1.Tb_TDVTCOND_02_02.AsString
         else
            mcinst2:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCOND_02_02.Value)).AsString;
         end;

      if trim(DM1.Qr_TDVCRTCOND_03_02.AsString)<>'' then
         begin
         mcinst3:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCOND_03_01.Value)).AsString;
         if Trim(DM1.Tb_TDVTCOND_03_T2.AsString)='V' then
            mcinst4:=DM1.Tb_TDVTCOND_03_02.AsString
         else
            mcinst4:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCOND_03_02.Value)).AsString;
         end;


      if DM1.Qr_TDVCRTCONDT2.Value='V' then
         begin

         if not FIRPerCond(DM1.Qr_TDVCRTCONDT1.Value,DM1.Qr_TDVCRTCONDT2.Value,
                           DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCOND01.Value)).AsString,
                           DM1.Qr_TDVCRTCOND02.Value,
                           DM1.Qr_TDVCRTCONDOP.Value,

                           DM1.Qr_TDVCRTCOND_CONT.Value,

                           DM1.Qr_TDVCRTCOND_02_T1.Value,DM1.Qr_TDVCRTCOND_02_T2.Value,
                           mcinst,
                           mcinst2,
                           DM1.Qr_TDVCRTCOND_02_OP.Value,

                           DM1.Qr_TDVCRTCOND_CONT03.Value,
                           DM1.Qr_TDVCRTCOND_03_T1.Value,DM1.Qr_TDVCRTCOND_03_T2.Value,
                           mcinst3,
                           mcinst4,
                           DM1.Qr_TDVCRTCOND_03_OP.Value) then
            begin
            DM1.Qr_TDVCR.Next;
            Continue;
            end;
         end
      else
         begin
         if not FIRPerCond(DM1.Qr_TDVCRTCONDT1.Value,DM1.Qr_TDVCRTCONDT2.Value,
                           DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCOND01.Value)).AsString,
                           DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCOND02.Value)).AsString,
                           DM1.Qr_TDVCRTCONDOP.Value,
                           DM1.Qr_TDVCRTCOND_CONT.Value,
                           DM1.Qr_TDVCRTCOND_02_T1.Value,DM1.Qr_TDVCRTCOND_02_T2.Value,
                           mcinst,
                           mcinst2,
                           DM1.Qr_TDVCRTCOND_02_OP.Value,
                           DM1.Qr_TDVCRTCOND_CONT03.Value,
                           DM1.Qr_TDVCRTCOND_03_T1.Value,DM1.Qr_TDVCRTCOND_03_T2.Value,
                           mcinst3,
                           mcinst4,
                           DM1.Qr_TDVCRTCOND_03_OP.Value) then
            begin
            DM1.Qr_TDVCR.Next;
            Continue;
            end;
         end;
      end;
   if DM1.Qr_TDVCRTTAM.IsNull then
      mtam:=0
   else
      mtam:=DM1.Qr_TDVCRTTAM.Asinteger;
   maux:='';
   if (DM1.Qr_TDVCRTTIPO.Value=0) or (DM1.Qr_TDVCRTTIPO.Value=6)  then
      begin
      if (DM1.Qr_TDVCRTTIPOC.Value='D') and
         ((DM2.Qr_ImpRel.FieldByName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).DataType=ftDate)
          or (DM2.Qr_ImpRel.FieldByName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).DataType=ftDateTime)) then
        begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)='' then
            maux:=FormatDateTime(fdt2,DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime)
         else
            maux:=FormatDateTime(Trim(DM1.Qr_TDVCRTFORMATO.Value),
                  DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime);
         end
      else if DM1.Qr_TDVCRTTIPOC.Value='H' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)='' then
            maux:=FormatDateTime(fhr,DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime)
         else
            maux:=FormatDateTime(Trim(DM1.Qr_TDVCRTFORMATO.Value),
                  DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime);
         end
      else if DM1.Qr_TDVCRTTIPOC.Value='N' then
         begin
         if (DM1.Qr_TDVCRTFORMATO.Value='mmm') and
            (DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsFloat>0) and
            (DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsFloat>0) then
            begin
            if pbanco=0 then
               maux:='01/'+FormatFloat('00',DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsFloat)+'/2000'
            else
               maux:=FormatFloat('00',DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsFloat)+'/01/2000';
            maux:=NMes(StrToDate(maux));
            end
         else if DM1.Qr_TDVCRTCEXTENSO.Value=1 then
            begin
            fimpext(DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsFloat,
                   DM1.Qr_TDVCRTCEXTENSO.AsInteger,MOrigem,
                   DM1.Qr_TDVCRTFONTE.AsInteger,
                   DM1.Qr_TDVCRTCEXT_QTDL.AsInteger,
                   DM1.Qr_TDVCRTLIN.AsInteger,
                   DM1.Qr_TDVCRTCEXT_1LP.AsInteger,
                   DM1.Qr_TDVCRTCEXT_2LP.AsInteger,
                   DM1.Qr_TDVCRTCEXT_3LP.AsInteger,
                   DM1.Qr_TDVCRTCEXT_1LT.AsInteger,
                   DM1.Qr_TDVCRTCEXT_2LT.AsInteger,
                   DM1.Qr_TDVCRTCEXT_3LT.AsInteger,
                   DM1.Qr_TDVCRTCEXT_1IC.AsInteger,
                   DM1.Qr_TDVCRTCEXT_2IC.AsInteger,
                   DM1.Qr_TDVCRTCEXT_3IC.AsInteger);
            DM1.Qr_TDVCR.Next;
            continue;
            end
         else if DM1.Qr_TDVCRTCEXTENSO.Value=3 then
            begin
            if (DM1.Qr_TDVCRTFORMATO.Value)<>'' then
               maux:=NumPal(FormatFloat(DM1.Qr_TDVCRTFORMATO.Value, ValFloat(DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString)))
            else
               maux:=NumPal(DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString);
            end
         else if DM1.Qr_TDVCRTCBARRAS.Value=1 then
            begin
            maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString;
            if mtam>0 then
               maux:=insere(maux,'0',mtam);
            maux:=Bar25i(maux);
            end
         else if Trim(DM1.Qr_TDVCRTFORMATO.Value)='' then
            maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString
         else
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),
                  DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsFloat);
         end
      else
         begin
         if (DM1.Qr_TDVCRTTIPOC.Value='D') and (trim(DM1.Qr_TDVCRTFORMATO.Value)<>'') and
            (trim(DM2.Qr_TDVCA_STCMASC.Value)<>'') then
            begin
            maux:=fcondata(DM2.Qr_TDVCA_STCMASC.Value,DM1.Qr_TDVCRTFORMATO.Value,
            DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString,0);
            if trim(maux)='' then
               maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString;
            end
         else
            maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString;
         end;
      end
   else if DM1.Qr_TDVCRTTIPO.Value=5 then
      begin
      if DM1.Qr_TDVCRTTIPOC.Value='D' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)='' then
            maux:=FormatDateTime(fdt2,DM1.Tb_Emp.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime)
         else
            maux:=FormatDateTime(Trim(DM1.Qr_TDVCRTFORMATO.Value),
                  DM1.Tb_Emp.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime);
         end
      else if DM1.Qr_TDVCRTTIPOC.Value='H' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)='' then
            maux:=FormatDateTime(fhr,DM1.Tb_Emp.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime)
         else
            maux:=FormatDateTime(Trim(DM1.Qr_TDVCRTFORMATO.Value),
                  DM1.Tb_Emp.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsDateTime);
         end
      else if DM1.Qr_TDVCRTTIPOC.Value='N' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)='' then
            maux:=DM1.Tb_Emp.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString
         else
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),
                  DM1.Tb_Emp.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsFloat);
         end
      else
         begin
         maux:=DM1.Tb_Emp.fieldbyName(Trim(DM1.Qr_TDVCRTCAMPO.AsString)).AsString;
         end;
      end
   else if DM1.Qr_TDVCRTTIPO.Value=1 then
      maux:=DM1.Qr_TDVCRTCAMPO.Value
   else if DM1.Qr_TDVCRTTIPO.Value=2 then
      begin
      if DM1.Qr_TDVCRTCAMPO.Value='Data' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatDateTime(Trim(DM1.Qr_TDVCRTFORMATO.Value),date)
         else
            maux:=FormatDateTime(fdt2,date);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Hora' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatDateTime(Trim(DM1.Qr_TDVCRTFORMATO.Value),time)
         else
            maux:=FormatDateTime(fhr,time);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Pagina' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),rppag)
         else
            maux:=IntToStr(rppag);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Periodo' then
         begin
         maux:=pperiodo;
         end
      else if DM1.Tb_TDVTCAMPO.Value='Texto Extra' then
         begin
         maux:=pTextoExtra;
         end
      else if DM1.Tb_TDVTCAMPO.Value='Texto Extra 2' then
         begin
         maux:=pTextoExtra02;
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Saldo Inicial' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),psini)
         else
            maux:=FloatToStr(psini);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Venda Periodo' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),pVdaPer)
         else
            maux:=FloatToStr(pVdaPer);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Venda Mes/Ate Dt.Final' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),pVdaMesAtedia)
         else
            maux:=FloatToStr(pVdaMesAtedia);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Venda Periodo Mes/Ant' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),pVdaPerAnt)
         else
            maux:=FloatToStr(pVdaPerAnt);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Venda Mes Ant/Ate Dt.Final' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),pVdaMesAntAtedia)
         else
            maux:=FloatToStr(pVdaMesAntAtedia);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Qtde Mes Ant/Ate Dt.Final' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),pqtdeMesAntAtedia)
         else
            maux:=FloatToStr(pqtdeMesAntAtedia);
         end
      else if DM1.Qr_TDVCRTCAMPO.Value='Qtde Mes/Ate Dt.Final' then
         begin
         if Trim(DM1.Qr_TDVCRTFORMATO.Value)<>'' then
            maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),pqtdeMesAtedia)
         else
            maux:=FloatToStr(pqtdeMesAtedia);
         end
      end
   else if DM1.Qr_TDVCRTTIPO.Value=3 then
      begin
      if (Length(DM1.Qr_TDVCRTCAMPO.AsString)>0) and (Length(DM1.Qr_TDVCRTCAMPO.AsString)>0) then
         maux:=insere2(copy(DM1.Qr_TDVCRTCAMPO.Value,1,1),DM1.Qr_TDVCRTCAMPO.Value[1],mtam)
      else
         maux:=insere2(' ',' ',mtam);
      end
   else if DM1.Qr_TDVCRTTIPO.Value=4 then
      begin
      if Trim(DM1.Qr_TDVCRTFORMATO.Value)='' then
         maux:=FloatToStr(mtopper[DM1.Qr_TDVCRTCAMPO.AsInteger])
      else
         maux:=FormatFloat(Trim(DM1.Qr_TDVCRTFORMATO.Value),mtopper[DM1.Qr_TDVCRTCAMPO.AsInteger]);
      if DM1.Qr_TDVCRTZERVAR.Value=1 Then
         mtopper[DM1.Qr_TDVCRTCAMPO.AsInteger]:=0;
      end
   else if DM1.Qr_TDVCRTTIPO.Value=7 then
      begin
      maux:='';
      mcinst:='';
      if DM2.Tb_JC.Locate('JCNOMCAM',DM1.Qr_TDVCRTCAMPO.Value,[]) then
         begin
         if Trim(DM2.Tb_JCJCCAMPO01.Value)<>'' then
            begin
            mcinst:='';
            if DM2.Tb_JCJCESPACO01.Value>0 then
               maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO01.AsInteger);
            if DM2.Tb_JCJCTCAMPO1.Value=0  then
               mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO01.AsString)).AsString
            else if DM2.Tb_JCJCTCAMPO1.Value=1 then
               mcinst:=DM2.Tb_JCJCCAMPO01.AsString
            else if DM2.Tb_JCJCTCAMPO1.Value=2  then
               mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO01.AsString)).AsString;
            if DM2.Tb_JCJCBRANCOS01.Value=1 then
               mcinst:=TrimLeft(mcinst)
            else if DM2.Tb_JCJCBRANCOS01.Value=2 then
               mcinst:=TrimRight(mcinst)
            else if DM2.Tb_JCJCBRANCOS01.Value=3 then
               mcinst:=Trim(mcinst);
            if (DM2.Tb_JCJCTAMMAX01.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX01.Value) then
               mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX01.AsInteger);
            maux:=maux+mcinst;
            end;

         if Trim(DM2.Tb_JCJCCAMPO02.Value)<>'' then
            begin
            mcinst:='';
            if DM2.Tb_JCJCESPACO02.Value>0 then
               maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO02.AsInteger);
            if DM2.Tb_JCJCTCAMPO2.Value=0  then
               mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO02.AsString)).AsString
            else if DM2.Tb_JCJCTCAMPO2.Value=1 then
               mcinst:=DM2.Tb_JCJCCAMPO02.Value
            else if DM2.Tb_JCJCTCAMPO2.Value=2  then
               mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO02.AsString)).AsString;
            if DM2.Tb_JCJCBRANCOS02.Value=1 then
               mcinst:=TrimLeft(mcinst)
            else if DM2.Tb_JCJCBRANCOS02.Value=2 then
               mcinst:=TrimRight(mcinst)
            else if DM2.Tb_JCJCBRANCOS02.Value=3 then
               mcinst:=Trim(mcinst);
            if (DM2.Tb_JCJCTAMMAX02.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX02.Value) then
               mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX02.AsInteger);
            maux:=maux+mcinst;
            end;

         if Trim(DM2.Tb_JCJCCAMPO03.Value)<>'' then
            begin
            mcinst:='';
            if DM2.Tb_JCJCESPACO03.Value>0 then
               maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO03.AsInteger);
            if DM2.Tb_JCJCTCAMPO3.Value=0  then
               mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO03.AsString)).AsString
            else if DM2.Tb_JCJCTCAMPO3.Value=1 then
               mcinst:=DM2.Tb_JCJCCAMPO03.AsString
            else if DM2.Tb_JCJCTCAMPO3.Value=2  then
               mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO03.AsString)).AsString;
            if DM2.Tb_JCJCBRANCOS03.Value=1 then
               mcinst:=TrimLeft(mcinst)
            else if DM2.Tb_JCJCBRANCOS03.Value=2 then
               mcinst:=TrimRight(mcinst)
            else if DM2.Tb_JCJCBRANCOS03.Value=3 then
               mcinst:=Trim(mcinst);
            if (DM2.Tb_JCJCTAMMAX03.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX03.Value) then
               mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX03.AsInteger);
            maux:=maux+mcinst;
            end;

         if Trim(DM2.Tb_JCJCCAMPO04.Value)<>'' then
            begin
            mcinst:='';
            if DM2.Tb_JCJCESPACO04.Value>0 then
               maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO04.AsInteger);
            if DM2.Tb_JCJCTCAMPO4.Value=0  then
               mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO04.AsString)).AsString
            else if DM2.Tb_JCJCTCAMPO4.Value=1 then
               mcinst:=DM2.Tb_JCJCCAMPO04.AsString
            else if DM2.Tb_JCJCTCAMPO4.Value=2  then
               mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO04.AsString)).AsString;
            if DM2.Tb_JCJCBRANCOS04.Value=1 then
               mcinst:=TrimLeft(mcinst)
            else if DM2.Tb_JCJCBRANCOS04.Value=2 then
               mcinst:=TrimRight(mcinst)
            else if DM2.Tb_JCJCBRANCOS04.Value=3 then
               mcinst:=Trim(mcinst);
            if (DM2.Tb_JCJCTAMMAX04.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX04.Value) then
               mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX04.AsInteger);
            maux:=maux+mcinst;
            end;
         end;
      end;



   if DM1.Qr_TDVCRTFONTE.Value=0 then
      mfonte:=normal
   else if DM1.Qr_TDVCRTFONTE.Value=1 then
      mfonte:=comp12
   else if DM1.Qr_TDVCRTFONTE.Value=2 then
      mfonte:=comp17
   else if DM1.Qr_TDVCRTFONTE.Value=3 then
      mfonte:=comp20
   else if DM1.Qr_TDVCRTFONTE.Value=4 then
      mfonte:=negrito
   else if DM1.Qr_TDVCRTFONTE.Value=5 then
      mfonte:=expandido;
   if mtam>0 then
      begin
      if length(trim(maux))>mtam then
         maux:=copy(maux,1,mtam);
      end;
   if mtam>0 then
      begin
      if DM1.Qr_TDVCRTALINHAR.Value=0 then
         maux:=insere2(maux,' ',mtam)
      else if DM1.Qr_TDVCRTALINHAR.Value=1 then
         maux:=insere(maux,' ',mtam)
      else if DM1.Qr_TDVCRTALINHAR.Value=2 then
         maux:=Centra(maux,' ',mtam);
      end;
   if (mOrigem=1) or (morigem=2) then
      mlinha:=0
   else
      mlinha:=rplin;
   if DM1.Qr_TDVCRTLIN.Value>mlmax then
      mlmax:=DM1.Qr_TDVCRTLIN.Asinteger;

   if fnumcol<2 then
      Frm_Impres.Rdprint1.ImpF(mlinha+DM1.Qr_TDVCRTLIN.Asinteger,DM1.Qr_TDVCRTCOL.Asinteger,maux,[mfonte])
   else if ftpcol=1 then
      begin
      for mnumcol:=1 to fnumcol do
          begin
          if mnumcol=1 then
             rpcolp:=0
          else
             rpcolp:=rpcolp+fintcol;
          Frm_Impres.Rdprint1.ImpF(mlinha+DM1.Qr_TDVCRTLIN.Asinteger,rpcolp+DM1.Qr_TDVCRTCOL.Asinteger,maux,[mfonte]);
          end;
      end
   else
      begin
      Frm_Impres.Rdprint1.ImpF(mlinha+DM1.Qr_TDVCRTLIN.Asinteger,rpcolp+DM1.Qr_TDVCRTCOL.Asinteger,maux,[mfonte]);
      end;


   DM1.Qr_TDVCR.Next;
   end;
if (mOrigem=3) or (morigem=4) or (morigem=7) or (morigem=8) then
   Begin
   rplin:=rplin+mlmax;
   end
//else if mOrigem=2 then
//   rplin:=0
else if mOrigem=0 then
   begin
   DM1.Qr_TDVCR.Prior;
   rplin:=mlmax;
   end;
mlmax:=0;
if (mOrigem=3) and (DM1.Tb_TDVCATCDIMGRU.Value>0) then
   rplin:=rplin-DM1.Tb_TDVCATCDIMGRU.AsInteger;
if (mOrigem=7) and (DM1.Tb_TDVCATCDIMSG.Value>0) then
   rplin:=rplin-DM1.Tb_TDVCATCDIMSG.AsInteger;
if mOrigem=3 then
   mgrupo:=DM2.Qr_ImpRel.FieldByName(rp_grupo).AsString;
if mOrigem=7 then
   mSG:=DM2.Qr_ImpRel.FieldByName(rp_sg).AsString;

if mOrigem=98 then
   begin
   if pavptpi then
      Frm_Impres.RDprint1.Novapagina;
   end;

end;

function fIRPerCor(pTabOri: String;mOrigem: Integer): Boolean;
var
mvalor,mvalor0, mvalor1, mvalor2, mvalor3: Real;

begin

if not flcadtdv(0,0,mreltab,mnomrel,'1','',ptabori) then
   begin
   fMensagem('Não ha uma tabulacao Adequada!',0,['0'],0);
   result:=false;
   exit;
   end;

fltdvop(0,0,mreltab,mnomrel,pTabOri,IntToStr(mOrigem-1),'','0');

rpncol:=1;
rpcolp  :=0;
rpdetcolp:=0;
mdetncol :=0;
mgrupoA:='';
msga:='';
mlmax:=0;
while not DM2.Qr_ImpRel.Eof do
   begin
   if mOrigem=1 then
      begin
      mlreg:=mlreg+1;
      if plocori='FRM_EBOL' then
         begin
         Frm_EBol.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_EBol.GroupBox2.Update;
         end
      else if plocori='FRM_TAB05' then
         begin
         Frm_Tab05.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab05.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_CP' then
         begin
         Frm_Tab_CP.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_CP.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_PRO' then
         begin
         Frm_Tab_Pro.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Pro.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_OS' then
         begin
        Frm_Tab_OS.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_OS.GroupBox2.Update;
         end

      else if plocori='FRM_TAB_IMO' then
         begin
         Frm_Tab_Imo.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Imo.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_VEI' then
         begin
         Frm_Tab_Vei.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Vei.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_MOE' then
         begin
         Frm_Tab_Moe.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Moe.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_LDR' then
         begin
         Frm_Tab_LDR.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_LDR.GroupBox2.Update;
         end

      else if plocori='FRM_TAB_AJ' then
         begin
         Frm_Tab_AJ.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_AJ.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_FOL' then
         begin
         Frm_Tab_FOL.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_FOL.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_Gru' then
         begin
         Frm_Tab_Gru.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Gru.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_Ven' then
         begin
         Frm_Tab_Ven.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Ven.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_CCU' then
         begin
         Frm_Tab_CCu.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_CCu.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_CLI' then
         begin
         Frm_Tab_Cli.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Cli.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_LIC' then
         begin
         Frm_Tab_lic.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_lic.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_LOC' then
         begin
         Frm_Tab_Loc.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Loc.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_BAI' then
         begin
         Frm_Tab_Bai.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Bai.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_DEP' then
         begin
         Frm_Tab_Dep.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Dep.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_PV' then
         begin
         Frm_Tab_PV.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_PV.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_CON' then
         begin
         Frm_Tab_Con.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Con.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_NS' then
         begin
         Frm_Tab_NS.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_NS.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_TRA' then
         begin
         Frm_Tab_Tra.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Tra.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_USR' then
         begin
         Frm_Tab_Usr.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_Usr.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_CR' then
         begin
         Frm_Tab_CR.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_CR.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_TIP' then
         begin
         Frm_Tab_TIP.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_TIP.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_RAM' then
         begin
         Frm_Tab_RAM.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_RAM.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_UF' then
         begin
         Frm_Tab_UF.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_UF.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_PF' then
         begin
         Frm_Tab_PF.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_PF.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_BCO' then
         begin
         Frm_Tab_BCO.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_BCO.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_NE' then
         begin
         Frm_Tab_NE.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_NE.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_PED' then
         begin
         Frm_Tab_PED.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_PED.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_PEN' then
         begin
         Frm_Tab_PEn.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_PEn.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_FOR' then
         begin
         Frm_Tab_FOR.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_FOR.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_CAR' then
         begin
         Frm_Tab_CAR.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_CAR.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_MVEI' then
         begin
         Frm_Tab_MVEI.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_MVEI.GroupBox2.Update;
         end
      else if plocori='FRM_TAB_MIMO' then
         begin
         Frm_Tab_MIMO.Gauge1.Progress:=mlreg*100 div mtreg;
         Frm_Tab_MIMO.GroupBox2.Update;
         end;


     if (pimpg) and (trim(rp_grupo)<>'') then
         begin
         ftab05tstgru(pTabOri,0);
         end;
      if (pimpsg) and (trim(rp_sg)<>'') then
         begin
         ftab05tstsg(pTabOri,0);
         end;

      end;
   DM2.Tb_Op.First;
   While not DM2.Tb_OP.Eof do
      begin
      if Trim(DM2.Tb_OPTOCOND01.Value)<>'' then
         Begin
         if DM2.Tb_OPTOCONDT2.Value='V' Then
            begin
            if not FIRPerCond(DM2.Tb_OPTOCONDT1.Value,DM2.Tb_OPTOCONDT2.Value,
                              DM2.Qr_ImpRel.FieldByName(DM2.Tb_OPTOCOND01.Value).AsString,
                              DM2.Tb_OPTOCOND02.Value,
                              DM2.Tb_OPTOCONDOP.Value,'','','','','',''
                              ,'','','','','',''
                              ) then
               begin
               DM2.Tb_Op.Next;
               Continue;
               end;
            end
         else
            begin
            if not FIRPerCond(DM2.Tb_OPTOCONDT1.Value,DM2.Tb_OPTOCONDT2.Value,
                              DM2.Qr_ImpRel.FieldByName(DM2.Tb_OPTOCOND01.Value).AsString,
                              DM2.Qr_ImpRel.FieldByName(DM2.Tb_OPTOCOND02.Value).AsString,
                              DM2.Tb_OPTOCONDOP.Value,'','','','','',''
                              ,'','','','','','') then
               begin
               DM2.Tb_OP.Next;
               Continue;
               end;
            end;
         end;
      mvalor0:=0; mvalor1:=0; mvalor2:=0; mvalor3:=0;
      if copy(DM2.Tb_OPTOOP0.Value,1,8)='Operador' then
         mvalor0:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP0.Value,12,3))]
      else if copy(DM2.Tb_OPTOOP0.Value,1,8)='Saldo In' then
         mvalor0:=psini
      else if copy(DM2.Tb_OPTOOP0.Value,1,13)='Venda Periodo' then
         mvalor0:=pVdaPer
      else if copy(DM2.Tb_OPTOOP0.Value,1,22)='Venda Mes/Ate Dt.Final' then
         mvalor0:=pVdaMesAtedia
      else if copy(DM2.Tb_OPTOOP0.Value,1,21)='Venda Periodo Mes/Ant' then
         mvalor0:=pVdaPerAnt
      else if copy(DM2.Tb_OPTOOP0.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
         mvalor0:=pVdaMesAntAtedia
      else if DM2.Tb_OPTOTOP0.Value='V' then
         mvalor0:=DM2.Tb_OPTOOP0.AsFloat
      else
        begin
        try
          mvalor0:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP0.Value).AsFloat;
        except
          mvalor0:=0;
          end;
        end;
      if Trim(DM2.Tb_OPTOOP1.AsString)<>'' then
         begin
         if copy(DM2.Tb_OPTOOP1.Value,1,8)='Operador' then
            mvalor1:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP1.Value,12,3))]
         else if copy(DM2.Tb_OPTOOP1.Value,1,8)='Saldo In' then
            mvalor1:=psini
         else if copy(DM2.Tb_OPTOOP1.Value,1,13)='Venda Periodo' then
            mvalor1:=pVdaPer
         else if copy(DM2.Tb_OPTOOP1.Value,1,22)='Venda Mes/Ate Dt.Final' then
            mvalor1:=pVdaMesAtedia
         else if copy(DM2.Tb_OPTOOP1.Value,1,21)='Venda Periodo Mes/Ant' then
            mvalor1:=pVdaPerAnt
         else if copy(DM2.Tb_OPTOOP1.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
            mvalor1:=pVdaMesAntAtedia
         else if DM2.Tb_OPTOTOP1.Value='V' then
            mvalor1:=DM2.Tb_OPTOOP1.AsFloat
         else
            mvalor1:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP1.Value).AsFloat;
         end;

      if Trim(DM2.Tb_OPTOOP2.Value)<>'' then
         begin
         if copy(DM2.Tb_OPTOOP2.Value,1,8)='Operador' then
            mvalor2:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP2.Value,12,3))]
         else if copy(DM2.Tb_OPTOOP2.Value,1,8)='Saldo In' then
            mvalor2:=psini

         else if copy(DM2.Tb_OPTOOP2.Value,1,13)='Venda Periodo' then
            mvalor2:=pVdaPer
         else if copy(DM2.Tb_OPTOOP2.Value,1,22)='Venda Mes/Ate Dt.Final' then
            mvalor2:=pVdaMesAtedia
         else if copy(DM2.Tb_OPTOOP2.Value,1,21)='Venda Periodo Mes/Ant' then
            mvalor2:=pVdaPerAnt
         else if copy(DM2.Tb_OPTOOP2.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
            mvalor2:=pVdaMesAntAtedia
         else if DM2.Tb_OPTOTOP2.Value='V' then
            mvalor2:=DM2.Tb_OPTOOP2.AsFloat
         else
            mvalor2:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP2.Value).AsFloat;
         end;
      if Trim(DM2.Tb_OPTOOP3.Value)<>'' then
         begin
         if copy(DM2.Tb_OPTOOP3.Value,1,8)='Operador' then
            mvalor3:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP3.Value,12,3))]
         else if copy(DM2.Tb_OPTOOP3.Value,1,8)='Saldo In' then
            mvalor3:=psini
         else if copy(DM2.Tb_OPTOOP3.Value,1,13)='Venda Periodo' then
            mvalor3:=pVdaPer
         else if copy(DM2.Tb_OPTOOP3.Value,1,22)='Venda Mes/Ate Dt.Final' then
            mvalor3:=pVdaMesAtedia
         else if copy(DM2.Tb_OPTOOP3.Value,1,21)='Venda Periodo Mes/Ant' then
            mvalor3:=pVdaPerAnt
         else if copy(DM2.Tb_OPTOOP3.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
            mvalor3:=pVdaMesAntAtedia
         else if DM2.Tb_OPTOTOP3.Value='V' then
            mvalor3:=DM2.Tb_OPTOOP3.AsFloat
         else
            mvalor3:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP3.Value).AsFloat;
         end;
         firpcalc(DM2.Tb_OPTOCODIGO.AsInteger,mvalor0,mvalor1,mvalor2,mvalor3,
                         DM2.Tb_OPTOPER0.Value,
                         DM2.Tb_OPTOPER1.Value,
                         DM2.Tb_OPTOPER2.vALUE);
      DM2.Tb_OP.Next;
      end;

   mlmax:=0;
   DM1.Tb_Tdv.First;
   While not DM1.Tb_TDV.Eof do
      begin
      if Trim(DM1.Tb_TDVTCOND01.Value)<>'' then
         begin
         mcinst :='';
         mcinst2:='';
         mcinst3:='';
         mcinst4:='';

         if trim(DM1.Tb_TDVTCOND_02_02.AsString)<>'' then
            begin
            mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCOND_02_01.Value)).AsString;
            if Trim(DM1.Tb_TDVTCOND_02_T2.AsString)='V' then
               mcinst2:=DM1.Tb_TDVTCOND_02_02.AsString
            else
               mcinst2:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCOND_02_02.Value)).AsString;
            end;

         if trim(DM1.Tb_TDVTCOND_03_02.AsString)<>'' then
            begin
            mcinst3:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCOND_03_01.Value)).AsString;
            if Trim(DM1.Tb_TDVTCOND_03_T2.AsString)='V' then
               mcinst4:=DM1.Tb_TDVTCOND_03_02.AsString
            else
               mcinst4:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCOND_03_02.Value)).AsString;
            end;


         if DM1.Tb_TDVTCONDT2.Value='V' then
            begin
            if not FIRPerCond(DM1.Tb_TDVTCONDT1.Value,DM1.Tb_TDVTCONDT2.Value,
                              DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCOND01.Value)).AsString,
                              DM1.Tb_TDVTCOND02.Value,
                              DM1.Tb_TDVTCONDOP.Value,

                              DM1.Tb_TDVTCOND_CONT.Value,

                              DM1.Tb_TDVTCOND_02_T1.Value,DM1.Tb_TDVTCOND_02_T2.Value,
                              mcinst,
                              mcinst2,
                              DM1.Tb_TDVTCOND_02_OP.Value,
                              DM1.Tb_TDVTCOND_CONT03.Value,

                              DM1.Tb_TDVTCOND_03_T1.Value,DM1.Tb_TDVTCOND_03_T2.Value,
                              mcinst3,
                              mcinst4,
                              DM1.Tb_TDVTCOND_03_OP.Value) then
               begin
               DM1.Tb_TDV.Next;
               Continue;
               end;
            end
         else
            begin
            if not FIRPerCond(DM1.Tb_TDVTCONDT1.Value,DM1.Tb_TDVTCONDT2.Value,
                              DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCOND01.Value)).AsString,
                              DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCOND02.Value)).AsString,
                              DM1.Tb_TDVTCONDOP.Value,
                              DM1.Tb_TDVTCOND_CONT.Value,

                              DM1.Tb_TDVTCOND_02_T1.Value,DM1.Tb_TDVTCOND_02_T2.Value,
                              mcinst,
                              mcinst2,
                              DM1.Tb_TDVTCOND_02_OP.Value,

                              DM1.Tb_TDVTCOND_CONT03.Value,

                              DM1.Tb_TDVTCOND_03_T1.Value,DM1.Tb_TDVTCOND_03_T2.Value,
                              mcinst3,
                              mcinst4,
                              DM1.Tb_TDVTCOND_03_OP.Value) then

               begin
               DM1.Tb_TDV.Next;
               Continue;
               end;
            end;
         end;
      if rplin=0 then
         begin
         FIRPerCab(pTabOri,0);
         if (pimpg) and (trim(rp_grupo)<>'') then
            FIRPerCab(pTabOri,3);
         if (pimpsg) and (trim(rp_sg)<>'') then
            FIRPerCab(pTabOri,7);
         end;
      if DM1.Tb_TDVTTAM.IsNull then
         mtam:=0
      else
         mtam:=DM1.Tb_TDVTTAM.Asinteger;
      maux:='';
      if (DM1.Tb_TDVTTIPO.Value=0) or (DM1.Tb_TDVTTIPO.Value=6) then
         begin
         if (DM1.Tb_TDVTTIPOC.Value='D') and
            ((DM2.Qr_ImpRel.FieldByName(Trim(DM1.Tb_TDVTCAMPO.AsString)).DataType=ftDate)
             or (DM2.Qr_ImpRel.FieldByName(Trim(DM1.Tb_TDVTCAMPO.AsString)).DataType=ftDateTime)) then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)='' then
               maux:=FormatDateTime(fdt2,DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime)
            else
               maux:=FormatDateTime(Trim(DM1.Tb_TDVTFORMATO.Value),
                     DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime);
            end
         else if DM1.Tb_TDVTTIPOC.Value='H' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)='' then
               maux:=FormatDateTime(fhr,DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime)
            else
               maux:=FormatDateTime(Trim(DM1.Tb_TDVTFORMATO.Value),
                   DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime);
            end
         else if DM1.Tb_TDVTTIPOC.Value='N' then
            begin
            if (DM1.Tb_TDVTFORMATO.Value='mmm') and
               (DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsFloat>0) and
               (DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsFloat>0) then
               begin
               if pbanco=0 then
                  maux:='01/'+FormatFloat('00',DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsFloat)+'/2000'
               else
                  maux:=FormatFloat('00',DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsFloat)+'/01/2000';
               maux:=NMes(StrToDate(maux));
               end
            else if DM1.Tb_TDVTCEXTENSO.Value=1 then
               begin
               fimpext(DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsFloat,
                   DM1.Tb_TDVTCEXTENSO.AsInteger,0,
                   DM1.Tb_TDVTFONTE.AsInteger,
                   DM1.Tb_TDVTCEXT_QTDL.AsInteger,
                   DM1.Tb_TDVTLIN.AsInteger,
                   DM1.Tb_TDVTCEXT_1LP.AsInteger,
                   DM1.Tb_TDVTCEXT_2LP.AsInteger,
                   DM1.Tb_TDVTCEXT_3LP.AsInteger,
                   DM1.Tb_TDVTCEXT_1LT.AsInteger,
                   DM1.Tb_TDVTCEXT_2LT.AsInteger,
                   DM1.Tb_TDVTCEXT_3LT.AsInteger,
                   DM1.Tb_TDVTCEXT_1IC.AsInteger,
                   DM1.Tb_TDVTCEXT_2IC.AsInteger,
                   DM1.Tb_TDVTCEXT_3IC.AsInteger);
               DM1.Tb_TDV.Next;
               continue;
               end
            else if DM1.Tb_TDVTCEXTENSO.Value=3 then
               begin
               if (DM1.Tb_TDVTFORMATO.Value)<>'' then
                  maux:=NumPal(FormatFloat(DM1.Tb_TDVTFORMATO.Value, ValFloat(DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString)))
               else
                  maux:=NumPal(DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString);
               end
            else if DM1.Tb_TDVTCBARRAS.Value=1 then
               begin
               maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString;
               if mtam>0 then
                  maux:=insere(maux,'0',mtam);
               maux:=Bar25i(maux);
               end
            else if Trim(DM1.Tb_TDVTFORMATO.Value)='' then
               maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString
            else
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),
               DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsFloat);
            end
         else
            begin
            if (DM1.Tb_TDVTTIPOC.Value='D') and (trim(DM1.Tb_TDVTFORMATO.Value)<>'') and
               (trim(DM2.Qr_TDVCA_STCMASC.Value)<>'') then
               begin
               maux:=fcondata(DM2.Qr_TDVCA_STCMASC.Value,DM1.Tb_TDVTFORMATO.Value,
               DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString,0);
               if trim(maux)='' then
                  maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString;
               end
            else
              begin
              try
                maux:=DM2.Qr_ImpRel.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString;
              except
                maux:='';
                end;
              end;
            end;
         end
      else if DM1.Tb_TDVTTIPO.Value=5 then
         begin
         if DM1.Tb_TDVTTIPOC.Value='D' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)='' then
               maux:=FormatDateTime(fdt2,DM1.Tb_Emp.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime)
            else
               maux:=FormatDateTime(Trim(DM1.Tb_TDVTFORMATO.Value),
                     DM1.Tb_Emp.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime);
            end
         else if DM1.Tb_TDVTTIPOC.Value='H' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)='' then
               maux:=FormatDateTime(fhr,DM1.Tb_Emp.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime)
            else
               maux:=FormatDateTime(Trim(DM1.Tb_TDVTFORMATO.Value),
                   DM1.Tb_Emp.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsDateTime);
            end
         else if DM1.Tb_TDVTTIPOC.Value='N' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)='' then
               maux:=DM1.Tb_Emp.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString
            else
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),
               DM1.Tb_Emp.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsFloat);
            end
         else
            begin
            maux:=DM1.Tb_Emp.fieldbyName(Trim(DM1.Tb_TDVTCAMPO.AsString)).AsString;
            end;
         end
      else if DM1.Tb_TDVTTIPO.Value=1 then
         maux:=DM1.Tb_TDVTCAMPO.Value
      else if DM1.Tb_TDVTTIPO.Value=2 then
         begin
         if DM1.Tb_TDVTCAMPO.Value='Data' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatDateTime(Trim(DM1.Tb_TDVTFORMATO.Value),date)
            else
               maux:=FormatDateTime(fdt2,date);
            end
         else if DM1.Tb_TDVTCAMPO.Value='Hora' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatDateTime(Trim(DM1.Tb_TDVTFORMATO.Value),time)
            else
               maux:=FormatDateTime(fhr,time);
            end
         else if DM1.Tb_TDVTCAMPO.Value='Pagina' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),rppag)
            else
               maux:=IntToStr(rppag);
            end
         else if DM1.Tb_TDVTCAMPO.Value='Periodo' then
            begin
            maux:=pperiodo;
            end
         else if DM1.Tb_TDVTCAMPO.Value='Texto Extra' then
            begin
            maux:=pTextoExtra;
            end
         else if DM1.Tb_TDVTCAMPO.Value='Texto Extra 2' then
            begin
            maux:=pTextoExtra02;
            end

         else if DM1.Tb_TDVTCAMPO.Value='Saldo Inicial' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),psini)
            else
               maux:=FloatToStr(psini);
            end
         else if DM1.Tb_TDVTCAMPO.Value='Venda Periodo' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),pVdaPer)
            else
               maux:=FloatToStr(pVdaPer);
            end
         else if DM1.Tb_TDVTCAMPO.Value='Venda Periodo Mes/Ant' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),pVdaPerAnt)
            else
               maux:=FloatToStr(pVdaPerAnt);
            end
         else if DM1.Tb_TDVTCAMPO.Value='Venda Mes/Ate Dt.Final' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),pVdaMesAtedia)
            else
               maux:=FloatToStr(pVdaMesAtedia);
            end
         else if DM1.Tb_TDVTCAMPO.Value='Venda Mes Ant/Ate Dt.Final' then
            begin
            if Trim(DM1.Tb_TDVTFORMATO.Value)<>'' then
               maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),pVdaMesAntAtedia)
            else
               maux:=FloatToStr(pVdaMesAntAtedia);
            end;
         end
      else if DM1.Tb_TDVTTIPO.Value=3 then
         begin
         maux:=insere2(copy(DM1.Tb_TDVTCAMPO.Value,1,1),DM1.Tb_TDVTCAMPO.Value[1],mtam)
         end
      else if DM1.Tb_TDVTTIPO.Value=4 then
         begin
         if Trim(DM1.Tb_TDVTFORMATO.Value)='' then
            maux:=FloatToStr(mtopper[DM1.Tb_TDVTCAMPO.AsInteger])
         else
            maux:=FormatFloat(Trim(DM1.Tb_TDVTFORMATO.Value),mtopper[DM1.Tb_TDVTCAMPO.AsInteger]);
         if DM1.Tb_TDVTZERVAR.Value=1 Then
            mtopper[DM1.Tb_TDVTCAMPO.AsInteger]:=0;

         end
      else if DM1.Tb_TDVTTIPO.Value=7 then
         begin
         maux:='';
         mcinst:='';
         if DM2.Tb_JC.Locate('JCNOMCAM',DM1.Tb_TDVTCAMPO.Value,[]) then
            begin
            if Trim(DM2.Tb_JCJCCAMPO01.Value)<>'' then
               begin
               mcinst:='';
               if DM2.Tb_JCJCESPACO01.Value>0 then
                  maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO01.AsInteger);
               if DM2.Tb_JCJCTCAMPO1.Value=0  then
                  mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO01.AsString)).AsString
               else if DM2.Tb_JCJCTCAMPO1.Value=1 then
                  mcinst:=DM2.Tb_JCJCCAMPO01.AsString
               else if DM2.Tb_JCJCTCAMPO1.Value=2  then
                  mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO01.AsString)).AsString;
               if DM2.Tb_JCJCBRANCOS01.Value=1 then
                  mcinst:=TrimLeft(mcinst)
               else if DM2.Tb_JCJCBRANCOS01.Value=2 then
                  mcinst:=TrimRight(mcinst)
               else if DM2.Tb_JCJCBRANCOS01.Value=3 then
                  mcinst:=Trim(mcinst);
               if (DM2.Tb_JCJCTAMMAX01.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX01.Value) then
                  mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX01.AsInteger);
               maux:=maux+mcinst;
               end;
            if Trim(DM2.Tb_JCJCCAMPO02.Value)<>'' then
               begin
               mcinst:='';
               if DM2.Tb_JCJCESPACO02.Value>0 then
                  maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO02.AsInteger);
               if DM2.Tb_JCJCTCAMPO2.Value=0  then
                  mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO02.AsString)).AsString
               else if DM2.Tb_JCJCTCAMPO2.Value=1 then
                  mcinst:=DM2.Tb_JCJCCAMPO02.Value
               else if DM2.Tb_JCJCTCAMPO2.Value=2  then
                  mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO02.AsString)).AsString;
              if DM2.Tb_JCJCBRANCOS02.Value=1 then
                  mcinst:=TrimLeft(mcinst)
               else if DM2.Tb_JCJCBRANCOS02.Value=2 then
                  mcinst:=TrimRight(mcinst)
               else if DM2.Tb_JCJCBRANCOS02.Value=3 then
                  mcinst:=Trim(mcinst);
               if (DM2.Tb_JCJCTAMMAX02.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX02.Value) then
                  mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX02.AsInteger);
               maux:=maux+mcinst;
               end;
            if Trim(DM2.Tb_JCJCCAMPO03.Value)<>'' then
               begin
               mcinst:='';
               if DM2.Tb_JCJCESPACO03.Value>0 then
                  maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO03.AsInteger);
               if DM2.Tb_JCJCTCAMPO3.Value=0  then
                  mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO03.AsString)).AsString
               else if DM2.Tb_JCJCTCAMPO3.Value=1 then
                  mcinst:=DM2.Tb_JCJCCAMPO03.AsString
               else if DM2.Tb_JCJCTCAMPO3.Value=2  then
                  mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO03.AsString)).AsString;
               if DM2.Tb_JCJCBRANCOS03.Value=1 then
                  mcinst:=TrimLeft(mcinst)
               else if DM2.Tb_JCJCBRANCOS03.Value=2 then
                  mcinst:=TrimRight(mcinst)
               else if DM2.Tb_JCJCBRANCOS03.Value=3 then
                  mcinst:=Trim(mcinst);
               if (DM2.Tb_JCJCTAMMAX03.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX03.Value) then
                  mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX03.AsInteger);
               maux:=maux+mcinst;
               end;
            if Trim(DM2.Tb_JCJCCAMPO04.Value)<>'' then
               begin
               mcinst:='';
               if DM2.Tb_JCJCESPACO04.Value>0 then
                  maux:=maux+insere(' ',' ',DM2.Tb_JCJCESPACO04.AsInteger);
               if DM2.Tb_JCJCTCAMPO4.Value=0  then
                  mcinst:=DM2.Qr_ImpRel.fieldbyName(Trim(DM2.Tb_JCJCCAMPO04.AsString)).AsString
               else if DM2.Tb_JCJCTCAMPO4.Value=1 then
                  mcinst:=DM2.Tb_JCJCCAMPO04.AsString
               else if DM2.Tb_JCJCTCAMPO4.Value=2  then
                  mcinst:=DM1.Tb_Emp.fieldbyName(Trim(DM2.Tb_JCJCCAMPO04.AsString)).AsString;
               if DM2.Tb_JCJCBRANCOS04.Value=1 then
                  mcinst:=TrimLeft(mcinst)
               else if DM2.Tb_JCJCBRANCOS04.Value=2 then
                  mcinst:=TrimRight(mcinst)
                else if DM2.Tb_JCJCBRANCOS04.Value=3 then
                  mcinst:=Trim(mcinst);
               if (DM2.Tb_JCJCTAMMAX04.Value>0) and (length(mcinst)>DM2.Tb_JCJCTAMMAX04.Value) then
                  mcinst:=copy(mcinst,1,DM2.Tb_JCJCTAMMAX04.AsInteger);
               maux:=maux+mcinst;
               end;
            end;
         end;
      if DM1.Tb_TDVTFONTE.Value=0 then
         mfonte:=normal
      else if DM1.Tb_TDVTFONTE.Value=1 then
         mfonte:=comp12
      else if DM1.Tb_TDVTFONTE.Value=2 then
         mfonte:=comp17
      else if DM1.Tb_TDVTFONTE.Value=3 then
         mfonte:=comp20
      else if DM1.Tb_TDVTFONTE.Value=4 then
         mfonte:=negrito
      else if DM1.Tb_TDVTFONTE.Value=5 then
         mfonte:=expandido;
      if mtam>0 then
         begin
         if length(trim(maux))>mtam then
            maux:=copy(maux,1,mtam);
         end;
      if mtam>0 then
         begin
         if DM1.Tb_TDVTALINHAR.Value=0 then
            maux:=insere2(maux,' ',mtam)
         else if DM1.Tb_TDVTALINHAR.Value=1 then
            maux:=insere(maux,' ',mtam)
         else if DM1.Tb_TDVTALINHAR.Value=2 then
            maux:=Centra(maux,' ',mtam);
         end;
      if DM1.Tb_TDVTLIN.Value>mlmax then
         mlmax:=DM1.Tb_TDVTLIN.Asinteger;

      if fnumcol<2 then
         begin
         if fdetncol>1 then
            begin
            if fdettpcol=1 then
               begin
               for mdetncol:=1 to fdetncol do
                  begin
                  if mdetncol=1 then
                     rpdetcolp:=0
                  else
                     rpdetcolp:=rpdetcolp+fdeticol;
                  Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpdetcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
                  end
               end
            else
               Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpdetcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
            end
         else
            Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
         end
      else if ftpcol=1 then
         begin
         for mnumcol:=1 to fnumcol do
             begin
             if mnumcol=1 then
                rpcolp:=0
             else
                rpcolp:=rpcolp+fintcol;

             if fdetncol>1 then
                begin
                if fdettpcol=1 then
                   begin
                   for mdetncol:=1 to fdetncol do
                      begin
                      if mdetncol=1 then
                         rpdetcolp:=0
                      else
                         rpdetcolp:=rpdetcolp+fdeticol;
                      Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpcolp+rpdetcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
                      end
                   end
                else
                   Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpcolp+rpdetcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
                end
             else
                Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
             end;
         end
      else
         begin
         if fdetncol>1 then
            begin
            if fdettpcol=1 then
               begin
               for mdetncol:=1 to fdetncol do
                  begin
                  if mdetncol=1 then
                     rpdetcolp:=0
                  else
                     rpdetcolp:=rpdetcolp+fdeticol;
                  Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpcolp+rpdetcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
                  end
               end
            else
               Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpcolp+rpdetcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
            end
         else
            Frm_Impres.Rdprint1.ImpF(rplin+DM1.Tb_TDVTLIN.Asinteger,rpcolp+DM1.Tb_TDVTCOL.Asinteger,maux,[mfonte]);
         end;
      DM1.Tb_TDV.Next;
      end;
   if (fdetncol>1) and (fdettpcol<1) then
      begin
      mdetncol:=mdetncol+1;
      rpdetcolp:=rpdetcolp+fdeticol;
      if mdetncol>=fdetncol then
         begin
         rplin:=rplin+mlmax;
         mdetncol:=0;
         rpdetcolp:=0;
         end;
      end
   else
      rplin:=rplin+mlmax;

   DM2.Qr_ImpRel.Next;
   if DM2.Qr_ImpRel.Eof then
      begin
      if (pimpsg) and (Trim(rp_sg)<>'') then
         begin
         if rplin+mrod+pldrrg1+mlmax>rpqtdlp-2 then
            begin
            FIRPerCab(pTabOri,2);
            firpertp(0);
            FIRPerCab(pTabOri,0);
            FIRPerCab(pTabOri,7);
            end;
         FIRPerCab(pTabOri,8);
         end;
      if (pimpg) and (Trim(rp_grupo)<>'') then
         begin
         if rplin+mrod+pldrrg1+mlmax>rpqtdlp-2 then
            begin
            FIRPerCab(pTabOri,2);
            firpertp(0);
            FIRPerCab(pTabOri,0);
            FIRPerCab(pTabOri,3);
            end;
         FIRPerCab(pTabOri,4);
         end;
      FIRPerCab(pTabOri,2);
//      rplin:=0;
      end
   else if rplin+mrod+mlmax>rpqtdlp-2 then
      begin
      FIRPerCab(pTabOri,2);
      firpertp(0);
      FIRPerCab(pTabOri,0);
{
      if (pimpg) and (trim(rp_grupo)<>'') then
         begin
         FIRPerCab(3);
         mGrupoA:='';
         end;
      if (pimpsg) and (trim(rp_sg)<>'') then
         begin
         FIRPerCab(7);
         mSGA:='';
         end;
}      end;
   end;
result:=True;
end;

procedure TFrm_Tab05.FormCreate(Sender: TObject);
begin



mnomrel:=DM1.Tb_TDVCATCNOME.Value;
mreltab:=DM1.Tb_TDVCATCDOC.Value;

if Trim(DM1.Tb_TDVCATCPERIODO.Value)<>'' then
   begin
   RG_PERIODO.Visible:=True;
   end;
if DM1.Tb_TDVCATCQTDDIV.Value>1 then
   begin
   MES.Text      :=FormatDateTime('mm',Date);
   ANO.Text      :=FormatDateTime('yyyy',date);
   MES.Visible   :=True;
   ANO.Visible   :=True;
   label1.Visible:=True;
   label2.Visible:=True;
   end;
NUMCOL.Text       :=DM1.Tb_TDVCATCNUMCOL.AsString;
INTCOL.Text       :=DM1.Tb_TDVCATCINTCOL.AsString;
RG_TPCOL.ItemIndex:=DM1.Tb_TDVCATCTPCOL.AsInteger;
CB_GRUPO.Checked  :=DM1.Tb_TDVCATCIMPG.Value=0;
CB_SGRUPO.Checked :=DM1.Tb_TDVCATCIMPSG.Value=0;
CB_AVPTPI.Checked :=DM1.Tb_TDVCATCAVPTPI.Value=0;
CB_AVPIPF.Checked :=DM1.Tb_TDVCATCAVPIPF.Value=0;
if DM1.Tb_TDVCATCMPAGGR.Value=1 then
   CB_MPAGGR.Checked:=True
else
   CB_MPAGGR.Checked:=False;

end;

procedure TFrm_Tab05.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT1.Text));
   except
      ShowMessage('Data Invalida!');
      MDT1.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_Tab05.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime('dd/mm/yyyy',StrToDate(MDT2.Text));
   except
      ShowMessage('Data Invalida!');
      MDT2.SetFocus;
      exit;
      end
   end;
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      ShowMessage('Data Final Menor que Data Inicial. Invalido!');
      MDT1.SetFocus;
      exit;
      end;
   end;

end;
function fcondata(pf1,pf2,pvalor: String;ptipo: Integer): String;
var
mresult:String;
begin
mresult:='';
if ptipo=0 then
   begin
   if pf1='yyyymm' then
      begin
      if pf2='mm' then
         mresult:=copy(pvalor,5,2)
      else if pf2='mmm' then
         mresult:=Nmes(StrtoDate('01/'+copy(pvalor,5,2)+'/'+copy(pvalor,1,4)))
      else if pf2='yy' then
         mresult:=copy(pvalor,3,2)
      else if pf2='yyyy' then
         mresult:=copy(pvalor,1,4)
      else if pf2='yy/mm' then
         mresult:=copy(pvalor,3,2)+'/'+copy(pvalor,5,2)
      else if pf2='mm/yy' then
         mresult:=copy(pvalor,5,2)+'/'+copy(pvalor,3,2)
      else if pf2='yyyy/mm' then
         mresult:=copy(pvalor,1,4)+'/'+copy(pvalor,5,2)
      else if pf2='mm/yyyy' then
         mresult:=copy(pvalor,5,2)+'/'+copy(pvalor,1,4)
      else if pf2='yyyy/mmm' then
         mresult:=copy(pvalor,1,4)+'/'+Nmes(StrtoDate('01/'+copy(pvalor,5,2)+'/'+copy(pvalor,1,4)))
      else if pf2='mmm/yyyy' then
         mresult:=trim(Nmes(StrtoDate('01/'+copy(pvalor,5,2)+'/'+copy(pvalor,1,4))))+'/'+copy(pvalor,1,4);
      end
   else if pf1='mmyyyy' then
      begin
      if pf2='mm' then
         mresult:=copy(pvalor,1,2)
      else if pf2='mmm' then
         mresult:=Nmes(StrtoDate('01/'+copy(pvalor,1,2)+'/'+copy(pvalor,3,4)))
      else if pf2='yy' then
         mresult:=copy(pvalor,1,2)
      else if pf2='yyyy' then
         mresult:=copy(pvalor,3,4)
      else if pf2='yy/mm' then
         mresult:=copy(pvalor,5,2)+'/'+copy(pvalor,1,2)
      else if pf2='mm/yy' then
         mresult:=copy(pvalor,1,2)+'/'+copy(pvalor,5,2)
      else if pf2='yyyy/mm' then
         mresult:=copy(pvalor,3,4)+'/'+copy(pvalor,1,2)
      else if pf2='mm/yyyy' then
         mresult:=copy(pvalor,1,2)+'/'+copy(pvalor,3,4)
      else if pf2='yyyy/mmm' then
         mresult:=copy(pvalor,3,4)+'/'+Nmes(StrtoDate('01/'+copy(pvalor,1,2)+'/'+copy(pvalor,3,4)))
      else if pf2='mmm/yyyy' then
         mresult:=trim(Nmes(StrtoDate('01/'+copy(pvalor,1,2)+'/'+copy(pvalor,3,4))))+'/'+copy(pvalor,3,4);
      end
   else if pf1='yyyy' then
      begin
      if pf2='yy' then
         mresult:=copy(pvalor,3,2)
      else if pf2='yyyy' then
         mresult:=pvalor;
      end
   else if pf1='mm' then
      begin
      if pf2='mm' then
         mresult:=pvalor
      else if pf2='mmm' then
         mresult:=Nmes(StrtoDate('01/'+copy(pvalor,1,2)+'/'+copy(pvalor,3,4)));
      end
   else if pf1='ddmm' then
      begin
      if pf2='dd' then
         mresult:=copy(pvalor,1,2)
      else if pf2='mm' then
         mresult:=copy(pvalor,3,2)
      else if pf2='mmm' then
         mresult:=Nmes(StrToDate(copy(pvalor,1,2)+'/'+copy(pvalor,3,2)+'/2002'));
      end
   else if pf1='mmdd' then
      begin
      if pf2='dd' then
         mresult:=copy(pvalor,3,2)
      else if pf2='mm' then
         mresult:=copy(pvalor,1,2)
      else if pf2='mmm' then
         mresult:=Nmes(StrToDate(copy(pvalor,3,2)+'/'+copy(pvalor,1,2)+'/2002'));
      end
   else if pf1='dd' then
      begin
      if pf2='dd' then
         pf1:=pvalor;
      end;
   end;
result:=mresult;
end;

procedure TFrm_Tab05.MESExit(Sender: TObject);
begin
if (valfloat(mes.Text)<0) or (valfloat(mes.Text)>12) then
   begin
   fMensagem('Mês Inválido.',0,['0'],0);
   MES.SetFocus;
   exit;
   end;

end;

procedure TFrm_Tab05.INTCOLKeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9']) and (Key<>#8)
   then Key:=#0;

end;

function ftab05irel(pTabOri,pNomeImpres:String; ptipo,pQtdCop: Integer):Boolean;
var
mvalor,mvalor0, mvalor1, mvalor2, mvalor3: Real;
x: Integer;
begin

if pQtdcop=0 then
   pqtdcop:=1;
fltdvop(0,0,mreltab,mnomrel,pTabOri,'','','');

While not DM2.Tb_OP.Eof do
   begin
   mtopper[DM2.Tb_OPTOCODIGO.Asinteger]:=0;
   DM2.Tb_OP.Next;
   end;

// inicio dos calculos antes de emitir


fltdvop(0,0,mreltab,mnomrel,pTabOri,'','','1');

if pimpsg then
   pldrcg1:=1
else
   pldrcg1:=0;
if pimpg then
   pldrcg1:=pldrcg1+1;


While not DM2.Qr_ImpRel.Eof do
   begin
   DM2.Tb_Op.First;
   While not DM2.Tb_OP.Eof do
      begin
      if Trim(DM2.Tb_OPTOCOND01.Value)<>'' then
         Begin
         if DM2.Tb_OPTOCONDT2.Value='V' Then
            begin
           if not FIRPerCond(DM2.Tb_OPTOCONDT1.Value,DM2.Tb_OPTOCONDT2.Value,
                              DM2.Qr_ImpRel.FieldByName(DM2.Tb_OPTOCOND01.Value).AsString,
                              DM2.Tb_OPTOCOND02.Value,
                              DM2.Tb_OPTOCONDOP.Value,'','','','','',''
                              ,'','','','','','') then
               begin
               DM2.Tb_Op.Next;
               Continue;
               end;
            end
         else
            begin
            if not FIRPerCond(DM2.Tb_OPTOCONDT1.Value,DM2.Tb_OPTOCONDT2.Value,
                              DM2.Qr_ImpRel.FieldByName(DM2.Tb_OPTOCOND01.Value).AsString,
                              DM2.Qr_ImpRel.FieldByName(DM2.Tb_OPTOCOND02.Value).AsString,
                              DM2.Tb_OPTOCONDOP.Value,'','','','','',''
                              ,'','','','','','') then
               begin
               DM2.Tb_OP.Next;
               Continue;
               end;
            end;
          end;
      mvalor0:=0; mvalor1:=0; mvalor2:=0; mvalor3:=0;
      if copy(DM2.Tb_OPTOOP0.Value,1,8)='Operador' then
         mvalor0:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP0.Value,12,3))]
      else if copy(DM2.Tb_OPTOOP0.Value,1,8)='Saldo In' then
         mvalor0:=psini

      else if copy(DM2.Tb_OPTOOP0.Value,1,13)='Venda Periodo' then
         mvalor0:=pVdaPer
      else if copy(DM2.Tb_OPTOOP0.Value,1,22)='Venda Mes/Ate Dt.Final' then
         mvalor0:=pVdaMesAtedia
      else if copy(DM2.Tb_OPTOOP0.Value,1,21)='Venda Periodo Mes/Ant' then
         mvalor0:=pVdaPerAnt
      else if copy(DM2.Tb_OPTOOP0.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
         mvalor0:=pVdaMesAntAtedia
      else if DM2.Tb_OPTOTOP0.Value='V' then
         mvalor0:=DM2.Tb_OPTOOP0.AsFloat
      else
         mvalor0:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP0.Value).AsFloat;
      if Trim(DM2.Tb_OPTOOP1.Value)<>'' then
         begin
         if copy(DM2.Tb_OPTOOP1.Value,1,8)='Operador' then
            mvalor1:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP1.Value,12,3))]
         else if copy(DM2.Tb_OPTOOP1.Value,1,8)='Saldo In' then
            mvalor1:=psini
         else if copy(DM2.Tb_OPTOOP1.Value,1,13)='Venda Periodo' then
            mvalor1:=pVdaPer
         else if copy(DM2.Tb_OPTOOP1.Value,1,22)='Venda Mes/Ate Dt.Final' then
            mvalor1:=pVdaMesAtedia
         else if copy(DM2.Tb_OPTOOP1.Value,1,21)='Venda Periodo Mes/Ant' then
            mvalor1:=pVdaPerAnt
         else if copy(DM2.Tb_OPTOOP1.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
            mvalor1:=pVdaMesAntAtedia
         else if DM2.Tb_OPTOTOP1.Value='V' then
            mvalor1:=DM2.Tb_OPTOOP1.AsFloat
         else
            mvalor1:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP1.Value).AsFloat;
         end;
      if Trim(DM2.Tb_OPTOOP2.Value)<>'' then
         begin
         if copy(DM2.Tb_OPTOOP2.Value,1,8)='Operador' then
            mvalor2:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP2.Value,12,3))]
         else if copy(DM2.Tb_OPTOOP2.Value,1,8)='Saldo In' then
            mvalor2:=psini
         else if copy(DM2.Tb_OPTOOP2.Value,1,13)='Venda Periodo' then
            mvalor2:=pVdaPer
         else if copy(DM2.Tb_OPTOOP2.Value,1,22)='Venda Mes/Ate Dt.Final' then
            mvalor2:=pVdaMesAtedia
         else if copy(DM2.Tb_OPTOOP2.Value,1,21)='Venda Periodo Mes/Ant' then
            mvalor2:=pVdaPerAnt
         else if copy(DM2.Tb_OPTOOP2.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
            mvalor2:=pVdaMesAntAtedia
         else if DM2.Tb_OPTOTOP2.Value='V' then
            mvalor2:=DM2.Tb_OPTOOP2.AsFloat
         else
            mvalor2:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP2.Value).AsFloat;
         end;
      if Trim(DM2.Tb_OPTOOP3.Value)<>'' then
         begin
         if copy(DM2.Tb_OPTOOP3.Value,1,8)='Operador' then
            mvalor3:=mtopper[StrToInt('0'+copy(DM2.Tb_OPTOOP3.Value,12,3))]
         else if copy(DM2.Tb_OPTOOP3.Value,1,8)='Saldo In' then
            mvalor3:=psini
         else if copy(DM2.Tb_OPTOOP3.Value,1,13)='Venda Periodo' then
            mvalor3:=pVdaPer
         else if copy(DM2.Tb_OPTOOP3.Value,1,22)='Venda Mes/Ate Dt.Final' then
            mvalor3:=pVdaMesAtedia
         else if copy(DM2.Tb_OPTOOP3.Value,1,21)='Venda Periodo Mes/Ant' then
            mvalor3:=pVdaPerAnt
         else if copy(DM2.Tb_OPTOOP3.Value,1,26)='Venda Mes Ant/Ate Dt.Final' then
            mvalor3:=pVdaMesAntAtedia
         else if DM2.Tb_OPTOTOP3.Value='V' then
            mvalor3:=DM2.Tb_OPTOOP3.AsFloat
         else
            mvalor3:=DM2.Qr_ImpRel.fieldbyName(DM2.Tb_OPTOOP3.Value).AsFloat;
         end;
         firpcalc(DM2.Tb_OPTOCODIGO.AsInteger,mvalor0,mvalor1,mvalor2,mvalor3,
                         DM2.Tb_OPTOPER0.Value,
                         DM2.Tb_OPTOPER1.Value,
                         DM2.Tb_OPTOPER2.vALUE);
      DM2.Tb_OP.Next;
      end;
   DM2.Qr_ImpRel.Next;
   end;

DM2.Qr_ImpRel.First;

// fim dos calculos antes de emitir

// linhas do grupo a ser testadas
DM1.Qr_TDVCR.Close;
DM1.Qr_TDVCR.SQL.Clear;
DM1.Qr_TDVCR.Sql.add('Select * from CADTDV where '
                    +iif(DM1.Qr_Tid.Locate('TINOME',PTabOri,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                    +' TDOC='+chr(39)+mreltab+chr(39)
                    +' and TNOME='+chr(39)+mnomrel+chr(39)
                    +' and TLOCAL=4');
DM1.Qr_TDVCR.Open;

mnummin:=0;
mnummax:=0;
While not DM1.Qr_TDVCR.Eof do
   begin
   if mnummin=0 then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if mnummax=0 then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger<mnummin then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger>mnummax then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   DM1.Qr_TDVCR.Next;
   end;
if mnummax>0 then
   mnummax:=mnummax+1;
pldrrg1:=mnummax;

// fim dos grupos


// linhas do sub grupo a ser testadas
DM1.Qr_TDVCR.Close;
DM1.Qr_TDVCR.SQL.Clear;
DM1.Qr_TDVCR.Sql.add('Select * from CADTDV where '
                    +iif(DM1.Qr_Tid.Locate('TINOME',PTabOri,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                    +' TDOC='+chr(39)+mreltab+chr(39)
                    +' and TNOME='+chr(39)+mnomrel+chr(39)
                    +' and TLOCAL=8');
DM1.Qr_TDVCR.Open;

mnummin:=0;
mnummax:=0;
While not DM1.Qr_TDVCR.Eof do
   begin
   if mnummin=0 then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if mnummax=0 then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger<mnummin then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger>mnummax then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   DM1.Qr_TDVCR.Next;
   end;
if mnummax>0 then
   mnummax:=mnummax+1;
pldrrg1:=pldrrg1+(mnummax);

// fim dos sub grupos


pldrcg1:=0;



// linhas do cabecalho grupo a ser testadas

DM1.Qr_TDVCR.Close;
DM1.Qr_TDVCR.SQL.Clear;
DM1.Qr_TDVCR.Sql.add('Select * from CADTDV where '
                    +iif(DM1.Qr_Tid.Locate('TINOME',PTabOri,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                    +' TDOC='+chr(39)+mreltab+chr(39)
                    +' and TNOME='+chr(39)+mnomrel+chr(39)
                    +' and TLOCAL=3');
DM1.Qr_TDVCR.Open;
mnummin:=0;
mnummax:=0;
While not DM1.Qr_TDVCR.Eof do
   begin
   if mnummin=0 then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if mnummax=0 then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger<mnummin then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger>mnummax then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   DM1.Qr_TDVCR.Next;
   end;
pldrcg1:=mnummax;

// fim dos grupos


// linhas do sub grupo a ser testadas

DM1.Qr_TDVCR.Close;
DM1.Qr_TDVCR.SQL.Clear;
DM1.Qr_TDVCR.Sql.add('Select * from CADTDV where '
                    +iif(DM1.Qr_Tid.Locate('TINOME',PTabOri,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                    +' TDOC='+chr(39)+mreltab+chr(39)
                    +' and TNOME='+chr(39)+mnomrel+chr(39)
                    +' and TLOCAL=8');
DM1.Qr_TDVCR.Open;
mnummin:=0;
mnummax:=0;
While not DM1.Qr_TDVCR.Eof do
   begin
   if mnummin=0 then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if mnummax=0 then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger<mnummin then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger>mnummax then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   DM1.Qr_TDVCR.Next;
   end;
pldrcg1:=pldrcg1+(mnummax);

// fim dos sub grupos

// cabecalhos
// fim dos cabecalhos


DM1.Qr_TDVCR.Close;
DM1.Qr_TDVCR.SQL.Clear;
DM1.Qr_TDVCR.Sql.add('Select * from CADTDV where '
                    +iif(DM1.Qr_Tid.Locate('TINOME',PTabOri,[]),'',' TCODEMP=0'+InttoStr(codemp)+' and ')
                    +' TDOC='+chr(39)+mreltab+chr(39)
                    +' and TNOME='+chr(39)+mnomrel+chr(39)
                    +' and TLOCAL=2');
DM1.Qr_TDVCR.Open;

mnummin:=0;
mnummax:=0;
While not DM1.Qr_TDVCR.Eof do
   begin
   if mnummin=0 then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if mnummax=0 then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger<mnummin then
      mnummin:=DM1.Qr_TDVCRTLIN.AsInteger;
   if DM1.Qr_TDVCRTLIN.AsInteger>mnummax then
      mnummax:=DM1.Qr_TDVCRTLIN.AsInteger;
   DM1.Qr_TDVCR.Next;
   end;
mrod:=mnummax-mnummin;
mrod:=mrod+2;


Frm_Impres.RDprint1.TamanhoQteColunas:=DM1.Tb_TDVCATCQTDCOL.AsInteger;
Frm_Impres.RDprint1.TamanhoQteLinhas:=rpqtdlp;
if DM1.Tb_TDVCATCQTDLPP.Value=0 then
   Frm_Impres.Rdprint1.TamanhoQteLPP:=Seis
else
   Frm_Impres.Rdprint1.TamanhoQteLPP:=Oito;
if DM1.Tb_TDVCATCFPADRAO.Value=5 then
   Frm_Impres.Rdprint1.FonteTamanhoPadrao:=S05cpp
else if DM1.Tb_TDVCATCFPADRAO.Value=4 then
   Frm_Impres.Rdprint1.FonteTamanhoPadrao:=S05cpp
else if DM1.Tb_TDVCATCFPADRAO.Value=3 then
   Frm_Impres.Rdprint1.FonteTamanhoPadrao:=S20cpp
else if DM1.Tb_TDVCATCFPADRAO.Value=2 then
   Frm_Impres.Rdprint1.FonteTamanhoPadrao:=S17cpp
else if DM1.Tb_TDVCATCFPADRAO.Value=1 then
   Frm_Impres.Rdprint1.FonteTamanhoPadrao:=S12cpp
else
   Frm_Impres.Rdprint1.FonteTamanhoPadrao:=S10cpp;

if Trim(pNomeImpres)<>'' then
   begin
   if flcadimp_sys(1,0,0,pNomeImpres) then
      begin
      if DM4.Tb_Imp_SysCIPORTA.IsNull then
         Frm_Impres.RDPrint1.SetPrinterbyName(impressora_padrao(0))
      else
         begin
         if not Frm_Impres.RDprint1.SetPrinterbyName(DM4.Tb_Imp_SysCIPORTA.Value) then
            Frm_Impres.RDPrint1.PortaComunicacao:=DM4.Tb_Imp_SysCIPORTA.Value;
         end;   
      if DM4.Tb_Imp_SysCIMODELO.Value=0 then
         Frm_Impres.RDPrint1.Impressora      :=Epson
      else if DM4.Tb_Imp_SysCIMODELO.Value=1 then
         Frm_Impres.RDPrint1.Impressora      :=Grafico
      else if DM4.Tb_Imp_SysCIMODELO.Value=2 then
         Frm_Impres.RDPrint1.Impressora      :=HP
      else if DM4.Tb_Imp_SysCIMODELO.Value=3 then
         Frm_Impres.RDPrint1.Impressora      :=Personalizado
      else if DM4.Tb_Imp_SysCIMODELO.Value=4 then
         Frm_Impres.RDPrint1.Impressora      :=Rima;
      end
   else
      begin
      Frm_Impres.RDPrint1.SetPrinterbyName(impressora_padrao(0));
      end;
   end
else
   Frm_Impres.RDPrint1.SetPrinterbyName(impressora_padrao(0));


Frm_Impres.rdprint1.Abrir;
mtreg:=DM2.Qr_ImpRel.RecordCount;
mlreg:=0;
rppag:=0;
rplin:=0;
rpncol:=0;
rpcolp:=0;
rpdetcolp:=0;
for x:=1 to pQtdCop do
   begin
   DM2.Qr_ImpRel.First;
   FIRPerCab(pTabOri,98);
   rpncol:=1;
   FIRPerCor(pTabOri,1);
// Frm_Impres.rdprint1.Novapagina;
   rpcolp:=0;
   rpncol:=1;
   FIRPerCab(pTabOri,99);
   if (pQtdCop>1) then
      Frm_Impres.rdprint1.Novapagina;
   rplin:=0;
   end;
verteclado(0);
if DM1.Tb_TDVCATCVIS.AsInteger=1 then
   Frm_Impres.Rdprint1.Fechar
else
   if Frm_Impres.Rdprint1.Setup then Frm_Impres.Rdprint1.Fechar;
Result:=True;
end;


function ftab05tstsg(pTabOri:String;ptipo: Integer):Boolean;
begin
mSG:=DM2.Qr_ImpRel.FieldByName(rp_sg).AsString;
if msga='' then
msga:=MSG;
if mSG<>MSGA then
   begin
   if (fdetncol>1) and (fdettpcol<1) and (mdetncol>0) and (mlmax>0) then
      begin
      rplin:=rplin+mlmax;
      mdetncol:=0;
      rpdetcolp:=0;
      end;

   if rplin+mrod+pldrrg1>rpqtdlp-2 then
      begin
      FIRPerCab(pTabOri,2);
      rplin:=0;
      firpertp(0);
      FIRPerCab(pTabOri,0);
//              FIRPerCab(pTabOri,7);
      end;
   FIRPerCab(pTabOri,8);
   mSGA:=mSG;
   if mpagsg then
      begin
      FIRPerCab(pTabOri,2);
      rplin:=0;
      firpertp(0);
      FIRPerCab(pTabOri,0);
//               FIRPerCab(pTabOri,7);
      end
   else
      begin
      if rplin+mrod+pldrcg1>rpqtdlp-2 then
         begin
         FIRPerCab(pTabOri,2);
         firpertp(0);
         FIRPerCab(pTabOri,0);
         end;
      FIRPerCab(pTabOri,7);
      end;
  end;
result:=True;
end;
function ftab05tstgru(pTabOri: String;ptipo: Integer):Boolean;
begin

mgrupo:=DM2.Qr_ImpRel.FieldByName(rp_grupo).AsString;
if mgrupoa='' then
   mgrupoa:=Mgrupo;
if mGrupo<>MGrupoA then
   begin
   if (fdetncol>1) and (fdettpcol<1) and (mdetncol>0) and (mlmax>0) then
      begin
      rplin:=rplin+mlmax;
      mdetncol:=0;
      rpdetcolp:=0;
      end;

   if rplin+mrod+pldrrg1>rpqtdlp-2 then
      begin
      FIRPerCab(pTabOri,2);
      rplin:=0;
      firpertp(0);
      FIRPerCab(pTabOri,0);
//               FIRPerCab(pTabOri,3);
      end;
   if (pimpsg) and (trim(rp_sg)<>'') then
      begin
      fIRPerCab(pTabOri,8);
      mSGa:=DM2.Qr_ImpRel.FieldByName(rp_sg).AsString;
      end;
   FIRPerCab(pTabOri,4);
   mGrupoA:=mGrupo;
   if mpaggr then
      begin
      FIRPerCab(pTabOri,2);
      rplin:=0;
      firpertp(0);
      FIRPerCab(pTabOri,0);
//               FIRPerCab(pTabOri,3);
      end
   else
      begin
      if rplin+mrod+pldrcg1>rpqtdlp-2 then
         begin
         FIRPerCab(pTabOri,2);
         firpertp(0);
         FIRPerCab(pTabOri,0);
         end;
      FIRPerCab(pTabOri,3);
      if (pimpsg) and (trim(rp_sg)<>'') then
         begin
         fIRPerCab(pTabOri,7);
         end;

      end;
   end;
result:=True;
end;
function fimpext(pvalor: Real; ptipo,porigem,ptfonte,ptcext_qtdl
         ,ptlin,ptcext_1lp,ptcext_2lp,ptcext_3lp
         ,ptcext_1lt,ptcext_2lt,ptcext_3lt
         ,ptcext_1ic,ptcext_2ic,ptcext_3ic:Integer): Boolean;
var
mext: String;
mlinha: Integer;
begin
if ptipo=1 then
   mext:=Extenso(pvalor)
else if ptipo=2 then
   mext:=Extenso2(round(pvalor));
mtam:=pTCEXT_1LT+pTCEXT_2LT+pTCEXT_3LT;
if length(mext)<mtam then
   mext:=insere2(mext,'*',mtam);
mtam:=0;
if ptfonte=0 then
   mfonte:=normal
else if ptfonte=1 then
   mfonte:=comp12
else if pTFONTE=2 then
   mfonte:=comp17
else if pTFONTE=3 then
   mfonte:=comp20
else if ptFONTE=4 then
   mfonte:=negrito
else if ptfonte=5 then
   mfonte:=expandido;

if (pOrigem=1) or (porigem=2) then
   mlinha:=0
else
   mlinha:=rplin;
//  impressão da primeira linha do extenso
mtam:=ptcext_1lt;
maux:=copy(mext,1,mtam);

if (pTLIN+pTCEXT_1LP)>mlmax then
   mlmax:=(pTLIN+pTCEXT_1LP);
if fnumcol<2 then
   Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP),pTCEXT_1IC,maux,[mfonte])
else if ftpcol=1 then
   begin
   for mnumcol:=1 to fnumcol do
      begin
      if mnumcol=1 then
         rpcolp:=0
      else
         rpcolp:=rpcolp+fintcol;
      Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP),rpcolp+pTCEXT_1IC,maux,[mfonte])
      end;
   end
else
   begin
   Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP),rpcolp+pTCEXT_1IC,maux,[mfonte]);
   end;

//  impressão da segunda linha do extenso
if pTCEXT_QTDL>1 then
   begin
   mtam:=pTCEXT_2LT;
   maux:=copy(mext,(pTCEXT_1LT+1),pTCEXT_2LT);
   if (pTLIN+pTCEXT_1LP+pTCEXT_2LP)>mlmax then
      mlmax:=(pTLIN+pTCEXT_1LP+pTCEXT_2LP);
   if fnumcol<2 then
      Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP+pTCEXT_2LP),pTCEXT_2IC,maux,[mfonte])
   else if ftpcol=1 then
      begin
      for mnumcol:=1 to fnumcol do
         begin
         if mnumcol=1 then
            rpcolp:=0
         else
            rpcolp:=rpcolp+fintcol;
         Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP+pTCEXT_2LP),rpcolp+pTCEXT_2IC,maux,[mfonte])
         end;
      end
   else
      begin
      Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP+pTCEXT_2LP),rpcolp+pTCEXT_2IC,maux,[mfonte]);
      end;
   end;

//  impressão da segunda linha do extenso
if pTCEXT_QTDL>2 then
   begin
   mtam:=pTCEXT_3LT;
   maux:=copy(mext,(pTCEXT_1LT+pTCEXT_2LT+1),pTCEXT_3LT);
   if (pTLIN+pTCEXT_1LP+pTCEXT_2LP+pTCEXT_3LP)>mlmax then
      mlmax:=(pTLIN+pTCEXT_1LP+pTCEXT_2LP+pTCEXT_3LP);
   if fnumcol<2 then
      Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP+pTCEXT_2LP+pTCEXT_3LP),pTCEXT_3IC,maux,[mfonte])
   else if ftpcol=1 then
      begin
      for mnumcol:=1 to fnumcol do
         begin
         if mnumcol=1 then
            rpcolp:=0
         else
            rpcolp:=rpcolp+fintcol;
         Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP+pTCEXT_2LP+pTCEXT_3LP),rpcolp+pTCEXT_3IC,maux,[mfonte])
         end;
      end
   else
      begin
      Frm_Impres.Rdprint1.ImpF(mlinha+(pTLIN+pTCEXT_1LP+pTCEXT_2LP+pTCEXT_3LP),rpcolp+pTCEXT_3IC,maux,[mfonte]);
      end;
   end;
result:=True;
end;

procedure TFrm_Tab05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;


end;


end.


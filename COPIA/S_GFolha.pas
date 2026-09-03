unit S_GFolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func,db,dbtables,S_DM1,lerarq,S_Fun,S_DM2;

type
  TFrm_GFolha = class(TForm)
    bb_Folha: TBitBtn;
    bb_Ferias: TBitBtn;
    bb_13unico: TBitBtn;
    bb_13pp: TBitBtn;
    bb_sp: TBitBtn;
    bb_recisao: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    MES: TEdit;
    Label2: TLabel;
    ANO: TEdit;
    Label3: TLabel;
    CODFUN: TEdit;
    NOMFUN: TEdit;
    Qr_Fun: TQuery;
    Qr_FunCFCODEMP: TFloatField;
    Qr_FunCFCODFUN: TFloatField;
    Qr_FunCFNOMFUN: TStringField;
    Qr_FunCFENDERECO: TStringField;
    Qr_FunCFBAIRRO: TStringField;
    Qr_FunCFNOMLOC: TStringField;
    Qr_FunCFUF: TStringField;
    Qr_FunCFCODBAI: TFloatField;
    Qr_FunCFCODLOC: TFloatField;
    Qr_FunCFCEP: TStringField;
    Qr_FunCFDTNAS: TDateTimeField;
    Qr_FunCFNATURAL: TStringField;
    Qr_FunCFNAT_UF: TStringField;
    Qr_FunCFNACIONAL: TStringField;
    Qr_FunCFDTMIG: TDateTimeField;
    Qr_FunCFNIVEL_ESC: TFloatField;
    Qr_FunCFCNPF: TFloatField;
    Qr_FunCFRG: TStringField;
    Qr_FunCFDTRG: TDateTimeField;
    Qr_FunCFORGAORG: TStringField;
    Qr_FunCFCTPS: TStringField;
    Qr_FunCFRESERV: TStringField;
    Qr_FunCFTIT_ELE: TStringField;
    Qr_FunCFPIS: TStringField;
    Qr_FunCFHABIL: TStringField;
    Qr_FunCFEST_CIV: TFloatField;
    Qr_FunCFSEXO: TFloatField;
    Qr_FunCFCONJUGE: TStringField;
    Qr_FunCFPAI: TStringField;
    Qr_FunCFMAE: TStringField;
    Qr_FunCFN_DEP: TFloatField;
    Qr_FunCFCODCAR: TFloatField;
    Qr_FunCFCODDEP: TFloatField;
    Qr_FunCFDT_ADM: TDateTimeField;
    Qr_FunCFDT_DEM: TDateTimeField;
    Qr_FunCFDT_CAD: TDateTimeField;
    Qr_FunCFDT_UALT: TDateTimeField;
    Qr_FunCFCODUSR: TFloatField;
    Qr_FunCFSALARIO: TFloatField;
    Qr_FunCFGRATIF: TFloatField;
    Qr_FunCFSTATUS: TFloatField;
    Qr_FunCFOBSL01: TStringField;
    Qr_FunCFOBSL02: TStringField;
    Qr_FunCFOBSL03: TStringField;
    Qr_FunCFOBSL04: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bb_FolhaClick(Sender: TObject);
    procedure bb_FeriasClick(Sender: TObject);
    procedure bb_recisaoClick(Sender: TObject);
    procedure bb_13unicoClick(Sender: TObject);
    procedure bb_13ppClick(Sender: TObject);
    procedure bb_spClick(Sender: TObject);
    procedure ANOKeyPress(Sender: TObject; var Key: Char);
    procedure MESExit(Sender: TObject);
    procedure ANOExit(Sender: TObject);
    procedure CODFUNKeyPress(Sender: TObject; var Key: Char);
    procedure CODFUNExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
     function fgfolhaGerar(ptipo: Integer): Boolean;
     function fgfolhaverifica(ptipo: Integer): Boolean;
     function fgfolhagravalcto(ptipo,psoma: Integer): Boolean;

  public
    { Public declarations }
  end;
function fgfolhaFINSS(pbase: Real): Real;
function fgfolhaFIR(pbase: Real): Real;
function fgfolhaFFGTS(pbase: Real): Real;


var
  Frm_GFolha: TFrm_GFolha;
  mqtdpad,mquant,mvalor,mtotal: Real;
  mqtddm: Integer=30;

implementation

uses S_Pgb;

{$R *.dfm}

procedure TFrm_GFolha.FormCreate(Sender: TObject);
begin
mes.Text:=FormatDateTime('mm',pdatasis);
ano.Text:=FormatDateTime('yyyy',pdatasis);
end;

procedure TFrm_GFolha.bbSairClick(Sender: TObject);
begin
close;
end;
function TFrm_GFolha.fgfolhaGerar(ptipo: Integer): Boolean;
var
msobrepor: Integer; //0-nao tem registro 1-nao sobrepoe 2-sobrepoe
mbfgts, mbinss, mbvt, mbir: Real;
mlancou,mtinss,mtfgts, mtvt, mtir: Boolean;
mainss, mair, mafgts, mavt: Real;
mvinss, mvir, mvfgts, mvvt: Real;
mtotven, mtotdes: Real;
minc: String;
begin
if ptipo=5 then
   begin
   MessageDlg('Ainda em fase de desenvolvimento',mtWarning,[mbOk],0);
   Result:=False;
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Sql.Add('Select count(*) from CADRFOL where '
                  +iif(DM1.Qr_Tid.locate('TINOME','CADFOL',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and ')
                  +' RFLOCAL=0'+IntToStr(ptipo)
                  +' and RFMES=0'+Trim(MES.Text)
                  +' and RFANO=0'+Trim(ANO.Text)
                  +iif(ValFloat(CODFUN.Text)=0,'',' and RFCODFUN=0'+Trim(CODFUN.Text)));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
   begin
   if ValFloat(CODFUN.Text)<>0 then
      begin
         Case MessageDlg('Ja existe folha gerada para este funcionário!'+#13
                     +'Deseja Gerar uma nova?',mtWarning,[mbYes,mbNo,mbCancel],0) of
         mrYes: msobrepor:=2;
         mrNo : exit;
         else exit;
         end;
      end
   else
      begin
         Case MessageDlg('Ja existe folha gerada neste periodo!'+#13
                  +'quer sobrepor as existentes?',mtWarning,[mbYes,mbNo,mbCancel],1) of
         mrYes: msobrepor:=2;
         mrNo : msobrepor:=1;
         else exit;
         end;
      end;
   end;
Qr_Fun.Close;
Qr_Fun.SQL.Clear;
Qr_Fun.SQL.Add('Select * from CADFUN');
minc:=' where ';
if not DM1.Qr_Tid.Locate('TINOME','CADFUN',[]) then
   begin
   Qr_Fun.SQL.Add(minc+' CFCODEMP=0'+IntToStr(codemp));
   minc:=' and ';
   end;
if ValFloat(CODFUN.Text)<>0 then
   Qr_Fun.SQL.Add(minc+' CFCODFUN=0'+Trim(CODFUN.Text));
Qr_fun.Open;
if msobrepor=2 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADLFOL where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' LCCODEMP=0'+IntToStr(codemp)+' and ')
                     +' LCLOCAL=0'+IntToStr(ptipo)
                     +' and LCMES=0'+Trim(mes.Text)
                     +' and LCANO=0'+Trim(ANO.Text)
                     +iif(valFloat(CODFUN.Text)=0,'',' and LCCODFUN=0'+Trim(CODFUN.Text)));
   DM1.Query1.ExecSQL;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADRFOL where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADFOL',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and ')
                     +' RFLOCAL=0'+IntToStr(ptipo)
                     +' and RFMES=0'+Trim(mes.Text)
                     +' and RFANO=0'+Trim(ANO.Text)
                     +iif(valFloat(CODFUN.Text)=0,'',' and RFCODFUN=0'+Trim(CODFUN.Text)));
   DM1.Query1.ExecSQL;
   end;
Application.CreateForm(TFrm_Pgb, Frm_Pgb);
Frm_Pgb.Label1.Caption:='Gerando Folha de Pagamento!';
Frm_Pgb.GB_ATUAL.Caption:='Progresso da Geração';
mlid:=0;
mqtd:=Qr_Fun.RecordCount;
Frm_pgb.Show;
Frm_Pgb.Update;
mqtddm:=30;
While not Qr_Fun.Eof do
   begin
   mlid:=mlid+1;
   Frm_Pgb.Gauge1.Progress:=mlid * 100 div mqtd;
   if msobrepor=1 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Sql.Add('Select count(*) from CADRFOL where '
                        +iif(DM1.Qr_Tid.locate('TINOME','CADFOL',[]),'',' RFCODEMP=0'+IntToStr(codemp)+' and ')
                        +' RFLOCAL=0'+IntToStr(ptipo)
                        +' and RFMES=0'+Trim(MES.Text)
                        +' and RFANO=0'+Trim(ANO.Text)
                        +' and RFCODFUN=0'+Qr_FunCFCODFUN.AsString);
      DM1.Query1.Open;
      if DM1.Query1.Fields[0].AsInteger>0 then
         begin
         Qr_Fun.Next;
         Continue;
         end;
      end;
   DM2.Tb_EvePref.Close;
   DM2.Tb_EvePref.SQL.Clear;
   DM2.Tb_EvePref.SQL.Add('Select * from EVEPREF where '
                         +iif(dm1.Qr_TID.Locate('TINOME','CADEVE',[]),'',' EPCODEMP=0'+intTostr(codemp)+' and ')
                         +' EPLOCAL=0'+IntToStr(ptipo)
                         +' and ((EPCODCLI=0) or (EPCODCLI=0'+Qr_FunCFCODFUN.AsString+'))');
   DM2.Tb_EvePref.Open;
   if DM2.Tb_EvePref.Eof then
      begin
      Qr_Fun.Next;
      Continue;
      end;

   mbfgts:=0;
   mbinss:=0;
   mbvt  :=0;
   mbir  :=0;
   mainss:=0;
   mair  :=0;
   mafgts:=0;
   mavt  :=0;
   mtinss:=False;
   mtvt  :=False;
   mtir  :=False;
   mtfgts:=False;
   mvalor:=0;
   mtotal:=0;
   mquant:=0;
   mlancou:=False;
   mvinss:=0;
   mvir  :=0;
   mvfgts:=0;
   mvvt  :=0;
   mtotven:=0;
   mtotdes:=0;
   While not DM2.Tb_EvePref.Eof do
      begin
      if not flcadeve(1,0,DM2.Tb_EvePrefEPCODEVE.AsString) then
         begin
         MessageDlg('Erro ao ler o Evento: '+DM2.Tb_EvePrefEPCODEVE.AsString+' da folha do '+#13
                   +'funcionário: '+Qr_FunCFNOMFUN.AsString,mtWarning,[mbOk],0);
         DM2.Tb_EvePref.Next;
         Continue;
         end;
      mqtdpad:=1;
      mquant :=1;
      if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODINSS.Value then
         begin
         mtinss:=True;
         DM2.Tb_EvePref.Next;
         Continue;
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODIR.Value then
         begin
         mtir:=True;
         DM2.Tb_EvePref.Next;
         Continue;
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODFGTS.Value then
         begin
         mtfgts:=True;
         DM2.Tb_EvePref.Next;
         Continue;
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODVT.Value then
         begin
         mtvt:=True;
         DM2.Tb_EvePref.Next;
         Continue;
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value then
         begin
         mvalor :=Qr_FunCFSALARIO.Value;
         mquant :=mqtddm;
         mqtdpad:=mqtddm;
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODGRA.Value then
         begin
         mvalor :=Qr_FunCFGRATIF.Value;
         mquant :=mqtddm;
         mqtdpad:=mqtddm;
         end
      else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODSFAM.Value then
         begin
         if (Qr_FunCFN_DEP.Value<1) or (DM2.Tb_EveCEVALOR.Value<=0) then
            begin
            DM2.Tb_EvePref.Next;
            Continue;
            end
         else
            begin
            mquant:=Qr_FunCFN_DEP.Value;
            mvalor:=DM2.Tb_EveCEVALOR.Value;
            end;
         end
      else if DM2.Tb_EveCETP_EVENTO.Value=1 then
         begin
         mqtdpad:=DM2.Tb_ParFPagPFQTDHM.Value;
         mquant:=DM2.Tb_EvePrefEPQUANT.Value;
         mvalor:=DM2.Tb_EveCEVALOR.Value
         end
      else
         begin
         mquant:=DM2.Tb_EvePrefEPQUANT.Value;
         mvalor:=DM2.Tb_EveCEVALOR.Value
         end;
      if DM2.Tb_EveCETIPO.Value=1 then
         begin
         mtotal:=mvalor*Qr_FunCFSALARIO.Value/100;
         mtotal:=mtotal*mquant/mqtdpad;
         end
      else
         mtotal:=mvalor*mquant/mqtdpad;
      if DM2.Tb_EveCENAT.Value=0 then
         mtotven:=mtotven+mtotal
      else
         mtotdes:=mtotdes+mtotal;

      if DM2.Tb_EveCEINCINSS.Value=0 then
         begin
         if DM2.Tb_EveCENAT.Value=0 then
            mbinss:=mbinss+mtotal
         else
            mbinss:=mbinss-mtotal;
         end;
      if DM2.Tb_EveCEINCFGTS.Value=0 then
         begin
         if DM2.Tb_EveCENAT.Value=0 then
            mbfgts:=mbfgts+mtotal
         else
            mbfgts:=mbfgts-mtotal;
         end;
      if DM2.Tb_EveCEINCVT.Value=0 then
         begin
         if DM2.Tb_EveCENAT.Value=0 then
            mbvt:=mbvt+mtotal
         else
            mbvt:=mbvt-mtotal;
         end;
      if DM2.Tb_EveCEINCIR.Value=0 then
         begin
         if DM2.Tb_EveCENAT.Value=0 then
            mbir:=mbir+mtotal
         else
            mbir:=mbir-mtotal;
         end;

      mlancou:=true;
      fgfolhagravalcto(ptipo,0);

// INCLUSAO DE DSR(Descanço semanal remunerado caso haja
      if DM2.Tb_EveCECODEDSR.Value>0 then
         begin
         mquant:=0;
         mvalor:=0;
         mtotal:=0;
         mqtdpad:=1;
         if not flcadeve(1,0,DM2.Tb_EveCECODEDSR.AsString) then
            begin
            MessageDlg('Erro ao ler o Evento de descanço semanal remunerado(DSR) da folha do '+#13
                   +'funcionário: '+Qr_FunCFNOMFUN.AsString,mtWarning,[mbOk],0);
            DM2.Tb_EvePref.Next;
            Continue;
            end;
         if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODINSS.Value then
            begin
            DM2.Tb_EvePref.Next;
            Continue;
            end
         else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODIR.Value then
            begin
            DM2.Tb_EvePref.Next;
            Continue;
            end
         else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODVT.Value then
            begin
            DM2.Tb_EvePref.Next;
            Continue;
            end
         else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODSAL.Value then
            begin
            mvalor:=Qr_FunCFSALARIO.Value;
            mquant:=mqtddm;
            mqtdpad:=mqtddm;
            end
         else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODGRA.Value then
            begin
            mvalor:=Qr_FunCFGRATIF.Value;
            mquant:=mqtddm;
            mqtdpad:=mqtddm;
           end
         else if DM2.Tb_EveCECODEVE.Value=DM2.Tb_ParFPagPFCODSFAM.Value then
            begin
            if (Qr_FunCFN_DEP.Value<1) or (DM2.Tb_EveCEVALOR.Value<=0) then
               begin
               Qr_Fun.Next;
               Continue;
               end
            else
               begin
               mquant:=Qr_FunCFN_DEP.Value;
               mvalor:=DM2.Tb_EveCEVALOR.Value
               end;
            end
         else
            begin
            mquant:=1;
            mvalor:=DM2.Tb_EveCEVALOR.Value
            end;
         if DM2.Tb_EveCETIPO.Value=1 then
            begin
            mtotal:=mvalor*Qr_FunCFSALARIO.Value/100;
            mtotal:=mtotal*mquant/mqtdpad;
            end
         else
            mtotal:=mvalor*mquant/mqtdpad;

         if DM2.Tb_EveCEINCINSS.Value=0 then
            begin
            if DM2.Tb_EveCENAT.Value=0 then
               mbinss:=mbinss+mtotal
            else
               mbinss:=mbinss-mtotal;
            end;
         if DM2.Tb_EveCEINCFGTS.Value=0 then
            begin
            if DM2.Tb_EveCENAT.Value=0 then
               mbfgts:=mbfgts+mtotal
            else
               mbfgts:=mbfgts-mtotal;
            end;
         if DM2.Tb_EveCEINCVT.Value=0 then
            begin
            if DM2.Tb_EveCENAT.Value=0 then
               mbvt:=mbvt+mtotal
            else
               mbvt:=mbvt-mtotal;
            end;
         if DM2.Tb_EveCEINCIR.Value=0 then
            begin
            if DM2.Tb_EveCENAT.Value=0 then
               mbir:=mbir+mtotal
            else
               mbir:=mbir-mtotal;
            end;
         if DM2.Tb_EveCENAT.Value=0 then
            mtotven:=mtotven+mtotal
         else
            mtotdes:=mtotdes+mtotal;
         mlancou:=true;
         fgfolhagravalcto(ptipo,0);
         end;
      DM2.Tb_EvePref.Next;
      end;
   if mlancou then
      begin
      mquant:=1;
      mqtdpad:=1;

      if (mtinss) and (mbinss>0) then
         begin
         mainss:=fgfolhaFINSS(mbinss);
         mvalor:=mainss;
         mtotal:=mvalor*mbinss/100;
         mtotal:=Arredonda(mtotal,2);
         mtotal:=mtotal*mquant/mqtdpad;
         mvinss:=mtotal;

         if not flcadeve(1,0,DM2.Tb_ParFPagPFCODINSS.AsString) then
            begin
            MessageDlg('Erro ao ler o Evento de INSS da folha do '+#13
                   +'funcionário: '+Qr_FunCFNOMFUN.AsString,mtWarning,[mbOk],0);
            end
         else
            begin
            if DM2.Tb_EveCENAT.Value=0 then
               mtotven:=mtotven+mtotal
            else
               mtotdes:=mtotdes+mtotal;

            fgfolhagravalcto(ptipo,0);
            end;
         end;

      if (mbfgts>0) then
         begin
         mafgts:=fgfolhaFFGTS(mbfgts);
         mvalor:=mafgts;
         mtotal:=mvalor*mbfgts/100;
         mtotal:=Arredonda(mtotal,2);
         mtotal:=mtotal*mquant/mqtdpad;
         mvfgts:=mtotal;
         if not flcadeve(1,0,DM2.Tb_ParFPagPFCODFGTS.AsString) then
            begin
            MessageDlg('Erro ao ler o Evento de FGTS da folha do '+#13
                   +'funcionário: '+Qr_FunCFNOMFUN.AsString,mtWarning,[mbOk],0);
            end
         else
            begin
            if mtfgts then
               fgfolhagravalcto(ptipo,1);
            end;
         end;


      if (mbir>0) then
         begin
         mair:=fgfolhaFIR(mbir);
         if mair>0 then
            begin

            mvalor:=mair;
            mtotal:=mvalor*mbir/100;
            mtotal:=Arredonda(mtotal,2);
            mtotal:=mtotal*mquant/mqtdpad;
            mvir  :=mtotal;
            if not flcadeve(1,0,DM2.Tb_ParFPagPFCODIR.AsString) then
               begin
               MessageDlg('Erro ao ler o Evento de IR da folha do '+#13
                      +'funcionário: '+Qr_FunCFNOMFUN.AsString,mtWarning,[mbOk],0);
               end
            else
               begin
               if DM2.Tb_EveCENAT.Value=0 then
                  mtotven:=mtotven+mtotal
               else
                  mtotdes:=mtotdes+mtotal;
               fgfolhagravalcto(ptipo,0);
               end;
            end;
         end;
      if (mtvt) and (mbvt>0) then
         begin
         if not flcadeve(1,0,DM2.Tb_ParFPagPFCODVT.AsString) then
            begin
            MessageDlg('Erro ao ler o Evento de Vale transporte da folha do '+#13
                      +'funcionário: '+Qr_FunCFNOMFUN.AsString,mtWarning,[mbOk],0);
            end
         else
            begin
            mvalor:=DM2.Tb_EveCEVALOR.Value;
            if DM2.Tb_EveCETIPO.Value=0 then
               begin
               mtotal:=mvalor*mquant;
               mavt:=0;
               end
            else
               begin
               mtotal:=(mbvt*mvalor)/100;
               mtotal:=Arredonda(mtotal,2);
               mavt:=mvalor;
               end;
            mvvt:=mtotal;
            if DM2.Tb_EveCENAT.Value=0 then
               mtotven:=mtotven+mtotal
            else
               mtotdes:=mtotdes+mtotal;

            fgfolhagravalcto(ptipo,0);
            end;
         end;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Insert into CADRFOL ('
                        +'RFCODEMP, '
                        +'RFLOCAL, '
                        +'RFMES, '
                        +'RFANO, '
                        +'RFCODFUN, '
                        +'RFBASEFGTS, '
                        +'RFVLRFGTS, '
                        +'RFBASEINSS, '
                        +'RFVLRINSS, '
                        +'RFBASEVT, '
                        +'RFALFGTS, '
                        +'RFALINSS, '
                        +'RFALVT, '
                        +'RFBASEIR, '
                        +'RFALIR, '
                        +'RFVLRIR, '
                        +'RFTOTVEN, '
                        +'RFTOTDES,'
                        +'RFSALBASE) values ('
                        +IntToStr(codemp)+',0'
                        +intToStr(ptipo)+',0'
                        +Trim(MES.Text)+',0'
                        +Trim(ANO.Text)+',0'
                        +Qr_FunCFCODFUN.AsString+',0'
                        +mudavp(FloatToStr(mbfgts))+',0'
                        +mudavp(FloatToStr(mvfgts))+',0'
                        +mudavp(FloatToStr(mbinss))+',0'
                        +mudavp(FloatToStr(mvinss))+',0'
                        +mudavp(FloatToStr(mbvt))+',0'
                        +mudavp(FloatToStr(mafgts))+',0'
                        +mudavp(FloatToStr(mainss))+',0'
                        +mudavp(FloatToStr(mavt))+',0'
                        +mudavp(FloatToStr(mbir))+',0'
                        +mudavp(FloatToStr(mair))+',0'
                        +mudavp(FloatToStr(mvir))+',0'
                        +mudavp(FloatToStr(mtotven))+',0'
                        +mudavp(FloatToStr(mtotdes))+',0'
                        +mudavp(Qr_FunCFSALARIO.AsString)+')');
      DM1.Query2.ExecSQL;
      end;
   Qr_Fun.Next;
   end;
MessageDlg('Concluido!',mtInformation,[mbOk],0);
Frm_Pgb.Free;
end;

procedure TFrm_GFolha.bb_FolhaClick(Sender: TObject);
begin
if fgfolhaverifica(0) then
   fgfolhaGerar(0);
end;

procedure TFrm_GFolha.bb_FeriasClick(Sender: TObject);
begin
if fgfolhaverifica(0) then
   fgfolhaGerar(4);

end;

procedure TFrm_GFolha.bb_recisaoClick(Sender: TObject);
begin
if fgfolhaverifica(0) then
   fgfolhaGerar(5);

end;

procedure TFrm_GFolha.bb_13unicoClick(Sender: TObject);
begin
if fgfolhaverifica(0) then
   fgfolhaGerar(1);
end;

procedure TFrm_GFolha.bb_13ppClick(Sender: TObject);
begin
if fgfolhaverifica(0) then
   fgfolhaGerar(2);

end;

procedure TFrm_GFolha.bb_spClick(Sender: TObject);
begin
if fgfolhaverifica(0) then
   fgfolhaGerar(3);

end;

procedure TFrm_GFolha.ANOKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_GFolha.MESExit(Sender: TObject);
begin
if (ValFloat(MES.Text)<1) or (ValFloat(MES.Text)>12) then
   begin
   MessageDlg('Mês Invalido!',mtWarning,[mbOk],0);
   MES.SetFocus;
   exit;
   end;
end;

procedure TFrm_GFolha.ANOExit(Sender: TObject);
begin          
if ValFloat(ANO.Text)<2000 then
   begin
   MessageDlg('Ano Invalido!',mtWarning,[mbOk],0);
   ANO.SetFocus;
   end;
end;

procedure TFrm_GFolha.CODFUNKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFUN.Text:=fChamafun(0,'frm_folha',key);
   CODFUNExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_GFolha.CODFUNExit(Sender: TObject);
begin
if Trim(CODFUN.Text)='' then
   NOMFUN.Text:='Todos...'
else
   begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',TRIM(CODFUN.Text)) then
      NOMFUN.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      MessageDlg('Funcionário não Cadastrado!',mtWarning,[mbOk],0);
      CODFUN.SetFocus;
      end;
   end;
end;

function TFrm_GFolha.fgfolhaverifica(ptipo: Integer): Boolean;
begin
if not flParFPag(0,0,'1') then
   begin
   MessageDlg('Arquivo de Parametros da folha não Encontrado!',mtError,[mbok],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODSAL.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de salario em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODGRA.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de gratificações em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODSAL.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de salario em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODSFAM.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de salario de familia em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODVT.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de vale transporte!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFQTDHM.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o quantidade de horas por mes!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODINSS.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de INSS em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;

if DM2.Tb_ParFPagPFCODIR.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de Imposto de Renda em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
if DM2.Tb_ParFPagPFCODFGTS.AsInteger<=0 then
   begin
   MessageDlg('Falta configurar o codigo do evento de FGTS em parametros!',mtError,[mbOk],0);
   result:=False;
   exit;
   end;
result:=true;
end;

function fgfolhaFINSS(pbase: Real): Real;
var
paliq: Real;
begin
paliq:=0;
if (DM2.Tb_ParFPagPFFINSS05A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFINSS05A.Value) and (pbase<=DM2.Tb_ParFPagPFFINSS05B.Value) then
      paliq:=DM2.Tb_ParFPagPFFINSS05.Value;
   end;
if (DM2.Tb_ParFPagPFFINSS04A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFINSS04A.Value) and (pbase<=DM2.Tb_ParFPagPFFINSS04B.Value) then
      paliq:=DM2.Tb_ParFPagPFFINSS04.Value;
   end;
if (DM2.Tb_ParFPagPFFINSS03A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFINSS03A.Value) and (pbase<=DM2.Tb_ParFPagPFFINSS03B.Value) then
      paliq:=DM2.Tb_ParFPagPFFINSS03.Value;
   end;
if (DM2.Tb_ParFPagPFFINSS02A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFINSS02A.Value) and (pbase<=DM2.Tb_ParFPagPFFINSS02B.Value) then
       paliq:=DM2.Tb_ParFPagPFFINSS02.Value;
   end;
if (DM2.Tb_ParFPagPFFINSS01A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFINSS01A.Value) and (pbase<=DM2.Tb_ParFPagPFFINSS01B.Value) then
      paliq:=DM2.Tb_ParFPagPFFINSS01.Value;
   end;
result:=paliq;
end;

function fgfolhaFIR(pbase: Real): Real;
var
paliq: Real;
begin
paliq:=0;
if (DM2.Tb_ParFPagPFFIR05A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFIR05A.Value) and (pbase<=DM2.Tb_ParFPagPFFIR05B.Value) then
      paliq:=DM2.Tb_ParFPagPFFIR05.Value;
   end;
if (DM2.Tb_ParFPagPFFIR04A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFIR04A.Value) and (pbase<=DM2.Tb_ParFPagPFFIR04B.Value) then
      paliq:=DM2.Tb_ParFPagPFFIR04.Value;
   end;
if (DM2.Tb_ParFPagPFFIR03A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFIR03A.Value) and (pbase<=DM2.Tb_ParFPagPFFIR03B.Value) then
      paliq:=DM2.Tb_ParFPagPFFIR03.Value;
   end;
if (DM2.Tb_ParFPagPFFIR02A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFIR02A.Value) and (pbase<=DM2.Tb_ParFPagPFFIR02B.Value) then
       paliq:=DM2.Tb_ParFPagPFFIR02.Value;
  end;
if (DM2.Tb_ParFPagPFFIR01A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFIR01A.Value) and (pbase<=DM2.Tb_ParFPagPFFIR01B.Value) then
      paliq:=DM2.Tb_ParFPagPFFIR01.Value;
   end;
result:=paliq;
end;

function fgfolhaFFGTS(pbase: Real): Real;
var
paliq: Real;
begin
paliq:=0;
if (DM2.Tb_ParFPagPFFFGTS05A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFFGTS05A.Value) and (pbase<=DM2.Tb_ParFPagPFFFGTS05B.Value) then
      paliq:=DM2.Tb_ParFPagPFFFGTS05.Value;
   end;
if (DM2.Tb_ParFPagPFFFGTS04A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFFGTS04A.Value) and (pbase<=DM2.Tb_ParFPagPFFFGTS04B.Value) then
      paliq:=DM2.Tb_ParFPagPFFFGTS04.Value;
   end;
if (DM2.Tb_ParFPagPFFFGTS03A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFFGTS03A.Value) and (pbase<=DM2.Tb_ParFPagPFFFGTS03B.Value) then
      paliq:=DM2.Tb_ParFPagPFFFGTS03.Value;
   end;
if (DM2.Tb_ParFPagPFFFGTS02A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFFGTS02A.Value) and (pbase<=DM2.Tb_ParFPagPFFFGTS02B.Value) then
       paliq:=DM2.Tb_ParFPagPFFFGTS02.Value;
   end;
if (DM2.Tb_ParFPagPFFFGTS01A.Value>0) then
   begin
   if (pbase>=DM2.Tb_ParFPagPFFFGTS01A.Value) and (pbase<=DM2.Tb_ParFPagPFFFGTS01B.Value) then
      paliq:=DM2.Tb_ParFPagPFFFGTS01.Value;
   end;
result:=paliq;
end;



function TFrm_GFolha.fgfolhagravalcto(ptipo,psoma: Integer): Boolean;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Insert into CADLFOL ('
                  +' LCCODEMP, '
                  +' LCLOCAL, '
                  +' LCMES, '
                  +' LCANO, '
                  +' LCCODFUN, '
                  +' LCCODEVE, '
                  +' LCQTD, '
                  +' LCNAT, '
                  +' LCTIPO, '
                  +' LCVALOR, '
                  +' LCTOTAL, '
                  +' LCINCINSS, '
                  +' LCINCFGTS, '
                  +' LCINCIR, '
                  +' LCINCVT, '
                  +' LCQTDPAD, '
                  +' LCSOMA) values (0'
                  +IntToStr(codemp)+',0'
                  +IntTosTr(ptipo)+',0'
                  +Trim(MES.Text)+',0'
                  +Trim(ANO.Text)+',0'
                  +Qr_FunCFCODFUN.AsString+',0'
                  +DM2.Tb_EveCECODEVE.AsString+',0'
                  +mudavp(FloatToStr(mquant))+',0'
                  +DM2.Tb_EveCENAT.AsString+',0'
                  +DM2.Tb_EveCETIPO.AsString+',0'
                  +mudavp(FloatToStr(mvalor))+',0'
                  +mudavp(FloatToStr(mtotal))+',0'
                  +DM2.Tb_EveCEINCINSS.AsString+',0'
                  +DM2.Tb_EveCEINCFGTS.AsString+',0'
                  +DM2.Tb_EveCEINCIR.AsString+',0'
                  +DM2.Tb_EveCEINCVT.AsString+',0'
                  +mudavp(FloatToStr(mqtdpad))+',0'
                  +IntToStr(psoma)+')');
DM1.Query2.ExecSQL;
result:=true;
end;
procedure TFrm_GFolha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

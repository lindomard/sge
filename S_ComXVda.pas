unit S_ComXVda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,func,lerarq,S_For, DB, DBTables,S_Agde,
  S_Impres, S_SelEmp;

type
  TFrm_ComXVda = class(TForm)
    Label1: TLabel;
    MDT1: TMaskEdit;
    Label2: TLabel;
    MDT2: TMaskEdit;
    bbImprimir: TBitBtn;
    Label5: TLabel;
    CODFOR: TEdit;
    NOMFOR: TEdit;
    bbSair: TBitBtn;
    Tb_Pfor01: TQuery;
    Tb_Pfor01PF1CHAVE: TFloatField;
    Tb_Pfor01PF1TOTLIQ: TFloatField;
    Tb_Pfor01PF1CODEMP: TFloatField;
    Tb_PFor02: TQuery;
    Tb_PFor02PF2CODPRO: TFloatField;
    Tb_PFor02PF2QTDP: TFloatField;
    Tb_PFor02PF2PU: TFloatField;
    Tb_PFor02PF2PCOTAB: TFloatField;
    Tb_Pfor01PF1DATAENT: TDateTimeField;
    Tb_Temporaria: TQuery;
    Tb_TemporariaTMNUMNF: TFloatField;
    Tb_TemporariaTMCHAVEP: TFloatField;
    Tb_TemporariaTMDATANF: TDateTimeField;
    Tb_TemporariaTMDTVCTO: TDateTimeField;
    Tb_TemporariaTMTOTPF: TFloatField;
    Tb_TemporariaTMTOTNF: TFloatField;
    Tb_TemporariaTMTOTDUP: TFloatField;
    Tb_TemporariaTMTOTPAG: TFloatField;
    Tb_TemporariaTMTOTDES: TFloatField;
    Tb_TemporariaTMTOTJUR: TFloatField;
    Tb_TemporariaTMTOTPED: TFloatField;
    Tb_TemporariaTMQTDDUP: TFloatField;
    Tb_TemporariaTMQTDNF: TFloatField;
    Tb_Temporarialucro: TFloatField;
    Tb_Temporariapercentual: TFloatField;
    Tb_Pfor01PF1LOTSEQ: TFloatField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Tb_TemporariaCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function fComXVdaCab(ptipo: Integer): Boolean;
  public
    { Public declarations }
    form_Impres_ComXVda: TFrm_Impres;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_ComXVda: TFrm_ComXVda;
  mlin, mpag: Integer;
  mlucro, mperc: Real;
implementation

{$R *.dfm}

procedure TFrm_ComXVda.MDT1Exit(Sender: TObject);
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

procedure TFrm_ComXVda.MDT2Exit(Sender: TObject);
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

procedure TFrm_ComXVda.bbImprimirClick(Sender: TObject);
var
mlid,mqtd: Integer;
mtabtemp: String;
mdatanf, mdtvcto: TDateTime;
mnumnf,mtotpf, mtotnf, mtotdup, mtotpag: Real;
mtotluc,mtotdes, mtotjur, mtotped: Real;
mqtddup, mqtdnf: Integer;
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
la_Empresas:=fEmpresas_Selecionadas('CADPF1','PF1CODEMP',Form_SelEmp.CLB_EMPRESAS);
Tb_Pfor01.SQL.Clear;
Tb_Pfor01.SQL.Add('Select PF1CHAVE,PF1CODEMP,PF1TOTLIQ,PF1DATAENT from CADPF1 '
               +' where PF1STATUS=1 '+iif(la_Empresas='','',' and ')+la_Empresas);
if Trim(MDT1.Text)<>'/  /' then
   Tb_Pfor01.SQL.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Tb_Pfor01.SQL.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
Tb_Pfor01.SQL.Add(' Order by PF1DATAENT,PF1CHAVE');
Tb_Pfor01.Open;
mlid:=0;
mqtd:=Tb_Pfor01.RecordCount;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Calculando os Pedidos, Aguarde...';
Frm_Agde.Show;
Frm_Agde.gb_progres.Visible:=True;
mtabtemp:='';
mtabtemp:=fProcTemp(0);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;

if pbanco=1 then // interbase
   begin
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMNUMNF   DOUBLE PRECISION, '
                     +' TMCHAVEP  DOUBLE PRECISION, '
                     +' TMDATANF  TIMESTAMP, '
                     +' TMDTVCTO  TIMESTAMP, '
                     +' TMTOTPF   DOUBLE PRECISION,'
                     +' TMTOTNF   DOUBLE PRECISION,'
                     +' TMTOTDUP  DOUBLE PRECISION,'
                     +' TMTOTPAG  DOUBLE PRECISION,'
                     +' TMTOTDES  DOUBLE PRECISION,'
                     +' TMTOTJUR  DOUBLE PRECISION,'
                     +' TMTOTPED  DOUBLE PRECISION, '
                     +' TMQTDDUP  DOUBLE PRECISION, '
                     +' TMQTDNF   DOUBLE PRECISION) ');
   end
else
   begin
   DM1.Query1.Sql.Add('Create Table '+mtabtemp+'( '
                     +' TMNUMNF   NUMBER(10), '
                     +' TMCHAVEP  NUMBER(10), '
                     +' TMDATANF  DATE, '                                            
                     +' TMDTVCTO  DATE, '
                     +' TMTOTPF   NUMBER(15,2),'
                     +' TMTOTNF   NUMBER(15,2),'
                     +' TMTOTDUP  NUMBER(15,2),'
                     +' TMTOTPAG  NUMBER(15,2),'
                     +' TMTOTDES  NUMBER(15,2),'
                     +' TMTOTJUR  NUMBER(15,2),'
                     +' TMTOTPED  NUMBER(15,2), '
                     +' TMQTDDUP  NUMBER(05), '
                     +' TMQTDNF   NUMBER(05)) ');
   end;
DM1.Query1.execSql;
Tb_Pfor02.Close;
Tb_Pfor02.SQL.Clear;
if not DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
   Tb_Pfor02.Params.CreateParam(ftString,'CODEMP',ptInput);
Tb_Pfor02.Params.CreateParam(ftString,'CHAVE',ptInput);
Tb_Pfor02.Params.CreateParam(ftString,'LOTSEQ',ptInput);
Tb_PFor02.sql.Add('Select PF2CODPRO,PF2QTDP,PF2PU,PF2PCOTAB '
                 +' from CADPF2 where '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=:CODEMP and ')
                 +' PF2LOTSEQ=:LOTSEQ and '
                 +' PF2CHAVE=:CHAVE ');


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptInput);
DM1.Query2.Params.CreateParam(ftString,'DATA',ptInput);
DM1.Query2.SQL.Add('Select P2PRECO from CADP02,CADP01 '
                  +' where P2CODPRO=:CODPRO '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' and P2CODEMP=:CODEMP and P1CODEMP=P2CODEMP ')
                  +' and P2LOTSEQ=P1LOTSEQ and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                  +' and P1STATUS<'+mstatus_excluido+' and P1TIPO=0 and P1DATDOC>=:DATA'
                  +' order by P1DATDOC,P1CHAVE ');

DM1.Query3.Close;
DM1.Query3.SQL.Clear;
if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
   DM1.Query3.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'CODPRO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'DATA',ptInput);
DM1.Query3.SQL.Add('Select P2PRECO from CADP02,CADP01 '
                  +' where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=:CODEMP and P1CODEMP=P2CODEMP and')
                  +' P2CODPRO=:CODPRO '
                  +' and P2LOTSEQ=P1LOTSEQ and P1CHAVE=P2CHAVE and P1ORDEM=P2ORDEM '
                  +' and P1STATUS<'+mstatus_excluido+' and P1TIPO=0 and P1DATDOC<:DATA'
                  +' order by P1DATDOC desc,P1CHAVE desc');

DM1.Query4.Close;
DM1.Query4.SQL.Clear;
if not DM1.Qr_Tid.Locate('TINOME','CADNE',[]) then
   DM1.Query4.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query4.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query4.Params.CreateParam(ftString,'CHAVEP',ptInput);
DM1.Query4.SQL.Add('Select sum(NETOTNOT) as totnota, '
                  +'       max(NEDTEMIS)  as datanf, '
                  +'       max(NENUMERO)  as numnf, '
                  +'       count(*) as qtdnf from CADNE where NESTATUS<>9 and '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADNE',[]),'',' NECODEMP=:CODEMP and ')
                   +' NELOTSEQ_CP=:LOTSEQ and  '
                   +' NECHAVEP=:CHAVEP ');

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
   DM1.Query5.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query5.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query5.Params.CreateParam(ftString,'CHAVEP',ptInput);
DM1.Query5.SQL.Add('Select sum(CAVALOR) as totdup, '
                  +'       sum(CAVALPAG) as totpag, '
                  +'       sum(CAJUROS)  as juros, '
                  +'       sum(CADESC)   as desconto,'
                  +'       max(CADTVCTO) as venc,'
                  +'       count(*) as qtddup from CADDAP where CASTATUS<>9 and '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADDAP',[]),'',' CACODEMP=:CODEMP and ')
                   +' CALOTSEQ_CP=:LOTSEQ and '
                   +' CACHAVEP=:CHAVEP ');
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.Params.CreateParam(ftString,'NUMNF',ptInput);
DM1.Query1.Params.CreateParam(ftString,'CHAVEPED',ptInput);
DM1.Query1.Params.CreateParam(ftString,'DATANF',ptInput);
DM1.Query1.Params.CreateParam(ftString,'DTVCTO',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TOTPF',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TOTNF',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TOTDUP',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TOTPAG',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TOTDES',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TOTJUR',ptInput);
DM1.Query1.Params.CreateParam(ftString,'TOTPED',ptInput);
DM1.Query1.Params.CreateParam(ftString,'QTDDUP',ptInput);
DM1.Query1.Params.CreateParam(ftString,'QTDNF',ptInput);
DM1.Query1.Sql.Add('Insert into '+mtabtemp+'( '
                  +' TMNUMNF, '
                  +' TMCHAVEP, '
                  +' TMDATANF, '
                  +' TMDTVCTO, '
                  +' TMTOTPF,'
                  +' TMTOTNF,'
                  +' TMTOTDUP,'
                  +' TMTOTPAG,'
                  +' TMTOTDES,'
                  +' TMTOTJUR,'
                  +' TMTOTPED, '
                  +' TMQTDDUP, '
                  +' TMQTDNF ) Values ('
                  +' :NUMNF, '
                  +' :CHAVEPED, '
                  +' :DATANF, '
                  +' :DTVCTO, '
                  +' :TOTPF,'
                  +' :TOTNF,'
                  +' :TOTDUP,'
                  +' :TOTPAG,'
                  +' :TOTDES,'
                  +' :TOTJUR,'
                  +' :TOTPED, '
                  +' :QTDDUP, '
                  +' :QTDNF) ');

While not Tb_Pfor01.Eof do
   begin
   mlid:=mlid+1;
   Frm_Agde.Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);
   mdatanf:=pdatanula;
   mdtvcto:=pdatanula;
   mnumnf :=0;
   mtotpf :=0;
   mtotnf :=0;
   mtotdup:=0;
   mtotpag:=0;
   mtotdes:=0;
   mtotjur:=0;
   mtotped:=0;
   mqtddup:=0;
   mqtdnf :=0;

   Tb_Pfor02.Close;
   if not DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]) then
      Tb_Pfor02.ParamByName('CODEMP').AsFloat:=Tb_Pfor01PF1CODEMP.Value;
   Tb_Pfor02.ParamByName('LOTSEQ').AsFloat   :=Tb_Pfor01PF1LOTSEQ.Value;
   Tb_Pfor02.ParamByName('CHAVE').AsFloat    :=Tb_Pfor01PF1CHAVE.Value;
   Tb_PFor02.Open;
   While not Tb_PFor02.Eof do
      begin
      DM1.Query2.Close;
      if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
         DM1.Query2.ParamByName('CODEMP').AsFloat:=Tb_Pfor01PF1CODEMP.Value;
      DM1.Query2.ParamByName('CODPRO').AsFloat   :=Tb_PFor02PF2CODPRO.Value;
      DM1.Query2.ParamByName('DATA').AsString    :=FormatDateTime(fdt2,Tb_Pfor01PF1DATAENT.AsDateTime);
      DM1.Query2.Open;
      if DM1.Query2.Eof then
         begin
         DM1.Query3.Close;
         if not DM1.Qr_Tid.Locate('TINOME','CADPED',[]) then
            DM1.Query3.ParamByName('CODEMP').AsFloat:=Tb_Pfor01PF1CODEMP.Value;
         DM1.Query3.ParamByName('CODPRO').AsFloat   :=Tb_PFor02PF2CODPRO.Value;
         DM1.Query3.ParamByName('DATA').AsDateTime  :=Tb_Pfor01PF1DATAENT.Value;
         DM1.Query3.Open;
         if DM1.Query3.Eof then
            begin
            if (Tb_PFor02PF2PCOTAB.IsNull) or (Tb_PFor02PF2PCOTAB.Value=0) then
               mtotped:=mtotped+(Tb_PFor02PF2QTDP.Value*Tb_PFor02PF2PU.Value)
            else
               mtotped:=mtotped+(Tb_PFor02PF2QTDP.Value*Tb_PFor02PF2PCOTAB.Value);
            end
         else
            mtotped:=mtotped+(Tb_PFor02PF2QTDP.Value*DM1.Query3.Fields[0].AsFloat);
         end
      else
         mtotped:=mtotped+(Tb_PFor02PF2QTDP.Value*DM1.Query2.Fields[0].AsFloat);
      Tb_PFor02.Next;
      end;
   DM1.Query4.Close;
   if not DM1.Qr_Tid.Locate('TINOME','CADNE',[]) then
      DM1.Query4.ParamByName('CODEMP').AsFloat:=Tb_Pfor01PF1CODEMP.Value;
   DM1.Query4.ParamByName('CHAVEP').AsFloat   :=Tb_Pfor01PF1CHAVE.Value;
   DM1.Query4.ParamByName('LOTSEQ').AsFloat   :=Tb_Pfor01PF1LOTSEQ.Value;
   DM1.Query4.Open;
   if not DM1.Query4.Eof then
      begin
      mtotnf :=DM1.Query4.Fields[0].AsFloat;
      mdatanf:=DM1.Query4.Fields[1].AsDateTime;
      mnumnf :=DM1.Query4.Fields[2].AsFloat;
      mqtdnf :=DM1.Query4.Fields[3].AsInteger;
      end;
   DM1.Query5.Close;
   if not DM1.Qr_Tid.Locate('TINOME','CADDAP',[]) then
      DM1.Query5.ParamByName('CODEMP').AsFloat:=Tb_Pfor01PF1CODEMP.Value;
   DM1.Query5.ParamByName('CHAVEP').AsFloat   :=Tb_Pfor01PF1CHAVE.Value;
   DM1.Query5.Open;
   if not dm1.Query5.Eof then
      begin
      mtotdup:=DM1.Query5.Fields[0].AsFloat;
      mtotpag:=DM1.Query5.Fields[1].AsFloat;
      mtotjur:=DM1.Query5.Fields[2].AsFloat;
      mtotdes:=DM1.Query5.Fields[3].AsFloat;
      mdtvcto:=DM1.Query5.Fields[4].AsDateTime;
      mqtddup:=DM1.Query5.Fields[5].AsInteger;
      end;
   DM1.Query1.ParambyName('NUMNF').AsFloat    :=mnumnf;
   DM1.Query1.ParambyName('CHAVEPED').AsFloat :=Tb_Pfor01PF1CHAVE.Value;
   DM1.Query1.ParambyName('DATANF').AsDateTime:=mdatanf;
   DM1.Query1.ParambyName('DTVCTO').AsDateTime:=mdtvcto;
   DM1.Query1.ParambyName('TOTPF').AsFloat    :=Tb_Pfor01PF1TOTLIQ.Value;
   DM1.Query1.ParambyName('TOTNF').AsFloat    :=mtotnf;
   DM1.Query1.ParambyName('TOTDUP').AsFloat   :=mtotdup;
   DM1.Query1.ParambyName('TOTPAG').AsFloat   :=mtotpag;
   DM1.Query1.ParambyName('TOTDES').AsFloat   :=mtotdes;
   DM1.Query1.ParambyName('TOTJUR').AsFloat   :=mtotjur;
   DM1.Query1.ParambyName('TOTPED').AsFloat   :=mtotped;
   DM1.Query1.ParambyName('QTDDUP').AsFloat   :=mqtddup;
   DM1.Query1.ParambyName('QTDNF').AsFloat    :=mqtdnf;
   DM1.Query1.ExecSQL;
   Tb_Pfor01.Next;
   end;
Frm_agde.Free;
testeform := TFrm_ComXVda(FindGlobalComponent('form_Impres_ComXVda'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_ComXVda);

form_Impres_ComXVda.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
Tb_Temporaria.Close;
Tb_Temporaria.SQL.Clear;
Tb_Temporaria.SQL.add('Select * from '+mtabtemp);
Tb_Temporaria.open;
mlin:=0;
mpag:=0;

mtotpf :=0;
mtotnf :=0;
mtotdup:=0;
mtotpag:=0;
mtotdes:=0;
mtotjur:=0;
mtotped:=0;
mqtddup:=0;
mqtdnf :=0;
mtotluc:=0;

While not Tb_Temporaria.Eof do
   begin
   if mlin=0 then
      fComXVdaCab(0);
   mlin:=mlin+1;
   form_Impres_ComXVda.RDprint1.ImpF(mlin,01,'|'+insere(Tb_TemporariaTMNUMNF.AsString,'0',6)+'|'
                           +insere(Tb_TemporariaTMCHAVEP.AsString,' ',6)+'|'
                           +FormatdateTime(fdt3, Tb_TemporariaTMDATANF.Value)+'|'
                           +insere(FormatFloat(mcasas, Tb_TemporariaTMTOTPF.Value),' ',11)+'|'
                           +insere(FormatFloat(mcasas, Tb_TemporariaTMTOTNF.Value),' ',11)+insere(Tb_TemporariaTMQTDNF.AsString,' ',3)+'|'
                           +insere(FormatFloat(mcasas, Tb_TemporariaTMTOTDUP.Value),' ',11)+insere(Tb_TemporariaTMQTDDUP.AsString,' ',3)+'|'
                           +FormatdateTime(fdt3, Tb_TemporariaTMDTVCTO.Value)+'|'
                           +insere(FormatFloat(mcasas, Tb_TemporariaTMTOTPAG.Value),' ',11)+'|'
                           +insere(FormatFloat(mcasas, Tb_TemporariaTMTOTDES.Value),' ',08)+'|'
                           +insere(FormatFloat(mcasas, Tb_TemporariaTMTOTJUR.Value),' ',08)+'|'
                           +insere(FormatFloat(mcasas, Tb_TemporariaTMTOTPED.Value),' ',11)+'|'
                           +insere(FormatFloat(mcasas, Tb_Temporarialucro.Value),' ',10)+'|'
                           +insere(FormatFloat(mcasas, Tb_Temporariapercentual.Value),' ',06)+'%|',mreduz);
   mtotpf :=mtotpf +Tb_TemporariaTMTOTPF.Value;
   mtotnf :=mtotnf +Tb_TemporariaTMTOTNF.Value;
   mtotdup:=mtotdup+Tb_TemporariaTMTOTDUP.Value;
   mtotpag:=mtotpag+Tb_TemporariaTMTOTPAG.Value;
   mtotdes:=mtotdes+Tb_TemporariaTMTOTDES.Value;
   mtotjur:=mtotjur+Tb_TemporariaTMTOTJUR.Value;
   mtotped:=mtotped+Tb_TemporariaTMTOTPED.Value;
   mqtddup:=mqtddup+Tb_TemporariaTMQTDDUP.AsInteger;
   mqtdnf :=mqtdnf +Tb_TemporariaTMQTDNF.AsInteger;
   mtotluc:=mtotluc+Tb_Temporarialucro.Value;
   Tb_Temporaria.Next;
   if Tb_Temporaria.Eof then
      begin
      if mlin>55 then
         fComXVdaCab(0);
      mlin:=mlin+1;
      mlucro:=mtotpf+mtotjur-mtotdes;
      mlucro:=mtotped-mlucro;
      Try
         mperc:=mlucro*100/(mtotpf+mtotjur-mtotdes);
      except
         mperc:=0;
      end;
      mlin:=mlin+1;
      form_Impres_ComXVda.RDprint1.ImpF(mlin,01,'|Totais|'
                              +insere2('.','.',6)+'|'
                              +insere2('.','.',8)+'|'
                              +insere(FormatFloat(mcasas, mtotpf),' ',11)+'|'
                              +insere(FormatFloat(mcasas, mtotnf),' ',11)+insere(IntToStr(mqtdnf),' ',3)+'|'
                              +insere(FormatFloat(mcasas, mtotdup),' ',11)+insere(IntToStr(mqtddup),' ',3)+'|'
                              +insere2('.','.',8)+'|'
                              +insere(FormatFloat(mcasas, mtotpag),' ',11)+'|'
                              +insere(FormatFloat(mcasas, mtotdes),' ',08)+'|'
                              +insere(FormatFloat(mcasas, mtotjur),' ',08)+'|'
                              +insere(FormatFloat(mcasas, mtotped),' ',11)+'|'
                              +insere(FormatFloat(mcasas, mlucro),' ',10)+'|'
                              +insere(FormatFloat(mcasas, mperc),' ',06)+'%|',mreduz);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.sql.Add('Select sum(VALORR) as VALOR, NATDC from CADLDR ');
      mcinst:=' where ';
      if DM1.Qr_Tid.Locate('TINOME','CADLDR',[]) then
         begin
         DM1.Query1.SQL.add(' where CODEMP=0'+IntTostr(codemp));
         mcinst:=' and ';
         end;
      if Trim(MDT1.Text)<>'/  /' then
         begin
         DM1.Query1.SQL.Add(mcinst+' DATAREAL>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
         mcinst:=' and ';
         end;
      if Trim(MDT2.Text)<>'/  /' then
         begin
         DM1.Query1.SQL.Add(mcinst+' DATAREAL<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
         mcinst:=' and ';
         end;
      DM1.Query1.SQL.Add(' group by NATDC ');
      DM1.Query1.Open;
      mtotped:=0;
      mtotdup:=0;
      While not DM1.Query1.Eof do
         begin
         if DM1.Query1.Fields[1].AsString='D' then
            mtotdup:=mtotdup+DM1.Query1.fields[0].AsFloat
         else
            mtotped:=mtotped+DM1.Query1.Fields[0].AsFloat;
         DM1.Query1.Next;
         end;
      mlin:=mlin+1;
      form_Impres_ComXVda.RDprint1.ImpF(mlin,01,'| Pagamentos do Periodo: '+FormatFloat(mcasas, mtotdup)
                                      +'  Recebimentos do Periodo: '+FormatFloat(mcasas, mtotped)
                                      +'  Saldo.: '+FormatFloat(mcasas, mtotped-mtotdup),mreduz);
      form_Impres_ComXVda.RDprint1.impf(mlin,132,'|',mreduz);
      mlin:=mlin+1;
      form_Impres_ComXVda.RDprint1.ImpF(mlin,01,'+fim.--+------+--------+-----------+--------------+--------------+--------+-----------+--------+--------+-----------+----------+-------+',mreduz);
      mlin:=mlin+1;
      form_Impres_ComXVda.RDprint1.ImpF(mlin,01,'Relatorio Emitido em '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
      if form_Impres_ComXVda.RDprint1.Setup then form_Impres_ComXVda.RDprint1.Fechar;
      form_Impres_ComXVda.Free;
      form_Impres_ComXVda:=nil;
      end
   else if mlin>58 then
      begin
      mlin:=mlin+1;
      form_Impres_ComXVda.RDprint1.ImpF(mlin,01,'+Continua...--+--------+-----------+--------------+--------------+--------+-----------+--------+--------+-----------+----------+-------+',mreduz);
      form_Impres_ComXVda.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;
{

+------+------+--------+-----------+--------------+--------------+--------+-----------+--------+--------+-----------+----------+-------+
|Num.nf|Chave |Data Nf |Tot. Pedido|   Total NF Qt|Total Dupl. qt|Dt.Venc.| Total Pago|Desconto|   Juros|Valor Simul|lucro/perd|Percent|
|000000|123456|10/09/20|zzzz.zz9,99|zzzz.zz9,99 zz|zzzz.zz9,99 zz|10/09/20|zzzz.zz9,99|z.zz9,99|zzzz9,99|zzzz.zz9,99|zzz.zz9,99|100,00%|
}
Tb_Temporaria.Close;
if Trim(mtabtemp)<>'' then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Drop Table '+mtabtemp);
   DM1.Query1.ExecSQL;
   end;

end;

procedure TFrm_ComXVda.CODFORExit(Sender: TObject);
begin
if valFloat(CODFOR.Text)=0 then
   begin
   CODFOR.Text:='';
   end;
if Trim(CODFOR.Text)='' then
   NOMFOR.Text:='Todos...'
else if flcadfor(1,0,CODFOR.Text) then
   NOMFOR.Text:=DM1.Tb_ForFRAZAO.Value
else
   begin
   MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
   CODFOR.SetFocus;
   end;

end;

procedure TFrm_ComXVda.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_ComXVda',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_ComXVda.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ComXVda.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;
function TFrm_ComXVda.fComXVdaCab(ptipo: Integer): Boolean;
begin
mpag:=mpag+1;
form_Impres_ComXVda.RDprint1.ImpF(01,01,DM1.Tb_EmpRAZAO_CAB.Value,mreduz);
form_Impres_ComXVda.RDprint1.ImpF(01,120,'Data: '+FormatDateTime(fdt2, date),mreduz);
form_Impres_ComXVda.RDprint1.ImpF(02,01,'Relatorio de Notas de Entradas com Venda Estimada. '+fperiodo(0,MDT1.Text,MDT2.Text)+'.',mreduz);
form_Impres_ComXVda.RDprint1.ImpF(02,120,'Pagina:     '+FormatFloat('0000', mpag),mreduz);
form_Impres_ComXVda.RDprint1.ImpF(03,01,insere2('-','-',136),mreduz);
mlin:=3;
if Trim(CODFOR.Text)<>'' then
   begin
   mlin:=mlin+1;
   form_Impres_ComXVda.RDprint1.ImpF(mlin,01,Centra('Notas do Fornecedor: '+CODFOR.Text+'-'+Trim(NOMFOR.Text),' ',80),mneg);
   end;
mlin:=mlin+1;
form_Impres_ComXVda.RDprint1.ImpF(mlin,01,'+------+------+--------+-----------+--------------+--------------+--------+-----------+--------+--------+-----------+----------+-------+',mreduz);
mlin:=mlin+1;
form_Impres_ComXVda.RDprint1.impf(mlin,01,'|Num.nf|Chave |Data Nf |Tot. Pedido|   Total NF Qt|Total Dupl. qt|Dt.Venc.| Total Pago|Desconto|   Juros|Valor Simul|lucro/perd|Percent|',mreduz);
result:=True;
end;

procedure TFrm_ComXVda.Tb_TemporariaCalcFields(DataSet: TDataSet);
begin
mlucro:=Tb_TemporariaTMTOTPF.Value+Tb_TemporariaTMTOTJUR.Value-Tb_TemporariaTMTOTDES.Value;
Tb_Temporarialucro.Value:=Tb_TemporariaTMTOTPED.Value-mlucro;
Try
   mperc:=(Tb_Temporarialucro.Value*100)/(mlucro);
except
   mperc:=0;
   end;
Tb_Temporariapercentual.Value:=mperc;
end;

procedure TFrm_ComXVda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
  Action := caFree;
end;

procedure TFrm_ComXVda.FormKeyDown(Sender: TObject; var Key: Word;
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

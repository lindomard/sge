unit S_CorEst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges,S_DM1,db,dbtables,func,lerarq,S_Impres;

type
  TFrm_CorEst = class(TForm)
    Corrigir: TBitBtn;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Gauge1: TGauge;
    Qr_LGC: TQuery;
    Qr_LGCCLCODEMP: TFloatField;
    Qr_LGCCLCODPRO: TFloatField;
    Qr_Pro: TQuery;
    Qr_ProPDCODEMP: TFloatField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDNOME: TStringField;
    Label1: TLabel;
    Tb_Lote: TQuery;
    Tb_LoteQTD: TFloatField;
    Tb_LoteCLCODEMP: TFloatField;
    Tb_LoteCLCODPRO: TFloatField;
    Tb_LoteCLDTVCTO: TDateTimeField;
    Tb_LoteCLNUMERO: TStringField;
    Tb_LoteQTDC: TFloatField;
    Tb_LoteQTDR: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure CorrigirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fcorestep(ptipo: Integer): Boolean;
function fcorestel(ptipo: Integer): Boolean;

var
  Frm_CorEst: TFrm_CorEst;
  msaldop, msaldoe, msaldol: Real;

implementation

{$R *.dfm}

procedure TFrm_CorEst.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CorEst.CorrigirClick(Sender: TObject);
var
mqtd, mlid: Integer;
msaida: Real;
mdtv, mtempor: String;

begin
mqtd:=0;
mlid:=0;
Qr_Pro.Close;
Qr_Pro.SQL.Clear;
Qr_Pro.SQL.Add('Select PDCODEMP,PDCODPRO,PDNOME from cadpro ');
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   Qr_Pro.SQL.Add(' where PDCODEMP=0'+IntToStr(codemp))
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADPRO set PDCODEMP=0'+InttoStr(codemp)
                      +' where PDCODEMP=0'+InttoStr(codemp)
                      +' or PDCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100)));
   DM1.Query1.ExecSQL;
   end;
Qr_Pro.Open;
mqtd:=mqtd+Qr_Pro.RecordCount;
if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem controle pelo CADLGC
   begin
   Tb_Lote.Close;
   Tb_Lote.SQL.Clear;
   if DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Update CADEST set CECODEMP=0'+InttoStr(codemp)
                        +' where CECODEMP=0'+InttoStr(codemp)
                        +' or CECODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100)));
      DM1.Query1.ExecSQL;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.add('Update CADLGC set CLCODEMP=0'+InttoStr(codemp)
                        +' where CLCODEMP=0'+InttoStr(codemp)
                        +' or CLCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp+100)));
      DM1.Query1.ExecSQL;


      Tb_Lote.SQL.Add('SELECT SUM(CLQTD) as QTD,'
                     +'       SUM(CLQTDC) as QTDC,'
                     +'       SUM(CLQTDR) as QTDR,'
                     +intToStr(codemp)+'.00'
                     +' as CLCODEMP,CLCODPRO,CLDTVCTO,CLNUMERO FROM CADLGC '
                     +' GROUP BY CLCODPRO,CLDTVCTO,CLNUMERO ');
      end
   else
      begin
      Tb_Lote.SQL.Add('SELECT SUM(CLQTD) as QTD,'
                     +'       SUM(CLQTDC) as QTDC,'
                     +'       SUM(CLQTDR) as QTDR,'
                     +' CLCODEMP,CLCODPRO,CLDTVCTO,CLNUMERO '
                     +' FROM CADLGC '
                     +' GROUP BY CLCODEMP,CLCODPRO,CLDTVCTO,CLNUMERO ');
      end;
   Tb_Lote.Open;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete from CADLGC');
   DM1.Query1.ExecSQL;
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODPRO',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'DTVCTO',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'NUMERO',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'QTDC',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'QTDR',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'QTD',ptInput);
   DM1.Query2.Params.CreateParam(ftstring,'DTUATP1',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DTUATP2',ptinput);
   DM1.Query2.Params.CreateParam(ftstring,'DTUATP3',ptinput);

   DM1.Query2.SQL.Add('Insert into CADLGC ('
                     +'CLCODEMP, '
                     +'CLCODPRO, '
                     +'CLDTVCTO, '
                     +'CLNUMERO, '
                     +'CLQTDC,'
                     +'CLQTDR,'
                     +'CLQTDT,'
                     +'CLQTD, '
                     +'CLQTD_DEP, '
                     +'CLQTD_PRAT, '
                     +'CLPRECO1, '
                     +'CLPRECO2, '
                     +'CLPRECO3, '
                     +'CLPRECOA1, '
                     +'CLPRECOA2, '
                     +'CLPRECOA3, '
                     +'CLPCUSTO, '
                     +'CLESTMAX, '
                     +' CLESTMIN, '
                     +' CLDTUATP1, '
                     +' CLDTUATP2, '
                     +' CLDTUATP3) values ('

                     +':CODEMP, '
                     +':CODPRO, '
                     +':DTVCTO, '
                     +':NUMERO, '
                     +':QTDC,'
                     +':QTDR,'
                     +'0,' // quatidade terceiros
                     +':QTD,'
                     +'0,' // Qtd dep
                     +'0,' // Qtd Prat
                     +'0,' // Preco 1
                     +'0,' // Preco 2
                     +'0,' // Preco 3
                     +'0,' // Preco 1A
                     +'0,' // Preco 2A
                     +'0,' // Preco 3A
                     +'0,' // Preco de Custo
                     +'0,' // Estmax
                     +'0,' // estmin
                     +':DTUATP1, '
                     +':DTUATP2, '
                     +':DTUATP3'
                     +')');
   DM1.Query2.ParamByName('DTUATP1').AsString:=FormatDateTime(fdt, pdatanula);
   DM1.Query2.ParamByName('DTUATP2').AsString:=FormatDateTime(fdt, pdatanula);
   DM1.Query2.ParamByName('DTUATP3').AsString:=FormatDateTime(fdt, pdatanula);
   While not Tb_Lote.Eof do
      begin
      DM1.Query2.close;
      DM1.Query2.ParamByName('CODEMP').AsFloat   :=Tb_LoteCLCODEMP.Value;
      DM1.Query2.ParamByName('CODPRO').AsFloat   :=Tb_LoteCLCODPRO.Value;
      DM1.Query2.ParamByName('DTVCTO').AsDateTime:=Tb_LoteCLDTVCTO.AsDateTime;
      DM1.Query2.ParamByName('NUMERO').AsString  :=Tb_LoteCLNUMERO.Value;
      DM1.Query2.ParamByName('QTDC').AsFloat     :=Tb_LoteQTDC.Value;
      DM1.Query2.ParamByName('QTDR').AsFloat     :=Tb_LoteQTDR.Value;
      DM1.Query2.ParamByName('QTD').AsFloat      :=Tb_LoteQTD.Value;
      DM1.Query2.ExecSQL;
      Tb_Lote.Next;
      end;
   Qr_LGC.Close;
   Qr_LGC.SQL.Clear;
   Qr_LGC.SQL.Add('Select CLCODEMP,CLCODPRO from CADLGC');
   if not DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
      Qr_LGC.SQL.Add(' where CLCODEMP=0'+intToStr(codemp));
   Qr_LGC.Open;
   mqtd:=mqtd+Qr_LGC.RecordCount;
   end
else
   begin
   DM1.SG_ASSOC.StartTransaction;
   DM1.Query2.Close;
   DM1.Query2.SQL.clear;
   DM1.Query2.SQL.Add('delete from CADLGC');
   DM1.Query2.ExecSQL;
   DM1.SG_ASSOC.Commit;

   end;
if mqtd<1 then
   begin
   MessageDlg('Nada a processar!',mtWarning,[mbok],0);
   exit;
   end;
msaldop:=0;
msaldoe:=0;
msaldol:=0;
GroupBox1.Visible:=True;
label1.Visible:=True;
While not Qr_Pro.Eof do
   begin
//   IF Qr_ProPDCODPRO.Value<>504173then
//      begin
//      Qr_Pro.Next;
//      Continue;
//      end;
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   verteclado(0);

//      label1.Caption:='';
   label1.Caption:=Qr_ProPDCODPRO.AsString+'-'+Qr_ProPDNOME.Value;
   label1.Update;
   if flcadpro(1,0,Qr_ProPDCODEMP.AsInteger,Qr_ProPDCODPRO.AsString) then
      begin
      msaldop:=DM1.Tb_ProPDSALDO.Value;
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add('Select CESALDO as SALDO from CADEST where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' CECODEMP=0'+IntTostr(codemp)+' and ')
                        +' CECODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
      DM1.Query1.Open;
      msaldoe:=DM1.Query1.Fields[0].AsFloat;
      if msaldoe<>msaldop then
         begin
         DM1.Tb_Pro.Edit;
         DM1.Tb_ProPDSALDO.Value:=msaldoe;
         DM1.Tb_Pro.Post;
         fCorestep(0);
         end;
      if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem controle pelo CADLGC
         begin
         if flcadest(0,0,0,DM1.Tb_ProPDCODPRO.AsString) then
            begin
            msaldoe:=DM1.Tb_EstCESALDO.Value;
            DM1.Query2.Close;
            DM1.Query2.Sql.Clear;
            DM1.Query2.Sql.Add('Select CLCODEMP,CLCODPRO,CLDTVCTO,CLNUMERO,CLQTD from CADLGC where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+IntToStr(codemp)+' and ')
                        +' CLCODPRO=0'+DM1.Tb_ProPDCODPRO.AsString);
            DM1.Query2.Open;
            msaldol:=0;
            While not DM1.Query2.Eof do
               begin
               msaldol:=msaldol+DM1.Query2.fields[4].AsFloat;
               DM1.Query2.Next;
               end;
           msaida:=msaldoe-msaldol;
           if msaida<0 then
              begin
              msaida:=msaida*-1;
              flbailgc(0,1,1,0,DM1.Tb_ProPDCODPRO.AsString,'','','','',msaida);
              CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,'','S_CorEst',1,DM1.Tb_ProPDSALDO.AsFloat,msaida,' Excutado em  - '+DateToStr(Now));

              fCorestel(0);
              end
           else if msaida>0 then
              begin
              DM1.Query2.First;
              While not (DM1.Query2.Eof) and (msaida>0) do
                 begin
                 if DM1.Query2.Fields[4].AsFloat<=0 then
                    begin
                    DM1.Query2.Next;
                    continue;
                    end;
                 if DM1.Query2.Fields[4].AsFloat<msaida then
                    begin
                    if dm1.Query2.Fields[2].IsNull then
                       mtempor:=''
                    else
                       mtempor:=FormatDateTime(fdt, DM1.Query2.Fields[2].AsDateTime);
                    flbailgc(0,1,0,0,DM1.Tb_ProPDCODPRO.AsString,DM1.Query2.Fields[3].AsString,mtempor,'','',DM1.Query2.Fields[4].Asfloat);
                   CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query2.Fields[3].AsString,'S_CorEst',0,DM1.Tb_ProPDSALDO.AsFloat,DM1.Query2.Fields[4].Asfloat,' Excutado em  - '+DateToStr(Now));
                    msaida:=msaida-DM1.Query2.Fields[4].AsFloat;
                    end
                 else
                    begin
                    if dm1.Query2.Fields[2].IsNull then
                       mtempor:=''
                    else
                       mtempor:=FormatDateTime(fdt, DM1.Query2.Fields[2].AsDateTime);

                    flbailgc(0,1,0,0,DM1.Tb_ProPDCODPRO.AsString,DM1.Query2.Fields[3].AsString,mtempor,'','',msaida);
                    CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query2.Fields[3].AsString,'S_CorEst',0,DM1.Tb_ProPDSALDO.AsFloat,msaida,' Excutado em  - '+DateToStr(Now));
                    msaida:=0;
                    end;
                 DM1.Query2.Next;
                 end;
              if msaida<0 then
                 begin
                 msaida:=msaida*-1;
                 DM1.Query2.First;
                 if DM1.Query2.Eof then
                    begin
                    flbailgc(0,1,1,0,DM1.Tb_ProPDCODPRO.AsString,'','','','',msaida);
                    CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,'','S_CorEst',1,DM1.Tb_ProPDSALDO.AsFloat,msaida,' Excutado em  - '+DateToStr(Now));
                    end
                 else
                    begin
                    if dm1.Query2.Fields[2].IsNull then
                       mtempor:=''
                    else
                       mtempor:=FormatDateTime(fdt, DM1.Query2.Fields[2].AsDateTime);
                    flbailgc(0,1,1,0,DM1.Tb_ProPDCODPRO.AsString,DM1.Query2.Fields[3].AsString,mtempor,'','',msaida);
                    CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query2.Fields[3].AsString,'S_CorEst',1,DM1.Tb_ProPDSALDO.AsFloat,msaida,' Excutado em  - '+DateToStr(Now));
                    end;
                 end
              else if msaida>0 then
                 begin
                 DM1.Query2.First;
                 if DM1.Query2.Eof then
                    begin
                    flbailgc(0,1,0,0,DM1.Tb_ProPDCODPRO.AsString,'','','','',msaida);
                    CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query2.Fields[3].AsString,'S_CorEst',0,DM1.Tb_ProPDSALDO.AsFloat,msaida,' Excutado em  - '+DateToStr(Now));
                    end
                 else
                    begin
                    if dm1.Query2.Fields[2].IsNull then
                       mtempor:=''
                    else
                       mtempor:=FormatDateTime(fdt, DM1.Query2.Fields[2].AsDateTime);

                    flbailgc(0,1,0,0,DM1.Tb_ProPDCODPRO.AsString,DM1.Query2.Fields[3].AsString,mtempor,'','',msaida);
                    CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query2.Fields[3].AsString,'S_CorEst',0,DM1.Tb_ProPDSALDO.AsFloat,msaida,' Excutado em  - '+DateToStr(Now));
                    end;
                 end;
              fCorestel(1);
              end;
            end;
         end;
      end;
      Qr_Pro.Next;
   end;
{
if StrToInt('0'+copy(mpseg,4,2))>0  then  // se tem controle pelo CADLGC
   begin
   While not Qr_LGC.Eof do
      begin
      mlid:=mlid+1;
      Gauge1.Progress:=mlid*100 div mqtd;
      if not flcadest(0,0,Qr_LGCCLCODPRO.AsString) then
         begin
         DM1.SG_ASSOC.StartTransaction;
         DM1.Query2.Close;
         DM1.Query2.SQL.clear;
         DM1.Query2.SQL.Add('delete from CADLGC where CLCODEMP=0'+Qr_LGCCLCODEMP.AsString
                           +' and CLCODPRO=0'+Qr_LGCCLCODPRO.AsString);
         DM1.Query2.ExecSQL;
         DM1.SG_ASSOC.Commit;
         end;
      Qr_LGC.Next;
      end;
  if (StrToInt('0'+copy(mpseg,4,2))=1) then
     begin
     DM1.Query1.Close;
     DM1.Query1.SQL.Clear;
     DM1.Query1.SQL.Add('Delete from CADLGC where CLQTD=0');
     DM1.Query1.ExecSQL;
     DM1.Query2.Close;
     DM1.Query2.SQL.Clear;
     DM1.Query2.SQL.Add('Select CLCODEMP,CLCODPRO,CLDTVCTO,CLNUMERO,CLQTD from '
                       +' CADLGC where CLQTD<0');
     DM1.Query2.Open;
     msaida:=DM1.Query2.Fields[4].AsFloat;
     msaldol:=DM1.Query2.Fields[4].AsFloat;
     While not DM1.Query2.Eof do
        begin
        DM1.Tb_LGC.Close;
        DM1.Tb_LGC.Sql.clear;
        DM1.Tb_LGC.Sql.add('Select * from CADLGC where '
                          +iif(DM1.Qr_Tid.Locate('TINOME','CADEST',[]),'',' CLCODEMP=0'+DM1.Query2.Fields[0].AsString+' and ')
                          +' CLCODPRO=0'+DM1.Query2.Fields[1].AsString
                          +' and CLQTD<>0 ');
        DM1.Tb_LGC.Open;
        While not (DM1.Tb_LGC.Eof) and (msaida<0) do
           begin
           if DM1.Tb_LGCCLQTD.Value>=(msaida*-1) then
              begin
              if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.Value<=pdatanula) then
                 mdtv:=''
              else
                 mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);
              flbailgc(0,0,DM1.Tb_LGCCLCODEMP.AsInteger,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                          mdtv,msaida);
              msaida:=0;
              end
           else
              begin
              if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.Value<=pdatanula) then
                 mdtv:=''
              else
                 mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);
              flbailgc(0,0,DM1.Tb_LGCCLCODEMP.AsInteger,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,
                          mdtv,DM1.Tb_LGCCLQTD.Value*-1);
              msaida:=msaida+DM1.Tb_LGCCLQTD.Value;
              end;
           DM1.Tb_LGC.Next;
           end;
        if (DM1.Query2.fields[2].IsNull) or (DM1.Query2.Fields[2].AsDateTime<=pdatanula) then
           mdtv:=''
        else
           mdtv:=FormatDateTime(fdt, DM1.Tb_LGCCLDTVCTO.Value);

        flbailgc(0,0,DM1.Query2.Fields[0].AsInteger,DM1.Query2.Fields[1].AsString,DM1.Query2.Fields[3].AsString,
                 mdtv,(msaldol+(msaida))*-1);
        DM1.Query2.Next;
        end;
     end;
   end;
   }
MessageDlg('Concluido!',mtWarning,[mbOk],0);
GroupBox1.Visible:=False;
label1.Visible:=False;
end;
function fcorestep(ptipo: Integer): Boolean;
begin
Result:=True;
end;

function fcorestel(ptipo: Integer): Boolean;
begin
Result:=true;
end;

procedure TFrm_CorEst.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

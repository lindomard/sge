unit S_ACus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Gauges, DB, DBTables,
  S_DM1, func,lerarq,s_lerarq_geral,S_Pcus;

type
  TFrm_ACus = class(TForm)
    RadioGroup1: TRadioGroup;
    GB_PROG: TGroupBox;
    Gauge1: TGauge;
    APLICAR: TBitBtn;
    BitBtn1: TBitBtn;
    Qr_Pro: TQuery;
    Qr_ProPDPRECO1: TFloatField;
    Qr_ProPDPRECOC: TFloatField;
    Qr_ProPDPCOFAB: TFloatField;
    Qr_ProCUCODIGO: TFloatField;
    Qr_Com: TQuery;
    Qr_ComCUPERC: TFloatField;
    Qr_ComPCAPLS: TFloatField;
    Qr_ComPCOPCIO: TFloatField;
    Qr_ComPCFATOR: TFloatField;
    Qr_ProPDCODPRO: TFloatField;
    Qr_ProPDCODFOR: TFloatField;
    Qr_ProPDPRECO2: TFloatField;
    Qr_ProPDPRECO3: TFloatField;
    cb_capcus: TCheckBox;
    Qr_ProPDQTDGRML: TFloatField;
    lbl_codpro: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Qr_ComPFORMULA: TFloatField;
    Qr_ProPDUCPR: TFloatField;
    Qr_ProPDVLRINC: TFloatField;
    Qr_ComPTIPO: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure APLICARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
    form_pcus: TFrm_pcus;

  public
    { Public declarations }
  end;

var
  Frm_ACus: TFrm_ACus;
  mPcusAliqDeb: Real=17;

implementation

uses  S_DM4;

{$R *.dfm}

procedure TFrm_ACus.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ACus.APLICARClick(Sender: TObject);
var
mlid, mqtd: Integer;
mTotal,mpcocpr,mpcofab,mpcocus,mpcovda,mPcoEcar,mVlrInc: Real;
mPcoVda01,mPcoVda02,mPcoVda03: Real;
matpco1,matpco2,matpco3: Boolean;

//mpreco2,mpreco3,mprecoc,mprecov,mdebob, mcredob,mdebop, mcredop: Real;
//matpco1,matpco2,matpco3: Boolean;
//mVt,mPcoFab: Real;
mVlrResult: TArrayCusto;
mVt,mFator: Real;
mValorReal: Real;

begin
if RadioGroup1.ItemIndex>1 then
   begin
   fmensagem('Opção ainda não disponível',0,['0'],0);
   exit;
   end;
Qr_Pro.Close;
Qr_Pro.Sql.Clear;
Qr_Pro.SQL.Add('select PDCODPRO,PDCODFOR,PDPRECO1,PDPRECO2,PDPRECO3,PDPRECOC,PDUCPR,PDVLRINC,'
              +' PDQTDGRML,PDPCOFAB,CUCODIGO from CADCUS,CADPRO '
             +' where ');
if RadioGroup1.ItemIndex=0 then
   Qr_Pro.SQL.Add(' PDCODPRO=CUCODIGO ')
else
   Qr_Pro.SQL.Add(' PDCODFOR=CUCODIGO ');
// Qr_Pro.SQL.add(' and PDCODPRO=2348 ');
Qr_Pro.SQL.add(iif(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and CUCODEMP=0'+IntToStr(codemp))
             +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+IntToStr(codemp))
             +' and CUTIPO=0'+IntToStr(RadioGroup1.ItemIndex));
mcinst2:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mcinst2)<>'' then
   Qr_Pro.SQL.Add(' and  PDCODPRO '+mcinst2);
Qr_Pro.SQL.Add(' group by PDCODPRO,PDCODFOR,PDPRECO1,PDPRECO2,'
             +' PDPRECO3,PDPRECOC,PDUCPR,PDVLRINC,PDPCOFAB,PDQTDGRML,CUCODIGO ');
Qr_Pro.Open;
if Qr_Pro.Eof then
   begin
   fmensagem('Não ha nada a ser atualizado!',0,['0'],0);
   exit;
   end;
GB_PROG.Visible:=True;
mlid:=0;
mqtd:=Qr_Pro.RecordCount;

DM1.Query1.Close;
DM1.Query1.sql.Clear;
DM1.Query1.sql.Add('Update CADCUS2 set CUPCOMIN=(Select PDVLRINC from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CUCODIGO )');


DM1.Query1.sql.Add(' Where Exists (Select PDVLRINC from CADPRO where '
                  +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' PDCODEMP=CPCODEMP and ')
                  +' PDCODPRO=CUCODIGO )');
DM1.Query1.sql.Add(' and CUTIPO=0');

if not DM1.Qr_TID.locate('TINOME','CADPRO',[]) then
   DM1.Query1.Sql.add(' and CPCODEMP=0'+IntTostr(codemp));
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   DM1.Query1.sql.savetoFile(mpastatemp + 'SQL.txt');
   FMensagem('Erro 1983 ao Atualizar Formulas!',0,['0'],0);
   exit;
   end;


if cb_capcus.Checked then
   begin
   GB_PROG.Caption:='Atualizando os Preços de Custos de Acordo com as Formulas';
   GB_PROG.Update;
   While not Qr_Pro.Eof do
      begin
      mlid:=mlid+1;
      Gauge1.Progress:=mlid*100 div mqtd;
      mpcofab:=frm_pcus.fPcusCaptura(Qr_ProPDCODPRO.Value,Qr_ProPDQTDGRML.Value);
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.Sql.add('Update CADPRO set PDPCOFAB=0'+mudavp(FloatToStr(mpcofab))
                        +', PDUCPR=0'+mudavp(FloatToStr(mpcofab))
                        +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' PDCODPRO=0'+Qr_ProPDCODPRO.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fmensagem('Erro 99 ao atualizar o cadastro de Produtos!',0,['0'],0);
         end;
      Qr_Pro.Next;
      end;
   Qr_Pro.Close;
   Qr_Pro.Open;
   GB_PROG.Caption:='Atualizando os Preços de Vendas';
   GB_PROG.Update;
   end;

mlid:=0;
mqtd:=Qr_Pro.RecordCount;

While not Qr_Pro.Eof do
   begin
//   if Qr_ProPDUCPR.AsFloat=0 then
      mpcocpr:=Qr_ProPDPCOFAB.AsFloat;
//   else
//      mpcocpr:=Qr_ProPDUCPR.AsFloat;
   mtotal:=0;
   mlid:=mlid+1;
   Gauge1.Progress:=mlid*100 div mqtd;
   Qr_Com.Close;
   Qr_Com.SQl.Clear;
   Qr_Com.SQL.add('Select CUPERC,PCAPLS,PCOPCIO,PCFATOR,PFORMULA, PTIPO from CADCUS,CADPCUS '
                 +' where PCCODIGO=CUCODPCU '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADCUS',[]),'',' and CUCODEMP=0'+IntToStr(codemp))
                 +' and CUTIPO=0'+IntToStr(RadioGroup1.ItemIndex)
                 +' and CUCODIGO=0'+Qr_ProCUCODIGO.AsString
                 +' order by PCOPCIO,PCNOME ');
   Qr_Com.Open;

   mfator:=0;
   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>0 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mFator:=mFator+Qr_ComCUPERC.AsFloat;
      Qr_Com.Next;
      end;
   Qr_Com.First;
   if mFator<>0 then
      mFator:=(100-mfator)/100;

   mVlrInc:=0;
   mtotal:=0;
   mValorReal:=0;
   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>0 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mVlrResult:=fCalcularCusto(
                            Qr_ComPCAPLS.AsInteger,
                            Qr_ComPFORMULA.AsInteger,
                            Qr_ComPTIPO.AsInteger,
                            mfator,
                            Qr_ComCUPERC.AsFloat,
                            mpcocpr,mtotal,0,mValorReal);

      mvt    :=mvlrResult[0];
      mTotal:=mTotal+mVt;

      Qr_Com.Next;
      end;

   mVlrInc:=Arredonda( (Qr_ProPDVLRINC.AsFloat*mPcusAliqDeb/100) , mcasqtdccus);

   mpcofab:=mpcocpr+mTotal+mVlrInc;
   mTotal:=0;
// inicio do preco de custo

      Qr_Com.first;

   mfator:=0;
   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>1 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mFator:=mFator+Qr_ComCUPERC.AsFloat;
      Qr_Com.Next;
      end;
   Qr_Com.First;
   if mFator<>0 then
      mFator:=(100-mfator)/100;

   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>1 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mVlrResult:=fCalcularCusto(
                            Qr_ComPCAPLS.AsInteger,
                            Qr_ComPFORMULA.AsInteger,
                            Qr_ComPTIPO.AsInteger,
                            mfator,
                            Qr_ComCUPERC.AsFloat,
                            mpcofab,mtotal,0,mValorReal);

      mvt    :=mvlrResult[0];
      if Qr_ComPTIPO.AsInteger=0 then
        mValorReal:=0
      else if Qr_ComPTIPO.AsInteger=1 then
        mValorReal:=mVt;
      mTotal:=mTotal+mVt;

      Qr_Com.Next;
      end;
   mpcocus:=mpcofab+mTotal;
   mTotal:=0;

// termino do preco de custo

// inicio do preco de Venda

   Qr_Com.first;
   mfator:=0;
   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>3 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mFator:=mFator+Qr_ComCUPERC.AsFloat;
      Qr_Com.Next;
      end;
   Qr_Com.First;
   if mFator<>0 then
      mFator:=(100-mfator)/100;

   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>3 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mVlrResult:=fCalcularCusto(
                            Qr_ComPCAPLS.AsInteger,
                            Qr_ComPFORMULA.AsInteger,
                            Qr_ComPTIPO.AsInteger,
                            mfator,
                            Qr_ComCUPERC.AsFloat,
                            mpcocus,mtotal,0,mValorReal);

      mvt    :=mvlrResult[0];
      mTotal:=mTotal+mVt;

      Qr_Com.Next;
      end;
   mpcovda:=mpcocus+mTotal;
   mTotal:=0;

// termino do preco de venda



// inicio do preco de Venda com encargos

   Qr_Com.first;

   mfator:=0;
   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>2 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mFator:=mFator+Qr_ComCUPERC.AsFloat;
      Qr_Com.Next;
      end;
   Qr_Com.First;
   if mFator<>0 then
      mFator:=(100-mfator)/100;

   While not Qr_Com.Eof do
      begin
      if Qr_ComPCOPCIO.Value<>2 then
         begin
         Qr_Com.Next;
         Continue;
         end;

      mVlrResult:=fCalcularCusto(
                            Qr_ComPCAPLS.AsInteger,
                            Qr_ComPFORMULA.AsInteger,
                            Qr_ComPTIPO.AsInteger,
                            mfator,
                            Qr_ComCUPERC.AsFloat,
                            mpcovda,mtotal,0,mValorReal);

      mvt    :=mvlrResult[0];
      mTotal:=mTotal+mVt;

      Qr_Com.Next;
      end;
   mPcoEcar:=mpcovda+mTotal;
   mTotal:=0;

// termino do preco de venda
   mPcoVda01:=mPcoEcar;


   if RadioGroup1.ItemIndex=0 then
      flcadcus2(0,0,Qr_ProPDCODPRO.AsString)
   else if RadioGroup1.ItemIndex=1 then
      flcadcus2(1,0,Qr_ProPDCODFOR.AsString);
   if DM1.Tb_Cus2.Eof then
      begin
      mPcoVda02:=mPcoVda01;
      mPcoVda03:=mPcoVda01;
      matpco1:=true;
      matpco2:=true;
      matpco3:=true;
      end
   else
      begin
      mPcoVda02:=mPcoVda01+(mPcoVda01*DM1.Tb_Cus2CUACPCO2.Value/100);
      mPcoVda03:=mPcoVda01+(mPcoVda01*DM1.Tb_Cus2CUACPCO3.Value/100);
      if DM1.Tb_Cus2CUATUP01.Value=0 then
         matpco1:=true
      else
         matpco1:=false;
      if DM1.Tb_Cus2CUATUP02.Value=0 then
         matpco2:=true
      else
         matpco2:=false;
      if DM1.Tb_Cus2CUATUP03.Value=0 then
         matpco3:=true
      else
         matpco3:=false;
      end;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('update CADPRO set '
                     +' PDPRECOC=0'+mudavp(FloatToStr(mpcocus)));
   if matpco1 then
      begin
      DM1.Query1.SQL.Add(', PDPRECOA1=0'+mudavp(Qr_ProPDPRECO1.AsString)+','
                     +' PDDTUATP1='+chr(39)+FormatDateTime(fdt,pdatasis)+chr(39)+','
                     +' PDUSRALT1=0'+IntTostr(codusr)+','
                     +' PDPRECO1=0'+mudavp(FloatToStr(mPcoVda01)));
      end;
   if matpco2 then
      begin
      DM1.Query1.SQL.Add(', PDPRECOA2=0'+mudavp(Qr_ProPDPRECO2.AsString)+','
                     +' PDDTUATP2='+chr(39)+FormatDateTime(fdt,pdatasis)+chr(39)+','
                     +' PDUSRALT2=0'+IntTostr(codusr)+','
                     +' PDPRECO2=0'+mudavp(FloatToStr(mPcoVda02)));
      end;
   if matpco2 then
      begin
      DM1.Query1.SQL.Add(', PDPRECOA3=0'+mudavp(Qr_ProPDPRECO3.AsString)+','
                     +' PDDTUATP3='+chr(39)+FormatDateTime(fdt,pdatasis)+chr(39)+','
                     +' PDUSRALT3=0'+IntTostr(codusr)+','
                     +' PDPRECO3=0'+mudavp(FloatToStr(mPcoVda03)));
      end;


   DM1.Query1.SQL.Add(' where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDCODEMP=0'+IntToStr(codemp)+' and ')
                     +' PDCODPRO=0'+Qr_ProPDCODPRO.AsString);
   Try
      DM1.Query1.ExecSQL;
   except
       fmensagem('Erro de instrucao: ACUS119. Contactar Suporte!',0,['0'],0);
      end;
   Qr_Pro.Next;
   end;
fmensagem('Concluido!',0,['0'],0);
GB_PROG.Visible:=False;
end;

procedure TFrm_ACus.FormCreate(Sender: TObject);
begin

if Form_pcus=nil then
  Application.CreateForm(TFrm_Pcus, form_pcus);
//             form_pcu: TFrm_Pcus;

if flfilpad(0,'_MFOR01','EDT_ALIQ') then
   mPcusAliqDeb     :=valfloat(DM4.Tb_FilPad2FPVALOR.AsString)
else
   mPcusAliqDeb     :=10;

if (DM1.Tb_PargerPINDUSTRIA.Value=1) or (DM1.Tb_PargerPINDUSTRIA.Value>=4) then
   begin
   cb_capcus.Visible:=true;
   cb_capcus.Checked:=true;
   end
else
   begin
   cb_capcus.Visible:=false;
   cb_capcus.Checked:=false;
   end;


end;

procedure TFrm_ACus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FreeAndNil(Frm_Pcus);
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ACus.CODPROExit(Sender: TObject);
begin
   if Trim(CODPRO.Text)<>'' then
   begin
   flcadpro(1,0,0,CODPRO.Text);
   if DM1.Tb_Pro.Eof then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      end;
   end;

end;

procedure TFrm_ACus.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if DM1.Tb_PargerPPCOGRA.Value<>1 then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      if DM1.Tb_PargerPPCOGRA.Value=1 then
         CODPRO.Text:=fChamaPro(2,'Frm_Lpreco1',key)
      else
         CODPRO.Text:=fChamaPro(0,'Frm_lpreco1',key);
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                 +' - '+DM1.Tb_ProPDNOME.Value);
      codpro.text := '';
      codpro.setfocus;
      key:=#0;
      end;
   end;


end;

procedure TFrm_ACus.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);

end;

procedure TFrm_ACus.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
   begin
   lbl_codpro.Visible:=true;
   CODPRO.Visible    :=true;
   lbx_codpro.Visible:=true;
   OMITIR_PRO.Visible:=true;
   end
else
   begin
   lbl_codpro.Visible:=false;
   CODPRO.Visible    :=false;
   lbx_codpro.Visible:=false;
   OMITIR_PRO.Visible:=false;
   end;

end;

end.

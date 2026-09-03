unit S_ConsPro_AutoP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,S_DM1,S_DM2,db,dbtables,func,lerarq,
  Grids, DBGrids,S_TipPro;

type
  TFrm_ConsPro_AutoP = class(TForm)
    RG_TIPOCONS: TRadioGroup;
    GroupBox1: TGroupBox;
    CODTIP: TEdit;
    NOMTIP: TEdit;
    ANO: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    CODGRU: TEdit;
    StaticText5: TStaticText;
    NOMGRU: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    CONTEUDO: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    dbGrid_SGPro_Ano: TDBGrid;
    dbGrid_SGPro: TDBGrid;
    Src_Pro: TDataSource;
    Src_SGPRO: TDataSource;
    Tb_Pro: TQuery;
    Tb_ProPDNOME: TStringField;
    Tb_ProPDNOME2: TStringField;
    Tb_ProPDMARCA: TStringField;
    Tb_ProPDCODPRO: TFloatField;
    Tb_ProPDCODBAR: TFloatField;
    Tb_ProPDCODFOR: TFloatField;
    Tb_ProPDNOMFOR: TStringField;
    Tb_ProPDCODFAB: TStringField;
    Tb_ProPDPRECO1: TFloatField;
    Tb_ProPDPRECO2: TFloatField;
    Tb_ProPDPRECO3: TFloatField;
    Tb_ProPDCODGRU: TFloatField;
    Tb_ProPDNOMGRU: TStringField;
    Tb_Proestoque: TFloatField;
    Tb_Proestoquer: TFloatField;
    Tb_Proestoquec: TFloatField;
    Tb_Prodtuent: TDateField;
    Tb_Prodtusai: TDateField;
    Tb_ProPDUND: TStringField;
    Tb_ProPDSECAO: TStringField;
    Tb_ProPDSALDO: TFloatField;
    Tb_ProPDSALDOC: TFloatField;
    Tb_ProPDSALDOR: TFloatField;
    Tb_ProPDDTULTSAI: TDateTimeField;
    Tb_ProPDDTULTENT: TDateTimeField;
    bbCadPro: TBitBtn;
    GroupBox4: TGroupBox;
    lbl_Acab: TStaticText;
    lbl_Serv: TStaticText;
    lbl_MPR: TStaticText;
    lbl_PP: TStaticText;
    lbl_MP: TStaticText;
    lbl_Isum: TStaticText;
    lbl_outros: TStaticText;
    lbl_ProBloq: TStaticText;
    lbl_ProVenc: TStaticText;
    Tb_ProPDSTATUS: TFloatField;
    Tb_ProPDNIVEL: TFloatField;
    Tb_Proestoquet: TFloatField;
    Tb_ProPDSALDOT: TFloatField;
    DBGrid1: TDBGrid;
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_ProDataChange(Sender: TObject; Field: TField);
    procedure Src_SGPRODataChange(Sender: TObject; Field: TField);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPExit(Sender: TObject);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUExit(Sender: TObject);
    procedure Tb_ProCalcFields(DataSet: TDataSet);
    procedure CONTEUDOChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbCadProClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;
function flcadpro_ConsPro_AP(pTipo,pPre,pCodEmp:Integer;pCampo,pCodtip,pAno,pCodGru: String):Boolean;

var
  Frm_ConsPro_AutoP: TFrm_ConsPro_AutoP;
  procons_oriAP: String;

implementation

uses S_GPro, S_Pro_AutoP, S_Ped;

{$R *.dfm}

procedure TFrm_ConsPro_AutoP.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ConsPro_AutoP.bbAtualizarClick(Sender: TObject);
begin
if Trim(CONTEUDO.Text)<>'' then
   begin
   if (RG_TIPOCONS.ItemIndex=1) or (RG_TIPOCONS.ItemIndex=3) then
      CONTEUDO.Text:=fdeixanum(CONTEUDO.Text);
   end;
flcadpro_ConsPro_AP(RG_TIPOCONS.ItemIndex,1,0,CONTEUDO.Text,trim(CODTIP.Text),Trim(ANO.Text),trim(CODGRU.Text));


end;

procedure TFrm_ConsPro_AutoP.Src_ProDataChange(Sender: TObject;
  Field: TField);
begin
if not Tb_ProPDCODPRO.IsNull then
   flCadSGPro(0,0,Tb_ProPDCODPRO.AsString,'');
end;

procedure TFrm_ConsPro_AutoP.Src_SGPRODataChange(Sender: TObject;
  Field: TField);
begin
if (not Tb_ProPDCODPRO.IsNull) and  (not DM2.Tb_SGProSGPCODGRU.IsNull) then
   flCadSGPro_ano(0,0,Tb_ProPDCODPRO.AsString,DM2.Tb_SGProSGPCODGRU.AsString,'')
else
  flCadSGPro_ano(0,0,'999','999','999');

end;

procedure TFrm_ConsPro_AutoP.CODTIPKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTIP.Text:=fChamaTipPro(0,'frm_ConsPro_AutoP',Key);
   if trim(CODTIP.Text)<>'' then
      CODTIPExit(Self);
   key:=#0;
   end;
end;

procedure TFrm_ConsPro_AutoP.CODTIPExit(Sender: TObject);
begin
if ValInt(CODTIP.Text)=0 then
   CODTIP.Text:=''
else
   CODTIP.Text:=InttoStr(ValInt(CODTIP.Text));

if Trim(CODTIP.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      NOMTIP.Text:=DM1.Query1.fields[0].AsString
   else
      begin
      MessageDlg('Tipo de Produto não Cadastrado!',mtWarning,[mbOk],0);
      CODTIP.SetFocus;
      end;
   end
else
   NOMTIP.Text:='';


end;

procedure TFrm_ConsPro_AutoP.CODGRUKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.Text:=fChamaGPro(0,'frm_ConsPro_AutoP',Key);
   if trim(CODGRU.Text)<>'' then
      CODGRUExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_ConsPro_AutoP.CODGRUExit(Sender: TObject);
begin
if ValInt(CODGRU.Text)=0 then
   CODGRU.Text:=''
else
   CODGRU.Text:=IntToStr(valint(CODGRU.Text));
if trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      MessageDlg('Grupo não Cadastrado!',mtWarning,[mbok],0);
      CODGRU.SetFocus;
      end
   else
      NOMGRU.Text:=DM1.Query1.fields[0].AsString;
   end
else
   NOMGRU.Text:=' ';

end;

procedure TFrm_ConsPro_AutoP.Tb_ProCalcFields(DataSet: TDataSet);
begin
if not DM1.Qr_TID.Locate('TINOME','CADEST',[]) then
   begin
   if not flcadest(0,0,0,Tb_ProPDCODPRO.AsString) then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.add('Insert into CADEST ('
                        +'CECODEMP, '
                        +'CECODPRO, '
                        +'CESALDO, '
                        +'CESALDO_PRAT, '
                        +'CESALDO_DEP, '
                        +'CESALDOR,'
                        +'CESALDOC,'
                        +'CESALDOT,'
                        +'CEENTPEN,'
                        +'CEDTUSAI,'
                        +'CEDTUENT'
                        +') Values ('
                        +Inttostr(codemp)+','
                        +Tb_ProPDCODPRO.AsString+','
                        +'0,' // CESALDO
                        +'0,' // CESALDO_PRAT
                        +'0,' // CESALDO_DEP
                        +'0,' // CESALDOR
                        +'0,' // CESALDOC
                        +'0,' // CESALDOT
                        +'0,' // CEESTPEN'
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+','
                        +')');
      flcadest(0,0,0,Tb_ProPDCODPRO.AsString);
      end;
   Tb_Proestoque.Value:=DM1.Tb_EstCESALDO.AsFloat;
   Tb_Proestoquer.Value:=DM1.Tb_EstCESALDOR.AsFloat;
   Tb_Proestoquec.Value:=DM1.Tb_EstCESALDOC.AsFloat;
   Tb_Proestoquet.Value:=DM1.Tb_EstCESALDOT.AsFloat;

   if not DM1.Tb_EstCEDTUENT.IsNull then
      Tb_Prodtuent.Value  :=DM1.Tb_EstCEDTUent.Value;
   if not DM1.Tb_EstCEDTUSAI.IsNull then
      Tb_Prodtusai.Value  :=DM1.Tb_EstCEDTUSAI.Value;
   end
else
   begin
   Tb_Proestoque.Value :=Tb_ProPDSALDO.Value;
   Tb_Proestoquer.Value:=Tb_ProPDSALDOR.Value;
   Tb_Proestoquec.Value:=Tb_ProPDSALDOC.Value;
   Tb_Proestoquet.Value:=Tb_ProPDSALDOT.Value;
   if not Tb_ProPDDTULTENT.IsNull then
      Tb_Prodtuent.Value  :=Tb_ProPDDTULTENT.Value;
   if not Tb_ProPDDTULTSAI.IsNull then
      Tb_Prodtusai.Value  :=Tb_ProPDDTULTSAI.Value;
   end;

end;
function flcadpro_ConsPro_AP(pTipo,pPre,pCodEmp:Integer;pCampo,pCodtip,pAno,pCodGru: String):Boolean;
var
mGrupo_Inst: String;
begin
Frm_ConsPro_AutoP.Tb_Pro.Close;
Frm_ConsPro_AutoP.Tb_Pro.SQL.Clear;
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('Select PDNOME,');
mgrupo_inst:=' PDNOME ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDNOME2,');
mgrupo_inst:=mgrupo_inst+',PDNOME2 ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDMARCA,');
mgrupo_inst:=mgrupo_inst+',PDMARCA ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDCODPRO,');
mgrupo_inst:=mgrupo_inst+',PDCODPRO ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDCODBAR,');
mgrupo_inst:=mgrupo_inst+',PDCODBAR ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDCODFOR,');
mgrupo_inst:=mgrupo_inst+',PDCODFOR ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDNOMFOR,');
mgrupo_inst:=mgrupo_inst+',PDNOMFOR ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDCODFAB,');
mgrupo_inst:=mgrupo_inst+',PDCODFAB ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDPRECO1,');
mgrupo_inst:=mgrupo_inst+',PDPRECO1 ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDPRECO2,');
mgrupo_inst:=mgrupo_inst+',PDPRECO2 ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDPRECO3,');
mgrupo_inst:=mgrupo_inst+',PDPRECO3 ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDCODGRU,');
mgrupo_inst:=mgrupo_inst+',PDCODGRU ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDNOMGRU,');
mgrupo_inst:=mgrupo_inst+',PDNOMGRU ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDUND,');
mgrupo_inst:=mgrupo_inst+',PDUND ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDSECAO,');
mgrupo_inst:=mgrupo_inst+',PDSECAO ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDSALDO,');
mgrupo_inst:=mgrupo_inst+',PDSALDO ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDSALDOC,');
mgrupo_inst:=mgrupo_inst+',PDSALDOC ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDSALDOR,');
mgrupo_inst:=mgrupo_inst+',PDSALDOR ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDSALDOT,');
mgrupo_inst:=mgrupo_inst+',PDSALDOT ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDDTULTSAI,');
mgrupo_inst:=mgrupo_inst+',PDDTULTSAI ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       PDDTULTENT');
mgrupo_inst:=mgrupo_inst+',PDDTULTENT ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       ,PDSTATUS');
mgrupo_inst:=mgrupo_inst+',PDSTATUS ';
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add('       ,PDNIVEL');
mgrupo_inst:=mgrupo_inst+',PDNIVEL ';
mcinst:=' where ';
la_instrucao:='';
if (pCodtip<>'') and (pAno<>'') then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';
   fInnerJoin(1,'CADSGPRO','SGPCODEMP','PDCODEMP','SGPCODPRO','PDCODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADSGPRO_ANO','SGPACODEMP','SGPCODEMP','SGPACODPRO','SGPCODPRO','SGPACODGRU','SGPCODGRU');
   la_instrucao:=la_instrucao+' and SGPCODGRU=0'+Trim(pCodTip);
   la_instrucao:=la_instrucao+' and SGPAANO=0'+Trim(pAno);

   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
   end
else if (pCodtip<>'')  then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';
   fInnerJoin(1,'CADSGPRO','SGPCODEMP','PDCODEMP','SGPCODPRO','PDCODPRO');
   la_instrucao:=la_instrucao+' and SGPCODGRU=0'+Trim(pCodTip);

   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
   end
else if (pAno<>'')  then
   begin
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   la_Empresas :='';
   fInnerJoin(0,'CADSGPRO','SGPCODEMP','PDCODEMP','SGPCODPRO','PDCODPRO');
   if pbanco=0 then
      la_instrucao:=la_instrucao+' and ';
   fInnerJoin3(0,'CADSGPRO_ANO','SGPACODEMP','SGPCODEMP','SGPACODPRO','SGPCODPRO','SGPACODGRU','SGPCODGRU');
   la_instrucao:=la_instrucao+' and SGPAANO=0'+Trim(pAno);
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(' from CADPRO '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join);
   end
else
   begin
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(' from CADPRO ');
   mGrupo_Inst:='';
   end;
if pCodEmp<>0 then
   begin
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODEMP=0'+InttoStr(pCodEmp));
   mcinst:=' and ';
   end
else if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODEMP=0'+InttoStr(codemp));
   mcinst:=' and ';
   end;
if trim(pCampo)<>'' then
   begin
   if Frm_ConsPro_AutoP.RG_TIPOCONS.ItemIndex=0 then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDNOME '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if Frm_ConsPro_AutoP.RG_TIPOCONS.ItemIndex=1 then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODPRO=0'+pCampo);
      mcinst:=' and ';
      end;
   if Frm_ConsPro_AutoP.RG_TIPOCONS.ItemIndex=2 then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDNOME2 '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if Frm_ConsPro_AutoP.RG_TIPOCONS.ItemIndex=3 then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODBAR=0'+pCampo);
      mcinst:=' and ';
      end;
   if Frm_ConsPro_AutoP.RG_TIPOCONS.ItemIndex=4 then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDNOMFOR '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if Frm_ConsPro_AutoP.RG_TIPOCONS.ItemIndex=5 then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDMARCA '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   if Frm_ConsPro_AutoP.RG_TIPOCONS.ItemIndex=6 then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODFOR '+iif(ppre=1,' like '+chr(39)+pCampo+'%'+chr(39)
                                                 ,'='+chr(39)+pCampo+chr(39)));
      mcinst:=' and ';
      end;
   end;
{
if (pCodtip<>'') and (pAno<>'') then
   begin
   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      begin
      Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' GPCODEMP=PDCODEMP ');
      mcinst:=' and ';
      end;
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' GPCODPRO=PDCODPRO');
   mcinst:=' and ';

   end;
if Trim(pCodGru)<>'' then
   begin
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+' PDCODGRU=0'+pCampo);
   mcinst:=' and ';
   end;
}
if trim(la_instrucao)<>'' then
   begin
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(mcinst+la_instrucao);
   mcinst:=' and ';
   end;
if trim(mGrupo_Inst)<>'' then
   Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(' Group by '+mGrupo_Inst);
Frm_ConsPro_AutoP.Tb_Pro.SQL.Add(' Order by PDNOME');

Frm_ConsPro_AutoP.Tb_Pro.Open;
if Frm_ConsPro_AutoP.Tb_Pro.Eof then
   result:=false
else
   result:=true;
end;

procedure TFrm_ConsPro_AutoP.CONTEUDOChange(Sender: TObject);
begin
if Trim(CONTEUDO.Text)<>'' then
   begin
   if (RG_TIPOCONS.ItemIndex=1) or (RG_TIPOCONS.ItemIndex=3) then
      CONTEUDO.Text:=fdeixanum(CONTEUDO.Text);
   end;
flcadpro_ConsPro_AP(RG_TIPOCONS.ItemIndex,1,0,CONTEUDO.Text,trim(CODTIP.Text),Trim(ANO.Text),trim(CODGRU.Text));

end;

procedure TFrm_ConsPro_AutoP.FormCreate(Sender: TObject);
begin
if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
   lbl_Acab.Font.Color:=DM1.Tb_PargerPFCORP_ACAB.AsInteger;
if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
   lbl_Serv.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
   lbl_MPR.Font.Color :=DM1.Tb_PargerPFCORP_MPR.AsInteger;
if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
   lbl_PP.Font.Color  :=DM1.Tb_PargerPFCORP_PP.AsInteger;
if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
   lbl_MP.Font.Color  :=DM1.Tb_PargerPFCORP_MP.AsInteger;
if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
   lbl_Isum.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
   lbl_outros.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
if not (DM1.Tb_PargerPFCORP_VENC.IsNull) and (DM1.Tb_PargerPFCORP_VENC.Value<>0) then
   lbl_ProVenc.Font.Color:=DM1.Tb_PargerPFCORP_VENC.AsInteger;
if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
   lbl_ProBloq.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;

Tb_ProPDPRECO1.DisplayFormat:=mcasaspu;
Tb_ProPDPRECO2.DisplayFormat:=mcasaspu;
Tb_ProPDPRECO3.DisplayFormat:=mcasaspu;

Tb_Prodtuent.DisplayFormat  :=fdt2;
Tb_Prodtusai.DisplayFormat  :=fdt2;

end;

procedure TFrm_ConsPro_AutoP.DBGrid1DblClick(Sender: TObject);
begin
if lowercase(procons_oriAP)='frm_ped' then
   begin
    FRM_PED.CODPRO.SetFocus;
    FRM_PED.CODPRO.Text        := Tb_ProPDCODPRO.AsString;
    FRM_PED.CODPRO.Update;
    FRM_PED.CODPROExit(SELF);
    FRM_PED.QTD.SetFocus;
    FRM_PED.NOMPRO.Update;
    FRM_PED.QTD.TEXT           := '1';
    FRM_PED.QTD.Update;
    FRM_PED.QTDExit(SELF);
    FRM_PED.MDESCI01.Text      := '0';
    FRM_PED.VALDESI.Text       := '0';
    FRM_PED.ITEM_GRAVAR.SetFocus;
    FRM_PED.ITEM_GRAVARClick(SELF);
   end
else
   ModalResult:=MrOk;



end;

procedure TFrm_ConsPro_AutoP.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=9) or (key=27) then
   begin
   ModalResult:=MrOk;
   abort;
   end;


end;

procedure TFrm_ConsPro_AutoP.bbCadProClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Pro_AutoP, Frm_Pro_AutoP);
Frm_Pro_AutoP.Edit1.Text:=DM1.Tb_ProPDNOME.Value;
Frm_Pro_AutoP.Edit1.SelStart:=1;
Frm_Pro_AutoP.Edit1.SelLength:=1;
Frm_Pro_AutoP.PC1.ActivePageIndex:=1;
pro_oriAP:='Frm_ConsPro_AutoP';
Frm_Pro_AutoP.ShowModal;
Frm_Pro_AutoP.Free;
Frm_Pro_AutoP:=nil;
end;

procedure TFrm_ConsPro_AutoP.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

if Frm_ConsPro_AutoP.Tb_ProPDSTATUS.Value>0 then
   begin
   if not (DM1.Tb_PargerPFCORP_BLOQ.IsNull) and (DM1.Tb_PargerPFCORP_BLOQ.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_BLOQ.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if Frm_ConsPro_AutoP.Tb_ProPDNIVEL.Value=0 then
   begin
   if not (DM1.Tb_PargerPFCORP_ACAB.IsNull) and (DM1.Tb_PargerPFCORP_ACAB.Value<>0) then
      begin
//      DBGrid1.Canvas.Font.Color:= ;   /// DM1.Tb_PargerPFCORP_ACAB.AsInteger;
//      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Frm_ConsPro_AutoP.Tb_ProPDNIVEL.Value=1 then
   begin
   if not (DM1.Tb_PargerPFCORP_SERV.IsNull) and (DM1.Tb_PargerPFCORP_SERV.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_SERV.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Frm_ConsPro_AutoP.Tb_ProPDNIVEL.Value=2 then
   begin
   if not (DM1.Tb_PargerPFCORP_MPR.IsNull) and (DM1.Tb_PargerPFCORP_MPR.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MPR.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
   end
else if Frm_ConsPro_AutoP.Tb_ProPDNIVEL.Value=3 then
   begin
   if not (DM1.Tb_PargerPFCORP_PP.IsNull) and (DM1.Tb_PargerPFCORP_PP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_PP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Frm_ConsPro_AutoP.Tb_ProPDNIVEL.Value=4 then
   begin
   if not (DM1.Tb_PargerPFCORP_MP.IsNull) and (DM1.Tb_PargerPFCORP_MP.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_MP.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Frm_ConsPro_AutoP.Tb_ProPDNIVEL.Value=5 then
   begin
   if not (DM1.Tb_PargerPFCORP_ISUM.IsNull) and (DM1.Tb_PargerPFCORP_ISUM.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_ISUM.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end
else if Frm_ConsPro_AutoP.Tb_ProPDNIVEL.Value=6 then
   begin
   if not (DM1.Tb_PargerPFCORP_OUT.IsNull) and (DM1.Tb_PargerPFCORP_OUT.Value<>0) then
      begin
      DBGrid1.Canvas.Font.Color:=DM1.Tb_PargerPFCORP_OUT.AsInteger;
      DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;
   end;

end;

procedure TFrm_ConsPro_AutoP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if lowercase(procons_oriAP)='frm_ped' then
   begin
   FRM_PED.CODPRO.TEXT := '';
   TB_PRO.CLOSE;
   CONTEUDO.SetFocus;
   CONTEUDO.CLEAR;
   end;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ConsPro_AutoP.FormActivate(Sender: TObject);
begin
if not CONTEUDO.Focused then
   CONTEUDO.SetFocus;

end;

end.

unit S_CX_RAna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons,db,dbtables,func,S_DM1, S_Impres,
  S_Bco, S_Dpto, S_CCu, S_Emp,s_DM2,S_Cli,S_For,S_Tra,S_Ven,lerarq,
  uexport;

type
  TFrm_CX_RAna = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    MCODEMP: TEdit;
    Label2: TLabel;
    CODBCO: TEdit;
    NOMEMP: TEdit;
    NOMBCO: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edt_codccu: TEdit;
    Label5: TLabel;
    CB_TIPO: TComboBox;
    CODIGO: TEdit;
    NOME: TEdit;
    Label6: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label7: TLabel;
    RG_NAT: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_LDR: TQuery;
    RG_ESTADO: TRadioGroup;
    Qr_LDRDATADP: TDateTimeField;
    Qr_LDRDATAREAL: TDateTimeField;
    Qr_LDRDATAREF: TDateTimeField;
    Qr_LDRCODBCO: TFloatField;
    Qr_LDRCODDEP: TStringField;
    Qr_LDRCODCC: TStringField;
    Qr_LDRVALORP: TFloatField;
    Qr_LDRVALORR: TFloatField;
    Qr_LDRNATDC: TStringField;
    Qr_LDRDESCMV: TStringField;
    Qr_LDRNUMDOC: TStringField;
    Qr_LDRNUMDOC2: TStringField;
    Qr_LDRTIPO: TStringField;
    Qr_LDRCODIGO: TFloatField;
    Qr_LDRDNOME: TStringField;
    Qr_LDRCCNOME: TStringField;
    SP2: TSpeedButton;
    bbExcel: TSpeedButton;
    Src_Ldr: TDataSource;
    RG_TPPESQ: TRadioGroup;
    cb_equip: TCheckBox;
    Qr_LDRNOME: TStringField;
    edt_coddep: TEdit;
    lbx_nomedep: TListBox;
    omitir_dep: TCheckBox;
    lbx_nomccu: TListBox;
    omitir_ccu: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure MCODEMPKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure MCODEMPExit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure edt_codccuExit(Sender: TObject);
    procedure CODIGOExit(Sender: TObject);
    procedure Qr_LDRCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CB_TIPOExit(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_coddepKeyPress(Sender: TObject; var Key: Char);
    procedure edt_coddepExit(Sender: TObject);
    procedure lbx_nomedepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure omitir_depMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CB_TIPOChange(Sender: TObject);
    procedure lbx_nomccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure omitir_ccuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edt_codccuKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_RAna: TFrm_Impres;
  end;

var
  Frm_CX_RAna: TFrm_CX_RAna;

implementation

{$R *.dfm}

procedure TFrm_CX_RAna.BitBtn1Click(Sender: TObject);
var
msaldod,msaldoi, mdebr, mcredr, mdebp, mcredp: Real;
mdebr_dep, mcredr_dep: Real;
mdebr_cc,  mcredr_cc : Real;
mdebp_dep, mcredp_dep: Real;
mdebp_cc,  mcredp_cc : Real;

mp1,mp2,mp3: Real;
mdesc,mnome: String;
mdepa, mcca: String;
mVendaPeriodo: Real;

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


Qr_LDR.Close;
Qr_Ldr.SQL.Clear;
if (pbanco<>0) then
   begin
   Qr_LDR.SQL.Add('Select DATADP,DATAREAL,DATAREF,CODBCO,CODDEP,CODCC, '
              +'       VALORP,VALORR,NATDC,DESCMV,NUMDOC,NUMDOC2,TIPO,CODIGO, '
              +'       DNOME,CCNOME,NOME '
              +' from CADLDR '
              +iif(DM1.Qr_TID.Locate('TINOME','CADDEP',[]),
              ' left OUTER JOIN CADDEP ON (DCODDEP = CODDEP) ',
              ' left OUTER JOIN CADDEP ON (DCODEMP = CODEMP) and (DCODDEP = CODDEP)')
              +iif(DM1.Qr_TID.Locate('TINOME','CADCCU',[]),
              ' left OUTER JOIN CADCCU ON (CCCODCCU = CODCC )',
              ' left OUTER JOIN CADCCU ON (CCCODEMP = CODEMP) and (CCCODCCU = CODCC)')
              +' where STATUS<>9 '
              +iif(Trim(MCODEMP.Text)<>'',' and  CODEMP=0'+Trim(MCODEMP.Text),''));
   end
else
   begin
   Qr_LDR.SQL.Add('Select DATADP,DATAREAL,DATAREF,CODBCO,CODDEP,CODCC, '
              +'       VALORP,VALORR,NATDC,DESCMV,NUMDOC,NUMDOC2,TIPO,CODIGO, '
              +'       DNOME,CCNOME,NOME '
              +'       from CADLDR,CADDEP,CADCCU where STATUS<>9 '
              +iif(Trim(MCODEMP.Text)<>'',' and  CODEMP=0'+Trim(MCODEMP.Text),'')
              +iif(DM1.Qr_TID.Locate('TINOME','CADDEP',[]),'',' and  DCODEMP(+)=CODEMP')
              +' and DCODDEP(+)=CODDEP '
              +iif(DM1.Qr_TID.Locate('TINOME','CADCCU',[]),'',' and  CCCODEMP(+)=CODEMP')
              +' and CCCODCCU(+)=CODCC ');
   end;

mcinst2 := fItensListBox(1,lbx_nomedep,omitir_dep);
if trim(mcinst2) <> '' then begin
   Qr_ldr.sql.Add(' AND CODDEP '+mcinst2);
   mcinst := ' and ';
end;

mcinst2 := fItensListBox(1,lbx_nomccu,omitir_ccu);
if trim(mcinst2) <> '' then begin
   Qr_ldr.sql.Add(' AND CODCC '+mcinst2);
   mcinst := ' and ';
end;


Qr_ldr.SQL.Add(iif(Trim(CODBCO.Text)<>'','  and CODBCO=0'+Trim(CODBCO.Text),'')
             // +iif(Trim(CODDEP.Text)<>'','  and CODDEP='+chr(39)+Trim(CODDEP.Text)+chr(39),'')
//              +iif(Trim(CODCCU.Text)<>'','  and CODCC=' +chr(39)+Trim(CODCCU.Text)+chr(39),'')
              +iif(Trim(CB_TIPO.Text)<>'Todos','  and TIPO='+chr(39)+Trim(CB_TIPO.Text)+chr(39),'')
              +iif(Trim(CODIGO.Text)<>'','  and CODIGO=0'+Trim(CODIGO.Text),'')
              +iif(RG_NAT.ItemIndex=2,'  and NATDC<>'+chr(39)+'D'+chr(39),'')
              +iif(RG_NAT.ItemIndex=1,'  and NATDC='+chr(39)+'D'+chr(39),'')
              +iif(RG_ESTADO.ItemIndex=0,
              ' and (not DATAREAL is null and DATAREAL>'+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')','')
              +iif(RG_ESTADO.ItemIndex=1,
              ' and (DATAREAL is null or DATAREAL<='+chr(39)+FormatDateTime(fdt, pdatanula)+chr(39)+')',''));

if Trim(MDT1.Text)<>'/  /' then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Ldr.Sql.Add(' and DATAREF>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Ldr.Sql.Add(' and DATADP>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39))
   else
      Qr_Ldr.Sql.Add(' and DATAREAL>='+chr(39)+FormatDateTime(fdt,StrToDate(MDT1.Text))+chr(39));

   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   if RG_TPPESQ.ItemIndex=0 then
      Qr_Ldr.Sql.Add(' and DATAREF<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39))
   else if RG_TPPESQ.ItemIndex=1 then
      Qr_Ldr.Sql.Add(' and DATADP<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39))
   else
      Qr_Ldr.Sql.Add(' and DATAREAL<='+chr(39)+FormatDateTime(fdt,StrToDate(MDT2.Text))+chr(39));
   end;
Qr_Ldr.Sql.add(iif(RG_ESTADO.ItemIndex=0,' Order by DNOME,CCNOME,DATAREAL ',' Order by DNOME,CCNOME,DATADP '));
//Qr_Ldr.SQL.SaveToFile('C:\jg.txt');
Qr_Ldr.Open;
if Qr_LDR.Eof then
   begin
   MessageDlg('Nada a ser impresso no período Solicitado!',mtWarning,[mbOk],0);
   exit;
   end;
if Trim(MCODEMP.Text)<>'' then
   mcinst:=' CRCODEMP=0'+Trim(MCODEMP.Text)
else
   mcinst:='';
mVendaPeriodo:=fVendaPeriodo(0,mcinst,trim(MDT1.Text),trim(MDT2.Text));
{
DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.Sql.add('Select sum(CRVALOR) from CADDAR ');
mcinst:=' where ';
if Trim(MCODEMP.Text)<>'' then
   begin
   DM1.Query1.sql.Add(mcinst+' CRCODEMP=0'+Trim(MCODEMP.Text));
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   DM1.Query1.Sql.Add(mcinst+' CRDTEMIS>='+chr(39)+formatDatetime(fdt, StrToDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   DM1.Query1.Sql.Add(mcinst+' CRDTEMIS<='+chr(39)+formatDatetime(fdt, StrToDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;
DM1.Query1.SQL.add(' and CRSTATUS<>9 and CRCODORI=1 ');
mcinst:=' and ';
DM1.query1.Open;

mVendaPeriodo:=DM1.Query1.Fields[0].AsFloat;
}
msaldoi:=0;  mdebr:=0; mcredr:=0; mdebp:=0; mcredp:=0; msaldod:=0;
mdebr_dep:=0; mcredr_dep:=0;
mdebp_dep:=0; mcredp_dep:=0;
mdebr_cc :=0; mcredr_cc :=0;
mdebp_cc :=0; mcredp_cc :=0;
testeform := TFrm_CX_RAna(FindGlobalComponent('form_impres_RAna'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_impres_RAna);
   end;


form_impres_RAna.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_RAna.mpag:=0;
form_impres_RAna.mlin:=0;
While not Qr_Ldr.Eof do
   begin
   if form_impres_RAna.mlin=0 then
      begin
      form_impres_RAna.mlin:=form_impres_RAna.fImprimirCabecalho(136,'Relatorio analitico do caixa por Dep.+Centro Custo.');
      form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
      form_impres_RAna.RDprint1.ImpF(03,01,insere('-','-',80),mnormal);
      form_impres_RAna.mlin:=4;
      form_impres_RAna.RDprint1.Impf(form_impres_RAna.mlin,01,centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80) ,mneg);
      if cb_equip.Checked then
         begin
         form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
         form_impres_RAna.RDprint1.Impf(form_impres_RAna.mlin,01,centra('Vendas do Periodo: '+FormatFloat(mcasas, mVendaPeriodo),' ',80),mneg);
         end;
      form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
      form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'Data Prev. Valor Previsto Num.Docum. Descricao                      Sacado/Emitente                 Data Real      Valor Real Natur.',mreduz);
      form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
      form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'Departamento: '+Qr_LDRCODDEP.Value+' - '+Qr_LDRDNOME.Value,mneg);
      form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
      form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'Centro de Custo: '+Qr_LDRCODCC.Value+' - '+Qr_LDRCCNOME.Value,mneg);
      mdepa:=Qr_LDRCODDEP.Value;
      mcca :=Qr_LDRCODCC.Value;

      end;
   mp1:=0;
   mp2:=0;
   mp3:=0;
   if Qr_LDRNATDC.Value='C' then
      begin
      mcredr    :=mcredr    +Qr_LDRVALORR.Value;
      mcredr_dep:=mcredr_dep+Qr_LDRVALORR.Value;
      mcredr_cc :=mcredr_cc +Qr_LDRVALORR.Value;
      mcredp    :=mcredp    +Qr_LDRVALORP.Value;
      mcredp_dep:=mcredp_dep+Qr_LDRVALORP.Value;
      mcredp_cc :=mcredp_cc +Qr_LDRVALORP.Value;
      end
   else
      begin
      mdebr    :=mdebr    +Qr_LDRVALORR.Value;
      mdebr_dep:=mdebr_dep+Qr_LDRVALORR.Value;
      mdebr_cc :=mdebr_cc +Qr_LDRVALORR.Value;
      mdebp    :=mdebp    +Qr_LDRVALORP.Value;
      mdebp_dep:=mdebp_dep+Qr_LDRVALORP.Value;
      mdebp_cc :=mdebp_cc +Qr_LDRVALORP.Value;
      end;


   if RG_ESTADO.ItemIndex=0 then
      begin
      if Qr_LDRNATDC.Value='C' then
         begin
         msaldoi  :=msaldoi  +Qr_LDRVALORR.Value;
         end
      else
         begin
         msaldoi :=msaldoi  -Qr_LDRVALORR.Value;
         end;
      end
   else
      begin
      if Qr_LDRNATDC.Value='C' then
         begin
         msaldoi  :=msaldoi  +Qr_LDRVALORP.Value;
         end
      else
         begin
         msaldoi  :=msaldoi  -Qr_LDRVALORP.Value;
         end;
      end;


   form_impres_RAna.mlin :=form_impres_RAna.mlin+1;
   mdesc:=Qr_LDRDESCMV.Value;
   if Length(mdesc)>30 then
      mdesc:=copy(mdesc,1,30);
   mnome:=Qr_LDRnome.Value;
   if Length(mnome)>30 then
      mnome:=copy(mnome,1,30);

   form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,FormatDateTime('dd/mm/yyyy',Qr_LDRDATADP.Value)+' '
                           +Insere(FormatFloat('0.00',Qr_LDRVALORP.Value),' ',14)+' '
                           +insere2(Qr_LDRNUMDOC.Value,' ',10)+' '
                           +insere2(mdesc,' ',30)+' '
                           +insere2(mnome,' ',30)+' '
                           +iif((Qr_LDRDATAREAL.IsNull) or (Qr_ldrDATAREAL.value<=pdatanula),'          ',FormatDateTime('dd/mm/yyyy',Qr_LDRDATAREAL.Value))+' '
                           +iif((Qr_LDRDATAREAL.IsNull) or (Qr_LdrDATAREAL.Value<=pdatanula),'              ',insere(FormatFloat('0.00',Qr_LDRVALORR.Value),' ',14))+' '
                           +iif(Qr_LDRNATDC.Value='C','Credito','Debito'),mreduz);




{
Data Prev. Valor Previsto Num.Docum. Descricao                      Sacado/Emitente                 Data Real      Valor Real Natur.
10/09/2002 ZZZ.ZZZ.ZZ9,99 1234567890 123456789012345678901234567890 1234567890123456789012345678900 10/09/2202 ZZZ.ZZZ.ZZ9,99 Debito
- Total Departamento: Previsto: Credito:zzz.zzz.zz9,99 Debito:zzz.zzz.zz9,99  Realizado: Credito:zzz.zzz.zz9,99 Debito:zzz.zzz.zz9,99
- Total Centro Custo: Previsto: Credito:zzz.zzz.zz9,99 Debito:zzz.zzz.zz9,99  Realizado: Credito:zzz.zzz.zz9,99 Debito:zzz.zzz.zz9,99
}
   Qr_Ldr.Next;
   if Qr_Ldr.Eof then
      begin
      mp1:=0;
      mp2:=0;
      mp3:=0;

      if ((mdebr_cc+mdebp_cc)<>0) or ((mcredr_cc+mcredp_cc)<>0) then
         begin
         form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
         form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- Total Centro Custo: Previsto: Credito:'
                                 +insere(FormatFloat(mcasas, mcredp_cc),' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebp_cc),' ',14)
                                 +' Realizado: Credito:'
                                 +insere(FormatFloat(mcasas, mcredr_cc),' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebr_cc),' ',14),mreduz);
         if cb_equip.Checked then
            begin
            form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
            try
               mcredp_cc:=(mcredp_cc*100)/mVendaPeriodo;
            except
               mcredp_cc:=0;
               end;
            try
               mdebp_cc:=(mdebp_cc*100)/mVendaPeriodo;
            except
               mdebp_cc:=0;
               end;
            try
               mcredr_cc:=(mcredr_cc*100)/mVendaPeriodo;
            except
               mcredr_cc:=0;
               end;
            try
               mdebr_cc:=(mdebr_cc*100)/mVendaPeriodo;
            except
               mdebr_cc:=0;
               end;
            form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- % em Relacao ao Faturamento.: Credito:'
                                 +insere(FormatFloat(mcasas, mcredp_cc)+'%',' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebp_cc)+'%',' ',14)
                                 +' Realizado: Credito:'
                                 +insere(FormatFloat(mcasas, mcredr_cc)+'%',' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebr_cc)+'%',' ',14),mreduz);

            end;

         mcredp_cc:=0;
         mcredr_cc:=0;
         mdebp_cc:=0;
         mdebr_cc:=0;
         end;

      if ((mdebr_dep+mdebp_Dep)<>0) or ((mcredr_Dep+mcredp_Dep)<>0) then
         begin
         form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
         form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- Total Departamento: Previsto: Credito:'
                                 +insere(FormatFloat(mcasas, mcredp_Dep),' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebp_Dep),' ',14)
                                 +' Realizado: Credito:'
                                 +insere(FormatFloat(mcasas, mcredr_Dep),' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebr_Dep),' ',14),mreduz);
         if cb_equip.Checked then
            begin
            form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
            try
               mcredp_dep:=(mcredp_dep*100)/mVendaPeriodo;
            except
               mcredp_dep:=0;
               end;
            try
               mdebp_dep:=(mdebp_dep*100)/mVendaPeriodo;
            except
               mdebp_dep:=0;
               end;
            try
               mcredr_dep:=(mcredr_dep*100)/mVendaPeriodo;
            except
               mcredr_dep:=0;
               end;
            try
               mdebr_dep:=(mdebr_dep*100)/mVendaPeriodo;
            except
               mdebr_dep:=0;
               end;

            form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- % em Relacao Fatur: Previsto: Credito:'
                                 +insere(FormatFloat(mcasas, mcredp_Dep)+'%',' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebp_Dep)+'%',' ',14)
                                 +' Realizado: Credito:'
                                 +insere(FormatFloat(mcasas, mcredr_Dep)+'%',' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebr_Dep)+'%',' ',14),mreduz);

            end;
         mcredp_Dep:=0;
         mcredr_Dep:=0;
         mdebp_Dep:=0;
         mdebr_Dep:=0;
         end;


      if ((mdebr+mdebp)<>0) or ((mcredp+mcredr)<>0) then
         begin
         form_impres_RAna.mlin:=form_impres_RAna.mlin+2;
         form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- Total Geral.......: Previsto: Credito:'
                                 +insere(FormatFloat(mcasas, mcredp),' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebp),' ',14)
                                 +' Realizado: Credito:'
                                 +insere(FormatFloat(mcasas, mcredr),' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebr),' ',14),mreduz);
         if cb_equip.Checked then
            begin
            try
               mcredp:=(mcredp*100)/mVendaPeriodo;
            except
               mcredp:=0;
               end;
            try
               mdebp:=(mdebp*100)/mVendaPeriodo;
            except
               mdebp:=0;
               end;
            try
               mcredr:=(mcredr*100)/mVendaPeriodo;
            except
               mcredr:=0;
               end;
            try
               mdebr:=(mdebr*100)/mVendaPeriodo;
            except
               mdebr:=0;
               end;
            form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
            form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- Total Geral.......: Previsto: Credito:'
                                 +insere(FormatFloat(mcasas, mcredp)+'%',' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebp)+'%',' ',14)
                                 +' Realizado: Credito:'
                                 +insere(FormatFloat(mcasas, mcredr)+'%',' ',14)
                                 +' Debito:'
                                 +insere(FormatFloat(mcasas, mdebr)+'%',' ',14),mreduz);

            end;
         mcredp:=0;
         mcredr:=0;
         mdebr:=0;
         mdebp:=0;
         end;

      msaldoi:=mcredr-mdebr;
      form_impres_RAna.mlin :=form_impres_RAna.mlin+1;
      form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,insere2('Fim...','-',80),mnormal);
      if form_impres_RAna.RDprint1.Setup then form_impres_RAna.RDprint1.Fechar;
      form_impres_RAna.free;
      form_impres_RAna:=nil;

      end
   else
      begin
      if mdepa<>Qr_LDRCODDEP.Value then
         begin
         if ((mdebr_cc+mdebp_cc)<>0) or ((mcredp_cc+mcredp_cc)<>0) then
            begin
            form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
            form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- Total Centro Custo: Previsto: Credito:'
                                    +insere(FormatFloat(mcasas, mcredp_cc),' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebp_cc),' ',14)
                                    +' Realizado: Credito:'
                                    +insere(FormatFloat(mcasas, mcredr_cc),' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebr_cc),' ',14),mreduz);
            if cb_equip.Checked then
               begin
               form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
               try
                  mcredp_cc:=(mcredp_cc*100)/mVendaPeriodo;
               except
                  mcredp_cc:=0;
                  end;
               try
                  mdebp_cc:=(mdebp_cc*100)/mVendaPeriodo;
               except
                  mdebp_cc:=0;
                  end;
               try
                  mcredr_cc:=(mcredr_cc*100)/mVendaPeriodo;
               except
                  mcredr_cc:=0;
                  end;
               try
                  mdebr_cc:=(mdebr_cc*100)/mVendaPeriodo;
               except
                  mdebr_cc:=0;
                  end;
               form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- % em Relacao ao Faturamento.: Credito:'
                                    +insere(FormatFloat(mcasas, mcredp_cc)+'%',' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebp_cc)+'%',' ',14)
                                    +' Realizado: Credito:'
                                    +insere(FormatFloat(mcasas, mcredr_cc)+'%',' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebr_cc)+'%',' ',14),mreduz);
            end;
            mcredp_cc:=0;
            mcredr_cc:=0;
            mdebr_cc:=0;
            mdebp_cc:=0;
            end;
         if ((mdebr_dep+mdebp_Dep)<>0) or ((mcredr_Dep+mcredp_Dep)<>0) then
            begin
            form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
            form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- Total Departamento: Previsto: Credito:'
                                    +insere(FormatFloat(mcasas, mcredp_Dep),' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebp_Dep),' ',14)
                                    +' Realizado: Credito:'
                                    +insere(FormatFloat(mcasas, mcredr_Dep),' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebr_Dep),' ',14),mreduz);
            if cb_equip.Checked then
               begin
               form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
               try
                  mcredp_dep:=(mcredp_dep*100)/mVendaPeriodo;
               except
                  mcredp_dep:=0;
                  end;
               try
                  mdebp_dep:=(mdebp_dep*100)/mVendaPeriodo;
               except
                  mdebp_dep:=0;
                  end;
               try
                  mcredr_dep:=(mcredr_dep*100)/mVendaPeriodo;
               except
                  mcredr_dep:=0;
                  end;
               try
                  mdebr_dep:=(mdebr_dep*100)/mVendaPeriodo;
               except
                  mdebr_dep:=0;
                  end;
               form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- % em Relacao Fatur: Previsto: Credito:'
                                    +insere(FormatFloat(mcasas, mcredp_Dep)+'%',' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebp_Dep)+'%',' ',14)
                                    +' Realizado: Credito:'
                                    +insere(FormatFloat(mcasas, mcredr_Dep)+'%',' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebr_Dep)+'%',' ',14),mreduz);
               end;
            mcredp_Dep:=0;
            mcredr_Dep:=0;
            mdebp_Dep:=0;
            mdebr_Dep:=0;
            end;
         form_impres_RAna.mlin:=form_impres_RAna.mlin+2;
         form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'Departamento: '+Qr_LDRCODDEP.Value+' - '+Qr_LDRDNOME.Value,mneg);
         form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
         form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'Centro de Custo: '+Qr_LDRCODCC.Value+' - '+Qr_LDRCCNOME.Value,mneg);
         mdepa:=Qr_LDRCODDEP.Value;
         mcca :=Qr_LDRCODCC.Value;
         end;
      if mcca<>Qr_LDRCODCC.Value then
         begin
         if ((mdebr_cc+mdebp_cc)<>0) or ((mcredr_cc+mcredp_cc)<>0) then
            begin
            form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
            form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- Total Centro Custo: Previsto: Credito:'
                                    +insere(FormatFloat(mcasas, mcredp_cc),' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebp_cc),' ',14)
                                    +' Realizado: Credito:'
                                    +insere(FormatFloat(mcasas, mcredr_cc),' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebr_cc),' ',14),mreduz);
            if cb_equip.Checked then
               begin
               form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
               try
                  mcredp_cc:=(mcredp_cc*100)/mVendaPeriodo;
              except
                  mcredp_cc:=0;
                  end;
               try
                  mdebp_cc:=(mdebp_cc*100)/mVendaPeriodo;
               except
                  mdebp_cc:=0;
                  end;
               try
                  mcredr_cc:=(mcredr_cc*100)/mVendaPeriodo;
               except
                  mcredr_cc:=0;
                  end;
               try
                  mdebr_cc:=(mdebr_cc*100)/mVendaPeriodo;
               except
                  mdebr_cc:=0;
                  end;
               form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'- % em Relacao ao Faturamento.: Credito:'
                                    +insere(FormatFloat(mcasas, mcredp_cc)+'%',' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebp_cc)+'%',' ',14)
                                    +' Realizado: Credito:'
                                    +insere(FormatFloat(mcasas, mcredr_cc)+'%',' ',14)
                                    +' Debito:'
                                    +insere(FormatFloat(mcasas, mdebr_cc)+'%',' ',14),mreduz);

              end;
            mcredp_cc:=0;
            mcredr_cc:=0;
            mdebp_cc:=0;
            mdebr_cc:=0;
            end;
         form_impres_RAna.mlin:=form_impres_RAna.mlin+2;
         form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,'Centro de Custo: '+Qr_LDRCODCC.Value+' - '+Qr_LDRCCNOME.Value,mneg);
         mcca :=Qr_LDRCODCC.Value;
         end;
      if form_impres_RAna.mlin>58 then
         begin
         form_impres_RAna.mlin:=form_impres_RAna.mlin+1;
         form_impres_RAna.RDprint1.ImpF(form_impres_RAna.mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_RAna.RDprint1.Novapagina;
         form_impres_RAna.mlin:=0;
         end;
      end;
   end;
end;

procedure TFrm_CX_RAna.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_CX_RAna.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_RAna',Key);
   edt_coddep.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_CX_RAna.MCODEMPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   if Frm_Emp=nil then
      Application.CreateForm(TFrm_Emp, Frm_Emp)
   else
      begin
      Frm_Emp.Free;
      Frm_Emp:=nil;
      Application.CreateForm(TFrm_Emp, Frm_Emp);
      end;


   Frm_Emp.ShowModal;
   Frm_Emp.Free;
   Frm_Emp:=nil;

   Frm_Emp.Edit1.Text:=key;
   Frm_Emp.BBnAtu.Click;
   Frm_Emp.Edit1.SelStart:=1;
   Frm_Emp.Edit1.SelLength:=1;
   Frm_Emp.PC1.ActivePageIndex:=1;
   if Frm_Emp.ShowModal=mrok then
      MCODEMP.Text:=DM2.Tb_EmpCODEMP.AsString;
   Frm_Emp.Free;
   key:='0';
   end;

end;

procedure TFrm_CX_RAna.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
  begin
  if CB_TIPO.Text='FR' then
    begin
    CODIGO.Text:=fChamaFor(0,'frm_RAna',Key);
    key:=#0;
    MDT1.SetFocus;
    end
  else if CB_TIPO.Text='TR' then
    begin
    CODIGO.Text:=fChamaTra(0,'frm_RAna',Key);
    key:=#0;
    MDT1.SetFocus;
    end
  else if CB_TIPO.Text='VD' then
    begin
    CODIGO.Text :=fChamaVen(0,'frm_RAna',Key);
    key:=#0;
    MDT1.SetFocus;
    end
  else
    begin
    CODIGO.Text:=fChamaCli(0,'Frm_RAna',key);
    key:=#0;
    MDT1.SetFocus;
    end;
  end;
end;

procedure TFrm_CX_RAna.MCODEMPExit(Sender: TObject);
begin
if Trim(MCODEMP.Text)<>'' Then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.add('Select RAZAO from CADEMP where CODEMP=0'+Trim(MCODEMP.Text));
   DM1.Query1.Open;
   if DM1.Query1.Eof then
      begin
      ShowMessage('Empresa Não Cadastrada');
      MCODEMP.SetFocus;
      end
   else
      NOMEMP.Text:=DM1.query1.Fields[0].AsString;
   end
else
   NOMEMP.Text:='Todas...';

end;

procedure TFrm_CX_RAna.CODBCOExit(Sender: TObject);
begin
if Trim(CODBCO.Text)<>'' Then
   begin
   if not flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      MessageDlg('Banco Não Cadastrado!',mtWarning,[mbOk],0);
      CODBCO.SetFocus;
      end
   else
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOMBCO.Text:='Todos...';


end;

procedure TFrm_CX_RAna.edt_codccuExit(Sender: TObject);
begin
   edt_codccu.Text := Trim(edt_codccu.Text);
   if Trim(edt_codccu.Text)<>'' then begin
      if not flqr1('CCNOME, CCNAT','CC','CADCCU','C','CCCODCCU',edt_codccu.Text) then begin
         MessageDlg('Centro de Custo Não Cadastrado!',mtWarning,[mbOk],0);
         edt_codccu.SetFocus;
      end else
         lbx_nomccu.Items.Add(edt_codccu.Text
                              +'-'+DM1.Query1.Fields[0].AsString+' '+DM1.Query1.Fields[1].AsString);
         edt_codccu.text := '';
         edt_codccu.SetFocus;
   end;

end;

procedure TFrm_CX_RAna.CODIGOExit(Sender: TObject);
begin
if Trim(CODIGO.Text)<>'' Then
   begin
   if CB_TIPO.Text='TR' then
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODIGO.Text)
   else if CB_TIPO.Text='FR' then
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODIGO.Text)
   else if CB_TIPO.Text='VD' then
      flqr1('VNOME','V','CADVEN','N','VCODVEN',CODIGO.Text)
   else
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODIGO.Text);
   if DM1.Query1.Eof then
      begin
      MessageDlg('Código Não Cadastrado!',mtWarning,[mbOk],0);
      CODIGO.SetFocus;
      end
   else
      NOME.Text:=DM1.Query1.Fields[0].AsString;
   end
else
   NOME.Text:='Todos...';
end;

procedure TFrm_CX_RAna.Qr_LDRCalcFields(DataSet: TDataSet);
begin
{
if not Qr_LDRCODIGO.IsNull then
   begin
   if Qr_LDRTIPO.Value='FR' then
      begin
      flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Qr_LDRCODIGO.AsString);
      end
   else if Qr_LDRTIPO.Value='VD' then
      begin
      flqr1('VNOME','V','CADVEN','N','VCODVEN',Qr_LDRCODIGO.AsString);
      end
   else if Qr_LDRTIPO.Value='TR' then
      begin
      flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',Qr_LDRCODIGO.AsString);
      end
   else
      begin
      flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Qr_LDRCODIGO.AsString);
      end;
   Qr_LDRnome.Value:=DM1.Query1.Fields[0].AsString;
   end;
}
end;

procedure TFrm_CX_RAna.FormCreate(Sender: TObject);
begin
MCODEMP.Text:=IntToStr(codemp);

end;

procedure TFrm_CX_RAna.MDT1Exit(Sender: TObject);
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

procedure TFrm_CX_RAna.MDT2Exit(Sender: TObject);
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

procedure TFrm_CX_RAna.CB_TIPOExit(Sender: TObject);
begin
CB_TIPO.Text:=CB_TIPO.items.Strings[CB_TIPO.itemindex];

end;

procedure TFrm_CX_RAna.bbExcelClick(Sender: TObject);
begin
Application.CreateForm(TfExport, fExport);
fExport.DataSet1 :=  Src_Ldr.DataSet;       //define o DataSet a ser exportado
fExport.ShowModal;
fExport.Free;

end;

procedure TFrm_CX_RAna.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CX_RAna.edt_coddepKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      edt_coddep.Text:=fChamaDeptoCX(0,'frm_RAna',key);
      if Trim(edt_coddep.Text) <> '' then
         lbx_nomedep.Items.Add(DM1.Tb_Dep_LdrDCODDEP.AsString
                               +'-'+DM1.Tb_Dep_LdrDNOME.Value);
      edt_coddep.text := '';
      key:=#0;
   end;
end;

procedure TFrm_CX_RAna.edt_coddepExit(Sender: TObject);
begin
edt_coddep.Text := Trim(edt_coddep.Text);
if Trim(edt_coddep.Text)<>'' then
   begin
   if not flqr1('DNOME','D','CADDEP','C','DCODDEP',edt_coddep.Text) then
      begin
      MessageDlg('Departamento Não Cadastrado!',mtWarning,[mbOk],0);
      if (edt_CODDEP.Visible=true) and (edt_CODDEP.Enabled=true) then
         edt_CODDEP.SetFocus;
      end
   else
      begin
      lbx_nomedep.Items.Add(edt_coddep.Text
                           +'-'+DM1.Query1.Fields[0].AsString);
      edt_coddep.text := '';
       if (edt_CODDEP.Visible=true) and (edt_CODDEP.Enabled=true) then
          edt_CODDEP.SetFocus;
      end;
   end;
end;

procedure TFrm_CX_RAna.lbx_nomedepKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
   if key = 46 then
      if lbx_nomedep.ItemIndex>=0 then
         lbx_nomedep.Items.Delete(lbx_nomedep.ItemIndex);
end;

procedure TFrm_CX_RAna.omitir_depMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
   omitir_dep.Hint := 'Omitir Marcado - Todos os Departamentos'+#13+' Selecionados não serão Impressos';
end;

procedure TFrm_CX_RAna.CB_TIPOChange(Sender: TObject);
begin
CODIGO.Clear;
NOME.Clear;
end;

procedure TFrm_CX_RAna.lbx_nomccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 46 then
      if lbx_nomccu.ItemIndex>=0 then
         lbx_nomccu.Items.Delete(lbx_nomccu.ItemIndex);

end;

procedure TFrm_CX_RAna.omitir_ccuMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   omitir_ccu.Hint := 'Omitir Marcado - Todos os Centro de Custos'+#13+' Selecionados não serão Impressos';
end;

procedure TFrm_CX_RAna.edt_codccuKeyPress(Sender: TObject; var Key: Char);
begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then begin
      edt_codccu.Text:=fChamaCCU(0,'frm_RAna',key);
      if Trim(edt_codccu.Text) <> '' then
         lbx_nomccu.Items.Add(DM1.Tb_CCUCCCODCCU.AsString
                               +'-'+DM1.Tb_CCUCCNOME.Value+' '+DM1.Tb_CCUCCNAT.Value);
      edt_codccu.text := '';
      key:=#0;
   end;

end;

procedure TFrm_CX_RAna.FormActivate(Sender: TObject);
begin
if log_coddep_cx=''  then
   begin
   edt_coddep.Enabled    :=true;
   lbx_nomedep.Enabled:=true;
   OMITIR_DEP.Enabled:=true;
   end
else
   begin
   edt_coddep.Enabled    :=false;
   lbx_nomedep.Enabled:=false;
   OMITIR_DEP.Enabled:=false;
   edt_coddep.Text       :=log_coddep_cx;
   edt_coddepExit(self);
   end;

end;

end.

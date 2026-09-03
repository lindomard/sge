unit S_RelNFE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,S_DM1,db,dbtables,func,S_Impres,S_For,S_Uf,
  lerarq, ExtCtrls;

type
  TFrm_RelNFE = class(TForm)
    Label2: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label3: TLabel;
    Label1: TLabel;
    CODFOR: TEdit;
    NOMCLI: TEdit;
    Label4: TLabel;
    UF: TEdit;
    NOMUF: TEdit;
    CB_Ana: TCheckBox;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    Qr_NFE: TQuery;
    Qr_PedMer: TQuery;
    CB_PRODUTOS: TCheckBox;
    Label5: TLabel;
    QTDCLI: TEdit;
    Label6: TLabel;
    QTDPRO: TEdit;
    Qr_Vendas_Pro: TQuery;
    Qr_NFENENUMERO: TFloatField;
    Qr_NFENESERIE: TStringField;
    Qr_NFENEDTEMIS: TDateTimeField;
    Qr_NFENEDTENT: TDateTimeField;
    Qr_NFENECODFOR: TFloatField;
    Qr_NFENECFO: TFloatField;
    Qr_NFENETOTNOT: TFloatField;
    Qr_NFENEBASEN: TFloatField;
    Qr_NFENEICMSN: TFloatField;
    Qr_NFEBASERET: TFloatField;
    Qr_NFEICMSRET: TFloatField;
    Qr_NFENEISENTAS: TFloatField;
    Qr_NFENESTATUS: TFloatField;
    Qr_NFENECHAVEP: TFloatField;
    Qr_NFENEOUTRAS: TFloatField;
    Qr_NFENECODEMP: TFloatField;
    Qr_NFENELOTSEQ_CP: TFloatField;
    Qr_NFEFRAZAO: TStringField;
    Qr_NFEFUF: TStringField;
    Qr_Compras_For: TQuery;
    Qr_Vendas_ProPF2CODPRO: TFloatField;
    Qr_Vendas_ProPDCLAS: TStringField;
    Qr_Vendas_ProTOTAL: TFloatField;
    CB_FORNECEDOR: TCheckBox;
    Qr_Compras_ForNOME: TStringField;
    Qr_Compras_ForCODIGO: TFloatField;
    Qr_Compras_ForCNPJ: TFloatField;
    Qr_Compras_ForTOTAL: TFloatField;
    Qr_Compras_ForICMSR: TFloatField;
    Qr_PedMerPF2CHAVE: TFloatField;
    Qr_PedMerPF2CODPRO: TFloatField;
    Qr_PedMerPF2PU: TFloatField;
    Qr_PedMerPF2QTDP: TFloatField;
    Qr_PedMerPF2BASEN: TFloatField;
    Qr_PedMerPF2ICMSN: TFloatField;
    Qr_PedMerPF2BASER: TFloatField;
    Qr_PedMerPF2ICMSR: TFloatField;
    Qr_PedMerPF2TOTDES: TFloatField;
    Qr_PedMerPDMARCA: TStringField;
    Qr_PedMerPDUND: TStringField;
    RG_IE: TRadioGroup;
    Qr_PedMerPF2NOMPRO: TStringField;
    Qr_Vendas_ProPF2NOMPRO: TStringField;
    Qr_NFECFO1: TFloatField;
    Qr_NFECFO2: TFloatField;
    Qr_NFEPF2DIFAL: TFloatField;
    Qr_PedMerPF2DIFAL_VALOR: TFloatField;
    procedure bbSairClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure UFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UFExit(Sender: TObject);
    procedure QTDCLIExit(Sender: TObject);
    procedure QTDPROExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function frelnfscab(ptipo: Integer): Boolean;
    function frelnfstot(ptipo: Integer): Boolean;
    function frelnfsimpDet(ptipo: Integer): Boolean;
  public
    { Public declarations }
    form_impres_nfe: TFrm_Impres;
  end;

var
  Frm_RelNFE: TFrm_RelNFE;
  mlin,mpag: Integer;
  mdataant: TDateTime;
  mtotnf, mtotbc,mtoticms, mtotbcr,mtoticmsr,mtotise,mtotout,mtotdifal: Real;
  mtotdnf, mtotdbc,mtotdicms, mtotdbcr,mtotdicmsr,mtotdise,mtotdout,mtotddifal: Real;
  mqtdcli, mqtdpro, mtotcli,mtotpro,mQtdReg: Integer;
implementation

{$R *.dfm}

procedure TFrm_RelNFE.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RelNFE.bbImprimirClick(Sender: TObject);
var
mLinha_Imp: String;
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

Qr_NFE.Close;
Qr_NFE.SQL.Clear;
Qr_NFE.SQL.Add('Select NENUMERO,NESERIE,NEDTEMIS,NEDTENT,NECODFOR,NECFO, '
              +' NETOTNOT,NEBASEN,NEICMSN,NEBASER AS BASERET, '
              +' NEICMSR AS ICMSRET,NEISENTAS, '
              +' NESTATUS,NECHAVEP, '
              +' NEOUTRAS,NECODEMP, NELOTSEQ_CP, FRAZAO,FUF '
              +' ,(SELECT MIN(PF2CFO) FROM CADPF2 WHERE PF2CHAVE=NECHAVEP AND PF2CODEMP=NECODEMP) CFO1 '
              +' ,(SELECT MAX(PF2CFO) FROM CADPF2 WHERE PF2CHAVE=NECHAVEP AND PF2CODEMP=NECODEMP) CFO2 '
              +' ,(SELECT SUM(PF2DIFAL_VALOR) FROM CADPF2 WHERE PF2CHAVE=NECHAVEP AND PF2CODEMP=NECODEMP) AS PF2DIFAL '

              +' from CADNE,CADFOR '
              +' Where '
              +iif(DM1.Qr_TID.Locate('TINOME','CADNE',[]),'' ,' NECODEMP=0'+IntToStr(codemp)+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADFOR',[]),'',' FCODEMP=NECODEMP and ')
              +' FCODFOR=NECODFOR ');
if Trim(MDT1.Text)<>'/  /' then
   Qr_NFE.SQL.Add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Qr_NFE.SQL.Add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
if Trim(CODFOR.Text)<>'' then
   Qr_NFE.SQL.Add(' and NECODFOR=0'+Trim(CODFOR.Text));
if Trim(UF.Text)<>'' then
   Qr_NFE.SQL.Add(' and FUF='+chr(39)+UF.Text+chr(39));



if RG_IE.ItemIndex=1 then
  begin
  Qr_NFE.SQl.Add(' and length(FIE)<=5 ');
  end
else if RG_IE.ItemIndex=0 then
  begin
  Qr_NFE.SQl.Add(' and length(FIE)>5 ');
  end;

Qr_NFE.SQL.Add(' Order by NEDTENT,NENUMERO');
Qr_NFE.Open;
if Qr_NFE.Eof then
   begin
   MessageDlg('Nada ha ser impresso!',mtWarning,[mbOk],0);
   exit;
   end;
mlin:=0;
mpag:=0;
mtotnf :=0; mtotbc:=0; mtoticms:=0; mtotbcr:=0; mtoticmsr:=0;mtotise:=0;mtotout:=0;mtotdifal:=0;
mtotdnf:=0; mtotdbc:=0;mtotdicms:=0;mtotdbcr:=0;mtotdicmsr:=0;mtotdise:=0;mtotdout:=0;mtotddiFal:=0;
mqtdcli:=valint(QTDCLI.Text);
mqtdpro:=valint(QTDPRO.Text);
mtotcli:=0;
mtotpro:=0;

testeform := TFrm_RelNFE(FindGlobalComponent('form_impres_nfe'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_nfe);


form_impres_nfe.fimpresajustaimp(3,160,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
mdataant:=Qr_NFENEDTENT.Value;

mQtdReg:=0;


While not Qr_NFE.Eof do
   begin
   if mlin=0 then
      frelnfscab(0);
   if Qr_NFENEDTENT.Value<>mdataant then
      frelnfstot(0);
   mlin:=mlin+1;
   mQtdReg:=mQtdReg+1;
   mLinha_Imp:=insere(Qr_NFENENUMERO.asstring,'0',06)
                           +' '+Insere2(Qr_NFENESERIE.Value,' ',3)
                           +' '+FormatDateTime(fdt2, Qr_NFENEDTENT.Value)
                           +' '+FormatDateTime(fdt2, Qr_NFENEDTEMIS.Value)
                           +' '+FormatFloat('00000',Qr_NFENECODFOR.Value)
                           +'-'+insere2(Qr_NFEFRAZAO.Value,' ',20)
                           +' '+Insere2(Qr_NFEFUF.Value,' ',2);
   if Qr_NFENESTATUS.Value=9 then
      mLinha_Imp:=mLinha_Imp+' Nota Fiscal Cancelada'
   else
      begin
      if fsonumero(Qr_NFECFO1.AsString)=0 then
         mLinha_Imp:=mLinha_Imp+insere2(Qr_NFENECFO.AsString, ' ',5)
      else
         mLinha_Imp:=mLinha_Imp+insere2(Qr_NFECFO1.AsString, ' ',5);

      if fsonumero(Qr_NFECFO2.AsString)=0 then
         mLinha_Imp:=mLinha_Imp+insere2(Qr_NFENECFO.AsString, ' ',5)
      else
         mLinha_Imp:=mLinha_Imp+insere2(Qr_NFECFO2.AsString, ' ',5);
      end;
    mLinha_Imp:=mLinha_Imp+insere(FormatFloat(mcasas, Qr_NFENETOTNOT.Value),' ',12)
                           +insere(FormatFloat(mcasas, Qr_NFENEBASEN.Value),' ',10)
                           +insere(FormatFloat(mcasas, Qr_NFENEICMSN.Value),' ',10)
                           +insere(FormatFloat(mcasas, Qr_NFEBASERET.Value),' ',10)
                           +insere(FormatFloat(mcasas, Qr_NFEICMSRET.Value),' ',10)
                           +insere(FormatFloat(mcasas, Qr_NFENEISENTAS.Value),' ',10)
                           +insere(FormatFloat(mcasas, Qr_NFENEOUTRAS.Value),' ',10)
                           +insere(FormatFloat(mcasas, Qr_NFEPF2DIFAL.Value),' ',10)

                           ;
    form_impres_nfe.RDprint1.ImpF(mlin,01,mLinha_Imp,M20ccp);



   if Qr_NFENESTATUS.Value<>9 then
      begin
      mtotnf    :=mtotnf    +Qr_NFENETOTNOT.Value;
      mtotbc    :=mtotbc    +Qr_NFENEBASEN.Value;
      mtoticms  :=mtoticms  +Qr_NFENEICMSN.Value;
      mtotbcr   :=mtotbcr   +Qr_NFEBASERET.Value;
      mtoticmsr :=mtoticmsr +Qr_NFEICMSRET.Value;
      mtotise   :=mtotise   +Qr_NFENEISENTAS.Value;
      mtotout   :=mtotout   +Qr_NFENEOUTRAS.Value;
      mtotdifal   :=mtotdifal   +Qr_NFEPF2DIFAL.Value;

      mtotdnf   :=mtotdnf   +Qr_NFENETOTNOT.Value;
      mtotdbc   :=mtotdbc   +Qr_NFENEBASEN.Value;
      mtotdicms :=mtotdicms +Qr_NFENEICMSN.Value;
      mtotdbcr  :=mtotdbcr  +Qr_NFEBASERET.Value;
      mtotdicmsr:=mtotdicmsr+Qr_NFEICMSRET.Value;
      mtotdise  :=mtotdise  +Qr_NFENEISENTAS.Value;
      mtotdout  :=mtotdout  +Qr_NFENEOUTRAS.Value;
      mtotddIfal   :=mtotddifal   +Qr_NFEPF2DIFAL.Value;
      end;
   if CB_Ana.Checked then
      frelnfsimpDet(0);
   Qr_NFE.Next;
   if Qr_NFE.Eof then
      begin
      frelnfstot(0);
      frelnfstot(1);
      end
   else if mlin>57 then
      begin
      mlin:=mlin+1;
      form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Continua...','.',80),mnormal);
      form_impres_nfe.RDprint1.Novapagina;
      mlin:=0;
      end;
   end;


if CB_FORNECEDOR.Checked then
   begin
   Qr_Compras_For.Close;
   Qr_Compras_For.SQL.Clear;
   Qr_Compras_For.SQL.Add('Select FRAZAO AS NOME ,NECODFOR AS CODIGO, FCGC as CNPJ, '
                         +'       sum(NETOTNOT) as total,'
                         +'        sum(NEICMSR) as ICMSR from CADNE,CADFOR '
                         +'       where '
                         +iif(DM1.Qr_Tid.locate('TINOME','CADNE',[]),'',' NECODEMP=0'+IntToStr(codemp)+' and ')
                         +iif(DM1.Qr_Tid.locate('TINOME','CADFOR',[]),'' ,' FCODEMP=NECODEMP and ')
                         +' FCODFOR=NECODFOR ');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Compras_For.SQL.Add(' and NEDTENT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text) )+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Compras_For.SQL.Add(' and NEDTENT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text) )+chr(39));
   Qr_Compras_For.SQL.Add(' Group by FRAZAO,NECODFOR,FCGC '
                         +iif(pbanco=0,' order by TOTAL desc ',''));

   Qr_Compras_For.Open;
   if not Qr_Compras_For.Eof then
      begin
      mlin:=0;
      form_impres_nfe.RDprint1.Novapagina;
      end;

   While not Qr_Compras_For.Eof do
      begin
      mtotcli:=mtotcli+1;
      if mqtdcli>0 then
         begin
         if mtotcli>mqtdcli then
            begin
            mlin:=mlin+1;
            form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Fim.','.',80),mnormal);
            mlin:=mlin+1;
            form_impres_nfe.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
            break;
            end;
         end;
      if mlin=0 then
         begin
         mpag:=mpag+1;
         form_impres_nfe.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, Date),mnormal);
         form_impres_nfe.RDprint1.ImpF(02,01,insere2('Relacao de Fornecedores com maiores compras.' ,' ',60)+' Pagina: '+FormatFloat('0000',mpag),mnormal);
         form_impres_nfe.RDprint1.ImpF(03,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
         form_impres_nfe.RDprint1.ImpF(04,01,insere2('-','-',80),mnormal);
         form_impres_nfe.RDprint1.ImpF(05,01,'Codig Fornecedor                               C.N.P.J                     Valor',mnormal);
         mlin:=5;
         end;
      mlin:=mlin+1;
      form_impres_nfe.RDprint1.ImpF(mlin,01,insere(FormatFloat('00000',Qr_Compras_ForCODIGO.Value),' ',5)
                              +' '+insere2(Qr_Compras_ForNOME.Value,' ',40)
                              +' '+FormatFloat('00"."000"."000/0000-00',Qr_Compras_ForCNPJ.Value)
                              +insere(FormatFloat(mcasas, Qr_Compras_ForTOTAL.Value),' ',15),mnormal);
      Qr_Compras_For.Next;
      if Qr_Compras_For.Eof then
         begin
         mlin:=mlin+1;
         form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Fim.','-',80),mnormal);
         mlin:=mlin+1;
         form_impres_nfe.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
         end
      else if mlin>58 then
         begin
         mlin:=mlin+1;
         form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_nfe.RDprint1.Novapagina;
         mlin:=0;
         end
      end;
   end;

// produtos mais vendidos
if CB_PRODUTOS.Checked then
   begin
   Qr_Vendas_Pro.Close;
   Qr_Vendas_Pro.SQL.Clear;
   Qr_Vendas_Pro.SQL.Add('Select NVL(TRIM(PF2NOMPRO),PDNOME) AS PF2NOMPRO, PF2CODPRO,PDCLAS,sum((PF2QTDP*PF2PU)-PF2TOTDES)  as total'
                        +'       from CADPF1,CADPF2,CADPRO'
                        +'       where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPFOR',[]),'',' PF1CODEMP=0'+IntTostr(codemp)+' and PF2CODEMP=PF1CODEMP and')
                        +' PF2LOTSEQ=PF1LOTSEQ '
                        +' and PF2CHAVE =PF1CHAVE '
                        +' and (PF1STATUS=2 OR PF1STATUS=1) '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' and  PDCODEMP=0'+IntTostr(codemp)+' and PDCODEMP=PF2CODEMP ')
                        +' and PDCODPRO=PF2CODPRO  ');
   if Trim(MDT1.Text)<>'/  /' then
      Qr_Vendas_Pro.SQL.Add(' and PF1DATAENT>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text) )+chr(39));
   if Trim(MDT2.Text)<>'/  /' then
      Qr_Vendas_Pro.SQL.Add(' and PF1DATAENT<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text) )+chr(39));
   Qr_Vendas_Pro.SQL.Add(' group by  PF2NOMPRO, PF2CODPRO,PDCLAS'
                        +iif(pbanco=0,' order by TOTAL desc ',''));
   Qr_Vendas_Pro.Open;
   if not Qr_Vendas_Pro.Eof then
      begin
      mlin:=0;
      form_impres_nfe.RDprint1.Novapagina;
      end;

   While not Qr_Vendas_Pro.Eof do
      begin
      mtotpro:=mtotpro+1;
      if mqtdpro>0 then
         begin
         if mtotpro>mqtdpro then
            begin
            mlin:=mlin+1;
            form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Fim.','.',80),mnormal);
            mlin:=mlin+1;
            form_impres_nfe.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
            break;
            end;
         end;
      if mlin=0 then
         begin
         mpag:=mpag+1;
         form_impres_nfe.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, Date),mnormal);
         form_impres_nfe.RDprint1.ImpF(02,01,insere2('Relacao de produtos mais Comprados.', ' ',60)+' Pagina: '+FormatFloat('0000',mpag),mnormal);
         form_impres_nfe.RDprint1.ImpF(03,01,Centra(fperiodo(0,MDT1.Text,MDT2.Text),' ',80),mnormal);
         form_impres_nfe.RDprint1.ImpF(04,01,insere2('-','-',80),mnormal);
         form_impres_nfe.RDprint1.ImpF(05,01,'Produto                                         Classificacao Fiscal       Valor',mnormal);
         mlin:=5;
         end;
      mlin:=mlin+1;
      form_impres_nfe.RDprint1.ImpF(mlin,01,insere(FormatFloat('000000',Qr_Vendas_ProPF2CODPRO.Value),' ',6)
                              +'-'+insere2(Qr_Vendas_ProPF2NOMPRO.Value,' ',40)
                              +' '+insere(Qr_Vendas_ProPDCLAS.Value,' ',20)
                              +insere(FormatFloat(mcasas, Qr_Vendas_ProTOTAL.Value),' ',12),mnormal);

      Qr_Vendas_Pro.Next;
      if Qr_Vendas_Pro.Eof then
         begin
         mlin:=mlin+1;
         form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Fim.','-',80),mnormal);
         mlin:=mlin+1;
         form_impres_nfe.RDprint1.impf(mlin,01,'Relatorio Emitido em: '+FormatDateTime(fdt2, date)+' as '+FormatDateTime(fhr, time),m20ccp);
         end
      else if mlin>58 then
         begin
         mlin:=mlin+1;
         form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Continua...','-',80),mnormal);
         form_impres_nfe.RDprint1.Novapagina;
         mlin:=0;
         end
      end;
   end;

mlin:=mlin+1;
form_impres_nfe.RDprint1.ImpF(mlin,01,
insere2('Recebido por:____________________________________________________',' ',80)
+insere('Conferido por:____________________________________________________',' ',80),m20ccp);

if form_impres_nfe.RDprint1.Setup then form_impres_nfe.RDprint1.Fechar;
form_impres_nfe.free;
form_impres_nfe:=nil;

end;

procedure TFrm_RelNFE.MDT1Exit(Sender: TObject);
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

procedure TFrm_RelNFE.MDT2Exit(Sender: TObject);
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

procedure TFrm_RelNFE.CODFORExit(Sender: TObject);
begin
if valint(CODFOR.Text)<=0 then
   CODFOR.Text:='';

if Trim(CODFOR.Text)='' then
   NOMCLI.Text:='Todos...'
else
   begin
   if not flqr1('FRAZAO','F','CADFOR','N','FCODFOR',Trim(CODFOR.Text)) then
      begin
      MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
      CODFOR.SetFocus;
      exit;
      end
   else
      begin
      NOMCLI.Text:=DM1.Query1.Fields[0].AsString;
      end;
   end;


end;

procedure TFrm_RelNFE.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_ReINFE',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_RelNFE.UFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   UF.Text:=fChamaUF(0,'frm_ReINFE','');
   if trim(CODFOR.Text)<>'' then
      CODFORExit(Self);
   end;

end;

procedure TFrm_RelNFE.UFExit(Sender: TObject);
begin
if Trim(uf.Text)='' then
   NOMUF.Text:='Todos...'
else
   begin
   if not flcaduf(0,0,0,UF.Text) then
      begin
      MessageDlg('Estado Não Cadastrado!',mtWarning,[mbOk],0);
      UF.SetFocus;
      exit;
      end;
   end;
end;

function TFrm_RelNFE.frelnfscab(ptipo: Integer): Boolean;
begin
mlin:=1;
mpag:=mpag+1;
mlin:=mlin+1;
form_impres_nfe.Rdprint1.Impf(mlin,01,insere2('-','-',80),mnormal);
mlin:=mlin+1;
form_impres_nfe.RDprint1.ImpF(mlin,01,'Numero Se-   Data da  Data de  Sacado                        UF CFOP  CFOP     Total da    Base de   Valor do  Base Icms   Valor do   Isentas    Outras   Difal',m20ccp);
mlin:=mlin+1;
form_impres_nfe.RDprint1.ImpF(mlin,01,'       rie   Entrada  Emissao                                    1     2          Nota Calc. Icms       Icms  Subs.Trib Icms Subst',m20ccp);

{ nova versao
Numero Se-   Data da  Data de  Sacado                        UF CFOP  CFOP     Total da    Base de   Valor do  Base Icms   Valor do   Isentas    Outras   Difal
       rie   Entrada  Emissao                                    1     2          Nota Calc. Icms       Icms  Subs.Trib Icms Subst
                                                                          12345678901212345678901123456789011234567890112345678901123456789012345678901234567890

161


Numero Se-   Data da  Data de  Sacado                        UF CFOP  CFOP     Total da      Base de    Valor do    Base Icms    Valor do    Isentas      Outras
       rie   Entrada  Emissao                                    1     2           Nota   Calc. Icms        Icms    Subs.Trib  Icms Subst
                                                                          123456789012312345678901231234567890121234567890123123456789012123456789013123456789012
                                                                          123456789012312345678901231234567890121234567890123123456789012123456789013123456789012
}

result:=true;
end;

function TFrm_RelNFE.frelnfstot(ptipo: Integer): Boolean;
begin
mlin:=mlin+1;
if ptipo=0 then
   begin
   form_impres_nfe.RDprint1.ImpF(mlin,01,Insere2('- Totalizacao do dia '+FormatDateTime(fdt2, mdataant),' ',73)
                           +insere(FormatFloat(mcasas, mtotdnf),' ',11)
                           +insere(FormatFloat(mcasas, mtotdbc),' ',10)
                           +insere(FormatFloat(mcasas, mtotdicms),' ',10)
                           +insere(FormatFloat(mcasas, mtotdbcr),' ',10)
                           +insere(FormatFloat(mcasas, mtotdicmsr),' ',10)
                           +insere(FormatFloat(mcasas, mtotdise),' ',10)
                           +insere(FormatFloat(mcasas, mtotdout),' ',10)
                           +insere(FormatFloat(mcasas, mtotddifal),' ',10)
                           ,M20ccp);


   mtotdnf   :=0;
   mtotdbc   :=0;
   mtotdicms :=0;
   mtotdbcr  :=0;
   mtotdicmsr:=0;
   mtotdise  :=0;
   mtotdout  :=0;
   mtotddifal:=0;
   if not Qr_NFE.Eof then
      mdataant:=Qr_NFENEDTENT.Value;
   end
else if ptipo=1 then
   begin
   form_impres_nfe.RDprint1.ImpF(mlin,01,Insere2('- Totalizacao dos Valores',' ',73)
                           +insere(FormatFloat(mcasas, mtotnf),' ',11)
                           +insere(FormatFloat(mcasas, mtotbc),' ',10)
                           +insere(FormatFloat(mcasas, mtoticms),' ',10)
                           +insere(FormatFloat(mcasas, mtotbcr),' ',10)
                           +insere(FormatFloat(mcasas, mtoticmsr),' ',10)
                           +insere(FormatFloat(mcasas, mtotise),' ',10)
                           +insere(FormatFloat(mcasas, mtotout),' ',10)
                           +insere(FormatFloat(mcasas, mtotdifal),' ',10)

                           ,M20ccp);
   mlin:=mlin+1;
   form_impres_nfe.RDprint1.ImpF(mlin,01,'- Foram Impressos '+IntToStr(mQtdReg)+' Notas Fiscais ',m20ccp);
   end;
result:=true;
end;

function TFrm_RelNFE.frelnfsimpDet(ptipo: Integer): Boolean;
begin
Qr_PedMer.Close;
Qr_PedMer.SQL.Clear;
Qr_PedMer.SQL.Add('Select PF2CHAVE,PF2CODPRO, '
                 +' PF2PU,PF2QTDP,PF2BASEN,PF2ICMSN,PF2DIFAL_VALOR, '
                 +' PF2BASER,PF2ICMSR,PF2TOTDES,NVL(TRIM(PF2NOMPRO),PDNOME) AS PF2NOMPRO,PDMARCA,PDUND '
                 +' from CADPF2,CADPRO where '
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPFOR',[]),'',' PF2CODEMP=0'+Qr_NFENECODEMP.AsString+' and ')
                 +' PF2LOTSEQ  =0'+Qr_NFENELOTSEQ_CP.AsString
                 +' and PF2CHAVE=0'+Qr_NFENECHAVEP.AsString
                 +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' and PDCODEMP=0'+Qr_NFENECODEMP.AsString)
                 +' and PDCODPRO=PF2CODPRO');
Qr_PedMer.open;
if not Qr_PedMer.Eof then
   begin
   mlin:=mlin+1;


   form_impres_nfe.RDprint1.ImpF(mlin,01,'Codigo            Quantidade UND Descricao dos Produtos                   Preco Unitario    Valor Total  Tot.Descontos  Valor Liquido',mreduz);
   While not Qr_PedMer.Eof do
      begin
      mlin:=mlin+1;
      if mlin>58 then
         begin
         form_impres_nfe.RDprint1.ImpF(mlin,01,insere2('Continua...','.',80),mnormal);
         form_impres_nfe.RDprint1.Novapagina;
         frelnfscab(0);
         mlin:=mlin+1;
         end;

      form_impres_nfe.RDprint1.impf(mlin,01,insere(Qr_PedMerPF2CODPRO.AsString,' ',13)
                              +' '+insere(FormatFloat(mcasqtd, Qr_PedMerPF2QTDP.Value),' ',14)
                              +' '+insere2(Qr_PedMerPDUND.Value,' ',3)
                              +' '+insere2(Qr_PedMerPF2NOMPRO.Value,' ',40)
                              +insere(FormatFloat(mcasaspu, Qr_PedMerPF2PU.Value),' ',15)
                              +insere(FormatFloat(mcasaspu, (Qr_PedMerPF2PU.Value*Qr_PedMerPF2QTDP.Value)),' ',15)
                              +insere(FormatFloat(mcasaspu, Qr_PedMerPF2TOTDES.Value),' ',15)
                              +insere(FormatFloat(mcasaspu, (Qr_PedMerPF2PU.Value*Qr_PedMerPF2QTDP.Value)-Qr_PedMerPF2TOTDES.Value),' ',15),mreduz);
      Qr_PedMer.Next;
      end;
   end;
result:=true;
end;

procedure TFrm_RelNFE.QTDCLIExit(Sender: TObject);
begin
QTDCLI.Text:=fdeixanum(QTDCLI.Text);

end;

procedure TFrm_RelNFE.QTDPROExit(Sender: TObject);
begin
QTDPRO.Text:=fdeixanum(QTDPRO.Text);

end;

procedure TFrm_RelNFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_RelNFE.FormCreate(Sender: TObject);
begin
if ValInt(FormatDateTime('dd', pdatasis))>27 then
   MDT1.Text:=FormatDateTime(fdt2, pdatasis)
else
   MDT1.Text:=FormatDateTime(fdt2, fdatafinal(1,pdatasis-28));
MDT1.Text:=FormatDateTime(fdt2, StrtodAte('01/'+FormatDatetime('mm/yyyy',StrtoDate(MDT1.text))));
MDT2.Text   :=FormatDatetime(fdt2, fultdiames(StrtoDate(MDT1.Text)));

end;

end.

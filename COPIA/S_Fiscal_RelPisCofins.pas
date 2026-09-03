unit S_Fiscal_RelPisCofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls,func, CheckLst, Buttons,S_DM1, DB,
  DBTables, Grids, DBGrids,lerarq,S_Impres, S_SelEmp;

type
  TFrm_Fiscal_RelPisCofins = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MES: TEdit;
    UpDown_mes: TUpDown;
    ANO: TEdit;
    UpDown_ano: TUpDown;
    clb_lista: TCheckListBox;
    StaticText12: TStaticText;
    bbAplicar: TBitBtn;
    bbImprimir: TBitBtn;
    Qr_PisCof: TQuery;
    Qr_PisCofP2CODPRO: TFloatField;
    Qr_PisCofPDNOME: TStringField;
    Qr_PisCofPDUND: TStringField;
    Qr_PisCofPDCLAS: TStringField;
    Qr_PisCofGRUPO: TStringField;
    Qr_PisCofQTDPAGO: TFloatField;
    Qr_PisCofQTDAPAGAR: TFloatField;
    Qr_PisCofVALPAGO: TFloatField;
    Qr_PisCofVALAPAGAR: TFloatField;
    Src_PisCofins: TDataSource;
    bbSair: TBitBtn;
    Qr_PisCofVALVENDA: TFloatField;
    Qr_PisCofQTDVENDA: TFloatField;
    PC1: TPageControl;
    tsRegSel: TTabSheet;
    DBG_PisCofins: TDBGrid;
    tsFiltros: TTabSheet;
    RG_TIPOPED: TCheckListBox;
    Qr_PisCofPDLISTA: TFloatField;
    CB_SEPALIQ: TCheckBox;
    Qr_PisCofALIQ: TFloatField;
    Label13: TLabel;
    NUMNF: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure MESExit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure clb_listaClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    form_impres_FRPC : TFrm_Impres;
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Fiscal_RelPisCofins: TFrm_Fiscal_RelPisCofins;
  mQtdVda, mQtdPago,mQtdApagar: Real;
  mValVda, mValPago,mValApagar: Real;

  mQtdVdaIna,mQtdPagoIna, mQtdApagarIna: Real;
  mQtdVdaPos,mQtdPagoPos, mQtdApagarPos: Real;
  mQtdVdaNeg,mQtdPagoNeg, mQtdApagarNeg: Real;

  mValVdaIna,mValPagoIna, mValApagarIna: Real;
  mValVdaPos,mValPagoPos, mValApagarPos: Real;
  mValVdaNeg,mValPagoNeg, mValApagarNeg: Real;
  mGrupo_Ant: String;

implementation

{$R *.dfm}

procedure TFrm_Fiscal_RelPisCofins.FormCreate(Sender: TObject);
var
x: Integer;
begin
clb_lista.Checked[3]:=True;
if valint(FormatDateTime('dd', date))>25 then
   begin
   UpDown_mes.Position:=valint(formatDateTime('mm',date));
   UpDown_ano.Position:=valint(formatDateTime('yyyy',date));
   end
else
   begin
   if valint(FormatDateTime('mm',date))<2 then
      begin
      UpDown_mes.Position:=12;
      UpDown_ano.Position:=valint(formatDateTime('yyyy',date))-1;
      end
   else
      begin
      UpDown_mes.Position:=valint(formatDateTime('mm',date))-1;
      UpDown_ano.Position:=valint(formatDateTime('yyyy',date));
      end;
   end;

RG_TIPOPED.Items.Clear;
for x:=1 to high(tab_tped) do
   begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
   end;
RG_TIPOPED.Checked[0]:=true;

Qr_PisCofQTDPAGO.DisplayFormat   :=mcasqtd;
Qr_PisCofQTDAPAGAR.DisplayFormat :=mcasqtd;
Qr_PisCofVALPAGO.DisplayFormat   :=mcasas;
Qr_PisCofVALAPAGAR.DisplayFormat :=mcasas;
Qr_PisCofQTDVENDA.DisplayFormat  :=mcasqtd;
Qr_PisCofVALVENDA.DisplayFormat  :=mcasas;
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_Fiscal_RelPisCofins.MESExit(Sender: TObject);
begin
MES.Text:=IntToStr(UpDown_mes.Position);
end;

procedure TFrm_Fiscal_RelPisCofins.bbAplicarClick(Sender: TObject);
begin
if PC1.ActivePage<>tsRegSel then
   PC1.ActivePage:=tsRegSel;
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(1,'CADP02','P2CODEMP','P1CODEMP','P2LOTSEQ','P1LOTSEQ','P2CHAVE','P1CHAVE','P2ORDEM','P1ORDEM');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_PisCof.Close;
Qr_PisCof.Sql.Clear;
Qr_PisCof.SQL.Add('SELECT PDLISTA,P2CODPRO,PDNOME,PDUND,PDCLAS '
                 +',DECODE( PDLISTA, '
                 +'        2,'+chr(39)+'Lista Negativa'+chr(39)+','
                 +'        1,'+chr(39)+'Lista Positiva'+chr(39)
                 +'         ,'+chr(39)+'Lista Inalterada'+chr(39)+') ');
if CB_SEPALIQ.Checked then
   Qr_PisCof.SQL.Add('||'+chr(39)+'. Aliq: '+chr(39)+'|| max(P2ALIQ) ');
Qr_PisCof.SQL.Add(' as grupo ');
Qr_PisCof.SQL.Add(',sum(DECODE( PDLISTA,'
                 +'        2,P2QTD, '
                 +'        1,P2QTD '
                 +'         ,0)) as qtdpago '
                 +',sum(DECODE( PDLISTA, '
                 +'        2,0, '
                 +'        1,0 '
                 +'         ,P2QTD)) as qtdapagar '
                 +',sum(DECODE( PDLISTA, '
                 +'        2,P2TOTLIQ-P2DESCRAT, '
                 +'        1,P2TOTLIQ-P2DESCRAT '
                 +'         ,0)) as valpago '
                 +',sum(DECODE( PDLISTA, '
                 +'        2,0, '
                 +'        1,0 '
                 +'         ,P2TOTLIQ-P2DESCRAT)) as valapagar'
                 +' ,sum(P2TOTLIQ-P2DESCRAT) as valvenda '
                 +' ,sum(P2QTD) as qtdvenda ');
if CB_SEPALIQ.Checked then
   Qr_PisCof.SQL.Add(', P2ALIQ AS ALIQ ')
else
   Qr_PisCof.SQL.Add(', MAX(P2ALIQ) AS ALIQ ');
Qr_PisCof.SQL.Add(' FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' AND P1TIPO>0 '
               +' and P1DATANF>='+chr(39)+
                                 FormatDateTime(fdt,
                                 StrtoDate('01/'
                                          +FormatFloat('00',
                                          valint(MES.Text) )
                                          +'/'+FormatFloat('0000', valint(ANO.Text) )
                                          )
                                  )
                                 +chr(39)

               +' and P1DATANF<='+chr(39)+FormatDateTime(fdt, fultdiames(

                                 StrtoDate('01/'
                                          +FormatFloat('00',
                                          valint(MES.Text) )
                                          +'/'+FormatFloat('0000', valint(ANO.Text) )
                                          )
                                          )
                                          )+chr(39));
mcinst2:=fItenstCheckListBox(0,clb_lista);
if trim(mcinst2)<>'' then
   Qr_PisCof.SQL.Add(' and PDLISTA '+mcinst2);

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Qr_PisCof.SQL.Add(' and P1TIPO '+mcinst2);
if trim(NUMNF.Text)<>'' then
   Qr_PisCof.SQL.Add(' and P1NUMNF='+NUMNF.Text);

Qr_PisCof.SQL.Add(' group by PDLISTA,');

if CB_SEPALIQ.Checked then
   Qr_PisCof.SQL.Add(' P2ALIQ,');
Qr_PisCof.SQL.Add(' PDNOME,P2CODPRO,PDUND,PDCLAS ');

//Qr_PisCof.SQL.SaveToFile('c:\sql.txt');

Qr_PisCof.Open;


end;

procedure TFrm_Fiscal_RelPisCofins.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Fiscal_RelPisCofins.clb_listaClick(Sender: TObject);
begin
clb_lista:=Valida_CheckList(clb_lista);

end;

procedure TFrm_Fiscal_RelPisCofins.bbImprimirClick(Sender: TObject);
begin
if not Qr_PisCof.Active then
   bbAplicar.Click;
if Qr_PisCof.IsEmpty then
   begin
   fmensagem('Nada a ser impresso!',0,['0'],0);
   exit;
   end;
testeform := TFrm_Fiscal_RelPisCofins(FindGlobalComponent('form_impres_FRPC'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_FRPC);

form_impres_FRPC.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_FRPC.mlin:=0;
form_impres_FRPC.mpag:=0;

mQtdVda:=0; mQtdPago:=0; mQtdApagar:=0;
mValVda:=0; mValPago:=0; mValApagar:=0;

mQtdVdaIna:=0; mQtdPagoIna:=0; mQtdApagarIna:=0;
mQtdVdaPos:=0; mQtdPagoPos:=0; mQtdApagarPos:=0;
mQtdVdaNeg:=0; mQtdPagoNeg:=0; mQtdApagarNeg:=0;

mValVdaIna:=0; mValPagoIna:=0; mValApagarIna:=0;
mValVdaPos:=0; mValPagoPos:=0; mValApagarPos:=0;
mValVdaNeg:=0; mValPagoNeg:=0; mValApagarNeg:=0;


Qr_PisCof.First;
mGrupo_Ant:=Qr_PisCofGRUPO.AsString;
While not Qr_PisCof.Eof do
   begin
   if form_impres_FRPC.mlin=0 then
      begin
      form_impres_FRPC.mlin:=01;
      form_impres_FRPC.mpag:=form_impres_FRPC.mpag+1;
      form_impres_FRPC.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',120)+'Pagina:     '+FormatFloat('0000', form_impres_FRPC.mpag),mreduz);
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      mcinst2:='RELATORIO PIS/COFINS. ';
      if clb_lista.Checked[3] then
         mcinst2:=mcinst2+'Inalt/Pos/Neg.'
      else
         begin
         if clb_lista.Checked[3] then
            mcinst2:=mcinst2+'Inalt/Pos/Neg.'
         else
            begin
            if clb_lista.Checked[0] then
               mcinst2:=mcinst2+'Inalt';
            if clb_lista.Checked[1] then
               begin
               if trim(mcinst2)<>'' then
                  mcinst2:=mcinst2+'/';
               mcinst2:=mcinst2+'Post';
               end;
            if clb_lista.Checked[2] then
               begin
               if trim(mcinst2)<>'' then
                  mcinst2:=mcinst2+'/';
               mcinst2:=mcinst2+'Neg';
               end;
            end;
         end;
      mcinst2:=mcinst2+' MES/ANO: '+MES.Text+'/'+ANO.Text+'.';
      form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2(mcinst2,' ',120)+'Data: '+FormatDateTime(fdt2, date),mreduz);
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('-','-',136),mreduz);
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,Centra(Qr_PisCofGRUPO.Value,' ',80),mneg);
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      if CB_SEPALIQ.Checked then
         form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'Produto                                         Aliq. Cl.Fiscal     ------- Vendas ------- ------- A Pagar ------ -------- Pagos -------',mreduz)
      else
         form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'Produto                                         Classif. Fiscal     ------- Vendas ------- ------- A Pagar ------ -------- Pagos -------',mreduz);
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'                                                                       Qtd           Valor     Qtd          Valor     Qtd          Valor',mreduz);
      end;
   form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
   mcinst4:=insere(Qr_PisCofP2CODPRO.AsString,'0',06)+' '
           +insere2(Qr_PisCofPDNOME.AsString,' ',40)+' ';
   if CB_SEPALIQ.Checked then
      mcinst4:=mcinst4+insere(Formatfloat(mcasas, Qr_PisCofALIQ.AsFloat),' ',05)
              +' '+insere2(Qr_PisCofPDCLAS.AsString,' ',14)+' '

   else
      mcinst4:=mcinst4+insere2(Qr_PisCofPDCLAS.AsString,' ',20)+' ';
   mcinst4:=mcinst4+insere(FormatFloat(mcasqtd, Qr_PisCofQTDVENDA.Value),' ',10)
           +insere(FormatFloat(mcasas, Qr_PisCofVALVENDA.Value),' ',12)
           +insere(FormatFloat(mcasqtd, Qr_PisCofQTDAPAGAR.Value),' ',11)
           +insere(FormatFloat(mcasas, Qr_PisCofVALAPAGAR.Value),' ',12)
           +insere(FormatFloat(mcasqtd, Qr_PisCofQTDPAGO.Value),' ',11)
           +insere(FormatFloat(mcasas, Qr_PisCofVALPAGO.Value),' ',12);

   form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,mcinst4,mreduz);


   mQtdVda   :=mQtdVda   +Qr_PisCofQTDVENDA.Value;
   mQtdPago  :=mQtdPago  +Qr_PisCofQTDPAGO.Value;
   mQtdApagar:=mQtdApagar+Qr_PisCofQTDAPAGAR.Value;
   mValVda   :=mValVda   +Qr_PisCofVALVENDA.Value;
   mValPago  :=mValPago  +Qr_PisCofVALPAGO.Value;
   mValApagar:=mValApagar+Qr_PisCofVALAPAGAR.Value;

   if Qr_PisCofPDLISTA.Value=2 then // negativo
      begin
      mQtdVdaNeg   :=mQtdVdaNeg   +Qr_PisCofQTDVENDA.Value;
      mQtdPagoNeg  :=mQtdPagoNeg  +Qr_PisCofQTDPAGO.Value;
      mQtdApagarNeg:=mQtdApagarNeg+Qr_PisCofQTDAPAGAR.Value;

      mValVdaNeg   :=mValVdaNeg   +Qr_PisCofValVENDA.Value;
      mValPagoNeg  :=mValPagoNeg  +Qr_PisCofValPAGO.Value;
      mValApagarNeg:=mValApagarNeg+Qr_PisCofValAPAGAR.Value;
      end
   else if Qr_PisCofPDLISTA.Value=1 then // positivo
      begin
      mQtdVdaPos   :=mQtdVdaPos   +Qr_PisCofQTDVENDA.Value;
      mQtdPagoPos  :=mQtdPagoPos  +Qr_PisCofQTDPAGO.Value;
      mQtdApagarPos:=mQtdApagarPos+Qr_PisCofQTDAPAGAR.Value;

      mValVdaPos   :=mValVdaPos   +Qr_PisCofValVENDA.Value;
      mValPagoPos  :=mValPagoPos  +Qr_PisCofValPAGO.Value;
      mValApagarPos:=mValApagarPos+Qr_PisCofValAPAGAR.Value;
      end
   else  // inalterado
      begin
      mQtdVdaIna   :=mQtdVdaIna   +Qr_PisCofQTDVENDA.Value;
      mQtdPagoIna  :=mQtdPagoIna  +Qr_PisCofQTDPAGO.Value;
      mQtdApagarIna:=mQtdApagarIna+Qr_PisCofQTDAPAGAR.Value;

      mValVdaIna   :=mValVdaIna   +Qr_PisCofValVENDA.Value;
      mValPagoIna  :=mValPagoIna  +Qr_PisCofValPAGO.Value;
      mValApagarIna:=mValApagarIna+Qr_PisCofValAPAGAR.Value;
      end;
   Qr_PisCof.Next;
   if Qr_PisCof.Eof then
      begin
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('- Sub Total','.',69)
                                   +insere(FormatFloat(mcasqtd, mQtdVda),' ',10)
                                   +insere(FormatFloat(mcasas, mValVda),' ',12)
                                   +insere(FormatFloat(mcasqtd, mQtdApagar),' ',11)
                                   +insere(FormatFloat(mcasas, mValApagar),' ',12)
                                   +insere(FormatFloat(mcasqtd, mQtdPago),' ',11)
                                   +insere(FormatFloat(mcasas, mValPago),' ',12),mreduz);
      mQtdVda   :=0;
      mValVda   :=0;
      mQtdApagar:=0;
      mValApagar:=0;
      mQtdPago  :=0;
      mValPago  :=0;
      form_impres_FRPC.RDprint1.ImpF(60,01,'-Continua...'+insere('Emitido as '+FormatDatetime(fhr, time),'-',124),mreduz);
      form_impres_FRPC.mlin:=0;
      end
   else if mGrupo_Ant<>Qr_PisCofGRUPO.AsString then
      begin
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('- Sub Total','.',69)
                                   +insere(FormatFloat(mcasqtd, mQtdVda),' ',10)
                                   +insere(FormatFloat(mcasas, mValVda),' ',12)
                                   +insere(FormatFloat(mcasqtd, mQtdApagar),' ',11)
                                   +insere(FormatFloat(mcasas, mValApagar),' ',12)
                                   +insere(FormatFloat(mcasqtd, mQtdPago),' ',11)
                                   +insere(FormatFloat(mcasas, mValPago),' ',12),mreduz);
      mQtdVda   :=0;
      mValVda   :=0;
      mQtdApagar:=0;
      mValApagar:=0;
      mQtdPago  :=0;
      mValPago  :=0;
      mGrupo_ant:=Qr_PisCofGRUPO.AsString;
      if form_impres_FRPC.mlin<50 then
         begin
         form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
         form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('-','-',136),mreduz);
         form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
         form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,Centra(Qr_PisCofGRUPO.Value,' ',80),mneg);
         form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
         form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'Produto                                         Classif. Fiscal     ------- Vendas ------- ------- A Pagar ------ -------- Pagos -------',mreduz);
         form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
         form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'                                                                       Qtd           Valor     Qtd          Valor     Qtd          Valor',mreduz);
         end
      else
         begin
         form_impres_FRPC.mlin:=0;
         form_impres_FRPC.RDprint1.Novapagina;
         end;
      end
   else if form_impres_FRPC.mlin>60 then
      begin
      form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
      form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'-Continua...'+insere('Emitido as '+FormatDatetime(fhr, time),'-',124),mreduz);
      form_impres_FRPC.mlin:=0;
      form_impres_FRPC.RDprint1.Novapagina;
      end;
   end;

form_impres_FRPC.RDprint1.Novapagina;
form_impres_FRPC.mlin:=01;
form_impres_FRPC.mpag:=form_impres_FRPC.mpag+1;
form_impres_FRPC.RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO_CAB.Value,' ',120)+'Pagina:     '+FormatFloat('0000', form_impres_FRPC.mpag),mreduz);
form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
mcinst2:='RESUMO PIS/COFINS. ';
if clb_lista.Checked[3] then
   mcinst2:='Inalt/Pos/Neg.'
else
   begin
   if clb_lista.Checked[3] then
      mcinst2:='Inalt/Pos/Neg.'
   else
      begin
      if clb_lista.Checked[0] then
         mcinst2:=mcinst2+'Inalt';
      if clb_lista.Checked[1] then
         begin
         if trim(mcinst2)<>'' then
            mcinst2:=mcinst2+'/';
         mcinst2:=mcinst2+'Post';
         end;
      if clb_lista.Checked[2] then
         begin
         if trim(mcinst2)<>'' then
            mcinst2:=mcinst2+'/';
         mcinst2:=mcinst2+'Neg';
         end;
      end;
   end;
mcinst2:=mcinst2+' MES/ANO: '+MES.Text+'/'+ANO.Text+'.';
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2(mcinst2,' ',120)+'Data: '+FormatDateTime(fdt2, date),mreduz);
form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('-','-',136),mreduz);
form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'                     ------- Vendas ------- ------- A Pagar ------ -------- Pagos -------',m12ccp);
form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'                         Qtd          Valor     Qtd          Valor     Qtd          Valor',m12ccp);
form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('Lista Inalterada',' ',20)+' '
                        +insere(FormatFloat(mcasqtd, mQtdVdaIna),' ',10)
                        +insere(FormatFloat(mcasas, mValVdaIna),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdApagarIna),' ',11)
                        +insere(FormatFloat(mcasas, mValApagarIna),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdPagoIna),' ',11)
                        +insere(FormatFloat(mcasas, mValPagoIna),' ',12),m12ccp);

form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('Lista Positiva',' ',20)+' '
                        +insere(FormatFloat(mcasqtd, mQtdVdaPos),' ',10)
                        +insere(FormatFloat(mcasas, mValVdaPos),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdApagarPos),' ',11)
                        +insere(FormatFloat(mcasas, mValApagarPos),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdPagoPos),' ',11)
                        +insere(FormatFloat(mcasas, mValPagoPos),' ',12),m12ccp);

form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('Lista Negativa',' ',20)+' '
                        +insere(FormatFloat(mcasqtd, mQtdVdaNeg),' ',10)
                        +insere(FormatFloat(mcasas, mValVdaNeg),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdApagarNeg),' ',11)
                        +insere(FormatFloat(mcasas, mValApagarNeg),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdPagoNeg),' ',11)
                        +insere(FormatFloat(mcasas, mValPagoNeg),' ',12),m12ccp);

form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,insere2('-Total Geral','.',20)+' '
                        +insere(FormatFloat(mcasqtd, mQtdVdaNeg+mQtdVdaIna+mQtdVdaPos),' ',10)
                        +insere(FormatFloat(mcasas, mValVdaNeg+mValVdaIna+mValVdaPos),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdApagarNeg+mQtdApagarIna+mQtdApagarPos),' ',11)
                        +insere(FormatFloat(mcasas, mValApagarNeg+mValApagarIna+mValApagarPos),' ',12)
                        +insere(FormatFloat(mcasqtd, mQtdPagoNeg+mQtdPagoIna+mQtdPagoPos),' ',11)
                        +insere(FormatFloat(mcasas, mValPagoNeg+mValPagoIna+mValPagoPos ),' ',12),m12ccp);

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

la_Empresas:=fEmpresas_Selecionadas('CADP01','P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.Sql.Clear;
DM1.Query1.SQL.Add('SELECT sum(P1ICMSR) AS VALICMSR, sum(P1VALFRE) AS VALFRE '
                 +' FROM CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join
                 +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                 +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                 +' P1STATUS<'+mstatus_excluido+' AND P1TIPO>0  '
                 +' and P1DATANF>='+chr(39)+
                                 FormatDateTime(fdt,
                                 StrtoDate('01/'
                                          +FormatFloat('00',
                                          valint(MES.Text) )
                                          +'/'+FormatFloat('0000', valint(ANO.Text) )
                                          )
                                  )
                                 +chr(39)

               +' and P1DATANF<='+chr(39)+FormatDateTime(fdt, fultdiames(

                                 StrtoDate('01/'
                                          +FormatFloat('00',
                                          valint(MES.Text) )
                                          +'/'+FormatFloat('0000', valint(ANO.Text) )
                                          )
                                          )
                                          )+chr(39));

mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   DM1.Query1.SQL.Add(' and P1TIPO '+mcinst2);
DM1.Query1.SQL.SaveToFile('c:\sql01.txt');
DM1.Query1.Open;
form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'Total ICMS Retido do Periodo...:'+FormatFloat(mcasas, DM1.Query1.fieldbyName('VALICMSR').AsFloat)
                        +'   Total de Frete: '+FormatFloat(mcasas, DM1.Query1.fieldbyName('VALFRE').AsFloat),m12ccp);
if form_impres_FRPC.mlin>50 then
   form_impres_FRPC.mlin:=form_impres_FRPC.mlin+1
else
   form_impres_FRPC.mlin:=60;
form_impres_FRPC.RDprint1.ImpF(form_impres_FRPC.mlin,01,'-fim........'+insere('Emitido as '+FormatDatetime(fhr, time),'-',124),mreduz);

if form_impres_FRPC.RDprint1.Setup then form_impres_FRPC.RDprint1.Fechar;
form_impres_FRPC.free;
form_impres_FRPC:=nil;

end;

procedure TFrm_Fiscal_RelPisCofins.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Fiscal_RelPisCofins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Fiscal_RelPisCofins.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

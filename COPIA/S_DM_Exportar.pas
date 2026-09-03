unit S_DM_Exportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,S_SelEmp, DB, DBTables, xmldom,
  XMLIntf, msxmldom, XMLDoc;


//, Mask, StdCtrls,db,dbtables,func,lerarq,S_DM1,S_Ven, Gauges,
//  Buttons, ExtCtrls, FileCtrl,S_Sup, DBClient, S_SelEmp;

type
  TFrm_DM_Exportar = class(TForm)
    Label11: TLabel;
    CODSUP: TEdit;
    lbx_codsup: TListBox;
    OMITIR_SUP: TCheckBox;
    Label1: TLabel;
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    Label5: TLabel;
    CODCLI: TEdit;
    lbx_codcli: TListBox;
    OMITIR_CLI: TCheckBox;
    lbl_duprec: TLabel;
    duprec: TEdit;
    lbl_duprec2: TLabel;
    Label8: TLabel;
    diasped: TEdit;
    Label9: TLabel;
    Panel1: TPanel;
    sb_SalvarPadrao: TSpeedButton;
    bbProcessar: TBitBtn;
    bbSair: TBitBtn;
    Qr_Temp: TQuery;
    XMLDocument1: TXMLDocument;
    procedure CODSUPExit(Sender: TObject);
    procedure CODSUPKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codsupKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
    mpasta_envio_padrao: String;
    mConAutomatica: Boolean;
    Function FGerarExportacao(pTipo: Integer): Boolean;

  end;

var
  Frm_DM_Exportar: TFrm_DM_Exportar;


implementation

uses S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_DM_Exportar.CODSUPExit(Sender: TObject);
begin
CODSUP.Text:=fdeixanum2(CODSUP.Text);
if Trim(CODSUP.Text)<>'' then
   begin
   if not flqr1('SNOME','S','CADSUP','N','SCODSUP',Trim(CODSUP.Text)) then
      begin
      if not mConAutomatica then
         begin
         fmensagem('Supervidor não cadastrado!',0,['0'],0);
         CODSUP.SetFocus;
         end
      end
   else
      begin
      lbx_codsup.Items.Add(FormatFloat('0000000',StrToFloat(CODSUP.Text))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODSUP.text := '';
      if not mConAutomatica then
         begin
         if CODSUP.Enabled then
            CODSUP.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_DM_Exportar.CODSUPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSUP.Text  :=fChamaSup(0,'frm_MedCli',Key);
   if trim(CODSUP.Text)<>'' then
      CODSUPExit(self);
   key:=#0;
   end;


end;

procedure TFrm_DM_Exportar.lbx_codsupKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codsup.ItemIndex>=0 then
      lbx_codsup.Items.Delete(lbx_codsup.ItemIndex);

end;

procedure TFrm_DM_Exportar.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if not flcadcli(1,0,CODCLI.Text) then
      begin
      if not mConAutomatica then
         begin
         fmensagem('Cliente não Cadastrado!',0,['0'],0);
         CODCLI.Text := '';
         CODCLI.SetFocus;
         end;
      end
   else
      Lbx_codcli.Items.Add(FormatFloat('0000000',DM1.Tb_CliCCODCLI.Value)
                                    +' - '+DM1.Tb_CliCRAZAO.Value);
      codcli.text := '';
      if not mConAutomatica then
         CODCLI.SetFocus;
   end;

end;

procedure TFrm_DM_Exportar.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_CABC',key);
   CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DM_Exportar.lbx_codcliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if Lbx_codcli.ItemIndex>=0 then
      Lbx_codcli.Items.Delete(Lbx_codcli.ItemIndex);

end;

procedure TFrm_DM_Exportar.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      if not mConAutomatica then
         begin
         fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
         if CODVEN.Enabled then
            CODVEN.SetFocus;
         end;
      end
   else
      begin
      Lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);

      codven.text := '';
      if not mConAutomatica then
         begin
         if CODVEN.Enabled then
            codven.SetFocus;
         end;
      end;
   end;

end;

procedure TFrm_DM_Exportar.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_CABC',Key);
   CODVENExit(Self);
   if CODVEN.Enabled then
      codven.SetFocus;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_DM_Exportar.lbx_codvenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_DM_Exportar.FormCreate(Sender: TObject);
begin
mpasta_envio_padrao:='C:\DM\ENVIAR\';
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
mConAutomatica:=false;
end;

Function tfrm_DM_Exportar.FGerarExportacao(pTipo: Integer): Boolean;
{
pTipo=0 Cadastros
      1 Retornos
}
var
mNomArq: String;
mPasta: String;


xmlDoc: TXMLDocument;
NodeNivelA, NodeNivelB, NodeNivelC, NodeNivelD: IXMLNode;
mItem: Integer;
mSigla,mCodigo,mNomUsr: String;
begin
if lbx_codsup.Items.Count>0 then
   begin
   mCodigo:=IntToStr(StrToInt(trim(copy(lbx_codsup.Items[0],1,fPosCaractere('-',lbx_codsup.items[0])-1))));
   mSigla :='SP';
   mNomUsr:=copy(lbx_codsup.Items[0],fPosCaractere('-',lbx_codsup.items[0])+1
                ,length(lbx_codsup.items[0])-fPosCaractere('-',lbx_codsup.items[0]) );
   end
else if lbx_codven.Items.Count>0 then
   begin
   mCodigo:=IntToStr(StrToInt(trim(copy(lbx_codven.Items[0],1,fPosCaractere('-',lbx_codven.items[0])-1))));
   mSigla :='VD';
   mNomUsr:=copy(lbx_codven.Items[0],fPosCaractere('-',lbx_codven.items[0])+1
                ,length(lbx_codven.items[0])-fPosCaractere('-',lbx_codven.items[0]) );

   end
else if lbx_codcli.Items.Count>0 then
   begin
   mCodigo:=IntToStr(StrToInt(trim(copy(lbx_codcli.Items[0],1,fPosCaractere('-',lbx_codcli.items[0])-1))));
   mNomUsr:=copy(lbx_codcli.Items[0],fPosCaractere('-',lbx_codcli.items[0])+1
                ,length(lbx_codcli.items[0])-fPosCaractere('-',lbx_codcli.items[0]) );

   mSigla :='CL';
   end
else
   begin
   mNomUsr:='Gerencia Geral';
   mCodigo:='';
   mSigla :='GG';
   end;
mNomArq:=mSigla+mCodigo;
mPasta:=mpasta_envio_padrao+mNomArq;
fcriarPastas(mPasta);
mNomArq:=mPasta+'\'+mNomArq;
result:=true;


xmlDoc := TXMLDocument.Create(nil);
Try
   With xmlDoc do
      begin
      Active := True;
      Version := '1.0';
      Encoding := 'utf-8';
      AddChild('Exportacao');
      NodeNivelA := DocumentElement;
      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      la_tabelas  :='';
      if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
         la_Empresas:='(PDCODEMP=0'+IntTostr(codemp)+' or PDCODEMP=0'+IntTostr(iif(codemp>100,-100,100))+')';
      fInnerJoin(1,'CADEST' ,'CECODEMP','PDCODEMP' ,'CECODPRO' ,'PDCODPRO');
      Qr_Temp.Close;
      Qr_Temp.SQL.Clear;
      Qr_Temp.SQL.Add('Select PDCODPRO,PDCODBAR,PDNOME,PDNOME2,PDMARCA,PDUND,PDPRECO1,PDDESC1,PDDESC2,PDDESC3,'
                     +'0 AS PDDESCMAX, CESALDO AS ESTOQUE, '
                     +'(select DECODE(max(PPCODPRO),NULL,0,1) FROM '
                     +' CADPPR where PPCODEMP(+)=PDCODEMP AND PPCODPRO(+)=PDCODPRO '
                     +' and (PPDATFIN is null or PPDATFIN>:DATAFIN)  '
                     +') as TEMPROMOCAO '
                     +', CESALDO,PDCODCON  '
                     +' from CADPRO'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' PDSTATUS<8  '
                    +' and (PDNIVEL=0 OR PDNIVEL=2 OR PDNIVEL=4) ');

      Qr_Temp.ParamByName('DATAFIN').asdatetime:=date;
//      Qr_Temp.sql.savetofile('c:\sql.txt');

      try
         Qr_Temp.Open;
      except
         Qr_Temp.sql.savetofile('c:\sql.txt');
         end;

      mItem:=0;
      While not Qr_Temp.Eof do
         begin
         mItem:=mItem+1;
         NodeNivelB := NodeNivelA.AddChild('CADPRO');
//         NodeNivelA.ChildNodes.Last.Attributes['Num'] := IntToStr(mItem);

         // adiciona tag <prod> à partir da tag <det>
//         NodeNivelC := NodeNivelB.AddChild('CADPRO');
         NodeNivelB.AddChild('CodPro').NodeValue     :=Qr_Temp.fieldbyName('PDCODPRO').AsString;
         NodeNivelB.AddChild('CodBar').NodeValue     :=Qr_Temp.fieldbyName('PDCODBAR').AsString;
         NodeNivelB.AddChild('NomePro').NodeValue    :=Qr_Temp.fieldbyName('PDNOME').AsString;
         NodeNivelB.AddChild('NomeProGen').NodeValue :=Qr_Temp.fieldbyName('PDNOME2').AsString;
         NodeNivelB.AddChild('Marca').NodeValue      :=Qr_Temp.fieldbyName('PDMARCA').AsString;
         NodeNivelB.AddChild('Und').NodeValue        :=Qr_Temp.fieldbyName('PDUND').AsString;
         NodeNivelB.AddChild('Preco01').NodeValue    :=mudavp(Formatfloat(mcasaspu, Qr_Temp.fieldbyName('PDPRECO1').AsFloat));
         NodeNivelB.AddChild('PrecoFab').NodeValue   :=mudavp(Formatfloat(mcasaspu, Qr_Temp.fieldbyName('PDPRECO1').AsFloat));
         NodeNivelB.AddChild('pDesc_01').NodeValue   :=mudavp(Formatfloat(mcasas, Qr_Temp.fieldbyName('PDDESC1').AsFloat));
         NodeNivelB.AddChild('pDesc_02').NodeValue   :=mudavp(Formatfloat(mcasas, Qr_Temp.fieldbyName('PDDESC2').AsFloat));
         NodeNivelB.AddChild('pDesc_03').NodeValue   :=mudavp(Formatfloat(mcasas, Qr_Temp.fieldbyName('PDDESC3').AsFloat));
         NodeNivelB.AddChild('pDescMax').NodeValue   :=0;
         NodeNivelB.AddChild('Estoque').NodeValue    :=mudavp(Formatfloat(mcasqtd, Qr_Temp.fieldbyName('CESALDO').AsFloat));
         NodeNivelB.AddChild('TemPromocao').NodeValue:=Qr_Temp.fieldbyName('TEMPROMOCAO').AsFloat;
         if Qr_Temp.FieldByName('PDCODCON').AsInteger>0 then
            NodeNivelB.AddChild('Controle').NodeValue:='1'
         else
            NodeNivelB.AddChild('Controle').NodeValue:='0';
         NodeNivelB.AddChild('Observacao').NodeValue:=' ';
         Qr_Temp.Next;
         end;


// INICIO

      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      la_tabelas  :='';
      if not DM1.Qr_Tid.Locate('TINOME','CADCLI',[]) then
         la_Empresas:='(CCODEMP=0'+IntTostr(codemp)+' or CCODEMP=0'+IntTostr(iif(codemp>100,-100,100))+')';

      fInnerJoin(0,'CADVEN','VCODEMP','CCODEMP','VCODVEN','CCODVEN');



      Qr_Temp.Close;
      Qr_Temp.SQL.Clear;
      Qr_Temp.SQL.Add('Select CCODCLI,CCNPJ,CCPF,CIE,CRG,CRAZAO,CDENOM,CLOG,CBAIRRO,CCIDADE,CUF '
                     +',CCEP,CNOMCON,CFONCON,CFONE01,CFONE02,CFAX,CEMAIL '
                     +',CTABPV,CCODPV,CDESC,CDESC,CDESC02,CDESC03,CLCRED '
                     +',0 AS LCREDDISP '
                     +',CDTANVISA,CDTVALV,CSTATUS,COBS01,COBS02,COBS03,COBS04,COBS05 '
                     +',CCODBCO01,CDTCAD,CDTUCPR '
                     +' from CADCLI'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' CSTATUS<9  ');

      mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
      if trim(mcinst2)<>'' then Qr_Temp.sql.Add(' and CCODVEN '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
      if trim(mcinst2)<>'' then Qr_Temp.sql.Add(' and CCODCLI '+mcinst2);

      mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
      if trim(mcinst2)<>'' then Qr_Temp.sql.Add(' and VCODSUP '+mcinst2);


      try
         Qr_Temp.Open;
      except
         Qr_Temp.sql.savetofile('c:\sql.txt');
         end;

      mItem:=0;
      While not Qr_Temp.Eof do
         begin
         mItem:=mItem+1;
         NodeNivelB := NodeNivelA.AddChild('CADCLI');

         // adiciona tag <prod> à partir da tag <det>
         NodeNivelB.AddChild('CodCli').NodeValue     :=Qr_Temp.fieldbyName('CCODCLI').AsString;
         if Qr_Temp.fieldbyName('CCNPJ').AsFloat>0 then
            begin
            NodeNivelB.AddChild('Cnpj_Cpf').NodeValue :=FormatFloat(pDFCNPJ, Qr_Temp.fieldbyName('CCNPJ').AsFloat);
            NodeNivelB.AddChild('Ie_Rg').NodeValue :=Qr_Temp.fieldbyName('CIE').AsString;
            end
         else
            begin
            NodeNivelB.AddChild('Cnpj_Cpf').NodeValue :=FormatFloat(pDFCNPF, Qr_Temp.fieldbyName('CCNPJ').AsFloat);
            NodeNivelB.AddChild('Ie_Rg').NodeValue :=Qr_Temp.fieldbyName('CRG').AsString;
            end;
         NodeNivelB.AddChild('RazSoc').NodeValue   :=Qr_Temp.fieldbyName('CRAZAO').AsString;
         NodeNivelB.AddChild('Fantasia').NodeValue   :=Qr_Temp.fieldbyName('CDENOM').AsString;
         NodeNivelB.AddChild('Endereco').NodeValue   :=Qr_Temp.fieldbyName('CLOG').AsString;
         NodeNivelB.AddChild('Bairro').NodeValue   :=Qr_Temp.fieldbyName('CBAIRRO').AsString;
         NodeNivelB.AddChild('Cidade').NodeValue   :=Qr_Temp.fieldbyName('CCIDADE').AsString;
         NodeNivelB.AddChild('UF').NodeValue       :=Qr_Temp.fieldbyName('CUF').AsString;
         NodeNivelB.AddChild('CEP').NodeValue       :=Qr_Temp.fieldbyName('CCEP').AsString;
         NodeNivelB.AddChild('Contato').NodeValue       :=Qr_Temp.fieldbyName('CNOMCON').AsString;
         NodeNivelB.AddChild('FonCon').NodeValue       :=Qr_Temp.fieldbyName('CFONCON').AsString;

         NodeNivelB.AddChild('Fone_01').NodeValue       :=Qr_Temp.fieldbyName('CFONE01').AsString;
         NodeNivelB.AddChild('Fone_02').NodeValue       :=Qr_Temp.fieldbyName('CFONE02').AsString;
         NodeNivelB.AddChild('Fax').NodeValue       :=Qr_Temp.fieldbyName('CFAX').AsString;
         NodeNivelB.AddChild('E_Mail').NodeValue       :=Qr_Temp.fieldbyName('CEMAIL').AsString;
         NodeNivelB.AddChild('Tab_Pv').NodeValue       :=Qr_Temp.fieldbyName('CTABPV').AsString;
         NodeNivelB.AddChild('CodPV').NodeValue       :=Qr_Temp.fieldbyName('CCODPV').AsString;
         NodeNivelB.AddChild('pDesc_01').NodeValue       :=mudavp(FormatFloat(mcasas, Qr_Temp.fieldbyName('CDESC').AsFloat));
         NodeNivelB.AddChild('pDesc_02').NodeValue       :=mudavp(FormatFloat(mcasas, Qr_Temp.fieldbyName('CDESC02').AsFloat));
         NodeNivelB.AddChild('pDesc_03').NodeValue       :=mudavp(FormatFloat(mcasas, Qr_Temp.fieldbyName('CDESC03').AsFloat));
         NodeNivelB.AddChild('LimCred').NodeValue       :=mudavp(FormatFloat(mcasas, Qr_Temp.fieldbyName('CLCRED').AsFloat));
         NodeNivelB.AddChild('LimCred_Disp').NodeValue       :=mudavp(FormatFloat(mcasas, Qr_Temp.fieldbyName('LCREDDISP').AsFloat));
         if Qr_Temp.fieldbyName('CDTANVISA').AsDateTime>pdatanula then
            NodeNivelB.AddChild('DataAnvisa').NodeValue       :=FormatDatetime(fdt2,  Qr_Temp.fieldbyName('CDTANVISA').AsDateTime)
         else
            NodeNivelB.AddChild('DataAnvisa').NodeValue       :='/  /';

         if Qr_Temp.fieldbyName('CDTVALV').AsDateTime>pdatanula then
            NodeNivelB.AddChild('DataVisa').NodeValue       :=FormatDatetime(fdt2,  Qr_Temp.fieldbyName('CDTVALV').AsDateTime)
         else
            NodeNivelB.AddChild('DataVisa').NodeValue       :='/  /';

         NodeNivelB.AddChild('SitCli').NodeValue       :=Qr_Temp.fieldbyName('CSTATUS').AsString;
         NodeNivelB.AddChild('Observacao').NodeValue   :=Qr_Temp.fieldbyName('COBS01').AsString
                                                        +' '+Qr_Temp.fieldbyName('COBS02').AsString
                                                        +' '+Qr_Temp.fieldbyName('COBS03').AsString
                                                        +' '+Qr_Temp.fieldbyName('COBS04').AsString
                                                        +' '+Qr_Temp.fieldbyName('COBS05').AsString;

         NodeNivelB.AddChild('CodBco').NodeValue       :=Qr_Temp.fieldbyName('CCODBCO01').AsString;

         if Qr_Temp.fieldbyName('CDTCAD').AsDateTime>pdatanula then
            NodeNivelB.AddChild('DatCad').NodeValue       :=FormatDatetime(fdt2,  Qr_Temp.fieldbyName('CDTCAD').AsDateTime)
         else
            NodeNivelB.AddChild('DatCad').NodeValue       :='/  /';

         if Qr_Temp.fieldbyName('CDTUCPR').AsDateTime>pdatanula then
            NodeNivelB.AddChild('DataUltCPR').NodeValue       :=FormatDatetime(fdt2,  Qr_Temp.fieldbyName('CDTUCPR').AsDateTime)
         else
            NodeNivelB.AddChild('DataUltCPR').NodeValue       :='/  /';

         NodeNivelB.AddChild('ObsGeral').NodeValue   :='';
         Qr_Temp.Next;
         end;
// TERMINO
// inicio plano de vendas

      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      la_tabelas  :='';
      if not DM1.Qr_Tid.Locate('TINOME','CADPV',[]) then
         la_Empresas:='(PVCODEMP=0'+IntTostr(codemp)+' or PVCODEMP=0'+IntTostr(iif(codemp>100,-100,100))+')';
      Qr_Temp.Close;
      Qr_Temp.SQL.Clear;
      Qr_Temp.SQL.Add('Select PVCODTIP,PVCODPV,PVNOME '
                     +' from CADPV'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' PVCODPV<>-9999  ');
      try
         Qr_Temp.Open;
      except
         Qr_Temp.sql.savetofile('c:\sql.txt');
         end;

      mItem:=0;
      While not Qr_Temp.Eof do
         begin
         mItem:=mItem+1;
         NodeNivelB := NodeNivelA.AddChild('CADPV');

        // adiciona tag <prod> à partir da tag <det>
         NodeNivelB.AddChild('TabPV').NodeValue       :=Qr_Temp.fieldbyName('PVCODTIP').AsString;
         NodeNivelB.AddChild('CodPV').NodeValue       :=Qr_Temp.fieldbyName('PVCODPV').AsString;
         NodeNivelB.AddChild('NomePV').NodeValue      :=Qr_Temp.fieldbyName('PVNOME').AsString;
         NodeNivelB.AddChild('Observacao').NodeValue  :='';
         NodeNivelB.AddChild('pAcres').NodeValue      :='0.00';
         NodeNivelB.AddChild('pDesc').NodeValue       :='0.00';
         NodeNivelB.AddChild('pDescExtra').NodeValue  :='-2.00';
         Qr_Temp.Next;
         end;

// plano de Vendas termino



// TERMINO
// inicio Vendedores

      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      la_tabelas  :='';
      if not DM1.Qr_Tid.Locate('TINOME','CADVEN',[]) then
         la_Empresas:='(VCODEMP=0'+IntTostr(codemp)+' or VCODEMP=0'+IntTostr(iif(codemp>100,-100,100))+')';
      Qr_Temp.Close;
      Qr_Temp.SQL.Clear;
      Qr_Temp.SQL.Add('Select VNOME,VCODVEN '
                     +' from CADVEN'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' VCODVEN<>-9999  ');
      mcinst2:=fItensListBox(0,lbx_codsup,OMITIR_SUP);
      if trim(mcinst2)<>'' then Qr_temp.Sql.Add(' and VCODSUP '+mcinst2);
      mcinst2:=fItensListBox(0,Lbx_Codven,OMITIR_VEN);
      if trim(mcinst2)<>'' then Qr_temp.Sql.Add(' and VCODVEN '+mcinst2);

      try
         Qr_Temp.Open;
      except
         Qr_Temp.sql.savetofile('c:\sql.txt');
         end;


      mItem:=0;
      While not Qr_Temp.Eof do
         begin
         mItem:=mItem+1;
         NodeNivelB := NodeNivelA.AddChild('CADVEN');
        // adiciona tag <prod> à partir da tag <det>
         NodeNivelB.AddChild('CodVen').NodeValue       :=Qr_Temp.fieldbyName('VCODVEN').AsString;
         NodeNivelB.AddChild('NomVen').NodeValue       :=Qr_Temp.fieldbyName('VNOME').AsString;
         Qr_Temp.Next;
         end;
// Vendedores termino


// inicio Banco

      la_Join     :='';
      la_instrucao:='';
      la_empresas :='';
      la_tabelas  :='';
      if not DM1.Qr_Tid.Locate('TINOME','CADBCO',[]) then
         la_Empresas:='(BCCODEMP=0'+IntTostr(codemp)+' or BCCODEMP=0'+IntTostr(iif(codemp>100,-100,100))+')';
      Qr_Temp.Close;
      Qr_Temp.SQL.Clear;
      Qr_Temp.SQL.Add('Select BCBANCO,BCCODBCO '
                     +' from CADBCO'+iif(la_tabelas='','',',')+la_tabelas
                    +'       '+la_Join
                    +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                    +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                    +' BCCODBCO<>-9999  ');
      try
         Qr_Temp.Open;
      except
         Qr_Temp.sql.savetofile('c:\sql.txt');
         end;


      mItem:=0;
      While not Qr_Temp.Eof do
         begin
         NodeNivelB := NodeNivelA.AddChild('CADBCO');

         mItem:=mItem+1;

        // adiciona tag <prod> à partir da tag <det>
         NodeNivelB.AddChild('CodBco').NodeValue       :=Qr_Temp.fieldbyName('BCCODBCO').AsString;
         NodeNivelB.AddChild('NomBco').NodeValue       :=Qr_Temp.fieldbyName('BCBANCO').AsString;
         Qr_Temp.Next;
         end;
// Banco termino


// parametros

      mItem:=1;
      NodeNivelB := NodeNivelA.AddChild('CADPAR');

//      adiciona tag <prod> à partir da tag <det>
      NodeNivelB.AddChild('TipoUsr').NodeValue      :=mSigla;
      NodeNivelB.AddChild('Codigo').NodeValue       :=mCodigo;
      NodeNivelB.AddChild('Nome_Usuario').NodeValue :=mNomUsr;
      NodeNivelB.AddChild('NumDec_Qtd').NodeValue   :=DM1.Tb_PargerPCASQTD.AsString;
      NodeNivelB.AddChild('NumDec_PU').NodeValue    :=DM1.Tb_PargerPCASASPU.AsString;
      NodeNivelB.AddChild('NumDec_OU').NodeValue    :=DM1.Tb_PargerPCASAS.AsString;
      NodeNivelB.AddChild('EndIPExterno').NodeValue :=DM1.Tb_PargerPDM_ENDIP.AsString;
      NodeNivelB.AddChild('EndIPInterno').NodeValue :=DM1.Tb_PargerPDM_ENDIP_INTERNO.AsString;
      NodeNivelB.AddChild('pDescMax').NodeValue     :='0';
      NodeNivelB.AddChild('pQtdSel_Cli').NodeValue  :='30';
      NodeNivelB.AddChild('pQtdSel_Pro').NodeValue  :='30';


   xmlDoc.SaveToFile(mNomArq+'.$$$');
   RenameFile(mNomArq+'.$$$',mNomArq+'.XML');
   result:=true;
   end
finally
   xmlDoc:=nil;
   end;





end;

procedure TFrm_DM_Exportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
  Action := caFree;
  
end;

procedure TFrm_DM_Exportar.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DM_Exportar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;

end;

procedure TFrm_DM_Exportar.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrm_DM_Exportar.bbProcessarClick(Sender: TObject);
begin
if FGerarExportacao(0) then
   fmensagem('Concluido!',0,['0'],0);

end;

end.


unit s_NotaPromissoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, StdCtrls,
  Buttons, Mask, ToolEdit, RLReport, RLFilters, RLPDFFilter, S_SelEmp;

type
  TFrm_NotaPromissoria = class(TForm)
    PageControl1: TPageControl;
    tsGeral: TTabSheet;
    tsNotaPromissoria: TTabSheet;
    Qr_NtPromissoria: TQuery;
    Qr_NtPromissoriaCRDTVCTO: TDateTimeField;
    Qr_NtPromissoriaCRVALOR: TFloatField;
    Qr_NtPromissoriaCRAZAO: TStringField;
    Qr_NtPromissoriaNUMERO: TStringField;
    Qr_NtPromissoriatexto_aos: TStringField;
    Qr_NtPromissoriatexto_nominal: TStringField;
    Qr_NtPromissoriatexto_quantia: TStringField;
    Qr_NtPromissoriatexto_moeda: TStringField;
    Qr_NtPromissoriacidade_pagavel: TStringField;
    Qr_NtPromissoriaemitente: TStringField;
    Qr_NtPromissoriacnpj_cpf_emitente: TStringField;
    Qr_NtPromissoriaendereco_emitente: TStringField;
    Qr_NtPromissoriacidade_data: TStringField;
    Qr_NtPromissoriacpf_cnpj_destinatario: TStringField;
    Qr_NtPromissoriadata_mes_ano: TStringField;
    Qr_NtPromissoriaTextoNormal: TStringField;
    Qr_NtPromissoriatexto_branco: TStringField;
    src_ntPromissoria: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    bbAplicar: TBitBtn;
    bbNTPromissoria: TBitBtn;
    bbSair: TBitBtn;
    Label1: TLabel;
    edt_datini: TDateEdit;
    Label2: TLabel;
    edt_datfin: TDateEdit;
    Label3: TLabel;
    cb_datapesq: TComboBox;
    Label4: TLabel;
    edt_numini: TEdit;
    Label5: TLabel;
    edt_numfin: TEdit;
    Label6: TLabel;
    edt_parc: TEdit;
    Edit1: TEdit;
    Label7: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    RLPDFFilter1: TRLPDFFilter;
    RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw8: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw6: TRLDraw;
    lbl_capt_aval: TRLAngleLabel;
    lbl_cap_assin_aval: TRLAngleLabel;
    lbl_aval_cnpjcpf01: TRLAngleLabel;
    lbl_aval_cnpjcpf02: TRLAngleLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBText1: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDraw5: TRLDraw;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBt_cidade_pagavel: TRLDBText;
    RLDBT_emitente: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBT_cnpj_cpf_emitente: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBT_cidade_data: TRLDBText;
    RLDBT_CRAZAO: TRLDBText;
    RLDBT_cpf_cnpj_destinatario: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBT_data_mes_ano: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    Qr_NtPromissoriaORIGEM: TStringField;
    Qr_NtPromissorianome_devedor: TStringField;
    Qr_NtPromissoriaENDERECO: TStringField;
    Qr_NtPromissoriaCIDADE: TStringField;
    Qr_NtPromissoriaUF: TStringField;
    Qr_NtPromissoriaCCNPJ: TStringField;
    Qr_NtPromissoriaCCPF: TStringField;
    Qr_NtPromissoriaCRDTEMIS: TDateTimeField;
    procedure Qr_NtPromissoriaCalcFields(DataSet: TDataSet);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_numfinExit(Sender: TObject);
    procedure edt_numiniExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbNTPromissoriaClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        Form_SelEmp : TFrm_SelEmp;

  end;

var
  Frm_NotaPromissoria: TFrm_NotaPromissoria;

implementation

uses Func, S_DM1, lerarq, func_excecoes;

{$R *.dfm}

procedure TFrm_NotaPromissoria.Qr_NtPromissoriaCalcFields(
  DataSet: TDataSet);
begin

Qr_NtPromissoriadata_mes_ano.Value:=Formatdatetime('dd', Qr_NtPromissoriaCRDTVCTO.Asdatetime)+' DE '+
  uppercase(nMes(Qr_NtPromissoriaCRDTVCTO.Asdatetime))+' DE '+Formatdatetime('yyyy', Qr_NtPromissoriaCRDTVCTO.Asdatetime);
Qr_NtPromissoriatexto_aos.Value:=TodasPrimeirasMaiusculas(lowercase('Ao(s) '+Extenso2(valint(FormatDateTime('dd',Qr_NtPromissoriaCRDTVCTO.AsDateTime)))+' dia(s) '
                                +'do mes de '+nMes(Qr_NtPromissoriaCRDTVCTO.Asdatetime)+' de '+
                                Extenso2(valint(FormatDateTime('yyyy',Qr_NtPromissoriaCRDTVCTO.AsDateTime)))
                                +' pagarei por esta única via de ')) +'NOTA PROMISSÓRIA';
Qr_NtPromissoriatexto_quantia.Value  :='R$'+FormatFloat(mcasas ,Qr_NtPromissoriaCRVALOR.AsFloat)+' '+TodasPrimeirasMaiusculas(extenso(Qr_NtPromissoriaCRVALOR.AsFloat));
Qr_NtPromissoriacidade_data.Value                :=TodasPrimeirasMaiusculas(lowercase(DM1.Tb_EmpCIDADE.AsString+', '
                                                 +Formatdatetime('dd', Qr_NtPromissoriaCRDTVCTO.Asdatetime)+' de '
                                                 +nMes(Qr_NtPromissoriaCRDTVCTO.Asdatetime)
                                                 +' de '+FormatDateTime('yyyy',Qr_NtPromissoriaCRDTVCTO.AsDateTime)));



if Qr_NtPromissoriaORIGEM.AsString='C' then
   begin
   Qr_NtPromissoriacidade_pagavel.Value :=TodasPrimeirasMaiusculas(lowercase( Qr_NtPromissoriaCIDADE.AsString+' - '+Qr_NtPromissoriaUF.AsString));
   Qr_NtPromissoriaemitente.Value       :=TodasPrimeirasMaiusculas(lowercase(Qr_NtPromissoriaCRAZAO.AsString));
   if Qr_NtPromissoriaCCNPJ.AsFloat>0 then
      Qr_NtPromissoriacnpj_cpf_emitente.Value  :=MaskCPFCNPJ(Qr_NtPromissoriaCCNPJ.AsString)
   else
      Qr_NtPromissoriacnpj_cpf_emitente.Value  :=MaskCPFCNPJ(Qr_NtPromissoriaCCPF.AsString);
   Qr_NtPromissoriaendereco_emitente.Value          :=TodasPrimeirasMaiusculas(Lowercase(Qr_NtPromissoriaENDERECO.AsString));

   Qr_NtPromissoriatexto_nominal.Value  :='a '+insere2(DM1.Tb_EmpRAZAO.AsString,' ',140);
   Qr_NtPromissoriatexto_nominal.Value  :=TodasPrimeirasMaiusculas(Lowercase(Qr_NtPromissoriatexto_nominal.Value));
   Qr_NtPromissoriatexto_nominal.Value  :=Qr_NtPromissoriatexto_nominal.Value+'CNPJ: '+MaskCPFCNPJ(DM1.Tb_EmpCGC.AsString);
   Qr_NtPromissorianome_devedor.Value :=Qr_NtPromissoriaCRAZAO.AsString;

   end
else
   begin


   Qr_NtPromissoriacidade_pagavel.Value :=TodasPrimeirasMaiusculas(lowercase( DM1.Tb_EmpCIDADE.AsString+' - '+DM1.Tb_EmpUF.AsString));
   Qr_NtPromissoriaemitente.Value       :=TodasPrimeirasMaiusculas(lowercase(DM1.Tb_EmpRAZAO.AsString));
   Qr_NtPromissoriacpf_cnpj_destinatario.Value       :=MaskCPFCNPJ(DM1.Tb_empCGC.Asstring);
   Qr_NtPromissoriaendereco_emitente.Value          :=TodasPrimeirasMaiusculas(Lowercase(DM1.Tb_EmpENDERECO.AsString));
   Qr_NtPromissoriacnpj_cpf_emitente.Value       :=MaskCPFCNPJ(DM1.Tb_EmpCGC.AsString);


   Qr_NtPromissoriatexto_nominal.Value  :='a '+insere2(Qr_NtPromissoriaCRAZAO.AsString,' ',140);
   Qr_NtPromissoriatexto_nominal.Value  :=TodasPrimeirasMaiusculas(Lowercase(Qr_NtPromissoriatexto_nominal.Value));
   if Qr_NtPromissoriaCCNPJ.AsFloat>0 then
      Qr_NtPromissoriatexto_nominal.Value  :=Qr_NtPromissoriatexto_nominal.Value+'CNPJ: '+MaskCPFCNPJ(Qr_NtPromissoriaCCNPJ.AsString)
   else
      Qr_NtPromissoriatexto_nominal.Value  :=Qr_NtPromissoriatexto_nominal.Value+'CPF: '+MaskCPFCNPJ(Qr_NtPromissoriaCCPF.AsString);




   if Qr_NtPromissoriaCCNPJ.AsFloat>0 then
      Qr_NtPromissoriacpf_cnpj_destinatario.Value       :=MaskCPFCNPJ(Qr_NtPromissoriaCCNPJ.AsString)
   else
      Qr_NtPromissoriacpf_cnpj_destinatario.Value       :=MaskCPFCNPJ(Qr_NtPromissoriaCCPF.AsString);

   Qr_NtPromissorianome_devedor.Value := DM1.Tb_EmpRAZAO.Asstring;
   end;

Qr_NtPromissorianome_devedor.Value :=TodasPrimeirasMaiusculas(Lowercase(Qr_NtPromissoriaCRAZAO.AsString));


end;

procedure TFrm_NotaPromissoria.edt_datiniExit(Sender: TObject);
begin
if (fsonumero(edt_datini.text)>0) and (fsonumero(edt_datfin.text)=0) then
   edt_datfin.text:=edt_datini.text;


end;

procedure TFrm_NotaPromissoria.edt_numfinExit(Sender: TObject);
begin
edt_numfin.text:=fdeixanum(edt_numfin.text);

end;

procedure TFrm_NotaPromissoria.edt_numiniExit(Sender: TObject);
begin
edt_numini.text:=fdeixanum(edt_numini.text);
if (fsonumero(edt_numini.text)>0) and (fsonumero(edt_numfin.text)=0) then
   edt_numfin.text:=edt_numini.text;

end;

procedure TFrm_NotaPromissoria.CODFORKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_RCpag',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end;

end;

procedure TFrm_NotaPromissoria.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      BEGIN
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codfor.text := '';
      codfor.SetFocus;
      END
   else
      begin

      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);


      codfor.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_NotaPromissoria.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);


end;

procedure TFrm_NotaPromissoria.FormCreate(Sender: TObject);
begin
RLDetailGrid1.Borders.Drawtop    :=true;
//RLDetailGrid1.Borders.Drawbottom :=true;
RLDetailGrid1.Borders.Drawleft   :=true;
RLDetailGrid1.Borders.DrawRight  :=true;

Qr_ntPromissoriaCRVALOR.displayformat:=mcasas;

Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
tsNotaPromissoria.TabVisible:=false;

edt_datini.Date:=date;

end;

procedure TFrm_NotaPromissoria.bbAplicarClick(Sender: TObject);
var
mCampo_data: string;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';

fInnerJoin(0,'CADFOR','FCODEMP' ,'CACODEMP','FCODFOR' ,'CACODFOR');
la_Empresas:=fEmpresas_Selecionadas('CADDAP','CACODEMP',Form_SelEmp.CLB_EMPRESAS);


Qr_NtPromissoria.close;
Qr_NtPromissoria.SQL.clear;
Qr_NtPromissoria.sql.add('Select CADTVCTO AS CRDTVCTO,CADTEMIS AS CRDTEMIS,CANUMERO || '+QuotedStr('-')+' || CADESD AS NUMERO, CAVALOR as CRVALOR '
                        +','+QuotedStr('P')+' AS ORIGEM '
                        +',FNLOG AS ENDERECO '
                        +',FCIDADE AS CIDADE '
                        +',FUF AS UF '

                        +',FRAZAO AS CRAZAO,FCGC AS CCNPJ,FCGC AS CCPF from CADDAP '+iif(la_tabelas='','',',')+la_tabelas
                         +'       '+la_Join
                         +'       where CACODEMP=0'+IntToStr(codemp)+iif(la_Empresas='','',' and ')+la_Empresas
                         +'      '+        iif(la_instrucao='','',' and ')+la_instrucao);

Qr_NtPromissoria.SQL.Add(' and CASTATUS<>9');

Qr_NtPromissoria.SQL.Add(' and CADUP=4 ');


mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   Qr_NtPromissoria.SQL.add(' AND CACODFOR '+mcinst2);

if cb_datapesq.itemindex=0 then
   mCampo_data:='CADTEMIS'
else
   mCampo_data:='CADTVCTO';


if ValFloat(edt_numini.Text)>0 then
   Qr_NtPromissoria.SQL.add(' and CANUMERO>=0'+Trim(edt_numini.Text));
if ValFloat(edt_numfin.Text)>0 then
   Qr_NtPromissoria.SQL.add(' and CANUMERO<=0'+Trim(edt_numfin.Text));
if Trim(edt_parc.Text)<>'' then
   Qr_NtPromissoria.SQL.add(' and CADESD='+chr(39)+Trim(edt_parc.Text)+chr(39));
if trim(edt_datini.Text)<>'/  /' then
   Qr_NtPromissoria.SQL.add(' and '+mcampo_data+'>='+chr(39)+FormatDatetime(fdt, StrtoDate(edt_datini.Text))+chr(39));
if trim(edt_datfin.Text)<>'/  /' then
   Qr_NtPromissoria.SQL.add(' and '+mcampo_data+'<='+chr(39)+FormatDatetime(fdt, StrtoDate(edt_datfin.Text))+chr(39));


try
   Qr_NtPromissoria.open;
except on e : exception do
   ex_erroSql_Novo(Qr_NtPromissoria,324,'func Erro:'+e.Message ,'CADDAR');
   end;

end;

procedure TFrm_NotaPromissoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
freeandnil(Form_SelEmp);
if (FormState<>[fsModal]) then
   Action := caFree

end;

procedure TFrm_NotaPromissoria.bbNTPromissoriaClick(Sender: TObject);
begin
if Qr_NtPromissoria.Active=false then
   bbAplicarClick(self);
if Qr_NtPromissoria.IsEmpty then
   begin
   MessageDlg('Não ha nada a ser impresso!',mtWarning,[mbOk],0);
   exit;
   end;
RLReport1.PreviewModal;
end;

procedure TFrm_NotaPromissoria.bbSairClick(Sender: TObject);
begin
close;
end;

end.

unit S_EtiVol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,func,S_DM1,db,dbtables, ExtCtrls, Buttons, Grids,
  DBGrids,S_Impres;

type
  TFrm_EtiVol = class(TForm)
    Panel1: TPanel;
    CB_PEND: TCheckBox;
    PEDF: TEdit;
    Label4: TLabel;
    PEDI: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    GroupBox1: TGroupBox;
    bbEmitir: TBitBtn;
    bbSair: TBitBtn;
    Qr_Ped: TQuery;
    Qr_PedP1CODCLI: TFloatField;
    Qr_PedP1CHAVE: TFloatField;
    Qr_PedP1NUMNF: TFloatField;
    Qr_PedP1QTDVOL: TFloatField;
    Qr_PedCRAZAO: TStringField;
    Qr_PedCLOG: TStringField;
    Qr_PedCBAIRRO: TStringField;
    Qr_PedCCIDADE: TStringField;
    Qr_PedCUF: TStringField;
    DBGrid1: TDBGrid;
    Src_Ped: TDataSource;
    bbSelecionar: TBitBtn;
    Qr_PedP1DATAP: TDateTimeField;
    Qr_PedP1ETIVOL: TFloatField;
    Qr_PedP1CODEMP: TFloatField;
    Qr_PedP1LOTSEQ: TFloatField;
    Edit1: TEdit;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure PEDIExit(Sender: TObject);
    procedure PEDFExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbSelecionarClick(Sender: TObject);
    procedure bbEmitirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    form_impres_etivol: TFrm_Impres;
  end;

var
  Frm_EtiVol: TFrm_EtiVol;

implementation

uses func_excecoes;

{$R *.dfm}

procedure TFrm_EtiVol.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      Fmensagem('Data Invalida!',0,['0'],0);
      mdt1.SetFocus;
      end;
   end;

end;

procedure TFrm_EtiVol.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      Fmensagem('Data Invalida!',0,['0'],0);
      mdt2.SetFocus;
      end;
   end;

end;

procedure TFrm_EtiVol.PEDIExit(Sender: TObject);
begin
PEDI.Text:=FloatTostr(fsonumero(PEDI.Text));
end;

procedure TFrm_EtiVol.PEDFExit(Sender: TObject);
begin
PEDF.Text:=FloatTostr(fsonumero(PEDF.Text));
end;

procedure TFrm_EtiVol.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_EtiVol.bbSelecionarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      Fmensagem('Data Inicial maior que Final, Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (fsonumero(PEDI.Text)<>0) and (fsonumero(PEDF.Text)<>0) then
   begin
   if fsonumero(PEDF.Text)<fsonumero(PEDI.Text) then
      begin
      Fmensagem('Numero inicial maior que final, invalido!',0,['0'],0);
      PEDF.SetFocus;
      exit;
      end;
   end;
Qr_Ped.Close;
Qr_Ped.SQL.Clear;
Qr_Ped.SQL.Add('Select P1CODCLI,P1LOTSEQ,P1CHAVE,P1DATAP,P1NUMNF,P1QTDVOL,P1ETIVOL,CRAZAO,CLOG,CBAIRRO, '
              +'       P1CODEMP, '
              +'            CCIDADE,CUF '
              +' from CADP01,CADCLI where P1QTDVOL>0 and '
              +iif(DM1.Qr_Tid.locate('TINOME','CADPED',[]),'', ' P1CODEMP=0'+IntTostr(codemp)+' and ')
              +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'', ' CCODEMP=P1CODEMP and ')
              +' CCODCLI=P1CODCLI '
              +iif(CB_PEND.Checked,' and P1ETIVOL<>1','')
              );
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_Ped.Sql.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(MDT1.Text)));

   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_Ped.Sql.Add(fFormatdatetimeParaConsulta('P1DATAP',false,StrToDate(MDT2.Text)));
   end;

if fsonumero(PEDI.Text)>0 then
   begin
   Qr_Ped.SQL.Add(' and P1CHAVE>=0'+Trim(PEDI.Text));
   end;

if fsonumero(PEDF.Text)>0 then
   begin
   Qr_Ped.SQL.Add(' and P1CHAVE<=0'+Trim(PEDF.Text));
   end;
Qr_Ped.SQL.add(' and P1ORDEM=01 ');
Qr_Ped.open;


end;

procedure TFrm_EtiVol.bbEmitirClick(Sender: TObject);
var
mqtd,mcol: Integer;
mnumnf: String;

begin
if not Qr_Ped.Active then
   begin
   Fmensagem('Primeiro Click no botão Selecionar!',0,['0'],0);
   exit;
   end;
Qr_Ped.first;
if Qr_Ped.Eof then
   begin
   Fmensagem('Nada ha ser impresso na condição Solicitada!',0,['0'],0);
   exit;
   end;
testeform := TFrm_EtiVol(FindGlobalComponent('form_impres_etivol'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_etivol);

//fimpresajustaimp(0,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
//fimpresajustaimp(0,136,12,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_etivol.fimpresajustaimp(3,136,Valint(Edit1.Text),6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
form_impres_etivol.mlin:=0;
mcol:=14;
While not Qr_Ped.eof do
   begin
   for mqtd:=1 to Qr_PedP1QTDVOL.AsInteger do
      begin
      form_impres_etivol.mlin:=1;
      mnumnf:=FormatFloat('000000',Qr_PedP1NUMNF.Value);
      if DM1.Tb_PargerPAGRUDUP.Value=1 then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.add('Select P1NUMNF from CADP01 where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(codemp)+' and ')
                           +' P1LOTSEQ=0'+Qr_PedP1LOTSEQ.AsString
                           +' and P1CHAVE=0'+Qr_PedP1CHAVE.AsString
                           +' order by P1NUMNF ');

         DM1.Query2.Open;
         mnumnf:='';
         While not  DM1.Query2.Eof do
            begin
            if Trim(mnumnf)='' then
               mnumnf:=mnumnf+DM1.Query2.Fields[0].AsString
//               mnumnf:=mnumnf+FormatFloat('000000',DM1.Query2.Fields[0].Value)
            else
               mnumnf:=mnumnf+'/'+DM1.Query2.Fields[0].AsString;
//               mnumnf:=mnumnf+'/'+copy(FormatFloat('000000',DM1.Query2.Fields[0].Value),4,3);
            DM1.Query2.Next;
            end;
         end;
      form_impres_etivol.mlin:=form_impres_etivol.mlin+2;
      form_impres_etivol.RDprint1.ImpF(form_impres_etivol.mlin,mcol+01,Qr_PedCRAZAO.Value,form_impres_etivol.m12ccp);
      form_impres_etivol.mlin:=form_impres_etivol.mlin+1;
      form_impres_etivol.RDprint1.ImpF(form_impres_etivol.mlin,mcol+01,Qr_PedCLOG.Value,form_impres_etivol.m12ccp);
      form_impres_etivol.mlin:=form_impres_etivol.mlin+1;
      form_impres_etivol.RDprint1.ImpF(form_impres_etivol.mlin,mcol+01,Qr_PedCBAIRRO.Value,form_impres_etivol.m12ccp);
      form_impres_etivol.mlin:=form_impres_etivol.mlin+1;
      form_impres_etivol.RDprint1.ImpF(form_impres_etivol.mlin,mcol+01,Trim(Qr_PedCCIDADE.Value)+'-'+Qr_PedCUF.Value,form_impres_etivol.m12ccp);
      form_impres_etivol.mlin:=form_impres_etivol.mlin+1;
      form_impres_etivol.RDprint1.ImpF(form_impres_etivol.mlin,mcol+01,'Volume: '+IntTostr(mqtd)+'/'+Qr_PedP1QTDVOL.AsString,form_impres_etivol.m12ccp);
      form_impres_etivol.mlin:=form_impres_etivol.mlin+1;
      if Qr_PedP1NUMNF.Value>0 then
         form_impres_etivol.RDprint1.ImpF(form_impres_etivol.mlin,mcol+01,'NF.: '+mnumnf,form_impres_etivol.m12ccp);
      form_impres_etivol.mlin:=form_impres_etivol.mlin+5;
      form_impres_etivol.RDprint1.Novapagina;
      end;
   Qr_Ped.Next;
   if Qr_Ped.Eof then
      if form_impres_etivol.RDprint1.Setup then form_impres_etivol.RDprint1.Fechar;
   end;
form_impres_etivol.free;
form_impres_etivol:=nil;

if fmensagem('A Impressão Foi Bem Sucedida?',0,['1','2'],2)<>MrYes then
   exit;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
DM1.Query2.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query2.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query2.SQL.add('Update CADP01 set P1ETIVOL=1 '
                  +' where P1CODEMP=:CODEMP '
                  +' and   P1LOTSEQ=:LOTSEQ '
                  +' and   P1CHAVE =:CHAVE ');
Qr_Ped.First;
While not Qr_Ped.Eof do
   begin
   if Qr_PedP1ETIVOL.Value=1 then
      begin
      Qr_Ped.Next;
      Continue;
      end;
   DM1.Query2.ParamByName('CODEMP').AsFloat:=Qr_PedP1CODEMP.Value;
   DM1.Query2.ParamByName('CHAVE').AsFloat :=Qr_PedP1CHAVE.Value;
   DM1.Query2.ParamByName('LOTSEQ').AsFloat:=Qr_PedP1LOTSEQ.Value;
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,804,'Manped','CADP01');
      exit;
      end;
   Qr_Ped.Next;
   end;
Qr_Ped.Close;
end;

procedure TFrm_EtiVol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

end.

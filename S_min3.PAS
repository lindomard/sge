unit S_min3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  db, dbtables, func, S_DM1, S_Impres, ExtCtrls, Mask, StdCtrls, DBCtrls,
  Buttons, Grids, DBGrids,lerarq,S_Tra;

type
  TFrm_min3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel_cab: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    Label2: TLabel;
    MDATA: TMaskEdit;
    Label3: TLabel;
    NOMENT: TEdit;
    Label4: TLabel;
    CNPF: TEdit;
    Label5: TLabel;
    RG: TEdit;
    BBINCLUIR: TBitBtn;
    BBLOCALIZAR: TBitBtn;
    BBALTERAR: TBitBtn;
    BBEXCLUIR: TBitBtn;
    BBGRAVAR: TBitBtn;
    BBLIMPAR: TBitBtn;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    bbitens_alter: TBitBtn;
    bbiten_excluir: TBitBtn;
    BitBtn3: TBitBtn;
    Tb_min3: TQuery;
    Tb_min3CM2CODEMP: TFloatField;
    Tb_min3CM2CODMIN: TFloatField;
    Tb_min3CM2SEQ: TFloatField;
    Tb_min3CM2TIPO: TStringField;
    Tb_min3CM2NUMERO: TFloatField;
    Tb_min3CM2VALOR: TFloatField;
    Src_min3: TDataSource;
    DBGrid1: TDBGrid;
    U_min3: TUpdateSQL;
    Tb_min3CM2DTCONF: TDateTimeField;
    Tb_min3CM2USRCONF: TFloatField;
    Tb_min3CM2CLIFOR: TStringField;
    Tb_min3CM2CODIGO: TFloatField;
    Tb_min3CM2TIPDOC: TStringField;
    Tb_min3CM2NUMDOC: TFloatField;
    Tb_min3CM2OBS01: TStringField;
    Tb_min3CM2OBS02: TStringField;
    Tb_min3CM2OBS03: TStringField;
    Tb_min3CM2LOTSEQ: TFloatField;
    Tb_min3CM2LOTSEQ_CP: TFloatField;
    Tb_min3CM2QTDVOL: TFloatField;
    Tb_min3CM2PESOB: TFloatField;
    Tb_min3CM2PESOL: TFloatField;
    BitBtn4: TBitBtn;
    Label7: TLabel;
    MDATAF: TMaskEdit;
    empresa_aux: TEdit;
    Label6: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    bbConsulta: TBitBtn;
    RadioGroup1: TRadioGroup;
    val_acum: TQuery;
    val_acumCM2CODEMP: TFloatField;
    val_acumCM2CODMIN: TFloatField;
    val_acumCM2CODIGO: TFloatField;
    val_acumVALOR: TFloatField;
    val_acumQTDVOL: TFloatField;
    val_acumPESOB: TFloatField;
    val_acumPESOL: TFloatField;
    temp: TQuery;
    val_acum1: TQuery;
    Panel5: TPanel;
    comp_simpl: TRadioGroup;
    BitBtn6: TBitBtn;
    Tb_min3CM2PED_CODEMP: TFloatField;
    Tb_min3CM2QTDITENS: TFloatField;
    Tb_min3CM2QTDUND: TFloatField;
    Tb_min3CM2TIPOPED: TFloatField;
    Tb_min3CM2CODCLI: TFloatField;
    Tb_min3CM2VALFRE: TFloatField;
    Tb_min3CM2QTDPAG: TFloatField;
    Tb_min3CM2DATANF: TDateTimeField;
    Tb_min3CM2CODBCO: TFloatField;
    Tb_min3NOMCLI: TStringField;
    procedure BBSAIRClick(Sender: TObject);
    procedure BBINCLUIRClick(Sender: TObject);
    procedure BBLOCALIZARClick(Sender: TObject);
    procedure BBALTERARClick(Sender: TObject);
    procedure BBEXCLUIRClick(Sender: TObject);
    procedure BBGRAVARClick(Sender: TObject);
    procedure BBLIMPARClick(Sender: TObject);
    procedure bbitens_alterClick(Sender: TObject);
    procedure bbiten_excluirClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Tb_min3AfterInsert(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure MDATAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure Tb_min3BeforePost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure bbConsultaClick(Sender: TObject);
    procedure imp_detalhe;
    procedure imp_cabeca;
    procedure busca_doc;
    procedure busca_nf;
    procedure imp_cab;
    procedure ver_Valores;
    procedure BitBtn6Click(Sender: TObject);
    procedure detalhe_simples;
    procedure total_simples;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MDATAFExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    form_impres_min3: TFrm_Impres;
    mlin, mpag  : Integer;
    mobs,mlinha : String;
    mcodcli     : Integer;
    junta_nf    : string;
    junta_doc   : string;
    mesma_nota  : integer;
    nota_aux    : integer;
    qtdvol      : real;
    pesob       : real;
    pesol       : real;
    total       : real;
    qtdvol_simp : real;
    total_simp  : real;

  end;
var
  Frm_min3: TFrm_min3;
  mstatus,mitem: Integer;
  mtipmin: Integer;
  mchave    : Integer=0;

implementation

uses S_DM4, S_PedCli, S_SelPed, S_selmin;

{$R *.DFM}

procedure TFrm_min3.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_min3.BBINCLUIRClick(Sender: TObject);
begin
bbConsulta.Enabled  := false;
CHAVE.Enabled   :=false;
MDATA.Enabled   :=true;
MDATAF.Enabled  :=true;
NOMENT.Enabled  :=true;
CNPF.Enabled    :=true;
RG.Enabled      :=true;
CODTRA.Enabled  :=true;

//Panel_Cab.Enabled  :=true;
Panel3.Enabled  :=true;
DBGrid1.ReadOnly:=false;
//Panel1.Enabled:=True;

Tb_min3.Close;
Tb_min3.SQL.Clear;
Tb_min3.SQL.Add('SELECT CM2CODEMP '
               +',CM2LOTSEQ '
               +',CM2CODMIN '
               +',CM2SEQ'
               +',CM2TIPO'
               +',CM2LOTSEQ_CP'
               +',CM2NUMERO'
               +',CM2CLIFOR '
               +',CM2CODIGO '
               +',CM2TIPDOC '
               +',CM2NUMDOC '
               +',CM2QTDVOL '
               +',CM2PESOB '
               +',CM2PESOL '
               +',CM2VALOR '
               +',CM2OBS01 '
               +',CM2OBS02 '
               +',CM2OBS03 '
               +',CM2DTCONF '
               +',CM2USRCONF '
               +',CM2PED_CODEMP '
               +',CM2QTDITENS '
               +',CM2QTDUND '
               +',CM2TIPOPED '
               +',CM2CODCLI '
               +',CM2VALFRE'
               +',CM2QTDPAG '
               +',CM2CODBCO '
               +',CM2DATANF '
               +',CRAZAO AS NOMCLI from CADMIN2, CADCLI '
               +' where CM2CODEMP=0 '
               +' AND CM2LOTSEQ=0 '
               +' AND CM2CODMIN=0 '
               +' AND CCODCLI=CM2CODCLI ' );
Tb_min3.Open;
MDATA.Text:=FormatDateTime(fdt2,date);
CHAVE.Text:='';
NOMENT.Text:='';
CNPF.Text  :='';
RG.Text    :='';
MDATA.SetFocus;
mStatus:=0;
CHAVE.Enabled:=False;

BBINCLUIR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBALTERAR.Enabled  :=False;
BBEXCLUIR.Enabled  :=false;
BBGRAVAR.Enabled   :=true;
BBIMPRIMIR.Enabled :=False;

end;

procedure TFrm_min3.BBLOCALIZARClick(Sender: TObject);
begin

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select max(CM1CODMIN) from CADMIN1 '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' where CM1CODEMP=0'+IntToStr(codemp)));
DM1.Query1.Open;
CHAVE.Text:=FormatFloat('000000',DM1.Query1.Fields[0].AsInteger);
CHAVE.Update;
CHAVEExit(SELF);
CHAVE.Enabled      :=True;
bbConsulta.Enabled :=true;

BBINCLUIR.Enabled  :=true;
BBLOCALIZAR.Enabled:=true;
BBALTERAR.Enabled  :=true;
BBEXCLUIR.Enabled  :=true;
BBGRAVAR.Enabled   :=false;
BBIMPRIMIR.Enabled :=true;

if not DM1.Query1.IsEmpty then
   BBIMPRIMIR.Enabled :=true
   else BBIMPRIMIR.Enabled :=true;
//Panel1.Enabled:=True;

//CHAVE.SetFocus;
//DBGrid1.SetFocus;
end;

procedure TFrm_min3.BBALTERARClick(Sender: TObject);
begin
{Status do pedido 0-Somente digitado
                  1-Confirmado Entrada
}
BBINCLUIR.Enabled  :=False;
BBALTERAR.Enabled  :=False;
BBLOCALIZAR.Enabled:=False;
BBEXCLUIR.Enabled  :=False;
BBIMPRIMIR.Enabled :=False;
BBGRAVAR.Enabled   :=True;
//Panel1.Enabled     :=True;
//Panel_Cab.Enabled  :=true;

bbConsulta.Enabled  := false;
CHAVE.Enabled   :=false;
MDATA.Enabled   :=true;
MDATAF.Enabled  :=true;
NOMENT.Enabled  :=true;
CNPF.Enabled    :=true;
RG.Enabled      :=true;
CODTRA.Enabled  :=true;

Panel3.Enabled  :=true;
DBGrid1.ReadOnly:=false;

//CHAVE.Enabled      :=False;
MDATA.SetFocus;
mstatus:=1;

end;

procedure TFrm_min3.BBEXCLUIRClick(Sender: TObject);
begin
if fmensagem('Quer Realmente Excluir?',0,['1','2'],2)=mrNo then
   abort;


DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From CADMIN1 where CM1CODEMP=0'+IntToStr(codemp)
                  +' and CM1CODMIN=0'+Trim(CHAVE.Text));
DM1.Query1.ExecSQL;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Delete From CADmin2 where CM2CODEMP=0'+IntToStr(codemp)
                  +' and CM2CODMIN=0'+Trim(CHAVE.Text));
DM1.Query1.ExecSQL;

BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
BBLIMPAR.Click;
fMensagem('Minuta Excluida!',0,['0'],0);


end;

procedure TFrm_min3.BBGRAVARClick(Sender: TObject);
var
mtotal: Real;
mitem: Integer;
mchave: Integer;
begin
if mstatus=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select Max(CM1CODMIN) from CADMIN1 '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' where CM1CODEMP='+IntToStr(codemp)));
   DM1.Query1.Open;
   mchave:=DM1.Query1.Fields[0].AsInteger+1;
   end
else if mstatus=1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From CADMIN1 where CM1CODEMP=0'+IntToStr(codemp)
                     +' and CM1CODMIN=0'+Trim(CHAVE.Text));
   DM1.Query1.ExecSQL;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Delete From CADmin2 where CM2CODEMP=0'+IntToStr(codemp)
                     +' and CM2CODMIN=0'+Trim(CHAVE.Text));
   DM1.Query1.ExecSQL;
   mchave:=StrToInt('0'+CHAVE.Text);
   end;
if not flcadmin1(0,0,IntToStr(mchave),pvazio) then
   DM1.Tb_Min1.Append
else
   DM1.Tb_Min1.Edit;
DM1.Tb_Min1CM1CODEMP.Value:=codemp;
DM1.Tb_Min1CM1CODMIN.Value:=mchave;
DM1.Tb_Min1CM1LOTSEQ.Value:=0;
DM1.Tb_Min1CM1CODTRA.Value:=ValFloat(CODTRA.Text);
DM1.Tb_Min1.Post;
DM1.Tb_Min1.Edit;
mtotal:=0;
Tb_min3.First;
mitem:=1;
flcadmin2(1,0,IntTostr(mchave),IntToStr(mitem));
While not Tb_min3.Eof do
   begin
   mtotal:=mtotal+Tb_min3CM2VALOR.Value;
   DM1.Tb_min2.Append;
   DM1.Tb_min2CM2CODEMP.Value    :=codemp;
   DM1.Tb_min2CM2TIPO.Value      :=Tb_min3CM2TIPO.Value;
   DM1.Tb_min2CM2CODMIN.Value    :=mchave;
   DM1.Tb_Min2CM2LOTSEQ.Value    :=0;
   DM1.Tb_min2CM2SEQ.Value       :=mitem;
   DM1.Tb_Min2CM2PED_CODEMP.Value:=Tb_min3CM2PED_CODEMP.AsFloat;
   DM1.Tb_min2CM2NUMERO.Value    :=Tb_min3CM2NUMERO.Value;
   DM1.Tb_Min2CM2LOTSEQ.Value    :=Tb_min3CM2LOTSEQ.Value;
   DM1.Tb_Min2CM2LOTSEQ_CP.Value :=Tb_min3CM2LOTSEQ_CP.Value;
   DM1.Tb_min2CM2VALOR.Value     :=Tb_min3CM2VALOR.Value;
   DM1.Tb_min2CM2DTCONF.Value    :=Tb_min3CM2DTCONF.Value;
   DM1.Tb_min2CM2USRCONF.Value   :=Tb_min3CM2USRCONF.Value;
   DM1.Tb_min2CM2CLIFOR.Value    :=Tb_min3CM2CLIFOR.Value;
   DM1.Tb_min2CM2CODIGO.Value    :=Tb_min3CM2CODIGO.Value;
   DM1.Tb_min2CM2CODCLI.Value    :=Tb_min3CM2CODCLI.Value;
   DM1.Tb_min2CM2TIPDOC.Value    :=Tb_min3CM2TIPDOC.Value;
   DM1.Tb_min2CM2QTDVOL.Value    :=Tb_min3CM2QTDVOL.Value;
   DM1.Tb_min2CM2PESOB.Value     :=Tb_min3CM2PESOB.Value;
   DM1.Tb_min2CM2PESOL.Value     :=Tb_min3CM2PESOL.Value;
   DM1.Tb_min2CM2OBS01.Value     :=Tb_min3CM2OBS01.Value;
   DM1.Tb_min2CM2OBS02.Value     :=Tb_min3CM2OBS02.Value;
   DM1.Tb_min2CM2OBS03.Value     :=Tb_min3CM2OBS03.Value;
   DM1.Tb_Min2CM2QTDITENS.Value  :=Tb_min3CM2QTDITENS.Value;
   DM1.Tb_Min2CM2QTDUND.Value    :=Tb_min3CM2QTDUND.Value;
   DM1.Tb_Min2CM2TIPOPED.Value   :=Tb_min3CM2TIPOPED.Value;
   DM1.Tb_Min2CM2CODCLI.Value    :=Tb_min3CM2CODCLI.Value;
   DM1.Tb_Min2CM2VALFRE.Value    :=Tb_min3CM2VALFRE.Value;
   DM1.Tb_Min2CM2QTDPAG.Value    :=Tb_min3CM2QTDPAG.Value;

   DM1.Tb_Min2CM2QTDUND.Value    := Tb_min3CM2QTDUND.Value;
   DM1.Tb_Min2CM2QTDITENS.Value  := Tb_min3CM2QTDITENS.AsFloat;
   DM1.Tb_Min2CM2QTDPAG.Value    := Tb_min3CM2QTDPAG.AsFloat;
   DM1.Tb_Min2CM2VALFRE.Value    := Tb_min3CM2VALFRE.valUE;
   DM1.Tb_min2CM2NUMDOC.Value    := Tb_min3CM2NUMDOC.Value;
   DM1.Tb_Min2CM2DATANF.Value    := Tb_min3CM2DATANF.Value;
   DM1.Tb_Min2CM2CODBCO.Value    := Tb_min3CM2CODBCO.Value;

   DM1.Tb_min2.Post;
   mitem:=mitem+1;
   Tb_min3.Next;
   end;
DM1.Tb_Min1CM1DATA.Value  :=StrtoDate(MDATA.Text);
DM1.Tb_Min1M1NOMEENT.Value:=NOMENT.Text;
DM1.Tb_Min1CM1CNPF.Value  :=CNPF.Text;
DM1.Tb_Min1CM1RG.Value    :=RG.Text;
DM1.Tb_Min1CM1TOTAL.Value :=mtotal;
if mstatus=0 then
   begin
   DM1.Tb_Min1CM1INCDTHORA.AsDateTime:=now;
   DM1.Tb_Min1CM1USRINC.Value        :=codusr;
   end
else
   begin
   DM1.Tb_Min1CM1ALTDTHORA.AsDateTime:=now;
   DM1.Tb_Min1CM1USRALT.Value        :=codusr;
   end;
DM1.Tb_MIN1.Post;
CHAVE.Text:=Formatfloat('0000000',mchave);
fMensagem('Chave da Minuta...: '+Formatfloat('000000',mchave),0,['0'],0);
BBINCLUIR.Enabled  :=true;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=true;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=true;
BBLIMPAR.Click;
BBLOCALIZARClick(self);
end;

procedure TFrm_min3.BBLIMPARClick(Sender: TObject);
begin
Tb_min3.Close;
Tb_min3.SQL.Clear;
Tb_min3.SQL.Add('SELECT CM2CODEMP '
               +',CM2LOTSEQ '
               +',CM2CODMIN '
               +',CM2SEQ'
               +',CM2TIPO'
               +',CM2LOTSEQ_CP'
               +',CM2NUMERO'
               +',CM2CLIFOR '
               +',CM2CODIGO '
               +',CM2TIPDOC '
               +',CM2NUMDOC '
               +',CM2QTDVOL '
               +',CM2PESOB '
               +',CM2PESOL '
               +',CM2VALOR '
               +',CM2OBS01 '
               +',CM2OBS02 '
               +',CM2OBS03 '
               +',CM2DTCONF '
               +',CM2USRCONF '
               +',CM2PED_CODEMP '
               +',CM2QTDITENS '
               +',CM2QTDUND '
               +',CM2TIPOPED '
               +',CM2CODCLI '
               +',CM2VALFRE'
               +',CM2QTDPAG '
               +',CM2CODBCO '
               +',CM2DATANF '
               +',CRAZAO AS NOMCLI from CADMIN2, CADCLI '
               +' where CM2CODEMP=0 '
               +' AND CM2LOTSEQ=0 '
               +' AND CM2CODMIN=0 '
               +' AND CCODCLI=CM2CODCLI ' );
Tb_min3.Open;
CHAVE.Text:='';
NOMENT.Text:='';
CNPF.Text  :='';
RG.Text    :='';
CODTRA.Text:='';
NOMTRA.Text:='';
MDATA.Text :=FormatDateTime(fdt2,date);
BBINCLUIR.Enabled  :=True;
BBLOCALIZAR.Enabled:=True;
BBEXCLUIR.Enabled  :=False;
BBGRAVAR.Enabled   :=False;
BBIMPRIMIR.Enabled :=False;
//Panel_Cab.Enabled  :=false;

bbConsulta.Enabled  := true;
CHAVE.Enabled   :=true;
MDATA.Enabled   :=false;
MDATAF.Enabled  :=false;
NOMENT.Enabled  :=false;
CNPF.Enabled    :=false;
RG.Enabled      :=false;
CODTRA.Enabled  :=false;

Panel3.Enabled  :=false;
DBGrid1.ReadOnly:=true;

//Panel1.Enabled:=False;
end;

procedure TFrm_min3.bbitens_alterClick(Sender: TObject);
begin
if not (Tb_min3.State in [dsInsert, DsEdit]) then
   begin
   Tb_min3.Edit;
   DBGrid1.setfocus;
   BBGRAVAR.Enabled   :=TRUE;
   end;

end;

procedure TFrm_min3.bbiten_excluirClick(Sender: TObject);
begin
if not Tb_min3CM2NUMERO.IsNull then
   begin
   if fmensagem('Quer Realmente Excluir o Item?',0,['1','2'],2)=mrYES then
      begin
      Tb_min3.Delete;
      BBEXCLUIR.Enabled  := true;
      BBGRAVAR.Enabled   := true;
      end;
   end;

end;

procedure TFrm_min3.BitBtn3Click(Sender: TObject);
begin
Tb_min3.Cancel;
DBGrid1.SetFocus;

end;

procedure TFrm_min3.Tb_min3AfterInsert(DataSet: TDataSet);
begin
Tb_min3CM2CODEMP.Value:=codemp;
Tb_min3CM2CODMIN.Value:=2;
Tb_min3CM2TIPO.Value  :='PD';
mItem:=mitem+1;
Tb_min3CM2SEQ.Value:=mitem;
Tb_min3.Edit;

end;

procedure TFrm_min3.DBGrid1Exit(Sender: TObject);
begin
if Tb_min3.State in [DsInsert, DsEdit] then
   begin
   if Tb_min3CM2NUMERO.Value<=0 then
      Tb_min3.Cancel
   else
      Tb_min3.Post;
   end;

end;

procedure TFrm_min3.DBGrid1ColExit(Sender: TObject);
begin
if Tb_min3.State in [dsEdit,DsInsert] then
   begin
   if DBGrid1.SelectedField=Tb_min3CM2TIPO then
      begin
      if (Tb_min3CM2TIPO.Value<>'TX') and (Tb_min3CM2TIPO.Value<>'PD') then
         begin
         fMensagem('Tipo Invalido. Validos somente TX e PD!',0,['0'],0);
         Abort;
         end;
      end;
   if DBgrid1.SelectedField=Tb_min3CM2NUMERO Then
      begin
      if Tb_min3CM2TIPO.Value='TX' then
         begin
         if not flqr1('TXVALOR,TXCODCLI','TX','CADTAX','N','TXCODTAX',Tb_min3CM2NUMERO.AsString) then
            begin
            fMensagem('Taxa de Inscrição Não Cadastrada!',0,['0'],0);
            abort;
            end
         else
            Begin
            Tb_min3CM2VALOR.Value:=DM1.Query2.Fields[0].AsFloat;
            Tb_min3CM2CLIFOR.Value:='CL';
            Tb_min3CM2CODIGO.Value:=DM1.Query2.Fields[1].AsFloat;
            Tb_min3CM2CODCLI.Value:=DM1.Query2.Fields[1].AsFloat;
            Tb_min3CM2TIPDOC.Value:='TX';
            Tb_min3CM2NUMDOC.Value:=Tb_min3CM2NUMERO.Value;
            Tb_min3CM2OBS01.Value :='';
            Tb_min3CM2OBS02.Value :='';
            Tb_min3CM2OBS03.Value :='';
            end;
         end
      else
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('Select sum(P1TOTALL) AS P1TOTALL ,'
                           +' sum(P1QTDVOL) AS P1QTDVOL, '
                           +' sum(P1PESOB)  AS P1PESOB, '
                           +' sum(P1VALFRE)  AS P1VALFRE, '
                           +' sum(P1PESOL)  AS P1PESOL, '
                           +' max(P1CODCLI) AS P1CODCLI, '
                           +' min(P1DATANF)  as P1DATANF,'
                           +' min(P1BANCO)  as P1BANCO,'
                           +' max(P1OBS1)   as P1OBS01,'
                           +' max(P1OBS2)   as P1OBS02,'
                           +' max(P1OBS3)   as P1OBS03,'
                           +' max(P1ORDEM)  as P1ORDEM,'
                           +' P1LOTSEQ      as P1LOTSEQ, '
                           +' P1CHAVE       as P1CHAVE, '
                           +' P1CODEMP      as P1CODEMP, '
                           +' P1NUMNF       as P1NUMNF,'
                           +' P1NUMCF       as P1NUMCF,'
                           +' P1TIPO        as P1TIPO,'
                           +' max(CRAZAO)   as NOMCLI '
                           +' from CADP01,CADCLI where '
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P1CODEMP=0'+IntTostr(codemp)+' and ')
                           +' P1STATUS<'+mstatus_excluido+' '
                           +' and P1LOTSEQ=0'+FloatToStr(ls_numped)
                           +' and P1CHAVE=0'+Tb_min3CM2NUMERO.AsString
                           +iif(DM1.Qr_Tid.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=P1CODEMP')
                           +' and CCODCLI=P1CODCLI');

         DM1.Query2.SQL.Add(' group by P1CODEMP,P1LOTSEQ,P1CHAVE,P1NUMNF,P1NUMCF,P1TIPO ');
         DM1.Query2.Open;
         if (DM1.Query2.fieldByName('P1CODCLI').Asfloat<=0) and (DM1.Query2.FieldbyName('P1CODCLI').IsNull) then
            begin
            fMensagem('Pedido não encontrado!',0,['0'],0);
            abort;
            end
         else
            begin
            Tb_min3CM2CODEMP.AsFloat  :=codemp;
            Tb_min3CM2LOTSEQ.AsFloat  :=0;
            Tb_Min3CM2PED_CODEMP.Value:=DM1.Query2.FieldByName('P1CODEMP').AsFloat;
            Tb_min3CM2LOTSEQ_CP.Value :=DM1.Query2.FieldByName('P1LOTSEQ').AsFloat;
            Tb_min3CM2NUMERO.Value    :=DM1.Query2.FieldByName('P1CHAVE').AsFloat;

            Tb_min3CM2TIPO.AsString  :='PD';
            Tb_min3CM2TIPOPED.AsFloat:=DM1.Query2.FieldByName('P1TIPO').AsFloat;
            Tb_min3CM2VALOR.Value    :=DM1.Query2.FieldByName('P1TOTALL').AsFloat;
            Tb_min3CM2VALFRE.Value   :=DM1.Query2.FieldByName('P1VALFRE').AsFloat;
            Tb_min3CM2QTDVOL.Value   :=DM1.Query2.FieldByName('P1QTDVOL').AsFloat;
            Tb_min3CM2PESOB.Value    :=DM1.Query2.FieldByName('P1PESOB').AsFloat;
            Tb_min3CM2PESOL.Value    :=DM1.Query2.FieldByName('P1PESOL').AsFloat;
            Tb_min3CM2CLIFOR.Value   :='CL';
            Tb_min3NOMCLI.Value      :=DM1.Query2.FieldByName('NOMCLI').AsString;
            Tb_min3CM2CODIGO.Value   :=DM1.Query2.FieldByName('P1CODCLI').AsFloat;
            Tb_min3CM2CODCLI.Value   :=DM1.Query2.FieldByName('P1CODCLI').AsFloat;
            if DM1.Query2.FieldByName('P1NUMCF').AsFloat>0 then
               begin
               Tb_min3CM2TIPDOC.Value:='CF';
               Tb_min3CM2NUMDOC.Value:=DM1.Query2.FieldByName('P1NUMCF').AsFloat;
               end
            else
               begin
               Tb_min3CM2TIPDOC.Value:='NF';
               Tb_min3CM2NUMDOC.Value:=DM1.Query2.FieldByName('P1NUMNF').AsFloat;
               end;
            Tb_min3CM2OBS01.Value :=DM1.Query2.FieldByName('P1OBS01').AsString;
            Tb_min3CM2OBS02.Value :=DM1.Query2.FieldByName('P1OBS02').AsString;
            Tb_min3CM2OBS03.Value :=DM1.Query2.FieldByName('P1OBS03').AsString;
            Tb_min3CM2DATANF.Value:=DM1.Query2.FieldByName('P1DATANF').AsdateTime;
            Tb_min3CM2CODBCO.Value:=DM1.Query2.FieldByName('P1BANCO').AsFloat;


            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select sum(P2QTD) AS QTDUND,COUNT(*) AS QTDITENS,max(P2ORDEM) AS QTDPAG '
                              +'                 from cadp02 where ');
            DM1.Query1.SQL.Add('     p2codemp ='+DM1.Query2.FieldByName('P1CODEMP').AsString);
            DM1.Query1.SQL.Add(' and p2lotseq ='+DM1.Query2.FieldByName('P1LOTSEQ').AsString);
            DM1.Query1.SQL.Add(' and p2chave  ='+DM1.Query2.FieldByName('P1CHAVE').AsString);
            DM1.Query1.Open;

            Tb_Min3CM2QTDUND.Value     := DM1.Query1.Fieldbyname('QTDUND').AsFloat;
            Tb_Min3CM2QTDITENS.Value   := DM1.Query1.Fieldbyname('QTDITENS').AsFloat;
            Tb_Min3CM2QTDPAG.Value     := DM1.Query1.Fieldbyname('QTDPAG').AsFloat;
            end;
         end;
      end;
   end;
end;

procedure TFrm_min3.CHAVEExit(Sender: TObject);
begin
if not flcadmin1(0,0,CHAVE.Text,pvazio) then
   begin
   fMensagem('Minuta Não Encontrado!',0,['0'],0);
//   CHAVE.SetFocus;
   exit;
   end
else
   begin
   Tb_min3.Close;
   Tb_min3.SQL.Clear;
   Tb_min3.SQL.Add('SELECT CM2CODEMP '
               +',CM2LOTSEQ '
               +',CM2CODMIN '
               +',CM2SEQ'
               +',CM2TIPO'
               +',CM2LOTSEQ_CP'
               +',CM2NUMERO'
               +',CM2CLIFOR '
               +',CM2CODIGO '
               +',CM2TIPDOC '
               +',CM2NUMDOC '
               +',CM2QTDVOL '
               +',CM2PESOB '
               +',CM2PESOL '
               +',CM2VALOR '
               +',CM2OBS01 '
               +',CM2OBS02 '
               +',CM2OBS03 '
               +',CM2DTCONF '
               +',CM2USRCONF '
               +',CM2PED_CODEMP '
               +',CM2QTDITENS '
               +',CM2QTDUND '
               +',CM2TIPOPED '
               +',CM2CODCLI '
               +',CM2VALFRE'
               +',CM2QTDPAG '
               +',CM2CODBCO '
               +',CM2DATANF '
               +',CRAZAO AS NOMCLI from CADMIN2, CADCLI '
               +' where  '+iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and ')
               +' CM2LOTSEQ=0 '
               +' AND CM2CODMIN=0'+trim(CHAVE.Text)
               +' AND CCODCLI=CM2CODIGO '
               +' order by CM2SEQ');
   Tb_min3.Open;

   MDATA.Text:=FormatDateTime(fdt2,dm1.Tb_Min1CM1DATA.Value);
   CODTRA.Text:=DM1.Tb_Min1CM1CODTRA.AsString;
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_Min1CM1CODTRA.AsString) then
      NOMTRA.Text:=DM1.Query1.fields[0].AsString
   else
      NOMTRA.Text:='Não Cadastrado';

   NOMENT.Text:=DM1.Tb_Min1M1NOMEENT.Value;
   CNPF.Text  :=DM1.Tb_Min1CM1CNPF.Value;
   RG.Text    :=DM1.Tb_Min1CM1RG.Value;
   Frm_min3.Update;
   mstatus:=1;
   end;
BBINCLUIR.Enabled  :=True;
BBIMPRIMIR.Enabled :=True;
BBALTERAR.Enabled  :=True;
BBEXCLUIR.Enabled  :=True;
//Panel1.Enabled     :=False;

CHAVE.Enabled   :=true;
bbConsulta.Enabled:=true;
MDATA.Enabled   :=false;
MDATAF.Enabled  :=false;
NOMENT.Enabled  :=false;
CNPF.Enabled    :=false;
RG.Enabled      :=false;
CODTRA.Enabled  :=false;
Panel3.Enabled  :=false;
DBGrid1.ReadOnly:=true;


end;

procedure TFrm_min3.DBGrid1Enter(Sender: TObject);
begin
if Tb_min3.RecordCount<=0 then
   Tb_min3.Insert;

end;

procedure TFrm_min3.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if DBGrid1.SelectedField=Tb_min3CM2VALOR then
   key:=#0;

end;

procedure TFrm_min3.MDATAExit(Sender: TObject);
begin
if BBLIMPAR.Focused then
   abort;
try
  mdata.Text:=FormatDatetime(fdt2,StrtoDate(mdata.Text));
except
  fMensagem('Data Invalida!',0,['0'],0);
  MDATA.SetFocus;
  end;
end;
procedure TFrm_min3.FormCreate(Sender: TObject);
begin
RadioGroup1.ItemIndex := 0;
mtipmin:=0;
if DM1.Tb_PargerPCADCLITAXC.Value>0 then
   DBGrid1.Columns[0].Visible:=False;
empresa_aux.Text := DM1.Tb_EmpCODEMP.AsString;
bbConsulta.Enabled  := TRUE;
CHAVE.Enabled   :=true;
MDATA.Enabled   :=false;
MDATAF.Enabled  :=false;
NOMENT.Enabled  :=false;
CNPF.Enabled    :=false;
RG.Enabled      :=false;
CODTRA.Enabled  :=false;
//Panel_Cab.Enabled  :=false;
Panel3.Enabled  :=false;
DBGrid1.ReadOnly:=true;

end;


procedure TFrm_min3.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_min3',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_min3.CODTRAExit(Sender: TObject);
var
mtotgeral: Real;
begin
if ValFloat(CODTRA.Text)>0 then
  begin
  if not flcadtra(1,0,CODTRA.Text) then
    begin
    fMensagem('Transportadora não Cadastrada!',0,['0'],0);
    CODTRA.SetFocus;
    end
  else
    begin
    NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
    if Frm_SelPed=nil then
      Application.CreateForm(TFrm_SelPed, Frm_SelPed);
    Frm_SelPed.MDT1.Text := MDATA.text;
    Frm_SelPed.MDT2.Text := MDATAF.text;
    Frm_SelPed.CODTRA.Text  := CODTRA.text;
    Frm_SelPed.nomtra.Text := NOMTRA.text;
    Frm_SelPed.bbMarcarClick(SELF);
    if Frm_SelPed.ShowMOdal=mrOk then
      begin
      mitem := 0;

      if Frm_SelPed.CADP01.Active then
        begin
        DM1.Query1.Close;
        DM1.Query1.SQL.Clear;
        DM1.Query1.SQL.Add('Select Max(CM1CODMIN) from CADMIN1 '
                          +iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' where CM1CODEMP='+IntToStr(codemp)));
        DM1.Query1.Open;
        mchave:=DM1.Query1.Fields[0].AsInteger+1;
        DM1.Tb_Min2.Open;
        Frm_SelPed.CADP01.First;
        mtotgeral:=0;
        while not Frm_SelPed.cadp01.Eof do
          begin
          if Frm_SelPed.cadp01ok.AsString = 'X' then
            begin
            DM1.Tb_min2.Insert;
            mitem:=mitem+1;
            DM1.Tb_min2CM2CODEMP.Value     := codemp;
            DM1.Tb_min2CM2SEQ.Value        := mitem;
            DM1.Tb_min2CM2TIPO.Value       := 'PD';
            DM1.Tb_Min2CM2LOTSEQ.Value     :=0;

            DM1.Query1.Close;
            DM1.Query1.SQL.Clear;
            DM1.Query1.SQL.Add('Select sum(P2QTD) AS QTDUND,COUNT(*) AS QTDITENS,max(P2ORDEM) AS QTDPAG '
                              +'                 from cadp02 where ');
            DM1.Query1.SQL.Add('     p2codemp ='+Frm_SelPed.CADP01P1CODEMP.AsString);
            DM1.Query1.SQL.Add(' and p2lotseq ='+Frm_SelPed.CADP01P1LOTSEQ.AsString);
            DM1.Query1.SQL.Add(' and p2chave  ='+Frm_SelPed.CADP01P1CHAVE.AsString);
            DM1.Query1.Open;

            DM1.Tb_min2CM2NUMERO.AsString   := Frm_SelPed.CADP01P1CHAVE.AsString;
            DM1.Tb_Min2CM2LOTSEQ_CP.AsString:= Frm_SelPed.CADP01P1LOTSEQ.AsString;
            DM1.Tb_Min2CM2LOTSEQ.AsFloat    := 0;
            DM1.Tb_Min2CM2PED_CODEMP.Value  := Frm_SelPed.CADP01P1CODEMP.AsFloat;
            DM1.Tb_min2CM2VALOR.Value      := Frm_SelPed.cadp01P1TOTALL.Value;
            DM1.Tb_min2CM2DTCONF.Value     := Frm_SelPed.CADP01P1DATANF.Value;
            DM1.Tb_min2CM2USRCONF.Value    := codusr;
            DM1.Tb_min2CM2CLIFOR.Value     := 'CL';
            DM1.Tb_Min2CM2CODMIN.AsInteger := mchave;
            DM1.Tb_Min2CM2CODIGO.AsInteger := Frm_SelPed.CADP01P1CODCLI.AsInteger;
            DM1.Tb_Min2CM2CODCLI.AsInteger := Frm_SelPed.CADP01P1CODCLI.AsInteger;
            DM1.Tb_min2CM2TIPDOC.AsString  := 'NF';
            DM1.Tb_min2CM2QTDVOL.Value     := Frm_SelPed.cadp01P1QTDVOL.Value;
            DM1.Tb_min2CM2PESOB.Value      := Frm_SelPed.cadp01P1PESOB. Value;
            DM1.Tb_min2CM2PESOL.Value      := Frm_SelPed.cadp01P1PESOL.Value;
            DM1.Tb_Min2CM2OBS01.Value      := Frm_SelPed.CADP01P1OBS1.Value;
            DM1.Tb_Min2CM2OBS02.Value      := Frm_SelPed.CADP01P1OBS2.Value;
            DM1.Tb_Min2CM2OBS03.Value      := Frm_SelPed.CADP01P1OBS3.Value;
            DM1.Tb_Min2CM2QTDUND.Value     := DM1.Query1.Fieldbyname('QTDUND').AsFloat;
            DM1.Tb_Min2CM2QTDITENS.Value   := DM1.Query1.Fieldbyname('QTDITENS').AsFloat;
            DM1.Tb_Min2CM2QTDPAG.Value     := DM1.Query1.Fieldbyname('QTDPAG').AsFloat;
            DM1.Tb_Min2CM2VALFRE.Value     := Frm_SelPed.CADP01P1VALFRE.Value;
            DM1.Tb_min2CM2NUMDOC.Value     := Frm_SelPed.CADP01P1NUMNF.Value;
            DM1.Tb_Min2CM2DATANF.Value     := Frm_SelPed.CADP01P1DATANF.Value;
            DM1.Tb_Min2CM2CODBCO.Value     := Frm_SelPed.CADP01P1BANCO.Value;

            mtotgeral:=mtotgeral+Frm_SelPed.CADP01P1TOTALL.Value;
            DM1.Tb_min2.Post;
            end;
          Frm_SelPed.CADP01.Next;
          end;
        end;
      if mitem >= 1 then
        begin
        DM1.Tb_Min1.Open;
        DM1.Tb_Min1.Insert;
        DM1.Tb_Min1CM1LOTSEQ.AsFloat   :=0;
        DM1.Tb_Min1CM1DATA.Value       := StrtoDate(MDATA.Text);
        DM1.Tb_Min1M1NOMEENT.Value     := FRM_MIN3.NOMENT.Text;
        DM1.Tb_Min1CM1CNPF.Value       := FRM_MIN3.CNPF.Text;
        DM1.Tb_Min1CM1RG.Value         := FRM_MIN3.RG.Text;
        DM1.Tb_Min1CM1TOTAL.Value      := mtotgeral;
        DM1.Tb_Min1CM1CODEMP.Value     := codemp;
        DM1.Tb_Min1CM1CODMIN.AsInteger := mchave;
        DM1.Tb_Min1CM1INCDTHORA.AsDateTime:=now;
        DM1.Tb_Min1CM1USRINC.Value        :=codusr;
        DM1.Tb_Min1CM1CODTRA.AsString  := FRM_MIN3.CODTRA.Text;
        DM1.Tb_Min1.Post;
        end;
      BBLIMPARClick(self);
      BBLOCALIZARClick(self);
      end;
    Frm_SelPed.Free;
    Frm_SelPed:=nil;
    end;
  end;
end;

procedure TFrm_min3.Tb_min3BeforePost(DataSet: TDataSet);
begin
Tb_min3CM2QTDVOL.Value:=trunc(Tb_min3CM2QTDVOL.Value);
end;

procedure TFrm_min3.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TFrm_PedCli, Frm_PedCli);
Frm_PedCli.ShowMOdal;
Frm_PedCli.Free;

end;


procedure TFrm_min3.bbConsultaClick(Sender: TObject);
begin
      Application.CreateForm(TFrm_Selmin, Frm_Selmin);
      Frm_Selmin.ShowMOdal;
      Frm_Selmin.Free;
end;

procedure TFrm_min3.BBIMPRIMIRClick(Sender: TObject);
begin
 panel5.Visible := true;
//   imp_cabeca;

end;

procedure TFrm_min3.imp_cabeca;
var
   codcli_ant : string;
   primeira   : Boolean;
   contador   : integer;
begin
testeform := TFrm_min3(FindGlobalComponent('form_impres_min3'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_min3);
form_impres_min3.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PPTb_min3.First;
empresa_aux.Text := DM1.Tb_EmpCODEMP.AsString;
codcli_ant       := '';
mpag       :=0;
mlin       :=0;

tb_min3.First;
primeira := true;
contador := 1;

While not Tb_min3.Eof do
   begin

//          temp.Close;
//          temp.sql.Clear;
//          temp.sql.add('select * from cadmin2 ');
//          temp.SQL.add(' where cm2codemp = '+Tb_min3CM2CODEMP.AsString);
//          temp.SQL.add(' and   cm2codmin = '+Tb_min3CM2CODMIN.asstring);
//          temp.SQL.add(' and   cm2codigo = '+Tb_min3CM2CODIGO.asstring);
//          temp.SQL.add(' and   cm2numero = '+Tb_min3CM2NUMERO.asstring);
//          temp.open;
//          mesma_nota  := temp.RecordCount;

{                                      
          if mesma_nota = 1 then
          begin
           primeira := true;
           contador := 1;
          end;

          if mesma_nota > 1 then
          if primeira       then
          if contador   = 1 then
          begin
             primeira  := true;
             contador  := 2;
          end else primeira  := false;


          val_acum.close;
          val_acum.SQL.Clear;
          val_acum.SQL.add('Select cm2codemp,cm2codmin,cm2codigo,');
          val_acum.SQL.add('sum(cm2valor)valor ,sum(cm2qtdvol)qtdvol,');
          val_acum.SQL.add('sum(cm2pesob)pesob,sum(cm2pesol)pesol ');
          val_acum.SQL.add(' From CADmin2 ');
          val_acum.SQL.add(' where cm2codemp = '+Tb_min3CM2CODEMP.AsString);
          val_acum.SQL.add(' and   cm2codmin = '+Tb_min3CM2CODMIN.asstring);
          val_acum.SQL.add(' and   cm2codigo = '+Tb_min3CM2CODIGO.asstring);
          val_acum.SQL.add(' and   cm2numero = '+Tb_min3CM2NUMERO.asstring);
          val_acum.SQL.add(' group by cm2codemp,cm2codmin,cm2codigo ');
          val_acum.Open;
}
          VER_VALORES;
      if Tb_min3CM2CODIGO.asstring <> codcli_ant then
      begin
          mpag:=mpag+1;
          if comp_simpl.ItemIndex = 0 then
          begin
              imp_cab;
              busca_nf;
              busca_doc;
              imp_detalhe;
          end else
          begin
              if mlin = 0 then imp_cab;
              busca_nf;
              busca_doc;
              detalhe_simples;
          end;


      if RadioGroup1.ItemIndex = 1 then
      begin
          if comp_simpl.ItemIndex = 0 then
          begin

              imp_cab;
              imp_detalhe;
              mlin := 51;
          end;
      end;
      end;
      codcli_ant := Tb_min3CM2CODIGO.asstring;
      Tb_min3.Next;

      if mlin>=48 then
         begin
             form_impres_min3.Rdprint1.Novapagina;
             mlin:=0;
         end;
   end;
   if comp_simpl.ItemIndex = 1  then
   begin
       total_simples;
   end;
   verteclado(0);
   if form_impres_min3.RDprint1.setup then form_impres_min3.Rdprint1.Fechar;
   form_impres_min3.free;
   form_impres_min3:=nil;

end;

procedure TFrm_min3.imp_detalhe;
begin
   if Tb_min3CM2CLIFOR.Value='CL' then
      flcadcli(1,0,Tb_min3CM2CODIGO.AsString);

///// transportadora

      dm1.Query2.Close;
      dm1.Query2.SQL.Clear;
      dm1.Query2.sql.Add('select * from cadtra where trcodtra = '+''''+CODTRA.Text+'''');
      dm1.Query2.Open;

      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Transp....: '+dm1.Query2.fieldbyname('TRCODTRA').AsString+' - '+dm1.Query2.fieldbyname('TRRAZTRA').AsString,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,070,'Fone......: '+dm1.Query2.fieldbyname('TRFONE'  ).AsString+' - '+dm1.Query2.fieldbyname('TRFAX'   ).AsString,mreduz);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Endereco..: '+dm1.Query2.fieldbyname('TRNLOG'  ).AsString,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,070,'Bairro....: '+dm1.Query2.fieldbyname('TRBAIRRO').AsString,mreduz);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Cidade....: '+dm1.Query2.fieldbyname('TRCIDADE').AsString,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,070,'Estado....: '+dm1.Query2.fieldbyname('TRUF'    ).AsString,mreduz);
      mlin:=mlin+2;

///// cliente

      form_impres_min3.Rdprint1.Impf(mlin,001,'Destinat..: '+DM1.Tb_CliCRAZAO.AsString,mneg);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Endereco..: '+DM1.Tb_CliCLOG.Value    +' - '+DM1.Tb_CliCBAIRRO.Value,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,070,'Cidade/Uf.: '+DM1.Tb_CliCCIDADE.Value +' - '+DM1.Tb_CliCUF.Value ,mreduz);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Numero....: '+junta_nf,mreduz);
{
      if mesma_nota = 1 then
         form_impres_min3.Rdprint1.Impf(mlin,029,'Qt volumes: '+FormatFloat('0000',   val_acumQTDVOL.Value),mreduz)
         else form_impres_min3.Rdprint1.Impf(mlin,029,'Qt volumes: '+FormatFloat('0000',   Tb_min3CM2QTDVOL.Value),mreduz);
}

      form_impres_min3.Rdprint1.Impf(mlin,029,'Qt volumes: '+FormatFloat('0000',   QTDVOL),mreduz);

      dm1.Query4.Close;
      dm1.Query4.SQL.Clear;
      dm1.Query4.sql.Add('select * from cadp01 where ');
      dm1.Query4.sql.Add('     p1codemp = '+''''+DM1.Tb_EmpCODEMP.AsString+'''');
      dm1.Query4.sql.Add(' and p1chave  = '+''''+Tb_min3CM2NUMERO.AsString+'''');
      dm1.Query4.Open;

      form_impres_min3.Rdprint1.Impf(mlin,047,'Especie...: '+dm1.Query4.fieldbyname('P1ESPECIE').asstring,mreduz);
      mlin:=mlin+1;

{
      if mesma_nota = 1 then
         form_impres_min3.Rdprint1.Impf(mlin,001,'Peso Liq..: '+FormatFloat('##0.000',val_acumPESOL.Value),mreduz)
         else form_impres_min3.Rdprint1.Impf(mlin,001,'Peso Liq..: '+FormatFloat('##0.000',Tb_min3CM2PESOL.Value),mreduz);
}

      form_impres_min3.Rdprint1.Impf(mlin,001,'Peso Liq..: '+FormatFloat('##0.000',PESOL),mreduz);
{
      if mesma_nota = 1 then
         form_impres_min3.Rdprint1.Impf(mlin,029,'Peso Bruto: '+FormatFloat('##0.000',val_acumPESOB.Value),mreduz)
         else form_impres_min3.Rdprint1.Impf(mlin,029,'Peso Bruto: '+FormatFloat('##0.000',Tb_min3CM2PESOB.Value),mreduz);
}

      form_impres_min3.Rdprint1.Impf(mlin,029,'Peso Bruto: '+FormatFloat('##0.000',PESOB),mreduz);

      form_impres_min3.Rdprint1.Impf(mlin,070,'Nta Fiscal: '+junta_doc,mreduz);
      mlin:=mlin+1;
//      form_impres_min3.RDprint1.ImpF(mlin,001,'Valor.....: '+FormatFloat('###,##0.00',val_acumVALOR.Value),mneg);
      form_impres_min3.RDprint1.ImpF(mlin,001,'Valor.....: '+FormatFloat('###,##0.00',TOTAL),mneg);
      form_impres_min3.Rdprint1.Impf(mlin,070,'Fone......: '+DM1.Tb_CliCFONECOM.Value+' - '+DM1.Tb_CliCFONERES.Value ,mreduz);

      mlin:=mlin+1;
      IF dm1.Query4.fieldbyname('P1FRETEPC').AsFloat = 1 THEN
         form_impres_min3.Rdprint1.Impf(mlin,001,'Frete a Pagar Por Conta do Remetente... ',mneg);
      IF dm1.Query4.fieldbyname('P1FRETEPC').AsFloat = 2 THEN
         form_impres_min3.Rdprint1.Impf(mlin,001,'Frete a Pagar Por Conta do Destinatario... ',mneg);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,050,'Recebemos :',mneg);
      mlin:=mlin+2;
      form_impres_min3.Rdprint1.Impf(mlin,060,'________________________________________________',mreduz);
      mlin:=mlin+2;
      form_impres_min3.Rdprint1.Impf(mlin,063,'                   Assinatura',mreduz);
      mlin:=mlin+2;
      form_impres_min3.Rdprint1.Impf(mlin,001,insere2('=','=',136),mreduz);
      mlin:=mlin+1;

end;


procedure TFrm_min3.busca_doc;
var
   nf_aux : string;
begin

   temp.close;
   temp.SQL.Clear;
   temp.SQL.add('Select cm2numero From CADmin2 ');
   temp.SQL.add(' where cm2codemp = '+Tb_min3CM2CODEMP.AsString);
   temp.SQL.add(' and   cm2codmin = '+Tb_min3CM2CODMIN.asstring);
   temp.SQL.add(' and   cm2codigo = '+Tb_min3CM2CODIGO.asstring);
   temp.Open;

   temp.First;
   nf_aux   := '';
   junta_nf := '';
   while not temp.eof do
   begin
        if temp.fieldbyname('CM2NUMERO').asstring <> nf_aux then
           junta_nf := junta_nf+temp.fieldbyname('CM2NUMERO').asstring;
        nf_aux := temp.fieldbyname('CM2NUMERO').asstring;
        temp.next;
        if not temp.Eof then junta_nf := junta_nf+'/';
   end;

end;

procedure TFrm_min3.busca_nf;
var
   doc_aux : string;
begin
   temp.close;
   temp.SQL.Clear;
   temp.SQL.add('Select cm2numdoc From CADmin2 ');
   temp.SQL.add(' where cm2codemp = '+Tb_min3CM2CODEMP.AsString);
   temp.SQL.add(' and   cm2codmin = '+Tb_min3CM2CODMIN.asstring);
   temp.SQL.add(' and   cm2codigo = '+Tb_min3CM2CODIGO.asstring);
   temp.Open;

   temp.First;
   doc_aux   := '';
   junta_doc := '';
   while not temp.eof do
   begin
        if temp.fieldbyname('CM2NUMDOC').asstring <> doc_aux then
           junta_doc := junta_doc+temp.fieldbyname('CM2NUMDOC').asstring;
        doc_aux := temp.fieldbyname('CM2NUMDOC').asstring;
        temp.next;
        if not temp.Eof then junta_doc := junta_doc+'/';
   end;

end;

procedure TFrm_min3.imp_cab;
begin

      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Minuta Para Despacho',mneg);
      form_impres_min3.Rdprint1.Impf(mlin,100,'Data......: '+FormatDateTime(fdt2,date),mreduz);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Empresa...: '+DM1.Tb_EmpRAZAO.Value,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,040,'Minuta N..: '+Trim(CHAVE.Text),mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,100,'Pagina....: '+Formatfloat('0000',mpag),mreduz);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Endereco..: '+DM1.Tb_EmpENDERECO.Value+' - '+
                                                       DM1.Tb_EmpBAIRRO.Value  +' - '+
                                                       DM1.Tb_EmpCIDADE.Value  +' - '+DM1.Tb_EmpUF.Value,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,100,'Cep.......: '+DM1.Tb_EmpCEP.Value,mreduz);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,'Cnpj......: '+DM1.Tb_Empcnpj.Value,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,070,'Fone......: '+DM1.Tb_EmpFONE.Value+' - '+DM1.Tb_EmpFONERES.Value,mreduz);
      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,insere2('-','-',136),mreduz);
      mlin:=mlin+1;
      if comp_simpl.ItemIndex = 1 then
      begin
          form_impres_min3.Rdprint1.Impf(mlin,001,'Chave       Cod.Cliente         Razao                                                                      Volume     Valor Pedido',mreduz);
          mlin:=mlin+1;
          form_impres_min3.Rdprint1.Impf(mlin,001,insere2('-','-',136),mreduz);
      end;

end;

procedure TFrm_min3.ver_Valores;
begin

          temp.Close;
          temp.sql.Clear;
          temp.sql.add('select * from cadmin2 ');
          temp.SQL.add(' where cm2codemp = '+Tb_min3CM2CODEMP.AsString);
          temp.SQL.add(' and   cm2codmin = '+Tb_min3CM2CODMIN.asstring);
          temp.SQL.add(' and   cm2codigo = '+Tb_min3CM2CODIGO.asstring);
          temp.open;
          if not temp.IsEmpty then
          begin
              nota_aux    := 0;
              qtdvol      := 0;
              pesob       := 0;
              pesol       := 0;
              total       := 0;
              temp.First;
              while not temp.eof do
              begin
                  if nota_aux <> temp.fieldbyname('CM2NUMERO').AsInteger THEN
                  BEGIN
                      qtdvol      := qtdvol + temp.fieldbyname('CM2QTDVOL').AsFloat;
                      pesob       := pesob  + temp.fieldbyname('CM2PESOB' ).AsFloat;
                      pesol       := pesol  + temp.fieldbyname('CM2PESOL' ).AsFloat;
                  END;
                  total       := total  + temp.fieldbyname('CM2VALOR' ).AsFloat;
                  nota_aux := temp.fieldbyname('CM2NUMERO').AsInteger;
                  temp.next;
              end;

          end;
end;

procedure TFrm_min3.BitBtn6Click(Sender: TObject);
begin
   qtdvol_simp := 0;
   total_simp  := 0;
   imp_cabeca;
   panel5.visible := false;
end;

procedure TFrm_min3.detalhe_simples;
begin

      mlin:=mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,Tb_min3CM2NUMERO.AsString,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,015,Tb_min3CM2CODIGO.asstring,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,032,Tb_min3NOMCLI.asstring,mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,110,FormatFloat('0000',   QTDVOL),mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,125,FormatFloat('###,##0.00',TOTAL),mreduz);
      qtdvol_simp := qtdvol_simp+qtdvol;
      total_simp  := total_simp+total;

end;

procedure TFrm_min3.total_simples;
begin

      mlin := mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,001,insere2('_','_',136),mreduz);
      mlin := mlin+1;
      form_impres_min3.Rdprint1.Impf(mlin,110,FormatFloat('0000',   QTDVOL_simp),mreduz);
      form_impres_min3.Rdprint1.Impf(mlin,125,FormatFloat('###,##0.00',TOTAL_simp),mreduz);

end;

procedure TFrm_min3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_min3.MDATAFExit(Sender: TObject);
begin
if trim(MDATAF.Text)<>'/  /' then
   begin
   try
     MDATAF.Text:=FormatDatetime(fdt2,StrtoDate(MDATAF.Text));
   except
     fMensagem('Data Invalida!',0,['0'],0);
     MDATAF.SetFocus;
     end;
  end;

end;

END.

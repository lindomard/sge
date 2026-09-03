unit S_AJCOMIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,S_DM6,lerarq,db,dbtables,func;

type
  TFrm_AJCOMIS = class(TFrm_C)
    Label1: TLabel;
    DBE_FATOR_INI: TDBEdit;
    Label2: TLabel;
    DBE_FATOR_TER: TDBEdit;
    Label3: TLabel;
    DBE_COMIS: TDBEdit;
    gb_conclusao: TGroupBox;
    Label4: TLabel;
    DBE_USRINC: TDBEdit;
    NOMUSR_INC: TEdit;
    Label5: TLabel;
    DBE_DATHOR_INC: TDBEdit;
    Label6: TLabel;
    DBE_USRALT: TDBEdit;
    NOMUSR_ALT: TEdit;
    Label7: TLabel;
    DBE_DATHOR_ALT: TDBEdit;
    memo_obs: TMemo;
    Src_AjComis: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure BBnAtuClick(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure Src_AjComisDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
  private
    { Private declarations }
    function fAjComislerant(ptipo: Integer):Boolean;

  public
    { Public declarations }
  end;

function fAjComisgant(ptipo: Integer): Boolean;

var
  Frm_AJCOMIS: TFrm_AJCOMIS;
  ori_ajcomis: string;
  moper_ajcomis: Integer=0;
  mfator_ini_ant: Real;
  mfator_ter_ant: Real;


implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_AJCOMIS.BBnAtuClick(Sender: TObject);
begin
  inherited;
If DM6.Tb_AJCOMIS.State in [dsInsert, dsEdit] then
   begin
   Case fMensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CANCELAR.Click;
      end;
   end;

if ori_ajcomis='consulta' then
   begin
   fAjComislerant(0);
   end
else
   flcadAJCOMIS(CAMPO.ItemIndex,0,Edit1.Text);
end;

function tfrm_AJCOMIS.fAjComislerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
minstru:=' Select ';
v:='';
for x:=0 to DM6.Tb_AJCOMIS.FieldCount-1 do
   begin
   if DM6.Tb_AJCOMIS.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM6.Tb_AJCOMIS.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADAJCOMIS where AJC_CODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM6.Tb_AJCOMIS.Close;
DM6.Tb_AJCOMIS.SQL.Clear;
DM6.Tb_AJCOMIS.SQL.add(minstru);
DM6.Tb_AJCOMIS.Open;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator1.Enabled:=False;
DBGrid1.Enabled     :=False;
end;

procedure TFrm_AJCOMIS.INCLUIRClick(Sender: TObject);
begin
  inherited;
DM6.Tb_AJCOMIS.Append;
moper_ajcomis:=0;
DM6.Tb_AJCOMISAJC_DATHOR_INC.AsDateTime:=now;
DM6.Tb_AJCOMISAJC_USRINC.Value         :=codusr;
NOMUSR_INC.Text :='';
if codusr=1111 then
   NOMUSR_INC.Text:='Programador(master)'
else
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',IntToStr(codusr)) then
      NOMUSR_INC.Text:=DM1.Query1.Fields[0].AsString;
   end;

mfator_ini_ant:=0;
mfator_ter_ant:=0;
PC1.ActivePage:=tsCad;
DBE_FATOR_INI.SetFocus;

end;

procedure TFrm_AJCOMIS.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_AJCOMISAJC_FATOR_INI.IsNull then
   begin
   fmensagem('Nao ha registro a ser alterado!',0,['0'],0);
   CANCELARClick(self);
   exit;
   end;
moper_ajcomis:=8;
mfator_ini_ant:=DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat;
mfator_ter_ant:=DM6.Tb_AJCOMISAJC_FATOR_TER.AsFloat;

DM6.Tb_AJCOMIS.Edit;
PC1.ActivePage:=tsCad;
DBE_FATOR_INI.SetFocus;
DM6.Tb_AJCOMISAJC_DATHOR_ALT.AsDateTime:=now;
DM6.Tb_AJCOMISAJC_USRALT.AsFloat       :=codusr;
NOMUSR_ALT.Text :='';
if DM6.Tb_AJCOMISAJC_USRALT.AsFloat=1111 then
   NOMUSR_ALT.Text:='Programador(master)'
else
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_AJCOMISAJC_USRALT.AsString) then
      NOMUSR_ALT.Text:=DM1.Query1.Fields[0].AsString;
   end;


end;

procedure TFrm_AJCOMIS.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM6.Tb_AJCOMISAJC_FATOR_INI.IsNull then
   begin
   fmensagem('Nao ha registro a ser excluido!',0,['0'],0);
   exit;
   end;

if fMensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   fAjComisgant(9);
   DM6.Tb_AJCOMIS.Delete;
   end;

end;

function fAjComisgant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(AJC_CODNOV) from OLD_CADAJCOMIS');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
minstru:='Insert into OLD_CADAJCOMIS (';
v:='';
for x:=0 to DM6.Tb_AJCOMIS.FieldCount-1 do
   begin
   if DM6.Tb_AJCOMIS.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM6.Tb_AJCOMIS.Fields[x].FieldName;
   v:=',';
   end;

minstru:=minstru+',AJC_CODNOV) Select ';
v:='';
for x:=0 to DM6.Tb_AJCOMIS.FieldCount-1 do
   begin
   if DM6.Tb_AJCOMIS.Fields[x].FieldKind=fkCalculated then
      Continue;
   if DM6.Tb_AJCOMIS.Fields[x].FieldName='AJC_STATUS' then
      minstru:=minstru+v+FormatFloat('0',ptipo)+' as AJC_STATUS '
   else if DM6.Tb_AJCOMIS.Fields[x].FieldName='AJC_USREXC' then
      minstru:=minstru+v+FormatFloat('0',codusr)+' as AJC_USREXC '
   else if DM6.Tb_AJCOMIS.Fields[x].FieldName='AJC_USREXC' then
      minstru:=minstru+v+' SYSDATE as AJC_DATHOR_EXC '
   else
      minstru:=minstru+v+DM6.Tb_AJCOMIS.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as FCODNOV ';
minstru:=minstru+' from CADAJCOMIS where AJC_CODEMP=0'+DM6.Tb_AJCOMISAJC_CODEMP.AsString
                +' and AJC_FATOR_INI=0'+mudavp(DM6.Tb_AJCOMISAJC_FATOR_INI.AsString)
                +' and AJC_FATOR_TER=0'+mudavp(DM6.Tb_AJCOMISAJC_FATOR_TER.AsString);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('Erro ao Fazer o Backup da Alteracao AJCOMIS210. Contactar Suporte',0,['0'],0);
   end;
result:=True;


end;

procedure TFrm_AJCOMIS.GRAVARClick(Sender: TObject);
begin
  inherited;
if (DM6.Tb_AJCOMISAJC_FATOR_INI.IsNull) then
   begin
   verteclado(0);
   fMensagem('Fator Inicial Invalida!',0,['0'],0);
   DBE_FATOR_INI.SetFocus;
   exit;
   end;
if DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat<0 then
   begin
   if DM6.Tb_AJCOMISAJC_FATOR_TER.AsFloat>0 then
      begin
      fMensagem('Fator Final tem que ser um valor abaixo de .01',0,['0'],0);
      DBE_FATOR_INI.SetFocus;
      exit;
      end;
   end;
if DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat>=0 then
   begin
   if DM6.Tb_AJCOMISAJC_FATOR_TER.AsFloat<DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat then
      begin
      fMensagem('Fator Final nao pode ser menor que o inicial',0,['0'],0);
      DBE_FATOR_INI.SetFocus;
      exit;
      end;
   end;
if moper_ajcomis=0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select AJC_FATOR_INI,AJC_FATOR_TER, AJC_COMIS  from '
                     +' CADAJCOMIS  where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' AJC_CODEMP=0'+IntToStr(codemp)+' and ')
                     +'( '+mudavp(DM6.Tb_AJCOMISAJC_FATOR_INI.AsString)+'>=AJC_FATOR_INI '
                     +' and AJC_FATOR_TER>='+mudavp(DM6.Tb_AJCOMISAJC_FATOR_INI.AsString)+')'
                     +' or (AJC_FATOR_INI>='+mudavp(DM6.Tb_AJCOMISAJC_FATOR_INI.AsString)
                     +'   and AJC_FATOR_INI<='+mudavp(DM6.Tb_AJCOMISAJC_FATOR_TER.AsString)+')');

   DM1.Query1.Open;
//   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Ja Existe um Registro na Faixa Inclusa: '
               +' Fator Entre: '+FormatFloat(mcasas_pct, DM1.Query1.fieldbyName('AJC_FATOR_INI').AsFloat)
               +' a: '+FormatFloat(mcasas_pct, DM1.Query1.fieldbyName('AJC_FATOR_TER').AsFloat)
               +#13+' Comissao: '+FormatFloat(mcasas_pct, DM1.Query1.fieldbyName('AJC_COMIS').AsFloat),0,['0'],0);
      DBE_FATOR_INI.SetFocus;
      exit;
      end;
   end
else if moper_ajcomis=8 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select AJC_FATOR_INI,AJC_FATOR_TER, AJC_COMIS  from '
                     +' CADAJCOMIS  where '
                     +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'',' AJC_CODEMP=0'+IntToStr(codemp)+' and ')
                     +'(( '+mudavp(DM6.Tb_AJCOMISAJC_FATOR_INI.AsString)+'>=AJC_FATOR_INI '
                     +' and AJC_FATOR_TER>='+mudavp(DM6.Tb_AJCOMISAJC_FATOR_INI.AsString)+')'
                     +' or (AJC_FATOR_INI>='+mudavp(DM6.Tb_AJCOMISAJC_FATOR_INI.AsString)
                     +'   and AJC_FATOR_INI<='+mudavp(DM6.Tb_AJCOMISAJC_FATOR_TER.AsString)+') )'
                     +' and (AJC_FATOR_INI<>'+mudavp(FloatToStr(mfator_ini_ant))
                     +'      and AJC_FATOR_TER<>'+mudavp(FloatToStr(mfator_ter_ant))+')');
//   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   DM1.Query1.Open;

   if not DM1.Query1.IsEmpty then
      begin
      fmensagem('Ja Existe um Registro na Faixa Inclusa: '
               +' Fator Entre: '+FormatFloat(mcasas_pct, DM1.Query1.fieldbyName('AJC_FATOR_INI').AsFloat)
               +' a: '+FormatFloat(mcasas_pct, DM1.Query1.fieldbyName('AJC_FATOR_TER').AsFloat)
               +#13+' Comissao: '+FormatFloat(mcasas_pct, DM1.Query1.fieldbyName('AJC_COMIS').AsFloat),0,['0'],0);
      DBE_FATOR_INI.SetFocus;
      exit;
      end;
   end;

moper_ajcomis:=8;
mfator_ini_ant:=DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat;
mfator_ter_ant:=DM6.Tb_AJCOMISAJC_FATOR_TER.AsFloat;


if moper_ajcomis=8 then
   fAjComisgant(moper_ajcomis);
PC1.ActivePage:=tsCad;
DM6.Tb_AJCOMIS.Post;
CANCELAR.Click;

end;

procedure TFrm_AJCOMIS.CANCELARClick(Sender: TObject);
begin
  inherited;
DM6.Tb_AJCOMIS.Cancel;
moper_ajcomis:=0;

end;

procedure TFrm_AJCOMIS.Src_AjComisDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
if not (DM6.Tb_AJCOMIS.State in [dsEdit,dsInsert]) then
   begin
   NOMUSR_INC.Text :='';
   if DM6.Tb_AJCOMISAJC_USRINC.AsFloat<>0 then
      begin
      if DM6.Tb_AJCOMISAJC_USRINC.AsFloat=1111 then
         NOMUSR_INC.Text:='Programador(master)'
      else
         begin
         if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_AJCOMISAJC_USRINC.AsString) then
            NOMUSR_INC.Text:=DM1.Query1.Fields[0].AsString;
         end;
      end;
   NOMUSR_ALT.Text :='';
   if DM6.Tb_AJCOMISAJC_USRALT.AsFloat<>0 then
      begin
      if DM6.Tb_AJCOMISAJC_USRALT.AsFloat=1111 then
         NOMUSR_ALT.Text:='Programador(master)'
      else
         begin
         if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM6.Tb_AJCOMISAJC_USRALT.AsString) then
            NOMUSR_ALT.Text:=DM1.Query1.Fields[0].AsString;
         end;
      end;
   memo_obs.Lines.Clear;
   if (DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat<0) then
      begin
      memo_obs.Lines.Add('Produtos com desconto a partir de '
                        +Formatfloat(mcasas_pct, DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat*-1)
                        +' ate '+FormatFloat(mcasas_pct, DM6.Tb_AJCOMISAJC_FATOR_TER.AsFloat*
                        iif(DM6.Tb_AJCOMISAJC_FATOR_TER.AsFloat<0,-1,1))
                        +'. a comissao sera '+iif(DM6.Tb_AJCOMISAJC_COMIS.AsFloat<0,
                                ' deduzida '+FormatFloat(mcasas_pct, DM6.Tb_AJCOMISAJC_COMIS.AsFloat*-1),
                                ' aumentada '+FormatFloat(mcasas_pct, DM6.Tb_AJCOMISAJC_COMIS.AsFloat) )
                                                                               );
      end
   else
      begin
      memo_obs.Lines.Add('Produtos com Acrescimos a partir de '
                        +Formatfloat(mcasas_pct, DM6.Tb_AJCOMISAJC_FATOR_INI.AsFloat)
                        +' ate '+FormatFloat(mcasas_pct, DM6.Tb_AJCOMISAJC_FATOR_TER.AsFloat)
                        +'. a comissao sera '+iif(DM6.Tb_AJCOMISAJC_COMIS.AsFloat<0,
                                ' deduzida '+FormatFloat(mcasas_pct, DM6.Tb_AJCOMISAJC_COMIS.AsFloat*-1),
                                ' aumentada '+FormatFloat(mcasas_pct, DM6.Tb_AJCOMISAJC_COMIS.AsFloat) ));
      end;
   end;

end;

procedure TFrm_AJCOMIS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AJCOMIS.FormShow(Sender: TObject);
begin
  inherited;
  PC1.ActivePage := tsCad;
end;

procedure TFrm_AJCOMIS.SAIRClick(Sender: TObject);
begin
  inherited;
  if ori_ajcomis = '' then close;

end;

end.

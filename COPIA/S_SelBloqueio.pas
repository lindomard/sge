unit S_SelBloqueio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DBTables, StdCtrls, Buttons, ComCtrls, ExtCtrls,func;

type
  TFrm_SelBloqueio = class(TForm)
    SpBtn_RCli: TSpeedButton;
    SpBtn_Clientes: TSpeedButton;
    SpBtn_RPro: TSpeedButton;
    SpBtn_Produtos: TSpeedButton;
    SpBtn_Vend: TSpeedButton;
    SpBtn_Fornec: TSpeedButton;
    SpBtn_UF: TSpeedButton;
    SpBtn_Cidades: TSpeedButton;
    SpBtn_Bairros: TSpeedButton;
    SpBtn_CPro: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpBtn_FornecClick(Sender: TObject);
    procedure SpBtn_UFClick(Sender: TObject);
    procedure SpBtn_CidadesClick(Sender: TObject);
    procedure SpBtn_BairrosClick(Sender: TObject);
    procedure SpBtn_RCliClick(Sender: TObject);
    procedure SpBtn_ClientesClick(Sender: TObject);
    procedure SpBtn_RProClick(Sender: TObject);
    procedure SpBtn_ProdutosClick(Sender: TObject);
    procedure SpBtn_VendClick(Sender: TObject);
    procedure SpBtn_CProClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function fCriarBloqueio(pNivel_Atual,pNivel_Sel: Integer; pCodEmp, pCodRCli,pCodRPro,pCodFor,
                        pCodVen,
                        pCodLoc,pCodBai,pCodPro,pCodCli,pCodCPro,pGruBlq: Real; pCoduf: String): Boolean;

function fDeletaBloqueio(pNivel_Atual,pNivel_Sel: Integer; pCodEmp, pCodRCli,pCodRPro,pCodFor,
                        pCodVen,
                        pCodLoc,pCodBai,pCodPro,pCodCli,pCodCPro,pGruBlq: Real; pCoduf: String): Boolean;

var
  Frm_SelBloqueio: TFrm_SelBloqueio;
  Node_Temp: TTreeNode;
  mNivel_Incluir: Integer=-1;
implementation

uses S_DM1, DB, S_BloqueioVenda, S_BloqueioVenda_Seleciona;

{$R *.dfm}

function fCriarBloqueio(pNivel_Atual,pNivel_Sel: Integer; pCodEmp, pCodRCli,pCodRPro,pCodFor,
                        pCodVen,
                        pCodLoc,pCodBai,pCodPro,pCodCli,pCodCPro,pGruBlq: Real; pCoduf: String): Boolean;

var
fEmpresa: String;
begin
if Pnivel_atual=pNivel_Sel then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'BQCODEMP',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODRCLI',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODRPRO',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODCPRO',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODVEN',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODFOR',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODLOC',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODBAI',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODPRO',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODCLI',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQGRUBLQ',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQGRUDUP',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODUF',ptInput);
   DM1.Query1.SQL.Add('Insert into CADBLQ (BQCODEMP ');
   DM1.Query1.SQL.Add(',BQCODRCLI');
   DM1.Query1.SQL.Add(',BQCODRPRO');
   DM1.Query1.SQL.Add(',BQCODCPRO');
   DM1.Query1.SQL.Add(',BQCODVEN');
   DM1.Query1.SQL.Add(',BQCODFOR');
   DM1.Query1.SQL.Add(',BQCODLOC');
   DM1.Query1.SQL.Add(',BQCODBAI');
   DM1.Query1.SQL.Add(',BQCODPRO');
   DM1.Query1.SQL.Add(',BQCODCLI');
   DM1.Query1.SQL.Add(',BQGRUBLQ');
   DM1.Query1.SQL.Add(',BQGRUDUP');
   DM1.Query1.SQL.Add(',BQCODUF');
   DM1.Query1.SQL.Add(') Values (');
   DM1.Query1.SQL.Add(' :BQCODEMP');
   DM1.Query1.SQL.Add(',:BQCODRCLI');
   DM1.Query1.SQL.Add(',:BQCODRPRO');
   DM1.Query1.SQL.Add(',:BQCODCPRO');
   DM1.Query1.SQL.Add(',:BQCODVEN');
   DM1.Query1.SQL.Add(',:BQCODFOR');
   DM1.Query1.SQL.Add(',:BQCODLOC');
   DM1.Query1.SQL.Add(',:BQCODBAI');
   DM1.Query1.SQL.Add(',:BQCODPRO');
   DM1.Query1.SQL.Add(',:BQCODCLI');
   DM1.Query1.SQL.Add(',:BQGRUBLQ');
   DM1.Query1.SQL.Add(',:BQGRUDUP');
   DM1.Query1.SQL.Add(',:BQCODUF )');
   DM1.Query1.ParamByName('BQCODEMP').AsFloat  :=pCodEmp;
   DM1.Query1.ParamByName('BQCODRCLI').AsFloat :=pCodRCli;
   DM1.Query1.ParamByName('BQCODRPRO').AsFloat :=pCodRPro;
   DM1.Query1.ParamByName('BQCODCPRO').AsFloat :=pCodCPro;
   DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
   DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
   DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
   DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
   DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
   DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
   DM1.Query1.ParamByName('BQGRUBLQ').AsFloat  :=pGruBlq;
   DM1.Query1.ParamByName('BQGRUDUP').AsFloat  :=pNivel_Atual;
   DM1.Query1.ParamByName('BQCODUF').AsString  :=Trim(pCoduf);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Criar o Cadastro de Bloqueio!',mtWarning,[mbOk],0);
      end;
   end
else
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADBLQ',[]) then
      fEmpresa:=''
   else
      fEmpresa:=' BQCODEMP=0'+IntTosTr(codemp)+' and ';
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'BQGRUBLQ',ptInput);
   if pCodRCli<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODRCLI',ptInput);
   if pCodRPro<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODRPRO',ptInput);
   if pCodCPro<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODCPRO',ptInput);
   if pCodVen<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODVEN',ptInput);
   if pCodFor<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODFOR',ptInput);
   if pCodLoc<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODLOC',ptInput);
   if pCodBai<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODBAI',ptInput);
   if pCodPro<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODPRO',ptInput);
   if pCodCli<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODCLI',ptInput);
   if pCoduf<>'' then
      DM1.Query1.Params.CreateParam(ftString,'BQCODUF',ptInput);
   DM1.Query1.SQL.Add('Update CADBLQ set ');
   if Pnivel_atual=mGrupo_CodVen then
      begin
      DM1.Query1.SQL.Add('BQCODVEN=:BQCODVEN where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;

      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
   else if Pnivel_atual=mGrupo_CodFor then
      begin
      DM1.Query1.SQL.Add('BQCODFOR=:BQCODFOR where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;

      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;

      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
   else if Pnivel_atual=mGrupo_CodUF then
      begin
      DM1.Query1.SQL.Add('BQCODUF=:BQCODUF where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODUF').AsString  :=pCoduf;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if pCodLoc<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;
      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
   else if Pnivel_atual=mGrupo_CodLoc then
      begin
      DM1.Query1.SQL.Add('BQCODLOC=:BQCODLOC where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;

      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
   else if Pnivel_atual=mGrupo_CodBai then
      begin
      DM1.Query1.SQL.Add('BQCODBAI=:BQCODBAI where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;

      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
   else if Pnivel_atual=mGrupo_CodRcli then
      begin
      DM1.Query1.SQL.Add('BQCODRCLI=:BQCODRCLI where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc <>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;

      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
   else if Pnivel_atual=mGrupo_CodCli then
      begin
      DM1.Query1.SQL.Add('BQCODCLI=:BQCODCLI where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc <>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;

      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
   else if Pnivel_atual=mGrupo_CodRPro then
      begin
      DM1.Query1.SQL.Add('BQCODRPRO=:BQCODRPRO where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc <>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;
      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      end
    else if Pnivel_atual=mGrupo_CodCPro then
      begin
      DM1.Query1.SQL.Add('BQCODCPRO=:BQCODCPRO where '+fEmpresa
                        +' BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;
      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc <>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
         DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      end

   else if Pnivel_atual=mGrupo_Codpro then
      begin
      DM1.Query1.SQL.Add('BQCODPRO=:BQCODPRO where '+fEmpresa
                        +'  BQGRUBLQ=0'+FloatTostr(pGruBlq));
      DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
      if pCodVen<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
         DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
         end;

      if pCodFor<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
         DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
         end;
      if Trim(pCoduf)<>'' then
         begin
         DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
         DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
         end;
      if pCodLoc <>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
         DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
         end;
      if pCodBai<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
         DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
         end;
      if pCodRCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
         DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
         end;
      if pCodCli<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
         DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
         end;
      if pCodRPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
         DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
         end;
      if pCodCPro<>0 then
         begin
         DM1.Query1.SQL.Add(' and BQCODCPRO=:BQCODCPRO ');
         DM1.Query1.ParamByName('BQCODCPRO').AsFloat  :=pCodCPro;
         end;

      end;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

      MessageDlg('Erro ao Alterar o Cadastro de Bloqueio!',mtWarning,[mbOk],0);
      end;
   end;
result:=true;
end;
procedure TFrm_SelBloqueio.FormCreate(Sender: TObject);
begin
mNivel_Incluir:=-1;
end;

procedure TFrm_SelBloqueio.SpBtn_FornecClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodFor;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_UFClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodUF;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_CidadesClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodLoc;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_BairrosClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodBai;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_RCliClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodRcli;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_ClientesClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodCli;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_RProClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodRPro;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_ProdutosClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_Codpro;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;
end;

function fDeletaBloqueio(pNivel_Atual,pNivel_Sel: Integer; pCodEmp, pCodRCli,pCodRPro,pCodFor,
                        pCodven,
                        pCodLoc,pCodBai,pCodPro,pCodCli,pCodCPro,pGruBlq: Real; pCoduf: String): Boolean;
var
fEmpresa: String;
begin
if DM1.Qr_Tid.Locate('TINOME','CADBLQ',[]) then
   fEmpresa:=''
else
   fEmpresa:=' BQCODEMP=0'+IntTosTr(codemp)+' and ';
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADBLQ where '
                  +fEmpresa
                  +' BQGRUBLQ=0'+FloatToStr(pGruBlq));
if (pNivel_Sel<>mGrupo_CodVen) and (pCodVen<>0) then
   DM1.Query1.SQL.Add(' and BQCODVEN=0'+FloatToStr(pCodVen));
if (pNivel_Sel<>mGrupo_CodFor) and (pCodFor<>0) then
   DM1.Query1.SQL.Add(' and BQCODFOR=0'+FloatToStr(pCodFor));
if (pNivel_Sel<>mGrupo_CodUF) and (Trim(pCoduf)<>'') then
   DM1.Query1.SQL.Add(' and BQCODUF='+chr(39)+pCoduf+chr(39));
if (pNivel_Sel<>mGrupo_CodLoc) and (pCodLoc<>0) then
   DM1.Query1.SQL.Add(' and BQCODLOC=0'+FloatToStr(pCodLoc));
if (pNivel_Sel<>mGrupo_CodBai) and (pCodBai<>0) then
   DM1.Query1.SQL.Add(' and BQCODBAI=0'+FloatToStr(pCodBai));
if (pNivel_Sel<>mGrupo_CodRcli) and (pCodRCli<>0) then
   DM1.Query1.SQL.Add(' and BQCODRCLI=0'+FloatToStr(pCodRCli));
if (pNivel_Sel<>mGrupo_CodCli) and (pCodCli<>0) then
   DM1.Query1.SQL.Add(' and BQCODCLI=0'+FloatToStr(pCodCli));
if (pNivel_Sel<>mGrupo_CodRPro) and (pCodRPro<>0) then
   DM1.Query1.SQL.Add(' and BQCODRPRO=0'+FloatToStr(pCodRPro));
if (pNivel_Sel<>mGrupo_Codpro) and (pCodPro<>0) then
   DM1.Query1.SQL.Add(' and BQCODPRO=0'+FloatToStr(pCodPro));
try
   DM1.Query1.Open;
except
   DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   MessageDlg('Erro ao Verificar Registros!',mtWarning,[mbOk],0);
   end;
if (DM1.Query1.Fields[0].AsInteger>1) or (pNivel_Sel=pGruBlq) then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'BQGRUBLQ',ptInput);
   if pCodRCli<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODRCLI',ptInput);
   if pCodRPro<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODRPRO',ptInput);
   if pCodVen<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODVEN',ptInput);
   if pCodFor<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODFOR',ptInput);
   if pCodLoc<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODLOC',ptInput);
   if pCodBai<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODBAI',ptInput);
   if pCodPro<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODPRO',ptInput);
   if pCodCli<>0 then
      DM1.Query1.Params.CreateParam(ftString,'BQCODCLI',ptInput);
   if pCoduf<>'' then
      DM1.Query1.Params.CreateParam(ftString,'BQCODUF',ptInput);
   DM1.Query1.SQL.Add('Delete from CADBLQ where '+fEmpresa
                     +' BQGRUBLQ=:BQGRUBLQ');
   DM1.Query1.ParamByName('BQGRUBLQ').AsFloat  :=pGruBlq;
   if pCodVen<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
      DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
      end;
   if pCodFor<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
      DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
      end;
   if Trim(pCoduf)<>'' then
      begin
      DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
      DM1.Query1.ParamByName('BQCODUF').AsString:=Trim(pCoduf);
      end;
   if pCodLoc<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
      DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
      end;
   if pCodBai<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
      DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
      end;
   if pCodRCli<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
      DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
      end;
   if pCodCli<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
      DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
      end;
   if pCodRPro<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
      DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
      end;
   if pCodPro<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
      DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
      end;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Excluir de Bloqueio!',mtWarning,[mbOk],0);
      end;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.Params.CreateParam(ftString,'BQCODVEN',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODFOR',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODUF',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODLOC',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODBAI',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODRCLI',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODCLI',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODRPRO',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'BQCODPRO',ptInput);

   DM1.Query1.SQL.Add('Update CADBLQ set ');
   mcinst:='';
   if pCodVen=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODVEN=:BQCODVEN');
      DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=0;
      mcinst:=',';
      end;

   if pCodFor=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODFOR=:BQCODFOR');
      DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=0;
      mcinst:=',';
      end;
   if Trim(pCoduf)='' then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODUF=:BQCODUF ');
      DM1.Query1.ParamByName('BQCODUF').AsString:='';
      mcinst:=',';
      end;
   if pCodLoc=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODLOC=:BQCODLOC ');
      DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
      mcinst:=',';
      end;
   if pCodBai=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODBAI=:BQCODBAI ');
      DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
      mcinst:=',';
      end;
   if pCodRCli=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODRCLI=:BQCODRCLI ');
      DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
      mcinst:=',';
      end;
   if pCodCli=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODCLI=:BQCODCLI ');
      DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
      mcinst:=',';
      end;
   if pCodRPro=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODRPRO=:BQCODRPRO ');
      DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
      mcinst:=',';
      end;
   if pCodPro=0 then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODPRO=:BQCODPRO ');
      DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
      mcinst:=',';
      end;

   if pNivel_Sel=mGrupo_CodVen then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODVEN=0 ');
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_CodFor then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODFOR=0 ');
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_CodUF then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODUF='+chr(39)+''+chr(39));
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_CodLoc then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODLOC=0 ');
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_CodBai then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODBAI=0 ');
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_CodRcli then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODRCLI=0 ');
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_CodCli then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODCLI=0 ');
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_CodRPro then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODRPRO=0 ');
      mcinst:=',';
      end
   else if pNivel_Sel=mGrupo_Codpro then
      begin
      DM1.Query1.SQL.Add(mcinst+' BQCODPRO=0 ');
      mcinst:=',';
      end;
   DM1.Query1.SQL.Add(' where '+fEmpresa
                     +' BQGRUBLQ='+FloatTostr(pGruBlq)+' ');

   if pCodVen<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODVEN=:BQCODVEN ');
      DM1.Query1.ParamByName('BQCODVEN').AsFloat  :=pCodVen;
      end;

   if pCodFor<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODFOR=:BQCODFOR ');
      DM1.Query1.ParamByName('BQCODFOR').AsFloat  :=pCodFor;
      end;
   if Trim(pCoduf)<>'' then
      begin
      DM1.Query1.SQL.Add(' and BQCODUF=:BQCODUF ');
      DM1.Query1.ParamByName('BQCODUF').AsString :=Trim(pCoduf);
      end;
   if pCodLoc<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODLOC=:BQCODLOC ');
      DM1.Query1.ParamByName('BQCODLOC').AsFloat  :=pCodLoc;
      end;
   if pCodBai<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODBAI=:BQCODBAI ');
      DM1.Query1.ParamByName('BQCODBAI').AsFloat  :=pCodBai;
      end;
   if pCodRCli<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODRCLI=:BQCODRCLI ');
      DM1.Query1.ParamByName('BQCODRCLI').AsFloat  :=pCodRCli;
      end;
   if pCodCli<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODCLI=:BQCODCLI ');
      DM1.Query1.ParamByName('BQCODCLI').AsFloat  :=pCodCli;
      end;
   if pCodRPro<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODRPRO=:BQCODRPRO ');
      DM1.Query1.ParamByName('BQCODRPRO').AsFloat  :=pCodRPro;
      end;
   if pCodPro<>0 then
      begin
      DM1.Query1.SQL.Add(' and BQCODPRO=:BQCODPRO ');
      DM1.Query1.ParamByName('BQCODPRO').AsFloat  :=pCodPro;
      end;
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

      MessageDlg('Erro ao Excluir/Alterar o Cadastro de Bloqueio!',mtWarning,[mbOk],0);
      end;
   end;
result:=true;
end;

procedure TFrm_SelBloqueio.SpBtn_VendClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodVen;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.SpBtn_CProClick(Sender: TObject);
begin
mNivel_Incluir:=mGrupo_CodCPro;
Application.CreateForm(TFrm_BloqueioVenda_Seleciona, Frm_BloqueioVenda_Seleciona);
Frm_BloqueioVenda_Seleciona.ShowModal;
Frm_BloqueioVenda_Seleciona.Free;
close;

end;

procedure TFrm_SelBloqueio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

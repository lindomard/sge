unit S_Conh_MercConfirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Buttons,func, Grids,
  DBGrids,lerarq,S_DM6, DB, DBCtrls,S_Conh_MercCons;

type
  TFrm_Conh_MercConfirma = class(TForm)
    Panel1: TPanel;
    CODCON: TEdit;
    chavedopedido: TLabel;
    bbAtualizar: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    st_chave: TStaticText;
    st_razao: TStaticText;
    st_pesob: TStaticText;
    st_qtdm3: TStaticText;
    st_vlrtot: TStaticText;
    st_fretecalc: TStaticText;
    st_fretedig: TStaticText;
    st_tipoent: TStaticText;
    dbg_pedidos: TDBGrid;
    Panel3: TPanel;
    st_codpro: TStaticText;
    st_nompro: TStaticText;
    st_qtdent: TStaticText;
    st_qtdpen: TStaticText;
    st_valfre_calc: TStaticText;
    st_valfre_dig: TStaticText;
    st_und: TStaticText;
    dbg_prod: TDBGrid;
    Src_Con01: TDataSource;
    Src_Con02: TDataSource;
    StaticText2: TStaticText;
    Label1: TLabel;
    DATAFEC: TMaskEdit;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    db_QTDPED: TDBEdit;
    db_QTDITENS: TDBEdit;
    db_PESOB: TDBEdit;
    db_QTDM3: TDBEdit;
    db_VLRTOT: TDBEdit;
    db_VALFRE: TDBEdit;
    db_VALFRE_DIG: TDBEdit;
    bbSair: TBitBtn;
    db_codtra: TDBEdit;
    db_nomtra: TDBEdit;
    sbConsultar: TSpeedButton;
    bbCancelarConf: TBitBtn;
    procedure CODCONExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DATAFECExit(Sender: TObject);
    procedure sbConsultarClick(Sender: TObject);
    procedure bbCancelarConfClick(Sender: TObject);
    procedure Src_Con02DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Conh_MercConfirma: TFrm_Conh_MercConfirma;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Conh_MercConfirma.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if (bbSair.Focused) then
   begin
   CODCON.Text:='';
   exit;
   end;
if Trim(CODCON.Text)='' then
   exit;

   if not flcadcon01(1,0,fsonumero(CODCON.Text)) then
   begin
   MessageDlg('Conhecimento não Encontrado!',mtWarning,[mbOk],0);
   DM6.Tb_Con02.close;
   DM6.Tb_Con03.close;
   CODCON.SetFocus;
   exit;
   end;
if DM6.Tb_Con01C01DATFEC.AsDateTime>pdatanula then
   DATAFEC.Text:=FormatDatetime(fdt2, DM6.Tb_Con01C01DATFEC.AsDateTime)
else
   DATAFEC.Text:=FormatDatetime(fdt2, date);

if (not DM6.Tb_Con02.Active) or
   (DM6.Tb_Con01C01CODEMP.AsFloat<>DM6.Tb_Con02C02CODEMP.AsFloat) or
   (DM6.Tb_Con01C01CODCON.AsFloat<>DM6.Tb_Con02C02CODCON.AsFloat) then
   begin
   if not flcadcon02(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                0,0,0) then
      begin
      messagedlg('Conhecimento não Encontrado!',mtWarning,[mbOk],0);
      CODCON.SetFocus;
      exit;
      end;
   end;
if (not DM6.Tb_Con03.Active) or
   (DM6.Tb_Con02C02CODEMP.AsFloat<>DM6.Tb_Con03C03CODEMP.AsFloat) or
   (DM6.Tb_Con02C02CODCON.AsFloat<>DM6.Tb_Con03C03CODCON.AsFloat) or
   (DM6.Tb_Con02C02CODEMP_PED.AsFloat<>DM6.Tb_Con03C03CODEMP_PED.AsFloat) or
   (DM6.Tb_Con02C02LOTSEQ_PED.AsFloat<>DM6.Tb_Con03C03LOTSEQ_PED.AsFloat) or
   (DM6.Tb_Con02C02CHAVE_PED.AsFloat<>DM6.Tb_Con03C03CHAVE_PED.AsFloat) then
   begin
   flcadcon03(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                DM6.Tb_Con02C02CODEMP_PED.Value,
                DM6.Tb_Con02C02LOTSEQ_PED.Value,
                DM6.Tb_Con02C02CHAVE_PED.Value);
   end;

end;

procedure TFrm_Conh_MercConfirma.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Conh_MercConfirma.bbAtualizarClick(Sender: TObject);
begin
if fsonumero(CODCON.Text)=0 then
   exit;
if trim(DATAFEC.Text)='/  /' then
   begin
   MessageDlg('Data do Fechamento Campo Obrigatório!',mtWarning,[mbOk],0);
   DATAFEC.SetFocus;
   exit;
   end;
if not flcadcon01(1,0,fsonumero(CODCON.Text)) then
   begin
   MessageDlg('Conhecimento não Encontrado!',mtWarning,[mbOk],0);
   CODCON.SetFocus;
   exit;
   end;
if DM6.Tb_Con01.IsEmpty then
   begin
   MessageDlg('Este Conhecimento Foi Excluido, verifique!',mtInformation,[mbOk],0);
   exit;
   end;
if DM6.Tb_Con01C01DATFEC.AsDateTime>pdatanula then
   begin
   MessageDlg('Este Conhecimento ja foi confirmado anteriormente!',mtInformation,[mbOk],0);
   exit;
   end;

if DM6.Tb_Con01C01ESTADO.Value>0 then
   begin
   mcinst:='Este Conhecimento pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA CONHECIMENTO '+#13
          +'e desbloqueia o mesmo';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;

DM1.Query1.close;
DM1.query1.Sql.clear;
DM1.Query1.Sql.add('Update CADCON01 set C01DATFEC='+Chr(39)+FormatDatetime(fdt, StrtoDate(DATAFEC.Text))+chr(39));
DM1.query1.Sql.Add(' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' C01CODEMP=0'+IntToStr(codemp)+' and ')
                  +' C01CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
try
   DM1.query1.execsql;
   fdm1startcommit;
except
   end;

{DM6.Tb_Con01.Edit;
DM6.Tb_Con01C01DATFEC.AsDateTime:=StrToDate(DATAFEC.Text);
DM6.Tb_Con01.Post;
 }
DM6.Tb_Con02.First;
DM1.Query4.close;
DM1.Query4.sql.Clear;
DM1.Query4.Params.CreateParam(ftString,'QTD_ENTREGANDO',ptInput);
DM1.Query4.Params.CreateParam(ftString,'QTD_ENTREGUE',ptInput);
DM1.Query4.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query4.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query4.Params.CreateParam(ftString,'CODPRO',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ITEM',ptInput);

DM1.Query4.sql.Add('Update CADP02 set P2QTD_ENTREGANDO=NVL(P2QTD_ENTREGANDO,0)-:QTD_ENTREGANDO, '
                   +' P2QTD_ENTREGUE=NVL(P2QTD_ENTREGUE,0)+:QTD_ENTREGUE where ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query4.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query4.Sql.add(' P2CODEMP=:CODEMP and ');
   end;

DM1.Query4.Sql.add(' P2LOTSEQ=:LOTSEQ ');
DM1.Query4.Sql.add(' and P2CHAVE=:CHAVE ');
DM1.Query4.Sql.add(' and P2CODPRO=:CODPRO ');
DM1.Query4.Sql.add(' and P2ITEM=:ITEM ');



While not DM6.Tb_con02.Eof do
   begin
   While not DM6.Tb_Con03.Eof do
      begin
      if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
         DM1.Query4.ParamByName('CODEMP').AsFloat      := DM6.Tb_Con03C03CODEMP_PED.AsFloat;
      DM1.Query4.ParamByName('QTD_ENTREGANDO').AsFloat := DM6.Tb_Con03C03QTDENT.AsFloat;
      DM1.Query4.ParamByName('QTD_ENTREGUE').AsFloat   := DM6.Tb_Con03C03QTDENT.AsFloat;
      DM1.Query4.ParamByName('LOTSEQ').AsFloat         := DM6.Tb_Con03C03LOTSEQ_PED.AsFloat;
      DM1.Query4.ParamByName('CHAVE').AsFloat          := DM6.Tb_Con03C03CHAVE_PED.AsFloat;
      DM1.Query4.ParamByName('CODPRO').AsFloat         := DM6.Tb_Con03C03CODPRO.AsFloat;
      DM1.Query4.ParamByName('ITEM').AsFloat           := DM6.Tb_Con03C03ITEM.AsFloat;
      try
         DM1.Query4.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query4.Sql.SaveToFile('c:\sql.txt');
         MessageDlg('Erro ao Atualizar o arquivo de Pedidos 02!',mtWarning,[mbOk],0);
         end;
      DM6.Tb_Con03.Next;
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.query1.Sql.Add('Select count(*) from CADP02 where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP>0 and ')
                     +' P2LOTSEQ=0'+DM6.Tb_Con02C02LOTSEQ_PED.AsString
                     +' and P2CHAVE=0'+DM6.Tb_Con02C02CHAVE_PED.AsString
                     +' and (P2QTD-P2QTD_ENTREGUE)<>0 ');
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      DM1.Query2.close;
      DM1.Query2.sql.Clear;
      DM1.Query2.Params.CreateParam(ftString,'LOTSEQ',ptInput);
      DM1.Query2.Params.CreateParam(ftString,'CHAVE',ptInput);
      DM1.Query2.Params.CreateParam(ftString,'DATENT',ptInput);
      DM1.Query2.Params.CreateParam(ftString,'HORENT',ptInput);
      DM1.Query2.sql.Add('Update CADP01 set P1DATENT=:DATENT, P1HORENT=:HORENT where ');
      if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
         begin
   //      DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
         DM1.Query2.Sql.add(' P1CODEMP>0 and ');
   //      DM1.Query2.Sql.add(' P1CODEMP=:CODEMP and ');
         end;
      DM1.Query2.Sql.add(' P1LOTSEQ=:LOTSEQ ');
      DM1.Query2.Sql.add(' and P1CHAVE=:CHAVE ');
      DM1.Query2.ParamByName('LOTSEQ').AsFloat   :=DM6.Tb_Con02C02LOTSEQ_PED.AsFloat;
      DM1.Query2.ParamByName('CHAVE').AsFloat    :=DM6.Tb_Con02C02CHAVE_PED.AsFloat;
      DM1.Query2.ParamByName('DATENT').AsDateTime:=StrToDate(DATAFEC.Text);
      DM1.Query2.ParamByName('HORENT').AsString  :=FormatDatetime(fhr, time);
   //   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   //      DM1.Query2.ParamByName('CODEMP').AsFloat      := DM6.Tb_Con02C02CODEMP_PED.AsFloat;
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query2.Sql.SaveToFile('c:\sql.txt');
         MessageDlg('Erro ao Atualizar o arquivo de Pedidos 01!',mtWarning,[mbOk],0);
         end;
      end;
   DM6.Tb_Con02.Next;
   end;
DM1.query4.Close;
MessageDlg('Entrega Confirmada!',mtWarning,[mbOk],0);
CODCON.SetFocus;
end;

procedure TFrm_Conh_MercConfirma.FormCreate(Sender: TObject);
begin
Frm_Conh_MercConfirma.DATAFEC.Text:=FormatDatetime(fdt2,date);
DM6.Tb_Con01.close;
DM6.Tb_Con02.close;
DM6.Tb_Con03.close;


end;

procedure TFrm_Conh_MercConfirma.DATAFECExit(Sender: TObject);
begin
if Trim(DATAFEC.Text)<>'/  /' then
   begin
   Try
      DATAFEC.Text:=FormatDateTime(fdt2, StrToDate(DATAFEC.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      DATAFEC.SetFocus;
      end;
   end;


end;

procedure TFrm_Conh_MercConfirma.sbConsultarClick(Sender: TObject);
begin
Application.Createform(TFrm_Conh_MercCons, Frm_Conh_MercCons);
Frm_Conh_MercCons.ShowModal;
if trim(Frm_Conh_MercCons.CODCON01.Text)<>'' then
   begin
   CODCON.Text:=Frm_Conh_MercCons.CODCON01.Text;
   Frm_Conh_MercCons.Free;
   CODCONExit(self);
   end
else
   Frm_Conh_MercCons.Free;

end;

procedure TFrm_Conh_MercConfirma.bbCancelarConfClick(Sender: TObject);

begin
if not flcadcon01(1,0,fsonumero(CODCON.Text)) then
   begin
   MessageDlg('Conhecimento não Encontrado!',mtWarning,[mbOk],0);
   CODCON.SetFocus;
   exit;
   end;
if DM6.Tb_Con01.IsEmpty then
   begin
   MessageDlg('Este Conhecimento Foi Excluido, verifique!',mtInformation,[mbOk],0);
   exit;
   end;
if DM6.Tb_Con01C01DATFEC.AsDateTime<=pdatanula then
   begin
   MessageDlg('Este Conhecimento ainda não foi confirmado!',mtInformation,[mbOk],0);
   exit;
   end;

if fmensagem('Quer realmente excluir  confirmação?',0,['1','2'],0)<>mrYes then
   exit;


if DM6.Tb_Con01C01ESTADO.Value>0 then
   begin
   mcinst:='Este Conhecimento pode Estar Sendo Alterado em Outra Estação,'+#13
          +'Caso não Esteja entre na opção: SISTEMA->DESBLOQUEIA CONHECIMENTO '+#13
          +'e desbloqueia o mesmo';
   verteclado(0);
   MessageDlg(mcinst,mtWarning,[mbOk],0);
   exit;
   end;
{
DM6.Tb_Con01.Edit;
DM6.Tb_Con01C01DATFEC.AsDateTime:=pdatanula;
DM6.Tb_Con01.Post;
}


DM1.Query1.close;
DM1.query1.Sql.clear;
DM1.Query1.Sql.add('Update CADCON01 set C01DATFEC='+Chr(39)+FormatDatetime(fdt, pdatanula)+chr(39));
DM1.query1.Sql.Add(' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' C01CODEMP=0'+IntToStr(codemp)+' and ')
                  +' C01CODCON=0'+DM6.Tb_Con01C01CODCON.AsString);
try
   DM1.query1.execsql;
   fdm1startcommit;
except
   end;



DM6.Tb_Con02.First;
DM1.Query4.close;
DM1.Query4.sql.Clear;
DM1.Query4.Params.CreateParam(ftString,'QTD_ENTREGANDO',ptInput);
DM1.Query4.Params.CreateParam(ftString,'QTD_ENTREGUE',ptInput);
DM1.Query4.Params.CreateParam(ftString,'LOTSEQ',ptInput);
DM1.Query4.Params.CreateParam(ftString,'CHAVE',ptInput);
DM1.Query4.Params.CreateParam(ftString,'CODPRO',ptInput);
DM1.Query4.Params.CreateParam(ftString,'ITEM',ptInput);

DM1.Query4.sql.Add('Update CADP02 set P2QTD_ENTREGANDO=NVL(P2QTD_ENTREGANDO,0)+:QTD_ENTREGANDO, '
                   +' P2QTD_ENTREGUE=NVL(P2QTD_ENTREGUE,0)-:QTD_ENTREGUE where ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   begin
   DM1.Query4.Sql.add(' P2CODEMP>0 and ');
   end;

DM1.Query4.Sql.add(' P2LOTSEQ=:LOTSEQ ');
DM1.Query4.Sql.add(' and P2CHAVE=:CHAVE ');
DM1.Query4.Sql.add(' and P2CODPRO=:CODPRO ');
DM1.Query4.Sql.add(' and P2ITEM=:ITEM ');



While not DM6.Tb_con02.Eof do
   begin
   DM1.Query2.close;
   DM1.Query2.sql.Clear;
   DM1.Query2.Params.CreateParam(ftString,'LOTSEQ',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHAVE',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'DATENT',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'HORENT',ptInput);
   DM1.Query2.sql.Add('Update CADP01 set P1DATENT=:DATENT, P1HORENT=:HORENT where ');
   if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
      begin
      DM1.Query2.Sql.add(' P1CODEMP>0 and ');
      end;
   DM1.Query2.Sql.add(' P1LOTSEQ=:LOTSEQ ');
   DM1.Query2.Sql.add(' and P1CHAVE=:CHAVE ');
   DM1.Query2.ParamByName('LOTSEQ').AsFloat   :=DM6.Tb_Con02C02LOTSEQ_PED.AsFloat;
   DM1.Query2.ParamByName('CHAVE').AsFloat    :=DM6.Tb_Con02C02CHAVE_PED.AsFloat;
   DM1.Query2.ParamByName('DATENT').AsDateTime:=pdatanula;
   DM1.Query2.ParamByName('HORENT').AsString  :=FormatDatetime(fhr, time);
   try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query2.Sql.SaveToFile('c:\sql.txt');
      MessageDlg('Erro ao Atualizar o arquivo de Pedidos 01!',mtWarning,[mbOk],0);
      end;
   DM6.Tb_Con03.first;    
   While not DM6.Tb_Con03.Eof do
      begin
      DM1.Query4.ParamByName('QTD_ENTREGANDO').AsFloat := DM6.Tb_Con03C03QTDENT.AsFloat;
      DM1.Query4.ParamByName('QTD_ENTREGUE').AsFloat   := DM6.Tb_Con03C03QTDENT.AsFloat;
      DM1.Query4.ParamByName('LOTSEQ').AsFloat         := DM6.Tb_Con03C03LOTSEQ_PED.AsFloat;
      DM1.Query4.ParamByName('CHAVE').AsFloat          := DM6.Tb_Con03C03CHAVE_PED.AsFloat;
      DM1.Query4.ParamByName('CODPRO').AsFloat         := DM6.Tb_Con03C03CODPRO.AsFloat;
      DM1.Query4.ParamByName('ITEM').AsFloat           := DM6.Tb_Con03C03ITEM.AsFloat;
      try
         DM1.Query4.ExecSQL;
         fdm1StartCommit;
      except
         DM1.Query4.Sql.SaveToFile('c:\sql.txt');
         MessageDlg('Erro ao Atualizar o arquivo de Pedidos 02!',mtWarning,[mbOk],0);
         end;
      DM6.Tb_Con03.Next;
      end;
   DM6.Tb_Con02.Next;
   end;
DM1.query4.Close;
DATAFEC.Text:='/  /';
MessageDlg('Confirmação de Entrega Cancelada!',mtWarning,[mbOk],0);
CODCON.SetFocus;

end;

procedure TFrm_Conh_MercConfirma.Src_Con02DataChange(Sender: TObject;
  Field: TField);
begin
if DM6.Tb_Con02C02CHAVE_PED.Isnull then
   DM6.Tb_Con03.Close
else
   begin
   if DM6.Tb_Con01C01CODCON.Asfloat>0 then
      begin
      if (not DM6.Tb_Con03.Active) or (DM6.Tb_Con02C02CODEMP.Asfloat<>DM6.Tb_Con03C03CODEMP.AsFloat)
          or (DM6.Tb_Con02C02CODEMP_PED.Asfloat<>DM6.Tb_Con03C03CODEMP_PED.AsFloat)
          or (DM6.Tb_Con02C02LOTSEQ_PED.Asfloat<>DM6.Tb_Con03C03LOTSEQ_PED.AsFloat)
          or (DM6.Tb_Con02C02CHAVE_PED.Asfloat<>DM6.Tb_Con03C03CHAVE_PED.AsFloat) then
          begin
          flcadcon03(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                DM6.Tb_Con02C02CODEMP_PED.Value,
                DM6.Tb_Con02C02LOTSEQ_PED.Value,
                DM6.Tb_Con02C02CHAVE_PED.Value);
         end;
      end;
   end;

end;

procedure TFrm_Conh_MercConfirma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_Relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ComCtrls, RLRichText, StdCtrls;

type
  TFrm_Relatorios = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    rlPedido: TRLReport;
    rl_cablogo: TRLBand;
    RLImage_cab: TRLImage;
    rldb_razao: TRLDBText;
    lbl_cnpj_ie: TRLMemo;
    rldb_ender: TRLDBMemo;
    rlcab_fonefax: TRLMemo;
    rlcab_email: TRLMemo;
    rl_cabhome: TRLMemo;
    rl_cabtit: TRLBand;
    lblObs: TRLLabel;
    lbl_cabchave: TRLLabel;
    RLcabcli: TRLBand;
    lbl_cabcli: TRLLabel;
    RLDBText4: TRLDBText;
    lbl_cadcnpj: TRLLabel;
    db_cnpj: TRLDBText;
    lbl_fantasia: TRLLabel;
    db_fantasia: TRLDBText;
    lbl_cadend: TRLLabel;
    db_ender: TRLDBText;
    lbl_bairro: TRLLabel;
    db_bairro: TRLDBText;
    lbl_cadloc: TRLLabel;
    db_cidade: TRLDBText;
    lbl_uf: TRLLabel;
    db_uf: TRLDBText;
    lbl_cep: TRLLabel;
    db_cep: TRLDBText;
    db_ie: TRLDBText;
    lbl_ie: TRLLabel;
    db_nomcon: TRLDBText;
    lbl_cabcont: TRLLabel;
    db_fonecon: TRLDBText;
    db_fone01: TRLDBText;
    lbl_datped: TRLLabel;
    db_datped: TRLDBText;
    lbl_pag: TRLLabel;
    db_barpag: TRLLabel;
    db_pag: TRLSystemInfo;
    db_qtdpag: TRLSystemInfo;
    db_fone: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    rl_cabitens: TRLBand;
    RLcabCodpro: TRLLabel;
    RLCabQtd: TRLLabel;
    RLCabUnd: TRLLabel;
    RLCabNome: TRLLabel;
    RLCabMarca: TRLLabel;
    RLCabPU: TRLLabel;
    RLCabTotal: TRLLabel;
    rl_cabamb: TRLBand;
    db_cabamb: TRLDBText;
    rl_detitens: TRLBand;
    RLCodPro: TRLDBText;
    RLQtd: TRLDBText;
    RLUnd: TRLDBText;
    RLMarca: TRLDBText;
    RLPU: TRLDBText;
    RLTotal: TRLDBText;
    rlnome: TRLMemo;
    rl_totbruger: TRLBand;
    lbl_totbruger: TRLLabel;
    txt_totbruger: TRLLabel;
    rl_totdesger: TRLBand;
    lbl_totdesger: TRLLabel;
    txt_totdesger: TRLLabel;
    rl_totliqger: TRLBand;
    lbl_totliqger: TRLLabel;
    txt_totliqger: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand1: TRLBand;
    RLLabel12: TRLLabel;
    rl_rodOrcCiente: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    rl_RodOrcObs: TRLBand;
    dbObsLinha03: TRLDBText;
    dbprazos: TRLDBText;
    db_formapag: TRLDBText;
    lblFormaPgto: TRLLabel;
    dbObsLinha02: TRLDBText;
    dbObsLinha01: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    rl_obs01: TRLBand;
    txt_obs01: TRLRichText;
    obs_extra: TRLMemo;
    RLBand2: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    banner: TRLLabel;
    RLSubDetail3_Servicos: TRLSubDetail;
    RLBand3: TRLBand;
    lbl_codser: TRLLabel;
    lbl_qtdser: TRLLabel;
    lbl_nomser: TRLLabel;
    lbl_pcouniser: TRLLabel;
    lbl_vtserv: TRLLabel;
    RLBand_detser: TRLBand;
    edt_codser: TRLDBText;
    edt_qtdser: TRLDBText;
    RLDBText12: TRLDBText;
    edt_pcouniser: TRLDBText;
    edt_vtserv: TRLDBText;
    edt_nomser: TRLMemo;
    RLBand_serrod: TRLBand;
    RLLabel13: TRLLabel;
    txt_totserliq: TRLLabel;
    TabSheet2: TTabSheet;
    RichEdit1: TRichEdit;
    lbl_totqtd: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    lbl_nomcli: TRLLabel;
    procedure rl_detitensBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand_detserBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_detitensAfterPrint(Sender: TObject);
    procedure rlPedidoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rl_totbrugerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totdesgerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure rl_totliqgerBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLcabcliBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure rl_cabtitBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     mRelDiv_Fortes_Descricao: Integer; // 0-Normal 1-Alternada Digitada 2-Produto Similar 9-Alternada
     mtotbrugru: Real;
     mtotdesgru: Real;
     mtotliqgru: Real;
     mtotqtdgru: Real;
     mtotitensgru: Real;
     mtotbruger: Real;
     mtotdesger: Real;
     mtotliqger: Real;

  end;

var
  Frm_Relatorios: TFrm_Relatorios;
  f: TextFile;
implementation

uses S_DM1, S_DM2, Func, lerarq, DB, S_DM4;

{$R *.dfm}

procedure TFrm_Relatorios.rl_detitensBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
mNomeTemp: String;
x: Integer;
begin
RLNome.Lines.Clear;

if mRelDiv_Fortes_Descricao=0 then
   RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString)
else if mRelDiv_Fortes_Descricao=9 then
   begin
   DM1.Query3.Close;
   DM1.Query3.sql.clear;
   DM1.Query3.SQL.Add('Select PDS_CODEMP,PDS_CODPRO,PDS_PAG,PDS_TEXTO2 AS PDS_TEXTO FROM CADPRO_SOBRE where '
                      +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDS_CODEMP=0'+DM2.Qr_CorP2CODEMP.AsString+' and ')
                        +' PDS_CODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' ORDER BY PDS_PAG ');
   DM1.Query3.Open;
   if DM1.Query3.Eof then
      RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString)
   else
      begin
      mNomeTemp:=fproctemp(41)+'.rtf';
      While not DM1.Query3.Eof do
         begin
         assignfile(f,mNomeTemp);
         rewrite(f);
         While not DM1.Query3.Eof do
            begin
            writeln(f,DM1.Query3.fieldbyName('PDS_TEXTO').AsString);
            DM1.Query3.Next;
            end;
         closefile(f);
         end;
      RichEdit1.Width:=rlnome.Width;
      RichEdit1.Lines.Clear;
      RichEdit1.lines.LoadFromFile(mNomeTemp);
      RLNome.Lines.Clear;
      mcinst4:='';
      for x:=0 to RichEdit1.Lines.Count-1 do
         begin
         mcinst4:=mcinst4+RichEdit1.Lines[x];
         end;
      RLNome.Lines.Add(mcinst4);

      DeleteFile(mNomeTemp);
      end;
   end
else if mRelDiv_Fortes_Descricao=1 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_CorP2CODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_CorP2ITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if DM1.Tb_Ped02D.IsEmpty then
      RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString)
   else
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         RLNome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end;
   end
else if mRelDiv_Fortes_Descricao=2 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_CorP2CODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_CorP2CODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_CorP2ITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if not DM1.Tb_Ped02D.IsEmpty then
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         RLNome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end
   else
      begin
//inicio

      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('SELECT * FROM '
                        +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                        +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO','',DM2.Qr_CorP2CODEMP.AsInteger
                        ,'PDSIM_CODEMP',' and '));
      DM1.Query2.SQL.Add(' PDSIM_CODPRO='+DM2.Qr_CorP2CODPRO.AsString);
      DM1.Query2.SQL.Add(' AND PDSIM_CODIGO>='+mudavp(floattostr(DM2.Qr_Cabsubmod.AsFloat))
                        +' ORDER BY PDSIM_CODIGO ');
      DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
      DM1.Query2.Open;
      if DM1.Query2.IsEmpty then
         begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.Add('SELECT * FROM '
                           +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                           +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO',' ', DM2.Qr_CorP2CODEMP.AsInteger,
                           'PDSIM_CODEMP',' and '));
         DM1.Query2.SQL.Add(' PDSIM_CODPRO='+DM2.Qr_CorP2CODPRO.AsString);
         DM1.Query2.SQL.Add(' AND PDSIM_CODIGO<='+mudavp(DM2.Qr_Cabsubmod.AsString)
                           +' ORDER BY PDSIM_CODIGO DESC ');
         DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
         DM1.Query2.Open;
         end;
      if DM1.Query2.IsEmpty then
         RLNome.Lines.Add(DM2.Qr_CorPDNOME.AsString)
      else
         RLNome.Lines.Add(DM1.Query2.fieldbyName('PDSIM_DESCRICAO').AsString);
      end;
   end;


end;

procedure TFrm_Relatorios.RLBand_detserBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
edt_nomser.Lines.Clear;

if mRelDiv_Fortes_Descricao=0 then
   edt_nomser.Lines.Add(DM2.Qr_SerPDNOME.AsString)
else if mRelDiv_Fortes_Descricao=1 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_SerP2SCODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_SerP2SCODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_SerP2SITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if DM1.Tb_Ped02D.IsEmpty then
      RLNome.Lines.Add(DM2.Qr_SerPDNOME.AsString)
   else
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         RLNome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end;
   end
else if mRelDiv_Fortes_Descricao=2 then // descricao digitada no pedido
   begin
   DM1.Tb_Ped02D.Close;
   DM1.Tb_Ped02d.SQL.Clear;
   DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+DM2.Qr_SerP2SCODEMP.AsString
                        +' and P2DTIPO=0' //+DM2.Qr_CabP1TIPO.AsString
                        +' and P2DLOTSEQ=0'+DM2.Qr_CabP1LOTSEQ.AsString
                        +' and P2DCHAVE=0'+DM2.Qr_CabP1CHAVE.AsString
                        +' and P2DORDEM=0'+DM2.Qr_CabP1ORDEM.AsString
                        +' and P2DCODPRO=0'+DM2.Qr_SerP2SCODPRO.AsString
                        +' and P2DITEM=0'+DM2.Qr_SerP2SITEM.AsString
                        +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
   DM1.Tb_Ped02d.Open;
   if not DM1.Tb_Ped02D.IsEmpty then
      begin
      While not DM1.Tb_Ped02d.Eof do
         begin
         RLNome.Lines.Add(DM1.Tb_Ped02DP2DESC.Value);
         DM1.Tb_Ped02D.Next;
         end;
      end
   else
      begin
      RLNome.Lines.Add(DM2.Qr_SerPDNOME.AsString)
      end;
   end;


end;

procedure TFrm_Relatorios.rl_detitensAfterPrint(Sender: TObject);
begin
mtotbrugru:=mtotbrugru+DM2.Qr_Cortotal.AsFloat;

mtotdesgru:=mtotdesgru+DM2.Qr_Cortotal.AsFloat-DM2.Qr_Cortotal_liquido.AsFloat;
mtotliqgru:=mtotliqgru+DM2.Qr_Cortotal_liquido.AsFloat;
mtotqtdgru:=mtotqtdgru+DM2.Qr_CorP2QTD.AsFloat;
mtotitensgru:=mtotitensgru+1;

mtotbruger:=mtotbruger+DM2.Qr_Cortotal.AsFloat;

mtotdesger:=mtotdesger+DM2.Qr_Cortotal.AsFloat-DM2.Qr_Cortotal_liquido.AsFloat;
mtotliqger:=mtotliqger+DM2.Qr_Cortotal_liquido.AsFloat;
if mtotdesger=0 then
   rl_totdesger.Visible:=false
else
   rl_totdesger.Visible:=true;
if mtotdesger=0 then
   rl_totbruger.Visible:=false
else
   rl_totbruger.Visible:=true;

end;

procedure TFrm_Relatorios.rlPedidoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
mtotbrugru:=0;

mtotdesgru:=0;
mtotliqgru:=0;
mtotqtdgru:=0;
mtotitensgru:=0;

mtotbruger:=0;

mtotdesger:=0;
mtotliqger:=0;

end;

procedure TFrm_Relatorios.rl_totbrugerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

txt_totbruger.Caption:=FormatFloat(mcasas, mtotbruger);
mtotbruger:=0;

end;

procedure TFrm_Relatorios.rl_totdesgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totdesger.Caption:=FormatFloat(mcasas, mtotdesger);
mtotdesger:=0;

end;

procedure TFrm_Relatorios.rl_totliqgerBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
txt_totliqger.Caption:=FormatFloat(mcasas, mtotliqger);
mtotliqger:=0;
lbl_totqtd.Caption:='Itens: '+FloatTosTr(mtotitensgru)+' Unidades: '+FloatTosTr(mtotqtdgru);
mtotqtdgru:=0;
mtotitensgru:=0;
end;

procedure TFrm_Relatorios.RLcabcliBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_nomcli.Caption:=DM2.Qr_Cabecf_razao.Value;
end;

procedure TFrm_Relatorios.FormCreate(Sender: TObject);
begin
DM1.Tb_Ped01VP1VDATAV.DisplayFormat  :=fdt2;
DM1.Tb_Ped01VP1VVALOR.DisplayFormat  :=mcasas;
DM2.Qr_CorP2PRECO.DisplayFormat      :='#,###.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
DM2.Qr_Corprecounitario.DisplayFormat      :='#,###.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);
DM2.Qr_AddExtP1AE_VALOR.DisplayFormat:='#,###.'+insere('0','0',DM2.Qr_CabP1QTDDECPU.AsInteger);;

DM2.Qr_Cortotal.DisplayFormat:=mCasas;
rlPedido.Borders.DrawLeft    :=true;
rlPedido.Borders.DrawRight   :=true;
rlPedido.Borders.DrawTop     :=true;
rlPedido.Borders.DrawBottom  :=true;
RLImage_cab.Borders.DrawRight:=true;
rl_cabtit.Borders.DrawTop     :=true;
rl_cabtit.Borders.DrawBottom  :=true;
RLcabcli.Borders.DrawBottom  :=true;
rl_cabamb.Borders.DrawBottom  :=true;
rl_cabitens.Borders.DrawBottom  :=true;
rl_detitens.Borders.DrawBottom  :=true;
rl_totbruger.Borders.DrawBottom  :=true;
rl_totdesger.Borders.DrawBottom  :=true;
rl_totliqger.Borders.DrawBottom  :=true;
rl_RodOrcObs.Borders.DrawBottom :=true;
rl_obs01.Borders.DrawBottom :=true;
rl_rodOrcCiente.Borders.DrawBottom :=true;

RLcabCodpro.Borders.DrawRight:=true;
RLCabQtd.Borders.DrawRight:=true;
RLCabUnd.Borders.DrawRight:=true;
//RLCabNome.Borders.DrawRight:=true;
RLCabMarca.Borders.Drawleft :=true;
RLCabMarca.Borders.DrawRight:=true;
RLCabPU.Borders.DrawRight:=true;

RLCodpro.Borders.DrawRight:=true;
RLQtd.Borders.DrawRight:=true;
RLUnd.Borders.DrawRight:=true;
//RLNome.Borders.DrawRight:=true;
RLMarca.Borders.Drawleft:=true;
RLMarca.Borders.DrawRight:=true;
RLPU.Borders.DrawRight:=true;
edt_codser.Borders.DrawRight:=true;
edt_qtdser.Borders.DrawRight:=true;
edt_pcouniser.Borders.DrawRight:=true;
edt_nomser.Borders.DrawRight:=true;

RLBand_detser.Borders.DrawBottom:=true;
RLBand_serrod.Borders.DrawBottom:=true;

lbl_totbruger.Borders.DrawRight:=true;
lbl_totdesger.Borders.DrawRight:=true;
lbl_totliqger.Borders.DrawRight:=true;

{
DM1.Query2.Close;
DM1.Query2.Sql.Clear;
DM1.Query2.Sql.add('Select LSLOGO from CADLOGSIS where LSCHAVE='+chr(39)+'CABREL'+chr(39));
if not DM1.Qr_TID.Locate('TINOME','CADLOGSIS',[]) then
   DM1.Query2.Sql.add(' and (LSCODEMP=0'+IntToStr(iif(codemp>100,codemp-100,codemp))
                         +' or LSCODEMP is null )');

DM1.Query2.Open;
if not DM1.Query2.Eof then
   begin
   if not (DM1.Query2.Fields[0].IsNull)  and  (DM1.Query2.Fields[0].AsString<>'') then
      begin
      (DM1.Query2.FieldbyName('LSLOGO') as TBlobField).SaveToFile('C:\SGE\CABREL.JPG');
      RLImage_cab.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
      RLImage_cab.Picture.LoadFromFile('C:\SGE\CABREL.JPG');
      deletefile('C:\SGE\CABREL.JPG');
      end;
   end;
}
lbl_cnpj_ie.Lines.Add('CNPJ.: '+DM1.Tb_Empcnpj_masc.Value+' I.E.: '+DM1.Tb_EmpINSCRICAO.Value);
rlcab_fonefax.Lines.clear;
mcinst4:='';
if LENGTH(DM1.Tb_EmpFONE.AsString)>2 then
   mcinst4:='Fone: '+DM1.Tb_EmpFONE.AsString
else
if LENGTH(DM1.Tb_EmpFAX.AsString)>2 then
   mcinst4:=mcinst4+' '+rlcab_fonefax.Caption+' Fax: '+DM1.Tb_EmpFAX.AsString;
rlcab_fonefax.Lines.Add(mcinst4);
rlcab_email.Lines.Clear;
if LENGTH(DM1.Tb_EmpE_MAIL.AsString)>2 then
   rlcab_email.Lines.Add('E-Mail: '+DM1.Tb_EmpE_MAIL.AsString);
rl_cabhome.Lines.Clear;

if LENGTH(DM1.Tb_EmpHOMEPAGE.AsString)>2 then
   rl_cabhome.Lines.Add('Site: '+DM1.Tb_EmpHOMEPAGE.AsString);

{
if fileexists(mcinst4) then
   begin
   RichEdit1.Width:=txt_desctecnica.Width;
   RichEdit1.Lines.Clear;
   RichEdit1.Lines.LoadFromFile(mcinst4);
   JustifyRichEdit(RichEdit1,true);
   RichEdit1.Lines.SaveToFile('c:\lobo.rtf');
   txt_desctecnica.Lines.LoadFromFile('c:\lobo.rtf');

//   txt_desctecnica. :=RichEdit1;

   end;

}





end;

procedure TFrm_Relatorios.rl_cabtitBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
lbl_cabchave.Caption:='CHAVE: '+DM2.Qr_CorP2CHAVE.AsString;
end;

end.

unit S_ManPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Mask,S_DM1,Db,dbTables,func,lerarq,
  S_Tra,S_Usr,S_PedCli,S_Ven,S_Bco,S_Con;

type
  TFrm_ManPed = class(TForm)
    Panel_cab: TPanel;
    Label1: TLabel;
    CHAVE: TEdit;
    SB1: TSpeedButton;
    Label2: TLabel;
    NOMCLI: TEdit;
    Label3: TLabel;
    ENDERECO: TEdit;
    NOMCID: TEdit;
    Panel_corpo: TPanel;
    Label33: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    UFPV: TEdit;
    Label35: TLabel;
    PLACAV: TEdit;
    Label34: TLabel;
    Label36: TLabel;
    QTDVOL: TEdit;
    Label37: TLabel;
    ESPECIE: TEdit;
    Label38: TLabel;
    PESOB: TEdit;
    Label39: TLabel;
    PESOL: TEdit;
    RGFRETEPC: TRadioGroup;
    DATENT: TMaskEdit;
    NOMDIG: TEdit;
    NOMENT: TEdit;
    CODENT: TEdit;
    CODDIG: TEdit;
    Label32: TLabel;
    Label70: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    CODEMB: TEdit;
    CODSEP: TEdit;
    CODCON: TEdit;
    NOMSEP: TEdit;
    NOMCON: TEdit;
    NOMEMB: TEdit;
    DATEMB: TMaskEdit;
    DATCON: TMaskEdit;
    DATSEP: TMaskEdit;
    panel_rod: TPanel;
    bbSair: TBitBtn;
    bbGravar: TBitBtn;
    lbl_datanf: TLabel;
    DATANF: TEdit;
    Label6: TLabel;
    NUMNF: TEdit;
    Label7: TLabel;
    VALFRE: TEdit;
    TOTALNF: TEdit;
    Label8: TLabel;
    HORENT: TMaskEdit;
    HORSEP: TMaskEdit;
    HORCON: TMaskEdit;
    HOREMB: TMaskEdit;
    DATDIG: TMaskEdit;
    HORDIG: TMaskEdit;
    Label5: TLabel;
    PREVENT: TMaskEdit;
    HPREVENT: TMaskEdit;
    Label9: TLabel;
    Label10: TLabel;
    CODVEN: TEdit;
    NOMVEN: TEdit;
    Label11: TLabel;
    CODV02: TEdit;
    NOMV02: TEdit;
    Label12: TLabel;
    CODV03: TEdit;
    NOMV03: TEdit;
    Label13: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    Label14: TLabel;
    NAUT: TEdit;
    GB_VISTO: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    DATVIS: TMaskEdit;
    NUMVIS: TEdit;
    Label15: TLabel;
    CODCV: TEdit;
    NOMCV: TEdit;
    Label16: TLabel;
    OBS1: TEdit;
    OBS2: TEdit;
    Label17: TLabel;
    CODTLV: TEdit;
    NOMTLV: TEdit;
    CB_CANHOTO: TCheckBox;
    bbAlterar: TBitBtn;
    bbCancelar: TBitBtn;
    OBS3: TEdit;
    CB_SEMCOMP: TCheckBox;
    Label18: TLabel;
    LOTSEQ: TEdit;
    CB_LEMAT: TCheckBox;
    Label4: TLabel;
    edt_codemp: TEdit;
    Label19: TLabel;
    edt_codcli: TEdit;
    edt_nomcli: TEdit;
    Timer1: TTimer;
    bbCestNCM: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure CHAVEExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure PLACAVKeyPress(Sender: TObject; var Key: Char);
    procedure PLACAVExit(Sender: TObject);
    procedure UFPVExit(Sender: TObject);
    procedure UFPVKeyPress(Sender: TObject; var Key: Char);
    procedure QTDVOLExit(Sender: TObject);
    procedure ESPECIEExit(Sender: TObject);
    procedure ESPECIEKeyPress(Sender: TObject; var Key: Char);
    procedure PESOBExit(Sender: TObject);
    procedure PESOLExit(Sender: TObject);
    procedure CODSEPExit(Sender: TObject);
    procedure CODSEPKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONExit(Sender: TObject);
    procedure CODEMBExit(Sender: TObject);
    procedure CODEMBKeyPress(Sender: TObject; var Key: Char);
    procedure CODENTKeyPress(Sender: TObject; var Key: Char);
    procedure CODDIGKeyPress(Sender: TObject; var Key: Char);
    procedure CODENTExit(Sender: TObject);
    procedure CODDIGExit(Sender: TObject);
    procedure DATENTExit(Sender: TObject);
    procedure DATSEPExit(Sender: TObject);
    procedure DATCONExit(Sender: TObject);
    procedure DATEMBExit(Sender: TObject);
    procedure HORENTExit(Sender: TObject);
    procedure HORSEPExit(Sender: TObject);
    procedure HORCONExit(Sender: TObject);
    procedure HOREMBExit(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure bbGravarClick(Sender: TObject);
    procedure PREVENTExit(Sender: TObject);
    procedure HPREVENTExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODV02KeyPress(Sender: TObject; var Key: Char);
    procedure CODV03KeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure NAUTKeyPress(Sender: TObject; var Key: Char);
    procedure NUMVISKeyPress(Sender: TObject; var Key: Char);
    procedure NUMVISExit(Sender: TObject);
    procedure NAUTExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODV02Exit(Sender: TObject);
    procedure CODV03Exit(Sender: TObject);
    procedure CODBCOExit(Sender: TObject);
    procedure DATVISExit(Sender: TObject);
    procedure CODVENChange(Sender: TObject);
    procedure CODV02Change(Sender: TObject);
    procedure CODV03Change(Sender: TObject);
    procedure CODBCOChange(Sender: TObject);
    procedure CODCVKeyPress(Sender: TObject; var Key: Char);
    procedure CODCVExit(Sender: TObject);
    procedure OBS1Exit(Sender: TObject);
    procedure OBS1KeyPress(Sender: TObject; var Key: Char);
    procedure OBS2KeyPress(Sender: TObject; var Key: Char);
    procedure OBS2Exit(Sender: TObject);
    procedure CODTLVExit(Sender: TObject);
    procedure CODTLVKeyPress(Sender: TObject; var Key: Char);
    procedure CODTLVChange(Sender: TObject);
    procedure bbAlterarClick(Sender: TObject);
    procedure bbCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure OBS3Exit(Sender: TObject);
    procedure OBS3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_codcliChange(Sender: TObject);
    procedure edt_codcliExit(Sender: TObject);
    procedure edt_codcliKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
  private
     function fManPedCarregaDados(ptipo: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Frm_ManPed: TFrm_ManPed;
  mpcodemp: Integer=0;
  maltdup: Boolean=False;
implementation

uses S_DM4, func_excecoes;

{$R *.dfm}

procedure TFrm_ManPed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ManPed.CHAVEExit(Sender: TObject);
begin
CHAVE.Text:=FloatTostr(FSonumero(CHAVE.Text));
if fsonumero(edt_codemp.Text)>0 then
   mpcodemp:=ValInt(edt_codemp.Text);
if bbSair.Focused then
   exit;
if not flcadp01(0,mpcodemp,ValInt(LOTSEQ.Text),CHAVE.Text,'') then
   begin
   fmensagem('Chave não Encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   end
else
   begin
   fManPedCarregaDados(1);
   maltdup:=False;
   bbAlterar.Enabled:=true;
   bbCestNCM.Enabled:=true;
   end;
end;

function TFrm_ManPed.fManPedCarregaDados(ptipo: Integer): Boolean;
//ptipo=0 so limpa os campos
//      1 Carrega com os dados do pedido
begin
if ptipo=0 then
   begin
   edt_codemp.Text :='';
   NOMCLI.Text        :='';
   edt_codcli.Text    :='';
   edt_nomcli.Text    :='';
   ENDERECO.Text      :='';
   NOMCID.Text        :='';
   DATANF.Text        :='';
   NUMNF.Text         :='';
   VALFRE.Text        :='';
   TOTALNF.Text       :='';
   CODTRA.Text        :='';
   NOMTRA.Text        :='';
   RGFRETEPC.ItemIndex:=0;
   PLACAV.Text        :='';
   UFPV.Text          :='';
   QTDVOL.Text        :='';
   ESPECIE.Text       :='';
   PESOB.Text         :='';
   PESOL.Text         :='';
   CODENT.Text        :='';
   NOMENT.Text        :='';
   DATENT.Text        :='';
   HORENT.Text        :='';
   PREVENT.Text       :='';
   HPREVENT.Text      :='';
   DATDIG.Text        :='/  /';
   HORDIG.Text        :=':  :';
   CODDIG.Text        :='';
   NOMDIG.Text        :='';
   CODSEP.Text        :='';
   NOMSEP.Text        :='';
   DATSEP.Text        :='';
   HORSEP.Text        :='';
   CODCON.Text        :='';
   HORCON.Text        :='';
   NOMCON.Text        :='';
   DATCON.Text        :='/  /';
   CODEMB.Text        :='';
   NOMEMB.Text        :='';
   DATEMB.Text        :='';
   HOREMB.Text        :='';
   CODVEN.Text        :='';
   NOMVEN.Text        :='';
   CODV02.Text        :='';
   NOMV02.Text        :='';
   CODV03.Text        :='';
   NOMV03.Text        :='';
   CODTLV.Text        :='';
   NOMTLV.Text        :='';
   CODBCO.Text        :='';
   NOMBCO.Text        :='Carteira';
   NAUT.Text          :='';
   DATVIS.Text        :='/  /';
   NUMVIS.Text        :='';
   CODCV.Text         :='';
   NOMCV.Text         :='';
   OBS1.Text          :='';
   OBS2.Text          :='';
   OBS3.Text          :='';
   CB_SEMCOMP.Checked :=false;
   CB_CANHOTO.Checked :=false;
   CB_LEMAT.Checked   :=false;
   end
else if ptipo=1 then
   begin
   if flqr1('CRAZAO,CLOG,CBAIRRO,CCIDADE,CUF','C','CADCLI','N','CCODCLI',DM1.Tb_Ped01p1codcli.AsString) then
      begin
      NOMCLI.Text        :=DM1.Query1.Fields[0].AsString;
      ENDERECO.Text      :=Trim(DM1.Query1.fields[1].AsString)+' '+DM1.Query1.fields[2].AsString;
      NOMCID.Text        :=Trim(DM1.Query1.Fields[3].AsString)+'-'+DM1.Query1.fields[4].AsString;
      edt_nomcli.Text    :=DM1.Query1.Fields[0].AsString;
      end
   else
      begin
      NOMCLI.Text        :='';
      ENDERECO.Text      :='';
      NOMCID.Text        :='';
      edt_nomcli.Text    :='';
      end;
   if DM1.Tb_Ped01P1DATANF.Value>=pdatanula then
      begin
      lbl_datanf.Caption :='Data da Nota:';
      DATANF.Text        :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATANF.Value);
      NUMNF.Text         :=DM1.Tb_Ped01P1NUMNF.AsString;
      end
   else
      begin
      lbl_datanf.Caption :='Data do Pedido:';
      DATANF.Text        :=FormatDatetime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
      NUMNF.Text         :='';
      end;
   if DM1.Tb_Ped01P1NUMNF.AsFloat=0 then
      edt_codcli.ReadOnly:=false
   else
      edt_codcli.ReadOnly:=true;
   edt_codcli.Text    :=DM1.Tb_Ped01P1CODCLI.AsString;
   VALFRE.Text        :=FormatFloat(mcasas, DM1.Tb_Ped01P1VALFRE.Value);
   TOTALNF.Text       :=FormatFloat(mcasas, DM1.Tb_Ped01P1TOTALL.Value);
   CODTRA.Text        :='';
   NOMTRA.Text        :='';
   CB_LEMAT.Checked   :=DM1.Tb_Ped01P1LEMAT.AsInteger=-1;
   if DM1.Tb_Ped01P1CODTRA.Value>0 then
      begin
      if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',DM1.Tb_Ped01P1CODTRA.AsString) then
         begin
         CODTRA.Text        :=DM1.Tb_Ped01P1CODTRA.AsString;
         NOMTRA.Text        :=DM1.Query1.Fields[0].AsString;
         end;
      end;
   RGFRETEPC.ItemIndex:=DM1.Tb_Ped01P1FRETEPC.AsInteger-1;
   PLACAV.Text        :=DM1.Tb_Ped01P1PLACAV.Value;
   UFPV.Text          :=DM1.Tb_Ped01P1UFPV.Value;
   QTDVOL.Text        :=DM1.Tb_Ped01P1QTDVOL.AsString;
   ESPECIE.Text       :=DM1.Tb_Ped01P1ESPECIE.Value;
   PESOB.Text         :=FormatFloat('#,##0.00', DM1.Tb_Ped01P1PESOB.Value);
   PESOL.Text         :=FormatFloat('#,##0.00', DM1.Tb_Ped01P1PESOL.Value);
   CODENT.Text        :='';
   NOMENT.Text        :='';
   if DM1.Tb_Ped01P1CODENT.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODENT.AsString) then
         begin
         CODENT.Text:=DM1.Tb_Ped01P1CODENT.AsString;
         NOMENT.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATENT.Value<=pdatanula then
      DATENT.Text     :='/  /'
   else
      DATENT.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATENT.Value);
   HORENT.Text        :=DM1.Tb_Ped01P1HORENT.Value;

   if DM1.Tb_Ped01P1PREVENT.Value<=pdatanula then
      begin
      PREVENT.Text     :='/  /';
      HPREVENT.Text    :='00:00';
      end
   else
      begin
      PREVENT.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1PREVENT.Value);
      HPREVENT.Text    :=FormatDatetime('hh:nn', DM1.Tb_Ped01P1PREVENT.Value);
      end;
   DATDIG.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAP.Value);
   HORDIG.Text        :=DM1.Tb_Ped01P1HORADIG.Value;
   CODDIG.Text        :='';
   NOMDIG.Text        :='';
   if DM1.Tb_Ped01P1CODUSR.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODUSR.AsString) then
         begin
         CODDIG.Text:=DM1.Tb_Ped01P1CODUSR.AsString;
         NOMDIG.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   CODCV.Text         :='';
   NOMCV.Text         :='';
   if DM1.Tb_Ped01P1CODCV.Value>0 then
      begin
      if flqr1('CVRAZAO','','CADCV','N','CVCODCV',DM1.Tb_Ped01P1CODCV.AsString) then
         begin
         CODCV.Text:=DM1.Tb_Ped01P1CODCV.AsString;
         NOMCV.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;


   CODSEP.Text        :='';
   NOMSEP.Text        :='';
   DATSEP.Text        :='/  /';
   if DM1.Tb_Ped01P1CODSEP.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODSEP.AsString) then
         begin
         CODSEP.Text:=DM1.Tb_Ped01P1CODSEP.AsString;
         NOMSEP.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATASEP.Value>pdatanula then
      DATSEP.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATASEP.Value);
   HORSEP.Text        :=DM1.Tb_Ped01P1HORSEP.Value;
   CODCON.Text        :='';
   NOMCON.Text        :='';
   if DM1.Tb_Ped01P1CODCON.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODCON.AsString) then
         begin
         CODCON.Text:=DM1.Tb_Ped01P1CODCON.AsString;
         NOMCON.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   HORCON.Text        :=DM1.Tb_Ped01P1HORCON.Value;
   if DM1.Tb_Ped01P1DATCON.Value<=pdatanula then
      DATCON.Text        :='/  /'
   else
      DATCON.Text        :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATCON.Value);
   CODEMB.Text        :='';
   NOMEMB.Text        :='';
   if DM1.Tb_Ped01P1CODEMB.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODEMB.AsString) then
         begin
         CODEMB.Text:=DM1.Tb_Ped01P1CODEMB.AsString;
         NOMEMB.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1DATAEMB.Value<=pdatanula then
      DATEMB.Text     :='/  /'
   else
      DATEMB.Text     :=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATAEMB.Value);
   HOREMB.Text        :=DM1.Tb_Ped01P1HOREMB.Value;

   if DM1.Tb_Ped01P1CODVEN.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_Ped01P1CODVEN.AsString) then
         begin
         CODVEN.Text:=DM1.Tb_Ped01P1CODVEN.AsString;
         NOMVEN.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1CODV02.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_Ped01P1CODV02.AsString) then
         begin
         CODV02.Text:=DM1.Tb_Ped01P1CODV02.AsString;
         NOMV02.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;

   if DM1.Tb_Ped01P1CODV03.Value>0 then
      begin
      if flqr1('VNOME','V','CADVEN','N','VCODVEN',DM1.Tb_Ped01P1CODV03.AsString) then
         begin
         CODV03.Text:=DM1.Tb_Ped01P1CODV03.AsString;
         NOMV03.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;

   if DM1.Tb_Ped01P1CODTLV.Value>0 then
      begin
      if flqr1('NOMUSR','','CADUSR','N','CODUSR',DM1.Tb_Ped01P1CODTLV.AsString) then
         begin
         CODTLV.Text:=DM1.Tb_Ped01P1CODTLV.AsString;
         NOMTLV.Text:=DM1.Query1.Fields[0].AsString;
         end
      end;
   if DM1.Tb_Ped01P1BANCO.Value>0 then
      begin
      if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',DM1.Tb_Ped01P1BANCO.AsString) then
         begin
         CODBCO.Text:=DM1.Tb_Ped01P1BANCO.AsString;
         NOMBCO.Text:=DM1.Query1.Fields[0].AsString;
         end
      end
   else
      begin
      CODBCO.Text:='';
      NOMBCO.Text:='Carteira';
      end;
   NAUT.Text:=DM1.Tb_Ped01P1NAUT.Value;
   if DM1.Tb_Ped01P1DATVIS.Value>pdatanula then
      DATVIS.Text:=FormatDateTime(fdt2, DM1.Tb_Ped01P1DATVIS.Value)
   else
      DATVIS.Text:='/  /';
   NUMVIS.Text := DM1.Tb_Ped01P1NUMVIS.Value;
   OBS1.Text   := DM1.Tb_Ped01P1OBS1.Value;
   OBS2.Text   := DM1.Tb_Ped01P1OBS2.Value;
   OBS3.Text   := DM1.Tb_Ped01P1OBS3.Value;
   CB_CANHOTO.Checked:=DM1.Tb_ped01P1CANHOTO.Asinteger=1;
   CB_SEMCOMP.Checked:=valint(DM1.Tb_Ped01P1SEMCOMP.AsString)=1;
   edt_codemp.Text:=DM1.Tb_Ped01P1CODEMP.AsString;
   end;

end;
procedure TFrm_ManPed.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frn_CX_Sintetico',Key);
   if trim(CODTRA.Text)<>'' then
      begin
      CODTRAExit(self);
      maltdup:=true;
      end;
   key:=#0;
   end;

end;

procedure TFrm_ManPed.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if ValFloat(CODTRA.Text)>0 then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      fmensagem('Transportadora não Cadastrada!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;

end;

procedure TFrm_ManPed.PLACAVKeyPress(Sender: TObject; var Key: Char);
begin
if (length(PLACAV.Text)>7) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_ManPed.PLACAVExit(Sender: TObject);
begin
if (length(PLACAV.Text)>7) then
   PLACAV.Text:=copy(PLACAV.Text,1,8);

end;

procedure TFrm_ManPed.UFPVExit(Sender: TObject);
begin
if (length(UFPV.Text)>1) then
   UFPV.Text:=copy(UFPV.Text,1,2);

end;

procedure TFrm_ManPed.UFPVKeyPress(Sender: TObject; var Key: Char);
begin
if (length(UFPV.Text)>1) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_ManPed.QTDVOLExit(Sender: TObject);
begin
QTDVOL.Text:=FloatToStr(FSonumero(QTDVOL.Text));
if ValFloat(QTDVOL.Text)<0 then
   QTDVOL.Text:='0';
if ValFloat(QTDVOL.Text)>999999999 then
   begin
   fmensagem('Quantidade de Volumes não Suportada!',0,['0'],0);
   QTDVOL.SetFocus;
   end;

end;

procedure TFrm_ManPed.ESPECIEExit(Sender: TObject);
begin
if (length(ESPECIE.Text)>19) then
   ESPECIE.Text:=copy(ESPECIE.Text,1,20);

end;

procedure TFrm_ManPed.ESPECIEKeyPress(Sender: TObject; var Key: Char);
begin
if (length(ESPECIE.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_ManPed.PESOBExit(Sender: TObject);
begin
if ValFloat(PESOB.Text)<0 then
   PESOB.Text:='0.000';
PESOB.Text:=FormatFloat('0.000',ValFloat(PESOB.Text));
if ValFloat(PESOB.Text)>99999999 then
   begin
   fmensagem('Peso não Suportado!',0,['0'],0);
   PESOB.SetFocus;
   end;


end;

procedure TFrm_ManPed.PESOLExit(Sender: TObject);
begin
if ValFloat(PESOL.Text)<0 then
   PESOL.Text:='0.000';
PESOL.Text:=FormatFloat('0.000',ValFloat(PESOL.Text));
if ValFloat(PESOL.Text)>99999999 then
   begin
   fmensagem('Peso não Suportado!',0,['0'],0);
   PESOL.SetFocus;
   end;

end;

procedure TFrm_ManPed.CODSEPExit(Sender: TObject);
begin
CODSEP.Text:=fdeixanum2(CODSEP.Text);
if ValFloat(CODSEP.Text)=0 then
   exit;
if not flcadusr(1,0,CODSEP.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODSEP.SetFocus;
   end
else
   NOMSEP.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_ManPed.CODSEPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODSEP.Text:=fChamaUsr(0,'frm_ManPed',Key);
   if trim(CODSEP.Text)<>'' then
      begin
      CODSEPExit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end;

end;

procedure TFrm_ManPed.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCON.Text:=fChamaUsr(0,'frm_ManPed',Key);
   if trim(CODCON.Text)<>'' then
      begin
      CODCONExit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end;

end;

procedure TFrm_ManPed.CODCONExit(Sender: TObject);
begin
CODCON.Text:=fdeixanum2(CODCON.Text);
if ValFloat(CODCON.Text)=0 then
   exit;
if not flcadusr(1,0,CODCON.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODCON.SetFocus;
   end
else
   NOMCON.Text:=DM4.Tb_UsrNOMUSR.Value;


end;

procedure TFrm_ManPed.CODEMBExit(Sender: TObject);
begin
CODEMB.Text:=FloatToStr(FSonumero(CODEMB.Text));
if ValFloat(CODEMB.Text)=0 then
   exit;
if not flcadusr(1,0,CODEMB.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODEMB.SetFocus;
   end
else
   NOMEMB.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_ManPed.CODEMBKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODEMB.Text:=fChamaUsr(0,'frm_ManPed',Key);
   if trim(CODEMB.Text)<>'' then
      begin
      CODEMBExit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end;

end;

procedure TFrm_ManPed.CODENTKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODENT.Text:=fChamaUsr(0,'frm_ManPed',Key);
   if trim(CODENT.Text)<>'' then
      begin
      CODENTExit(Self);
      maltdup:=true;
      end;
      
   key:=#0;
   end;


end;

procedure TFrm_ManPed.CODDIGKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODDIG.Text:=fChamaUsr(0,'frm_ManPed',Key);
   if trim(CODDIG.Text)<>'' then
      begin
      CODDIGExit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end;

end;

procedure TFrm_ManPed.CODENTExit(Sender: TObject);
begin
CODENT.Text:=FloatToStr(FSonumero(CODENT.Text));
if ValFloat(CODENT.Text)=0 then
   exit;
if not flcadusr(1,0,CODENT.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODENT.SetFocus;
   end
else
   NOMENT.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_ManPed.CODDIGExit(Sender: TObject);
begin
CODDIG.Text:=FloatToStr(FSonumero(CODDIG.Text));
if ValFloat(CODDIG.Text)=0 then
   exit;
if not flcadusr(1,0,CODDIG.Text) then
   begin
   fmensagem('Usuário não Cadastrado!',0,['0'],0);
   CODDIG.SetFocus;
   end
else
   NOMDIG.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_ManPed.DATENTExit(Sender: TObject);
begin
if Trim(DATENT.Text)<>'/  /' then
   begin
   Try
      DATENT.Text:=FormatDateTime(fdt2, StrToDate(DATENT.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATENT.SetFocus;
      end;
   end;
end;

procedure TFrm_ManPed.DATSEPExit(Sender: TObject);
begin
if Trim(DATSEP.Text)<>'/  /' then
   begin
   Try
      DATSEP.Text:=FormatDateTime(fdt2, StrToDate(DATSEP.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATSEP.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.DATCONExit(Sender: TObject);
begin
if Trim(DATCON.Text)<>'/  /' then
   begin
   Try
      DATCON.Text:=FormatDateTime(fdt2, StrToDate(DATCON.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATCON.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.DATEMBExit(Sender: TObject);
begin
if Trim(DATEMB.Text)<>'/  /' then
   begin
   Try
      DATEMB.Text:=FormatDateTime(fdt2, StrToDate(DATEMB.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      DATEMB.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.HORENTExit(Sender: TObject);
begin
if Trim(HORENT.Text)<>':  :' then
   begin
   Try
      HORENT.Text:=FormatDateTime(fhr, StrToTime(HORENT.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HORENT.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.HORSEPExit(Sender: TObject);
begin
if Trim(HORSEP.Text)<>':  :' then
   begin
   Try
      HORSEP.Text:=FormatDateTime(fhr, StrToTime(HORSEP.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HORSEP.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.HORCONExit(Sender: TObject);
begin
if Trim(HORCON.Text)<>':  :' then
   begin
   Try
      HORCON.Text:=FormatDateTime(fhr, StrToTime(HORCON.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HORCON.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.HOREMBExit(Sender: TObject);
begin
if Trim(HOREMB.Text)<>':  :' then
   begin
   Try
      HOREMB.Text:=FormatDateTime(fhr, StrToTime(HOREMB.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HOREMB.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.SB1Click(Sender: TObject);
begin
if Frm_PedCli=nil then
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
if Frm_PedCli.WindowState=wsMinimized then
   begin
   Frm_PedCli.Free;
   Frm_PedCli:=nil;
   Application.CreateForm(TFrm_PedCli, Frm_PedCli);
   end;
Frm_PedCli.ShowModal;
CHAVE.Text:=Frm_PedCli.Tb_PedP1CHAVE.AsString;
mpcodemp:=Frm_PedCli.Tb_PedP1CODEMP.AsInteger;
LOTSEQ.Text:=Frm_PedCli.Tb_PedP1LOTSEQ.AsString;
Frm_PedCli.Free;
Frm_PedCli:=nil;
if fsonumero(CHAVE.Text)>0 then
   begin
   if not flcadp01(0,mpcodemp,valint(LOTSEQ.Text),CHAVE.Text,'') then
      begin
      fmensagem('Chave não Encontrada!',0,['0'],0);
      CHAVE.SetFocus;
      end
   else
      begin
      fManPedCarregaDados(1);
      bbAlterar.Enabled:=true;
      bbCestNCM.Enabled:=true;

      bbAlterar.SetFocus;
      end;
   end;
mpcodemp:=0;
end;

procedure TFrm_ManPed.bbGravarClick(Sender: TObject);
begin
bbGravar.Enabled:=false;
mpcodemp:=0;
DM1.Query3.Close;
DM1.Query3.SQL.Clear;
{
DM1.Query3.Params.CreateParam(ftString,'P1CODEMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1LOTSEQ',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CHAVE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODUSR',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORADIG',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORCON',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PREVENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HPREVENT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODTRA',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1QTDVOL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PESOL',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PESOB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1ESPECIE',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1FRETEPC',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1UFPV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1PLACAV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODSEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATASEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HORSEP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODEMB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATAEMB',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1HOREMB',ptInput);

DM1.Query3.Params.CreateParam(ftStrin,'P1CODVEN',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODV02',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODV03',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODTLV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1BANCO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1NAUT',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1DATVIS',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1NUMVIS',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CODCV',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1OBS1',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1OBS2',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1OBS3',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1CANHOTO',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1SEMCOMP',ptInput);
DM1.Query3.Params.CreateParam(ftString,'P1SITPED',ptInput);
}

//
DM1.Query3.SQL.add('Update CADP01 SET '
                  +' P1CODUSR =:P1CODUSR, '
                  +' P1HORADIG=:P1HORADIG, '
                  +' P1CODCON =:P1CODCON, '
                  +' P1DATCON =:P1DATCON, '
                  +' P1HORCON =:P1HORCON, '
                  +' P1CODENT =:P1CODENT, '
                  +' P1DATENT =:P1DATENT, '
                  +' P1HORENT =:P1HORENT, '
                  +' P1PREVENT=:P1PREVENT, '
                  +' P1CODTRA =:P1CODTRA, '
                  +' P1QTDVOL =:P1QTDVOL, '
                  +' P1PESOL  =:P1PESOL, '
                  +' P1PESOB  =:P1PESOB, '
                  +' P1ESPECIE=:P1ESPECIE, '
                  +' P1FRETEPC=:P1FRETEPC, '
                  +' P1UFPV   =:P1UFPV, '
                  +' P1PLACAV =:P1PLACAV, '
                  +' P1CODSEP =:P1CODSEP, '
                  +' P1DATASEP=:P1DATASEP, '
                  +' P1HORSEP =:P1HORSEP, '
                  +' P1CODEMB =:P1CODEMB, '
                  +' P1DATAEMB=:P1DATAEMB, '
                  +' P1HOREMB =:P1HOREMB,'
                  +' P1CODVEN =:P1CODVEN,'
                  +' P1CODV02 =:P1CODV02,'
                  +' P1CODV03 =:P1CODV03,'
                  +' P1CODTLV =:P1CODTLV,'
                  +' P1BANCO  =:P1BANCO,'
                  +' P1NAUT   =:P1NAUT,'
                  +' P1DATVIS =:P1DATVIS,'
                  +' P1NUMVIS =:P1NUMVIS, '
                  +' P1CODCV  =:P1CODCV, '
                  +' P1OBS1   =:P1OBS1, '
                  +' P1OBS2   =:P1OBS2, '
                  +' P1OBS3   =:P1OBS3, '
                  +' P1CANHOTO=:P1CANHOTO, '
                  +' P1SEMCOMP=:P1SEMCOMP, '
                  +' P1SITPED =:P1SITPED, '
                  +' P1LEMAT=:P1LEMAT '
                  +' ,P1CODCLI=:P1CODCLI '

                  +' where '
                  +' P1CODEMP =:P1CODEMP and P1CHAVE=:P1CHAVE and P1LOTSEQ=:P1LOTSEQ ');



DM1.Query3.ParambyName('P1CODEMP').AsFloat     := DM1.Tb_Ped01P1CODEMP.Value;
DM1.Query3.ParambyName('P1LOTSEQ').AsFloat     := DM1.Tb_Ped01P1LOTSEQ.Value;
DM1.Query3.ParambyName('P1CHAVE').AsFloat      := DM1.Tb_Ped01P1CHAVE.Value;
DM1.Query3.ParambyName('P1CODUSR').AsFloat     := fsonumero(CODDIG.Text);
DM1.Query3.ParambyName('P1HORADIG').AsString   := HORDIG.Text;
DM1.Query3.ParambyName('P1CODCON').AsFloat     := fsonumero(CODCON.Text);
if Trim(DATCON.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATCON').AsDateTime:=StrtoDate(DATCON.Text)
else
   DM1.Query3.ParambyName('P1DATCON').AsDateTime:=pdatanula;
DM1.Query3.ParambyName('P1HORCON').AsString     := HORCON.Text;
DM1.Query3.ParambyName('P1CODENT').AsFloat      := Valint(CODENT.Text);
if Trim(DATENT.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATENT').AsDateTime := StrToDate(DATENT.Text)
else
   DM1.Query3.ParambyName('P1DATENT').AsDateTime := pdatanula;
DM1.Query3.ParambyName('P1HORENT').AsString      := HORENT.Text;

// inicio


if (fsonumero(HPREVENT.Text)=0) then
   HPREVENT.Text:='00:00'
else
   begin
   try
      HPREVENT.Text:=formatDatetime('hh:nn', StrTotime(HPREVENT.Text));
   except
      HPREVENT.Text:='00:00';
      end;
   end;

try
   if fsonumero(PREVENT.Text)=0 then
      PREVENT.Text:='00/00/0000';
   DM1.Query3.ParambyName('P1PREVENT').AsDateTime:=StrToDatetime(PREVENT.Text+' '+HPREVENT.Text+':00');
except
   DM1.Query3.ParambyName('P1PREVENT').AsDateTime:=pdatanula;
   end;

// termino






DM1.Query3.ParambyName('P1CODTRA').AsFloat       := ValInt(CODTRA.Text);
DM1.Query3.ParambyName('P1QTDVOL').AsFloat       := ValFloat(QTDVOL.Text);
DM1.Query3.ParambyName('P1PESOL').AsFloat        := ValFloat(PESOL.Text);
DM1.Query3.ParambyName('P1PESOB').AsFloat        := ValFloat(PESOB.Text);
DM1.Query3.ParambyName('P1ESPECIE').AsString     := ESPECIE.Text;
DM1.Query3.ParambyName('P1FRETEPC').AsFloat      := RGFRETEPC.ItemIndex+1;
DM1.Query3.ParambyName('P1UFPV').AsString        := UFPV.Text;
DM1.Query3.ParambyName('P1PLACAV').AsString      := PLACAV.Text;
DM1.Query3.ParambyName('P1CODSEP').AsFloat       := ValInt(CODSEP.Text);
if Trim(DATSEP.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATASEP').AsDateTime   :=StrtoDate(DATSEP.Text)
else
   DM1.Query3.ParambyName('P1DATASEP').AsDateTime   :=pdatanula;
DM1.Query3.ParambyName('P1HORSEP').AsString      := HORSEP.Text;
DM1.Query3.ParambyName('P1CODEMB').AsFloat       := ValInt(CODEMB.Text);
if Trim(DATEMB.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATAEMB').AsDateTime:=StrtoDate(DATEMB.Text)
else
   DM1.Query3.ParambyName('P1DATAEMB').AsDateTime:=pdatanula;
DM1.Query3.ParambyName('P1HOREMB').AsString      := HOREMB.Text;
DM1.Query3.ParambyName('P1CODVEN').AsFloat       := fsonumero(CODVEN.Text);
DM1.Query3.ParambyName('P1CODV02').AsFloat       := fsonumero(CODV02.Text);
DM1.Query3.ParambyName('P1CODV03').AsFloat       := fsonumero(CODV03.Text);
DM1.Query3.ParambyName('P1CODTLV').AsFloat       := fsonumero(CODTLV.Text);
DM1.Query3.ParambyName('P1BANCO').AsFloat        := fsonumero(CODBCO.Text);
DM1.Query3.ParambyName('P1NAUT').AsString        := NAUT.Text;
DM1.Query3.ParambyName('P1CODCV').AsFloat        := fsonumero(CODCV.Text);
if Trim(DATVIS.Text)<>'/  /'  then
   DM1.Query3.ParambyName('P1DATVIS').AsDateTime :=StrtoDate(DATVIS.Text)
else
   DM1.Query3.ParambyName('P1DATVIS').AsDateTime :=pdatanula;
DM1.Query3.ParambyName('P1NUMVIS').AsString      := NUMVIS.Text;
DM1.Query3.ParambyName('P1OBS1').AsString        := OBS1.Text;
DM1.Query3.ParambyName('P1OBS2').AsString        := OBS2.Text;
DM1.Query3.ParambyName('P1OBS3').AsString        := OBS3.Text;
DM1.Query3.ParambyName('P1CANHOTO').AsInteger    := iif(CB_CANHOTO.Checked,1,0);
DM1.Query3.ParambyName('P1SEMCOMP').AsString     := iif(CB_SEMCOMP.Checked,'1','0');
IF CB_LEMAT.Checked then
   begin
   DM1.Query3.ParambyName('P1LEMAT').AsInteger    := -1;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADDAR set CRLEMAT=-1 '
                     +' where CRNPED=0'+DM1.Tb_Ped01P1CHAVE.AsString
                     +' and CRORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString
                     +' and CRLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and CRCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADNS set NSLEMAT=-1, NSCODCLI=:CODCLI '
                     +' where NSCHAVEP=0'+DM1.Tb_Ped01P1CHAVE.AsString
                     +' and NSORDEMP=0'+DM1.Tb_Ped01P1ORDEM.AsString
                     +' and NSLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and NSCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                            +'  and NSTIPO<2 ' );
   DM1.Query1.ParamByName('CODCLI').Value := fsonumero(edt_codcli.Text);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;

   end
else
   begin
   DM1.Query3.ParambyName('P1LEMAT').AsInteger    := 0;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADDAR set CRLEMAT=0 where CRNPED=0'+DM1.Tb_Ped01P1CHAVE.AsString
                     +' and CRORDEM=0'+DM1.Tb_Ped01P1ORDEM.AsString
                     +' and CRLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and CRCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADNS set NSLEMAT=0,NSCODCLI=:CODCLI '
                     +' where NSCHAVEP=0'+DM1.Tb_Ped01P1CHAVE.AsString
                     +' and NSORDEMP=0'+DM1.Tb_Ped01P1ORDEM.AsString
                     +' and NSLOTSEQ_CP=0'+DM1.Tb_Ped01P1LOTSEQ.AsString
                     +' and NSCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString
                            +'  and NSTIPO<2 ' );

   DM1.Query1.ParamByName('CODCLI').Value := fsonumero(edt_codcli.Text);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      DM1.Query1.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   end;

DM1.Query3.ParambyName('P1SITPED').AsInteger      := 0;
DM1.Query3.ParambyName('P1CODCLI').Value          := fSonumero(edt_codcli.Text);

//DM1.Query3.ParambyName('P1CANHOTO').AsInteger    := 0;
try
   DM1.Query3.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql(11,804,'Manped','CADP01');
   end;

if maltdup then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
{
   DM1.Query2.Params.CreateParam(ftString,'CODVEN',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODV02',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODV03',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODTLV',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODBCO',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'TCB',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'LOTSEQ',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CHAVE',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Query2.Params.CreateParam(ftString,'CODCV',ptInput);
   }
   DM1.Query2.SQL.Add('Update CADDAR set CRCODVEN=:CODVEN '
                     +', CRCODV02=:CODV02, CRCODV03=:CODV03,CRCODTLV=:CODTLV '
                     +', CRCODCV=:CODCV '
                     +', CRCODBCO=:CODBCO '
                     +', CRTCB=:TCB '
                     +', CRCODCLI=:CODCLI '
                     +' where '
                     +' CRLOTSEQ_CP=:LOTSEQ '
                     +' and CRNPED=:CHAVE '
                     +' and CRCODEMP=:CODEMP ');

   DM1.Query2.ParamByName('CODVEN').AsFloat:=fsonumero(CODVEN.Text);
   DM1.Query2.ParamByName('CODV02').AsFloat:=fsonumero(CODV02.Text);
   DM1.Query2.ParamByName('CODV03').AsFloat:=fsonumero(CODV03.Text);
   DM1.Query2.ParamByName('CODTLV').AsFloat:=fsonumero(CODTLV.Text);
   DM1.Query2.ParamByName('CODBCO').AsFloat:=fsonumero(CODBCO.Text);
   if fsonumero(CODBCO.Text)=0 then
      DM1.Query2.ParamByName('TCB').AsFloat:=0
   else
      DM1.Query2.ParamByName('TCB').AsFloat:=1;
   DM1.Query2.ParamByName('CODCLI').Value  :=fsonumero(edt_codcli.Text);
   DM1.Query2.ParamByName('LOTSEQ').AsFloat:=DM1.Tb_Ped01P1LOTSEQ.Value;
   DM1.Query2.ParamByName('CHAVE').AsFloat :=DM1.Tb_Ped01P1CHAVE.Value;
   DM1.Query2.ParamByName('CODEMP').AsFloat:=DM1.Tb_Ped01P1CODEMP.Value;
   DM1.Query2.ParamByName('CODCV').AsFloat :=fsonumero(CODCV.Text);
   Try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,4027,'Frm_ManPed','CADDAR');
      end;
   end;
maltdup:=false;
fManPedCarregaDados(0);
bbAlterar.Enabled:=false;
bbCestNCM.Enabled:=false;

SB1.Enabled      :=true;
CHAVE.Enabled    :=true;
Panel_corpo.Enabled:=false;
CHAVE.SetFocus;

end;

procedure TFrm_ManPed.PREVENTExit(Sender: TObject);
begin
if Trim(PREVENT.Text)<>'/  /' then
   begin
   Try
      PREVENT.Text:=FormatDateTime(fdt2, StrToDate(PREVENT.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      PREVENT.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.HPREVENTExit(Sender: TObject);
begin
if Trim(HPREVENT.Text)<>':  :' then
   begin
   Try
      HPREVENT.Text:=FormatDateTime('hh:nn', StrToTime(HPREVENT.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HPREVENT.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.FormCreate(Sender: TObject);
begin
if DM1.Tb_PargerPCODDBC.Value=1 then
   GB_VISTO.Visible:=True
else
   GB_VISTO.Visible:=False;
LOTSEQ.Text:=IntToStr(ls_numped);
edt_codemp.Text:=IntToStr(codemp);
end;

procedure TFrm_ManPed.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_ManPed',Key);
   if trim(CODVEN.Text)<>'' then
      begin
      CODVENExit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManPed.CODV02KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODV02.Text :=fChamaVen(0,'frm_ManPed',Key);
   if trim(CODV02.Text)<>'' then
      begin
      CODV02Exit(Self);
      maltdup:=true;
      end;

   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ManPed.CODV03KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODV03.Text :=fChamaVen(0,'frm_ManPed',Key);
   if trim(CODV03.Text)<>'' then
      begin
      CODV03Exit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ManPed.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_ManPed',Key);
   if trim(CODBCO.Text)<>'' then
      begin
      CODBCOExit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManPed.NAUTKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,40,NAUT.Text,key) then
   key:=#0;
end;

procedure TFrm_ManPed.NUMVISKeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,20,NUMVIS.Text,'') then
   key:=#0;

end;

procedure TFrm_ManPed.NUMVISExit(Sender: TObject);
begin
if not fTestaTam(0,20,NUMVIS.Text,'') then
   NUMVIS.Text:=copy(NUMVIS.Text,1,20);

end;

procedure TFrm_ManPed.NAUTExit(Sender: TObject);
begin
if not fTestaTam(0,40,NAUT.Text,'') then
   NAUT.Text:=copy(NAUT.Text,1,40);

end;

procedure TFrm_ManPed.CODVENExit(Sender: TObject);
begin
if fsonumero(CODVEN.Text)<=0 then
   CODVEN.Text:=''
else
   CODVEN.Text:=fdeixanum(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      NOMVEN.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.CODV02Exit(Sender: TObject);
begin
if fsonumero(CODV02.Text)<=0 then
   CODV02.Text:=''
else
   CODV02.Text:=fdeixanum(CODV02.Text);
if Trim(CODV02.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODV02.Text) then
      NOMV02.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODV02.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.CODV03Exit(Sender: TObject);
begin
if fsonumero(CODV03.Text)<=0 then
   CODV03.Text:=''
else
   CODV03.Text:=fdeixanum(CODV03.Text);
if Trim(CODV03.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODV03.Text) then
      NOMV03.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODV03.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.CODBCOExit(Sender: TObject);
begin
if fsonumero(CODBCO.Text)<=0 then
   begin
   CODBCO.Text:='';
   NOMBCO.Text:='Carteira';
   end
else
   CODBCO.Text:=fdeixanum(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      NOMBCO.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      CODBCO.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.DATVISExit(Sender: TObject);
begin
if Trim(DATVIS.Text)<>'/  /' then
   begin
   try
      DATVIS.Text:=FormatDatetime(fdt2, StrToDate(DATVIS.Text))
   except
      fmensagem('Data Inválida!',0,['0'],0);
      DATVIS.SetFocus;
      end;
   end;
end;

procedure TFrm_ManPed.CODVENChange(Sender: TObject);
begin
if CODVEN.Modified then  maltdup:=true;
end;

procedure TFrm_ManPed.CODV02Change(Sender: TObject);
begin
if CODV02.Modified then  maltdup:=true;

end;

procedure TFrm_ManPed.CODV03Change(Sender: TObject);
begin
if CODV03.Modified then  maltdup:=true;

end;

procedure TFrm_ManPed.CODBCOChange(Sender: TObject);
begin
if CODBCO.Modified then  maltdup:=true;

end;

procedure TFrm_ManPed.CODCVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Application.CreateForm(TFrm_Con, Frm_Con);
   Frm_Con.Edit1.Text:=key;
   Frm_Con.BBnAtu.Click;
   Frm_Con.Edit1.SelStart:=1;
   Frm_Con.Edit1.SelLength:=1;
   Frm_Con.PC1.ActivePageIndex:=1;
   Con_Ori:='Frm_ManPed';
   if Frm_Con.ShowModal=mrok then
      begin
      CODCV.Text:=DM1.Tb_CVCVCODCV.AsString;
      maltdup:=true;
      end;
   Frm_Con.Free;
   key:=#0;
   end;


end;

procedure TFrm_ManPed.CODCVExit(Sender: TObject);
begin
if ValFloat(CODCV.Text)>0 then
   begin
   if not flcadcv(1,CODCV.Text) then
      begin
      fmensagem('Convênio não Cadastrada!',0,['0'],0);
      CODCV.SetFocus;
      end
   else
      NOMCV.Text:=DM1.Tb_CVCVRAZAO.Value;
   end;

end;

procedure TFrm_ManPed.OBS1Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS1.Text,'') then
   OBS1.Text:=copy(OBS1.Text,1,60);

end;

procedure TFrm_ManPed.OBS1KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS1.Text,key) then
   key:=#0;

end;

procedure TFrm_ManPed.OBS2KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS2.Text,key) then
   key:=#0;

end;

procedure TFrm_ManPed.OBS2Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS2.Text,'') then
   OBS2.Text:=copy(OBS2.Text,1,60);

end;

procedure TFrm_ManPed.CODTLVExit(Sender: TObject);
begin
if Trim(CODTLV.Text)='0' then
   CODTLV.Text:='';
if trim(CODTLV.Text)='' then
   exit;
if not flcadusr(1,0,CODTLV.Text) then
   begin
   fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
   CODTLV.SetFocus;
   end
else
   NOMTLV.Text:=DM4.Tb_UsrNOMUSR.Value;

end;

procedure TFrm_ManPed.CODTLVKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTLV.Text:=fChamaUsr(0,'frm_ManPed',Key);
   if Trim(CODTLV.Text)<>'' then
      begin
      CODTLVExit(Self);
      maltdup:=true;
      end;

   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManPed.CODTLVChange(Sender: TObject);
begin
if CODTLV.Modified then  maltdup:=true;

end;

procedure TFrm_ManPed.bbAlterarClick(Sender: TObject);
begin
if not flcadp01(0,mpcodemp,valint(LOTSEQ.Text),CHAVE.Text,'') then
   begin
   fmensagem('Chave não Encontrada!',0,['0'],0);
   CHAVE.SetFocus;
   end
else
   begin
   if (DM1.Tb_Ped01P1SITPED.Value = 1) and ( (DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime>pdatanula)
      and (trunc((now-DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime))*24*60<=1)) then
      begin

      mcinst2:=DM1.Tb_Ped01P1CODUSR.AsString+' - ';
      if DM1.Tb_Ped01P1CODUSR.AsInteger=1111 then
         mcinst2:=mcinst2+'Programador(Master)'
      else
         begin
         if flcadusr(0,0,DM1.Tb_Ped01P1CODUSR.AsString) then
            mcinst2:=mcinst2+DM4.Tb_UsrNOMUSR.AsString;
         end;
      mcinst := 'Este Pedido Sendo Alterado no Computador: '+DM1.Tb_Ped01P1COMP_ULTEVE.AsString
              + ' Pelo Usuário: '+mcinst2
              + ' Data/Hora: '+Formatdatetime('dd/mm/yyyy hh:nn:ss', DM1.Tb_Ped01P1DATHOR_ULTEVE.AsDateTime);


      fMensagem(mcinst,0,['0'],0);
      exit;
      end;
   fBloqDesPedido(1,DM1.Tb_Ped01P1CODEMP.AsInteger,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger);

   bbAlterar.Enabled:=false;
   bbCestNCM.Enabled:=False;

   SB1.Enabled      :=false;
   CHAVE.Enabled    :=false;
   fManPedCarregaDados(1);
   maltdup:=False;
   bbGravar.Enabled:=true;
   Panel_corpo.Enabled:=true;
   end;

end;

procedure TFrm_ManPed.bbCancelarClick(Sender: TObject);
begin
if bbGravar.Enabled then
   begin
   fBloqDesPedido(0,DM1.Tb_Ped01P1CODEMP.AsInteger,DM1.Tb_Ped01P1LOTSEQ.AsInteger,DM1.Tb_Ped01P1CHAVE.AsInteger);
   end;
bbGravar.Enabled:=false;
bbAlterar.Enabled:=false;
bbCestNCM.Enabled:=False;

fManPedCarregaDados(0);
SB1.Enabled      :=true;
CHAVE.Enabled    :=true;
Panel_corpo.Enabled:=false;
end;

procedure TFrm_ManPed.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
If BBGRAVAR.Enabled then
   begin
   verteclado(0);
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: begin
             BBGRAVAR.Click;
             exit;
             end;
      mrNo: begin
            bbCancelar.Click;
            exit;
            end
      else begin
           CanClose:=False;
           exit;
           end;
      end;
   end;

end;

procedure TFrm_ManPed.OBS3Exit(Sender: TObject);
begin
if not fTestaTam(0,60,OBS3.Text,'') then
   OBS3.Text:=copy(OBS3.Text,1,60);

end;

procedure TFrm_ManPed.OBS3KeyPress(Sender: TObject; var Key: Char);
begin
if not fTestaTam(1,60,OBS3.Text,key) then
   key:=#0;

end;

procedure TFrm_ManPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ManPed.edt_codcliChange(Sender: TObject);
begin
if edt_codcli.Modified then  maltdup:=true;

end;

procedure TFrm_ManPed.edt_codcliExit(Sender: TObject);
begin
if fsonumero(edt_codcli.Text)<=0 then
   edt_codcli.Text:=''
else
   edt_codcli.Text:=fdeixanum(edt_codcli.Text);
if Trim(edt_codcli.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',edt_codcli.Text) then
      edt_nomcli.Text:=DM1.Query1.Fields[0].AsString
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      if edt_codcli.Enabled then
         edt_codcli.SetFocus;
      end;
   end;

end;

procedure TFrm_ManPed.edt_codcliKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codcli.Text :=fChamaCli(0,'frm_ManPed',Key);
   if trim(edt_codcli.Text)<>'' then
      begin
      edt_codcliExit(Self);
      maltdup:=true;
      end;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_ManPed.Timer1Timer(Sender: TObject);
begin
if bbGraVar.Enabled then
   fMantemPedidoEmManutencao(0,iif(mpcodemp=0,codemp,mpcodemp),ValInt(LOTSEQ.Text),valint(CHAVE.Text));

end;

end.

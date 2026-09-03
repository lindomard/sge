unit S_Confirma_Entrega;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask,lerarq,func,db,dbtables,S_PedCli, S_SelEmp;

type
  TFrm_Confirma_Entrega = class(TForm)
    Panel_cab: TPanel;
    Label1: TLabel;
    SB1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_datanf: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    CHAVE: TEdit;
    NOMCLI: TEdit;
    ENDERECO: TEdit;
    NOMCID: TEdit;
    DATAPED: TEdit;
    TOTALNF: TEdit;
    LOTSEQ: TEdit;
    Panel_corpo: TPanel;
    panel_rodape: TPanel;
    Label5: TLabel;
    MDATAREC: TMaskEdit;
    Label6: TLabel;
    HORAREC: TMaskEdit;
    Label7: TLabel;
    NOMREC: TEdit;
    bbGravar: TBitBtn;
    bbSair: TBitBtn;
    Label33: TLabel;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    PLACAV: TEdit;
    UFPV: TEdit;
    QTDVOL: TEdit;
    ESPECIE: TEdit;
    PESOB: TEdit;
    PESOL: TEdit;
    PREVENT: TMaskEdit;
    HPREVENT: TMaskEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CHAVEExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure PLACAVExit(Sender: TObject);
    procedure PLACAVKeyPress(Sender: TObject; var Key: Char);
    procedure UFPVKeyPress(Sender: TObject; var Key: Char);
    procedure UFPVExit(Sender: TObject);
    procedure PREVENTExit(Sender: TObject);
    procedure HPREVENTExit(Sender: TObject);
    procedure QTDVOLExit(Sender: TObject);
    procedure ESPECIEExit(Sender: TObject);
    procedure ESPECIEKeyPress(Sender: TObject; var Key: Char);
    procedure PESOBExit(Sender: TObject);
    procedure PESOLExit(Sender: TObject);
    procedure MDATARECExit(Sender: TObject);
    procedure HORARECExit(Sender: TObject);
    procedure NOMRECExit(Sender: TObject);
    procedure NOMRECKeyPress(Sender: TObject; var Key: Char);
    procedure bbGravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Confirma_Entrega: TFrm_Confirma_Entrega;
  Form_PedCli: TFrm_PedCli;

implementation

uses S_DM1, S_Tra;

{$R *.dfm}

procedure TFrm_Confirma_Entrega.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Confirma_Entrega.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
LOTSEQ.Text:=IntToStr(ls_numped);
end;

procedure TFrm_Confirma_Entrega.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Confirma_Entrega.CHAVEExit(Sender: TObject);
begin
CHAVE.Text:=FloatTostr(FSonumero(CHAVE.Text));
if bbSair.Focused then
   exit;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if pbanco=0 then
   la_instrucao:=la_instrucao+' and ';
fInnerJoin(0,'CADTRA' ,'TRCODEMP','P1CODEMP' ,'TRCODTRA' ,'P1CODTRA');

DM1.Query5.Close;
DM1.Query5.SQL.Clear;
DM1.Query5.SQL.Add('Select P1CHAVE,P1LOTSEQ,P1CODCLI,CRAZAO, '
                  +'       CLOG,CBAIRRO,CCIDADE,CUF,P1DATAP '
                  +'       ,max(P1TIPO)      as P1TIPO '
                  +'       ,max(P1STATUS)    as P1STATUS '
                  +'       ,SUM(P1TOTALL)    as TOTLIQ '
                  +'       ,SUM(P1QTDVOL)    as QTDVOL'
                  +'       ,SUM(P1PESOB)     as PESOB'
                  +'       ,SUM(P1PESOL)     as PESOL'
                  +'       ,max(P1ESPECIE)   as ESPECIE'
                  +'       ,max(P1CODTRA)    as CODTRA '
                  +'       ,max(TRRAZTRA)    as NOMTRA '
                  +'       ,max(P1PLACAV)    as PLACAV '
                  +'       ,max(P1UFPV)      as UFPV '
                  +'       ,max(P1PREVENT)   as DATSAI '
                  +'       ,max(P1HPREVENT)  as HORSAI '
                  +'       ,max(P1DATHORREC) as DATHORREC'
                  +'       ,max(P1DATENT) as P1DATENT'
                  +'       ,max(P1NOMEREC)   as NOMEREC'
                  +'       ,min(P1CODEMP)    as EMPMIN '
                  +'       ,max(P1CODEMP)    as EMPMAX '
                  +'       ,max(P1NUMNF)     as NUMNF '
                  +'       ,max(P1NUMCF)     as NUMCF '
                  +' from CADP01 '+iif(la_tabelas='','',',')+la_tabelas
                  +'       '+la_Join
                  +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                  +' P1STATUS<'+mstatus_excluido+' ');
DM1.Query5.SQL.Add(' and P1LOTSEQ=0'+trim(LOTSEQ.Text));
DM1.Query5.SQL.Add(' and P1CHAVE=0'+trim(CHAVE.Text));
//DM1.Query5.SQL.Add(' and (P1DATENT is null or P1DATENT<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+')');
DM1.Query5.SQL.Add(' Group by  P1CHAVE,P1LOTSEQ,P1CODCLI,CRAZAO, '
                  +' CLOG,CBAIRRO,CCIDADE,CUF,P1DATAP ');
//DM1.Query5.SQL.SaveToFile('c:\sql.txt');
try
   DM1.Query5.Open;
except
   DM1.Query5.SQL.SaveToFile('c:\sql.txt');
   end;
if DM1.Query5.IsEmpty then
   begin
   fmensagem('Pedido nao Encontrado!',0,['0'],0);
   CHAVE.SetFocus;
   bbGravar.Enabled:=false;
   exit;
   end
else if DM1.Query5.fieldbyname('P1DATENT').AsDateTime>pdatanula then
   begin
   MessageDlg('Pedido ja confirmado a entrega em '+formatdatetime(fdt2, DM1.Query5.fieldbyname('P1DATENT').AsDateTime)
             +' as '+formatdatetime(fhr, DM1.Query5.fieldbyname('P1DATENT').AsDateTime),mtWarning,[mbOk],0);
   CHAVE.SetFocus;
   bbGravar.Enabled:=false;
   exit;
   end;


NOMCLI.Text  :=DM1.Query5.fieldbyName('CRAZAO').AsString;
ENDERECO.Text:=DM1.Query5.fieldbyName('CLOG').AsString+' '+DM1.Query5.fieldbyName('CBAIRRO').AsString ;
NOMCID.Text  :=DM1.Query5.fieldbyName('CCIDADE').AsString+'-'+DM1.Query5.fieldbyName('CUF').AsString ;
DATAPED.Text :=FormatDatetime(fdt2, DM1.Query5.fieldbyName('P1DATAP').AsDateTime);
TOTALNF.Text :=FormatFloat(mcasas, DM1.Query5.fieldbyName('TOTLIQ').AsFloat);
CODTRA.Text  :=DM1.Query5.fieldbyName('CODTRA').AsString;
NOMTRA.Text  :=DM1.Query5.fieldbyName('NOMTRA').AsString;
PLACAV.Text  :=DM1.Query5.fieldbyName('PLACAV').AsString;
UFPV.Text    :=DM1.Query5.fieldbyName('UFPV').AsString;
if DM1.Query5.fieldbyName('DATSAI').AsDateTime>pdatanula then
   PREVENT.Text :=FormatDatetime(fdt2, DM1.Query5.fieldbyName('DATSAI').AsDateTime)
else
   PREVENT.Text :='/  /';
if valint(DM1.Query5.fieldbyName('HORSAI').AsString)>0 then
   HPREVENT.Text :=FormatDatetime('hh:nn', DM1.Query5.fieldbyName('HORSAI').AsDateTime)
else
   HPREVENT.Text :=':';
QTDVOL.Text    :=DM1.Query5.fieldbyName('QTDVOL').AsString;
ESPECIE.Text   :=DM1.Query5.fieldbyName('ESPECIE').AsString;
PESOB.Text     :=FormatFloat('0.000', DM1.Query5.fieldbyName('PESOB').AsFloat);
PESOL.Text     :=FormatFloat('0.000', DM1.Query5.fieldbyName('PESOL').AsFloat);

if DM1.Query5.fieldbyName('DATHORREC').AsDateTime>pdatanula then
   begin
   MDATAREC.Text :=FormatDatetime(fdt2,    DM1.Query5.fieldbyName('DATHORREC').AsDateTime);
   HORAREC.Text  :=FormatDatetime('hh:nn', DM1.Query5.fieldbyName('DATHORREC').AsDateTime);
   end
else
   begin
   MDATAREC.Text :='/  /';
   HORAREC.Text  :=':';
   end;
NOMREC.Text   :=DM1.Query5.fieldbyName('NOMEREC').AsString;

if not (DM1.Query5.fieldbyName('P1TIPO').Asfloat=9) then
  begin
  if (DM1.Query5.fieldbyName('NUMNF').Asfloat=0) and (DM1.Query5.fieldbyName('NUMCF').Asfloat=0)  then
    begin
    fmensagem('Este Pedido Nao Emitiu Nota!',0,['0'],0);
    CHAVE.SetFocus;
    exit;
    end;
  end
else if (DM1.Query5.fieldbyName('P1STATUS').Asfloat<>1) then
  begin
  fmensagem('Este Pedido Nao Emitiu Lista de Separação!',0,['0'],0);
  CHAVE.SetFocus;
  exit;
  end;

bbGravar.Enabled:=true;
if trim(MDATAREC.Text)='/  /' then
   MDATAREC.Text:=FormatDatetime(fdt2, date);
if trim(HORAREC.Text)=':' then
   HORAREC.Text :=FormatDatetime('hh:mm', Time);
MDATAREC.SetFocus;
end;

procedure TFrm_Confirma_Entrega.FormActivate(Sender: TObject);
begin
if fsonumero(CHAVE.Text)>0 then
   CHAVEExit(self);
end;

procedure TFrm_Confirma_Entrega.SB1Click(Sender: TObject);
begin
if Form_PedCli=nil then
   Application.CreateForm(TFrm_PedCli, Form_PedCli);
Form_PedCli.ori_pedcli:='Frm_Confirma_Entrega';
Form_PedCli.ShowModal;

CHAVE.Text:=Form_PedCli.CHAVE.Text;
LOTSEQ.Text:=Form_PedCli.MLOTSEQ.Text;

Form_PedCli.Free;
Form_PedCli:=nil;
CHAVEExit(Self);
end;

procedure TFrm_Confirma_Entrega.CODTRAExit(Sender: TObject);
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

procedure TFrm_Confirma_Entrega.CODTRAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_COnfirma_Entrega',Key);
   if trim(CODTRA.Text)<>'' then
      CODTRAExit(self);
   key:=#0;
   end;


end;

procedure TFrm_Confirma_Entrega.PLACAVExit(Sender: TObject);
begin
if (length(PLACAV.Text)>7) then
   PLACAV.Text:=copy(PLACAV.Text,1,8);

end;

procedure TFrm_Confirma_Entrega.PLACAVKeyPress(Sender: TObject;
  var Key: Char);
begin
if (length(PLACAV.Text)>7) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Confirma_Entrega.UFPVKeyPress(Sender: TObject;
  var Key: Char);
begin
if (length(UFPV.Text)>1) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Confirma_Entrega.UFPVExit(Sender: TObject);
begin
if (length(UFPV.Text)>1) then
   UFPV.Text:=copy(UFPV.Text,1,2);

end;

procedure TFrm_Confirma_Entrega.PREVENTExit(Sender: TObject);
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

procedure TFrm_Confirma_Entrega.HPREVENTExit(Sender: TObject);
begin
if Trim(HPREVENT.Text)<>':' then
   begin
   Try
      HPREVENT.Text:=FormatDateTime('hh:mm', StrToTime(HPREVENT.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HPREVENT.SetFocus;
      end;
   end;

end;

procedure TFrm_Confirma_Entrega.QTDVOLExit(Sender: TObject);
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

procedure TFrm_Confirma_Entrega.ESPECIEExit(Sender: TObject);
begin
if (length(ESPECIE.Text)>19) then
   ESPECIE.Text:=copy(ESPECIE.Text,1,20);

end;

procedure TFrm_Confirma_Entrega.ESPECIEKeyPress(Sender: TObject;
  var Key: Char);
begin
if (length(ESPECIE.Text)>19) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Confirma_Entrega.PESOBExit(Sender: TObject);
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

procedure TFrm_Confirma_Entrega.PESOLExit(Sender: TObject);
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

procedure TFrm_Confirma_Entrega.MDATARECExit(Sender: TObject);
begin
if Trim(MDATAREC.Text)<>'/  /' then
   begin
   Try
      MDATAREC.Text:=FormatDateTime(fdt2, StrToDate(MDATAREC.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDATAREC.SetFocus;
      end;
   end;

end;

procedure TFrm_Confirma_Entrega.HORARECExit(Sender: TObject);
begin
if Trim(HORAREC.Text)<>':' then
   begin
   Try
      HORAREC.Text:=FormatDateTime('hh:mm', StrToTime(HORAREC.Text));
   except
      fmensagem('Hora Invalida!',0,['0'],0);
      HORAREC.SetFocus;
      end;
   end;


end;

procedure TFrm_Confirma_Entrega.NOMRECExit(Sender: TObject);
begin
if (length(NOMREC.Text)>39) then
   NOMREC.Text:=copy(NOMREC.Text,1,40);

end;

procedure TFrm_Confirma_Entrega.NOMRECKeyPress(Sender: TObject;
  var Key: Char);
begin
if (length(NOMREC.Text)>39) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Confirma_Entrega.bbGravarClick(Sender: TObject);
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;

DM1.Query1.Params.CreateParam(ftString,'PLACAV',ptinput);
DM1.Query1.Params.CreateParam(ftString,'UFPV',ptinput);
DM1.Query1.Params.CreateParam(ftString,'PREVENT',ptinput);
DM1.Query1.Params.CreateParam(ftString,'HPREVENT',ptinput);
DM1.Query1.Params.CreateParam(ftString,'ESPECIE',ptinput);
DM1.Query1.Params.CreateParam(ftString,'DATHORREC',ptinput);
DM1.Query1.Params.CreateParam(ftString,'NOMEREC',ptinput);


DM1.Query1.SQL.Add('Update CADP01 set P1CODTRA=0'+Trim(CODTRA.Text));
DM1.Query1.SQL.Add('       ,P1PLACAV=:PLACAV ');
DM1.Query1.SQL.Add('       ,P1UFPV=:UFPV');
DM1.Query1.SQL.Add('       ,P1PREVENT=:PREVENT');
DM1.Query1.SQL.Add('       ,P1HPREVENT=:HPREVENT');
if DM1.Query5.FieldByName('EMPMAX').AsFloat<>DM1.Query5.FieldByName('EMPMIN').AsFloat then
   begin
   DM1.Query1.SQL.Add('       ,P1QTDVOL=DECODE(P1CODEMP,'+DM1.Query5.FieldByName('EMPMIN').AsString
                                       +',0'+Trim(QTDVOL.Text)+',0)' );
   DM1.Query1.SQL.Add('       ,P1PESOB=DECODE(P1CODEMP,'+DM1.Query5.FieldByName('EMPMIN').AsString
                                       +',0'+mudavp(PESOB.Text)+',0)' );
   DM1.Query1.SQL.Add('       ,P1PESOL=DECODE(P1CODEMP,'+DM1.Query5.FieldByName('EMPMIN').AsString
                                       +',0'+mudavp(PESOL.Text)+',0)' );
   end
else
   begin
   DM1.Query1.SQL.Add('       ,P1QTDVOL=0'+Trim(QTDVOL.Text));
   DM1.Query1.SQL.Add('       ,P1PESOB=0'+mudavp(PESOB.Text));
   DM1.Query1.SQL.Add('       ,P1PESOL=0'+mudavp(PESOL.Text));
   end;
DM1.Query1.SQL.Add('       ,P1ESPECIE=:ESPECIE');
DM1.Query1.SQL.Add('       ,P1DATHORREC=:DATHORREC');

DM1.Query1.SQL.Add('       ,P1DATENT=:DATENT');
DM1.Query1.SQL.Add('       ,P1HORENT=:HORENT');

DM1.Query1.SQL.Add('       ,P1NOMEREC=:NOMEREC');
if trim(MDATAREC.Text)='/  /' then
   DM1.Query1.SQL.Add('       ,P1CANHOTO=0')
else
   DM1.Query1.SQL.Add('       ,P1CANHOTO=1');

DM1.Query1.SQL.Add('       where '+iif(la_Empresas='','',la_Empresas+' and ')
                  +' P1STATUS<'+mstatus_excluido+' ');
DM1.Query1.SQL.Add(' and P1LOTSEQ=0'+trim(LOTSEQ.Text));
DM1.Query1.SQL.Add(' and P1CHAVE=0'+trim(CHAVE.Text));

DM1.Query1.ParamByName('PLACAV').AsString   :=PLACAV.Text;
DM1.Query1.ParamByName('UFPV').AsString     :=UFPV.Text;
if trim(PREVENT.Text)='/  /' then
   DM1.Query1.ParamByName('PREVENT').AsDateTime:=pdatanula
else
   DM1.Query1.ParamByName('PREVENT').AsdateTime:=StrToDate(PREVENT.Text);
DM1.Query1.ParamByName('HPREVENT').AsString :=trim(HPREVENT.Text);
DM1.Query1.ParamByName('ESPECIE').AsString  :=ESPECIE.Text;
if (trim(MDATAREC.Text)='/  /') or (trim(HORAREC.Text)=':') then
   DM1.Query1.ParamByName('DATHORREC').AsDateTime:=pdatanula
else
   DM1.Query1.ParamByName('DATHORREC').AsDateTime:=StrToDateTime(MDATAREC.Text+' '+HORAREC.Text+':00');

DM1.Query1.ParamByName('NOMEREC').AsString  :=NOMREC.Text;


DM1.Query1.ParamByName('DATENT').AsString  :=MDATAREC.Text;
DM1.Query1.ParamByName('HORENT').AsString  :=HORAREC.Text;


try
   DM1.Query1.ExecSQL;
   fdm1StartCommit
except
   DM1.Query1.SQL.SaveToFile('c:\sql.txt');
   end;
CHAVE.Text     :='';
LOTSEQ.Text    :='';
NOMCLI.Text    :='';
ENDERECO.Text  :='';
NOMCID.Text    :='';
DATAPED.Text   :='/  /';
TOTALNF.Text   :='';
CODTRA.Text    :='';
NOMTRA.Text    :='';
PLACAV.Text    :='';
UFPV.Text      :='';
PREVENT.Text   :='/  /';
HPREVENT.Text  :=':  :';
QTDVOL.Text    :='';
ESPECIE.Text   :='';
PESOB.Text     :='';
PESOL.Text     :='';
MDATAREC.Text  :='/  /';
HORAREC.Text   :=':  :';
NOMREC.Text    :='';


bbGravar.Enabled:=false;


end;

procedure TFrm_Confirma_Entrega.FormKeyDown(Sender: TObject; var Key: Word;
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

end.

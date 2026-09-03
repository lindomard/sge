unit S_MFor01_Cons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls,S_DM2,S_DM1, Grids,
  DBGrids,S_For,lerarq,S_Ram,S_TCon,S_TipPro,S_Gpro;

type
  TFrm_MFor01_Cons = class(TForm)
    PcFiltros: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    CODPRO: TEdit;
    Lbx_Codpro: TListBox;
    Label5: TLabel;
    CODFOR: TEdit;
    Lbx_CodFor: TListBox;
    Label8: TLabel;
    CODGRU: TEdit;
    Lbx_CodGru: TListBox;
    Label2: TLabel;
    CODTIP: TEdit;
    Lbx_CodTPro: TListBox;
    Label7: TLabel;
    CODCON: TEdit;
    Lbx_CodCon: TListBox;
    Label9: TLabel;
    CODRAM: TEdit;
    Lbx_CodRam: TListBox;
    OMITIR_PRO: TCheckBox;
    OMITIR_FOR: TCheckBox;
    OMITIR_GRU: TCheckBox;
    OMITIR_TPRO: TCheckBox;
    OMITIR_TCON: TCheckBox;
    OMITIR_RPRO: TCheckBox;
    Panel1: TPanel;
    bbAplicar: TBitBtn;
    bbExecutar: TBitBtn;
    bbSair: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    CB_EXPFORM: TCheckBox;
    procedure bbAplicarClick(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODTIPKeyPress(Sender: TObject; var Key: Char);
    procedure CODGRUKeyPress(Sender: TObject; var Key: Char);
    procedure CODCONKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMKeyPress(Sender: TObject; var Key: Char);
    procedure CODRAMExit(Sender: TObject);
    procedure CODCONExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure CODTIPExit(Sender: TObject);
    procedure CODFORExit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure Lbx_CodproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lbx_CodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lbx_CodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lbx_CodTProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lbx_CodConKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Lbx_CodRamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure bbExecutarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MFor01_Cons: TFrm_MFor01_Cons;
  mfor01_origem: Integer=0;
  mCodPro_Ori  : String;
implementation

uses Func, S_Mfor01,s_lerarq_geral, func_excecoes;

{$R *.dfm}

procedure TFrm_MFor01_Cons.bbAplicarClick(Sender: TObject);
var
x: Integer;
begin
if mfor01_origem=1 then
   begin
   DM2.Qr_Pro.Close;
   DM2.Qr_Pro.SQL.Clear;
   DM2.Qr_Pro.SQL.Add('Select '+chr(39)+'P'+chr(39)+' OK ');
   DM2.Qr_Pro.SQL.Add('    ,PDCODEMP');
   DM2.Qr_Pro.SQL.Add('    ,PDCODPRO');
   DM2.Qr_Pro.SQL.Add('    ,PDCODBAR');
   DM2.Qr_Pro.SQL.Add('    ,PDNOME');
   DM2.Qr_Pro.SQL.Add('    ,PDNOME2');
   DM2.Qr_Pro.SQL.Add('    ,PDMARCA');
   DM2.Qr_Pro.SQL.Add('    ,PDNIVEL');
   DM2.Qr_Pro.SQL.Add('    ,PDCODFOR');
   DM2.Qr_Pro.SQL.Add('    ,PDPRECO1');
   DM2.Qr_Pro.SQL.Add('    ,PDPRECO2');
   DM2.Qr_Pro.SQL.Add('    ,PDPRECO3');
   DM2.Qr_Pro.SQL.Add('    ,PDPRECOA1');
   DM2.Qr_Pro.SQL.Add('    ,PDPRECOA2');
   DM2.Qr_Pro.SQL.Add('    ,PDPRECOA3');
   DM2.Qr_Pro.SQL.Add('    ,PDSIT');
   DM2.Qr_Pro.SQL.Add('    ,PDDTUATP1');
   DM2.Qr_Pro.SQL.Add('    ,PDUSRALT1');
   DM2.Qr_Pro.SQL.Add('    ,PDDTUATP2');
   DM2.Qr_Pro.SQL.Add('    ,PDUSRALT2');
   DM2.Qr_Pro.SQL.Add('    ,PDDTUATP3');
   DM2.Qr_Pro.SQL.Add('    ,PDUSRALT3');
   DM2.Qr_Pro.SQL.Add('       ,PDDATAUA');
   DM2.Qr_Pro.SQL.Add('       ,PDUND');
   DM2.Qr_Pro.SQL.Add('       ,PDCODGRU');
   DM2.Qr_Pro.SQL.Add('       ,PDCODCON');
   DM2.Qr_Pro.SQL.Add('       ,PDCODRAM');
   DM2.Qr_Pro.SQL.Add('       ,PDCODTIP');
   DM2.Qr_Pro.SQL.Add('       ,PDESTMAX   ');
   DM2.Qr_Pro.SQL.Add('       ,PDESTMIN      ');
   DM2.Qr_Pro.SQL.Add('       ,PDFRACAO         ');
   DM2.Qr_Pro.SQL.Add('       ,PDLISTA             ');
   DM2.Qr_Pro.SQL.Add('       ,PDPRECOC');
   DM2.Qr_Pro.SQL.Add('       ,PDPCOMC    ');
   DM2.Qr_Pro.SQL.Add('       ,PDPCOFAB      ');
   DM2.Qr_Pro.SQL.Add('       ,PDSTATUS         ');
   DM2.Qr_Pro.SQL.Add('       ,PDTABICM            ');
   DM2.Qr_Pro.SQL.Add('       ,PDIPI                  ');
   DM2.Qr_Pro.SQL.Add('       ,PDREGMS');
   DM2.Qr_Pro.SQL.Add('       ,PDCLAS    ');
   DM2.Qr_Pro.SQL.Add('       ,PDSECAO      ');
   DM2.Qr_Pro.SQL.Add('       ,PDEMBPAD        ');
   DM2.Qr_Pro.SQL.Add('       ,PDEMBMUL           ');
   DM2.Qr_Pro.SQL.Add('       ,PDCOMIS               ');
   DM2.Qr_Pro.SQL.Add('       ,PDSEMCOM');
   DM2.Qr_Pro.SQL.Add('       ,PDPRZVAL');
   DM2.Qr_Pro.SQL.Add('       ,PDUCPR');
   DM2.Qr_Pro.SQL.Add('       ,PDCODUSR');
   DM2.Qr_Pro.SQL.Add('       ,PDDTALT');
   DM2.Qr_Pro.SQL.Add('       ,PDHRALT');
   DM2.Qr_Pro.SQL.Add('       ,PDSALDO');
   DM2.Qr_Pro.SQL.Add('       ,PDCURVA');
   DM2.Qr_Pro.SQL.Add('       ,PDDESC1');
   DM2.Qr_Pro.SQL.Add('       ,PDDESC1A');
   DM2.Qr_Pro.SQL.Add('       ,PDDESC2');
   DM2.Qr_Pro.SQL.Add('       ,PDDESC3');
   DM2.Qr_Pro.SQL.Add('       ,PDQTDP');
   DM2.Qr_Pro.SQL.Add('       ,PDPRAZO');
   DM2.Qr_Pro.SQL.Add('       ,PDDESFIN');
   DM2.Qr_Pro.SQL.Add('       ,PDPMC');
   DM2.Qr_Pro.SQL.Add('       ,PDEMBPAD2');
   DM2.Qr_Pro.SQL.Add('       ,PDCODPROC');
   DM2.Qr_Pro.SQL.Add('       ,PDPROALT');
   DM2.Qr_Pro.SQL.Add('       ,PDDTULTSAI');
   DM2.Qr_Pro.SQL.Add('       ,PDDTULTENT');
   DM2.Qr_Pro.SQL.Add('       ,PDVDAMAXM');
   DM2.Qr_Pro.SQL.Add('       ,PDREST');
   DM2.Qr_Pro.SQL.Add('       ,PDPESOB');
   DM2.Qr_Pro.SQL.Add('       ,PDPESOL');
   DM2.Qr_Pro.SQL.Add('       ,PDBAIXO');
   DM2.Qr_Pro.SQL.Add('       ,PDALTO');
   DM2.Qr_Pro.SQL.Add('       ,PDDATCAD');
   DM2.Qr_Pro.SQL.Add('       ,PDNOMFOR');
   DM2.Qr_Pro.SQL.Add('       ,PDNOMPROC');
   DM2.Qr_Pro.SQL.Add('       ,PDNOMGRU');
   DM2.Qr_Pro.SQL.Add('       ,PDNOMCON');
   DM2.Qr_Pro.SQL.Add('       ,PDNOMRAM');
   DM2.Qr_Pro.SQL.Add('       ,PDNOMTIP');
   DM2.Qr_Pro.SQL.Add('       ,PDNOMPROALT');
   DM2.Qr_Pro.SQL.Add('       ,PDSTATUS02');
   DM2.Qr_Pro.SQL.Add('       ,PDSALDOR');
   DM2.Qr_Pro.SQL.Add('       ,PDBAIXOR');
   DM2.Qr_Pro.SQL.Add('       ,PDALTOR');
   DM2.Qr_Pro.SQL.Add('       ,PDSALDOC');
   DM2.Qr_Pro.SQL.Add('       ,PDBAIXOC');
   DM2.Qr_Pro.SQL.Add('       ,PDALTOC');
   DM2.Qr_Pro.SQL.Add('       ,PDCODNCM');
   DM2.Qr_Pro.SQL.Add('       ,PDCUSFAB');
   DM2.Qr_Pro.SQL.Add('       ,PDCUSENV');
   DM2.Qr_Pro.SQL.Add('       ,PDCUSFIN');
   DM2.Qr_Pro.SQL.Add('       ,PDUCODFOR');
   DM2.Qr_Pro.SQL.Add('       ,PDUNOMFOR');
   DM2.Qr_Pro.SQL.Add('       ,PDCODFAB');
   DM2.Qr_Pro.SQL.Add('       ,PDSALDOT');
   DM2.Qr_Pro.SQL.Add('       ,PDALTOT');
   DM2.Qr_Pro.SQL.Add('       ,PDBAIXOT');
   DM2.Qr_Pro.SQL.Add('       ,PDPMC02');
   DM2.Qr_Pro.SQL.Add('       ,PDPMC03');
   DM2.Qr_Pro.SQL.Add('       ,PDCX_PVDA');
   DM2.Qr_Pro.SQL.Add('       ,PDCX_PFAB');
   DM2.Qr_Pro.SQL.Add('       ,PDCX_PMAX');
   DM2.Qr_Pro.SQL.Add('       ,PDICMSCRED');
   DM2.Qr_Pro.SQL.Add('       ,PDICMSDEB');
   DM2.Qr_Pro.SQL.Add('       ,PDVLRINC');
   DM2.Qr_Pro.SQL.Add('    from CADPRO ');
   mcinst:=' where ';
   if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
      begin
      DM2.Qr_Pro.SQL.Add(mcinst+' PDCODEMP=0'+IntTosTr(codemp));
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,Lbx_Codpro,OMITIR_PRO);
   if trim(mcinst2)<>'' then
      begin
      DM2.Qr_Pro.sql.Add(mcinst+' PDCODPRO '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,Lbx_CodFor,OMITIR_FOR);
   if trim(mcinst2)<>'' then
      begin
      DM2.Qr_Pro.sql.Add(mcinst+' PDCODFOR '+mcinst2);
      mcinst:=' and ';
      end;
   mcinst2:=fItensListBox(0,Lbx_CodTPro,OMITIR_TPRO);
   if trim(mcinst2)<>'' then
      begin
      DM2.Qr_Pro.sql.Add(mcinst+' PDCODTIP '+mcinst2);
      mcinst:=' and ';
      end;
   mcinst2:=fItensListBox(0,Lbx_CodGru,OMITIR_GRU);
   if trim(mcinst2)<>'' then
      begin
      DM2.Qr_Pro.sql.Add(mcinst+' PDCODGRU '+mcinst2);
      mcinst:=' and ';
      end;


   mcinst2:=fItensListBox(0,Lbx_CodCon,OMITIR_TCON);
   if trim(mcinst2)<>'' then
      begin
      DM2.Qr_Pro.sql.Add(mcinst+' PDCODCON '+mcinst2);
      mcinst:=' and ';
      end;

   mcinst2:=fItensListBox(0,Lbx_CodRam,OMITIR_RPRO);
   if trim(mcinst2)<>'' then
      begin
      DM2.Qr_Pro.sql.Add(mcinst+' PDCODRAM '+mcinst2);
      mcinst:=' and ';
      end;
   if Trim(MCodPro_Ori)<>'' then
      DM2.Qr_Pro.sql.Add(mcinst+' PDCODPRO<>'+mCodPro_Ori);
   DM2.Qr_Pro.sql.Add(' order by PDNOME');
   try
      DM2.Qr_Pro.Open;
   except
      DM2.Qr_Pro.SQL.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
      end;
   end;


end;

procedure TFrm_MFor01_Cons.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'frm_medtpro',key);
   if valfloat(codpro.text)<>0 then
      lbx_codpro.Items.Add(FormatFloat('0000000',DM1.Tb_ProPDCODPRO.AsFloat)
                                    +' - '+DM1.Tb_ProPDNOME.asstring);
   codpro.text := '';
   codpro.SetFocus;
   key:=#0;
   end;

end;

procedure TFrm_MFor01_Cons.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.AsFloat)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
   CODFOR.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MFor01_Cons.CODTIPKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Lbx_CodTPro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_TproTCODTIP.AsString))
                                    +' - '+DM1.Tb_TproTNOME.AsString);
   CODTIP.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MFor01_Cons.CODGRUKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODGRU.text:=fChamaGPro(0,'frm_medtpro',key);
   if valfloat(CODGRU.text)<>0 then
      lbx_codgru.Items.Add(FormatFloat('0000000',DM1.Tb_GproGRCODGRU.AsFloat)
                                    +' - '+DM1.Tb_GproGRNOME.AsString);
   CODGRU.text := '';
   key:=#0;
   end;



end;

procedure TFrm_MFor01_Cons.CODCONKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MFor01_Cons.CODRAMKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODRAM.Text:=fChamaRamPro(0,'frm_medtpro',key);
   if valFloat(CODRAM.Text)<>0 then
      lbx_codram.Items.Add(FormatFloat('0000000',DM1.Tb_RamRCODRAM.AsFloat)
                                    +' - '+DM1.Tb_RamRNOME.AsString);
   CODRAM.text := '';
   key:=#0;
   end;

end;

procedure TFrm_MFor01_Cons.CODRAMExit(Sender: TObject);
begin
CODRAM.Text:=fdeixanum2(CODRAM.Text);
if trim(CODRAM.Text)<>''  then
   begin
   if flqr1('RNOME','C','CADRAM','N','RCODRAM',trim(CODRAM.Text)) then
      begin
      Lbx_CodRam.Items.Add(FormatFloat('0000000',StrToFloat(CODRAM.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
      codram.text := '';
      CODRAM.SetFocus;
      end
   else
      begin
      MessageDlg('Ramo não Cadastrado!',mtWarning,[mbOk],0);
      CODRAM.SetFocus;
      end;
   end;
end;

procedure TFrm_MFor01_Cons.CODCONExit(Sender: TObject);
begin
CODCON.Text:=Fdeixanum2(CODCON.Text);
if trim(CODCON.Text)<>'' then
   begin
   if flqr1('CNOME','C','CADCON','N','CCODCON',trim(CODCON.Text)) then
      begin
      Lbx_CodCon.Items.Add(FormatFloat('0000000',StrToFloat(CODCON.TEXT))
                                 +' - '+DM1.Query1.Fields[0].AsString);
      codcon.text := '';
      CODCON.SetFocus;
      end
   else
      begin
      MessageDlg('Controle não Cadastrado!',mtWarning,[mbOk],0);
      CODCON.SetFocus;
      end;
   end;
end;

procedure TFrm_MFor01_Cons.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);
if Trim(CODGRU.Text)<>'' then
   begin
   if not flqr1('GRNOME','GR','CADGRU','N','GRCODGRU',CODGRU.Text) then
      begin
      MessageDlg('Grupo Não Cadastrado!',mtWarning,[mbOk],0);
      CODGRU.SetFocus;
      end
   else
      begin
      Lbx_CodGru.Items.Add(FormatFloat('0000000',StrToFloat(CODGRU.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codgru.text := '';
      CODGRU.SetFocus;
      end;
   end;

end;

procedure TFrm_MFor01_Cons.CODTIPExit(Sender: TObject);
begin
CODTIP.Text:=fdeixanum2(CODTIP.Text);
if trim(CODTIP.Text)<>'' then
   begin
   if flqr1('TNOME','T','CADTP','N','TCODTIP',trim(CODTIP.Text)) then
      begin
      Lbx_CodTPro.Items.Add(FormatFloat('0000000',StrToFloat(CODTIP.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codtip.text := '';
      CODTIP.SetFocus;
      end
   else
      begin
      MessageDlg('Tipo Produto não Cadastrado!',mtWarning,[mbOk],0);
      CODTIP.SetFocus;
      end;
   end;   

end;

procedure TFrm_MFor01_Cons.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FCODFOR,FRAZAO','F','CADFOR','N','FCODFOR',trim(CODFOR.Text)) then
      begin
      Lbx_CodFor.Items.Add(FormatFloat('0000000',DM1.Query1.Fields[0].AsFloat)
                                    +' - '+DM1.Query1.Fields[1].AsString);
      codfor.text := '';
      CODFOR.SetFocus;
      end
   else
      begin
      MessageDlg('fornecedor nao Cadastrado!',mtWarning,[mbOk],0);
      CODfor.SetFocus;
      end;
   end;

end;

procedure TFrm_MFor01_Cons.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if flqr1('PDCODPRO,PDNOME','PD','CADPRO','N','PDCODPRO',trim(CODPRO.Text)) then
      begin
      Lbx_Codpro.Items.Add(FormatFloat('0000000', DM1.Query1.Fields[0].AsFloat)
                                    +' - '+DM1.Query1.Fields[1].AsString);
      codpro.text := '';
      CODPRO.SetFocus;
      end
   else
      begin
      MessageDlg('Produto nao Cadastrado!',mtWarning,[mbOk],0);
      CODpro.SetFocus;
      end;
   end;
end;

procedure TFrm_MFor01_Cons.Lbx_CodproKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if Lbx_Codpro.ItemIndex>=0 then
      Lbx_Codpro.Items.Delete(Lbx_Codpro.ItemIndex);

end;

procedure TFrm_MFor01_Cons.Lbx_CodForKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if Lbx_Codfor.ItemIndex>=0 then
      Lbx_Codfor.Items.Delete(Lbx_Codfor.ItemIndex);

end;

procedure TFrm_MFor01_Cons.Lbx_CodGruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if Lbx_Codgru.ItemIndex>=0 then
      Lbx_Codgru.Items.Delete(Lbx_Codgru.ItemIndex);

end;

procedure TFrm_MFor01_Cons.Lbx_CodTProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if Lbx_CodTPro.ItemIndex>=0 then
      Lbx_CodTpro.Items.Delete(Lbx_CodTPro.ItemIndex);

end;

procedure TFrm_MFor01_Cons.Lbx_CodConKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if Lbx_CodCon.ItemIndex>=0 then
      Lbx_CodCon.Items.Delete(Lbx_CodCon.ItemIndex);

end;

procedure TFrm_MFor01_Cons.Lbx_CodRamKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if Lbx_CodRam.ItemIndex>=0 then
      Lbx_CodRam.Items.Delete(Lbx_CodRam.ItemIndex);

end;

procedure TFrm_MFor01_Cons.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_MFor01_Cons.bbExecutarClick(Sender: TObject);
begin
   if not DM2.Qr_Pro.Active then
      bbAplicar.Click;

   if mfor01_origem=1 then begin
     DM2.Qr_Pro.First;
     While not DM2.Qr_Pro.Eof do begin
       if trim(DM2.Qr_ProOk.AsString)='' then begin
          DM2.Qr_Pro.Next;
          Continue;
         end;
       if CB_EXPFORM.Checked then begin
          DM1.Query1.Close;
          DM1.query1.SQL.Clear;
          DM1.Query1.SQL.Add('Delete from CADCOMP where '
                            +iif(dm1.Qr_TID.Locate('TINOME','CADPROS',[]),'',' CPCODEMP=0'+IntTostr(codemp)+' and ')
                                      +' CPCODPRO=0'+DM2.Qr_ProPDCODPRO.AsString);
          try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
          except
            MessageDlg('Erro 484 ao atualizar o arquivo de Custo!',mtWarning,[mbOk],0);
            exit;
          end;

          DM1.Query1.Close;
          DM1.query1.SQL.Clear;
          DM1.query1.SQL.Add('Insert into CADCOMP (');
          DM1.query1.SQL.Add('  CPCODEMP ');
          DM1.query1.SQL.Add(', CPORDEM ');
          DM1.query1.SQL.Add(', CPCODPRO ');
          DM1.query1.SQL.Add(', CPNUMERO ');
          DM1.query1.SQL.Add(', CPCODMAT ');
          DM1.query1.SQL.Add(', CPMPNUM ');
          DM1.query1.SQL.Add(', CPQUANT ');
          DM1.query1.SQL.Add(', CPPU ');
          DM1.query1.SQL.Add(', CPVLRINC ');
          DM1.query1.SQL.Add(', CPCODPRO_ACAB ');
          DM1.query1.SQL.Add(', CPALICMSCRED ');
          DM1.query1.SQL.Add(', CPICMSCRED ');
          DM1.query1.SQL.Add(') Select ');
          DM1.query1.SQL.Add('  CPCODEMP ');
          DM1.query1.SQL.Add(', CPORDEM ');
          DM1.query1.SQL.Add(', '+DM2.Qr_ProPDCODPRO.AsString);
          DM1.query1.SQL.Add(', CPNUMERO ');
          DM1.query1.SQL.Add(', CPCODMAT ');
          DM1.query1.SQL.Add(', CPMPNUM ');
          DM1.query1.SQL.Add(', CPQUANT ');
          DM1.query1.SQL.Add(', CPPU ');
          DM1.query1.SQL.Add(', CPVLRINC ');
          DM1.query1.SQL.Add(', CPCODPRO_ACAB ');
          DM1.query1.SQL.Add(', CPALICMSCRED ');
          DM1.query1.SQL.Add(', CPICMSCRED ');
          DM1.query1.SQL.Add(' From CADCOMP where '
                             +iif(dm1.Qr_TID.Locate('TINOME','CADPROS',[]),'',' CPCODEMP=0'+IntTostr(codemp)+' and ')
                             +' CPCODPRO=0'+mCodPro_Ori);
         try
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
         except
            DM1.Query1.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
            MessageDlg('Erro 521 ao atualizar o arquivo de Custo!',mtWarning,[mbOk],0);
            exit;
         end;
       end;


       DM1.Query1.Close;
       DM1.query1.SQL.Clear;
       DM1.Query1.SQL.Add('Delete from CADCUS where '
                         +iif(dm1.Qr_TID.Locate('TINOME','CADCUS',[]),'',' CUCODEMP=0'+IntTostr(codemp)+' and ')
                         +' CUTIPO=0 and '
                         +' CUCODIGO=0'+DM2.Qr_ProPDCODPRO.AsString);
       try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
       except
         MessageDlg('Erro 1070 ao atualizar o arquivo de Custo!',mtWarning,[mbOk],0);
         exit;
       end;

       DM1.Query1.Close;
       DM1.query1.SQL.Clear;
       DM1.Query1.SQL.Add('Delete from CADCUS2 where '
                          +iif(dm1.Qr_TID.Locate('TINOME','CADCUS',[]),'',' CUCODEMP=0'+IntTostr(codemp)+' and ')
                         +' CUTIPO=0 and '
                         +' CUCODIGO=0'+DM2.Qr_ProPDCODPRO.AsString);
       try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
       except
         MessageDlg('Erro 1083 ao Atualizar o Arquivo de Custo 2!',mtWarning,[mbOk],0);
         exit;
       end;

       DM1.Query1.Close;
       DM1.Query1.SQL.Clear;
       DM1.Query1.Sql.add('Insert into CADCUS ('
                         +' CUCODEMP '
                         +',CUTIPO '
                         +',CUCODIGO '
                         +',CUCODPCU '
                         +',CUPERC'
                         +',CUBASECALC'
                         +',CUVALOR '
                         +',CUAPLS '
                         +',CUFATOR '
                         +',CUOPCIO '
                         +' ) Select CUCODEMP,CUTIPO,'+DM2.Qr_ProPDCODPRO.AsString
                         +' ,CUCODPCU,CUPERC,CUBASECALC,CUVALOR,CUAPLS ,CUFATOR,CUOPCIO '
                         +' from CADCUS where '
                         +' CUCODEMP=0'+IntTostr(codemp)
                         +' and CUTIPO=0'
                         +' and CUCODIGO='+mCodpro_Ori);
       Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
       except
         MessageDlg('Erro 516 ao Incluir Parametros de Custo',mtWarning,[mbOk],0);
         exit;
       end;

       DM1.Query1.Close;
       DM1.Query1.SQL.Clear;
       DM1.Query1.Sql.add('Insert into CADCUS2 ('
                   +' CUCODEMP '
                   +',CUTIPO '
                   +',CUORIGEMPCO '
                   +',CUCODIGO '
                   +',CUPCOMIN '
                   +',CUINCPCOMIN '
                   +',CUACPCO2 '
                   +',CUACPCO3 '
                   +',CUATUP01 '
                   +',CUATUP02 '
                   +',CUATUP03 '
                   +',CUPCOFAB  '
                   +',CUPCOCUS  '
                   +',CUPCOVDA01  '
                   +',CUPCOVDA02 '
                   +',CUPCOVDA03 '
                   +') Select '
                   +' CUCODEMP '
                   +',CUTIPO '
                   +',CUORIGEMPCO '
                   +','+DM2.Qr_ProPDCODPRO.AsString
                   +',CUPCOMIN '
                   +',CUINCPCOMIN '
                   +',CUACPCO2 '
                   +',CUACPCO3 '
                   +',CUATUP01 '
                   +',CUATUP02 '
                   +',CUATUP03 '
                   +',CUPCOFAB  '
                   +',CUPCOCUS  '
                   +',CUPCOVDA01  '
                   +',CUPCOVDA02 '
                   +',CUPCOVDA03 '

                   +' from CADCUS2 where '
                   +' CUCODEMP=0'+IntTostr(codemp)
                   +' and CUTIPO=0'
                   +' and CUCODIGO='+mCodpro_Ori);
       Try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
       except ON E: Exception do
         begin
         ex_erroSql_Novo(dm1.Query1,703,'_stru'+e.message,'user');
         exit;
         end;
         end;

       DM2.Qr_Pro.Next;
     end;
   end;

   verteclado(0);
   MessageDlg('Concluido!',mtInformation,[mbOk],0);
   close;
end;

procedure TFrm_MFor01_Cons.DBGrid1DblClick(Sender: TObject);
begin
  DM2.Qr_Pro.Edit;

  if trim(DM2.Qr_ProOK.AsString)='' then
     DM2.Qr_ProOK.Value:='P'
  else
    DM2.Qr_ProOK.Value:=' ';

  DM2.Qr_Pro.Post;
end;

procedure TFrm_MFor01_Cons.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=32 then
   begin
   DM2.Qr_Pro.Edit;
   if trim(DM2.Qr_ProOK.AsString)='' then
      DM2.Qr_ProOK.Value:='P'
   else
      DM2.Qr_ProOK.Value:=' ';
   DM2.Qr_Pro.Post;
   end;
end;

procedure TFrm_MFor01_Cons.CODPROEnter(Sender: TObject);
begin
DM2.Qr_Pro.Close;
end;

procedure TFrm_MFor01_Cons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

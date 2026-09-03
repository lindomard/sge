unit S_PLdr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, S_DM1, db, dbtables,func, Mask,S_Bco,
  ComCtrls,S_Dpto,S_CCu,S_For,S_Ven,S_Tra,S_Usr,S_DM4,lerarq;

type
  TFrm_PLDR = class(TForm)
    Panel1: TPanel;
    bbSair: TBitBtn;
    bbPesq: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StaticText2: TStaticText;
    CODBCO: TEdit;
    OMITIR_BCO: TCheckBox;
    lbx_codbco: TListBox;
    StaticText1: TStaticText;
    CODDEP: TEdit;
    sbn_coddep: TSpeedButton;
    OMITIR_DEP: TCheckBox;
    lbx_coddep: TListBox;
    StaticText3: TStaticText;
    CODCCU: TEdit;
    sbn_codccu: TSpeedButton;
    OMITIR_CCU: TCheckBox;
    lbx_codccu: TListBox;
    StaticText5: TStaticText;
    CODVEN: TEdit;
    OMITIR_VEN: TCheckBox;
    lbx_codven: TListBox;
    StaticText4: TStaticText;
    CODCLI: TEdit;
    OMITIR_CLI: TCheckBox;
    lbx_codcli: TListBox;
    CODFOR: TEdit;
    StaticText6: TStaticText;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    StaticText7: TStaticText;
    lbx_codtra: TListBox;
    OMITIR_TRA: TCheckBox;
    CODTRA: TEdit;
    CODUSR: TEdit;
    OMITIR_USR: TCheckBox;
    StaticText8: TStaticText;
    lbx_codusr: TListBox;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label5: TLabel;
    RG_TPPESQ: TRadioGroup;
    Label6: TLabel;
    VALOR: TEdit;
    Label7: TLabel;
    NUMDOC: TEdit;
    Label8: TLabel;
    NUMCHQ: TEdit;
    Label9: TLabel;
    DESCMV: TEdit;
    Label10: TLabel;
    MCODLDR: TEdit;
    Label11: TLabel;
    CB_ORDEM: TComboBox;
    procedure bbPesqClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CB_ORDEMExit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODDEPExit(Sender: TObject);
    procedure sbn_coddepClick(Sender: TObject);
    procedure CODCCUExit(Sender: TObject);
    procedure sbn_codccuClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure VALORExit(Sender: TObject);
    procedure MCODLDRExit(Sender: TObject);
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODUSRExit(Sender: TObject);
    procedure CODUSRKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codusrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codccuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_coddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PLDR: TFrm_PLDR;

implementation

uses S_LDR;

{$R *.DFM}

procedure TFrm_PLDR.bbPesqClick(Sender: TObject);
begin
if (trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrtoDate(MDT1.Text) then
      begin
      fmensagem('Data Final Maior que Inicial, inválido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if RG_TPPESQ.ItemIndex=2 then
   mcinst4:='DATAREF'
else if RG_TPPESQ.ItemIndex=1 then
   mcinst4:='DATADP'
else
   mcinst4:='DATAREAL';


DM1.Tb_LDR.Close;
DM1.Tb_LDR.SQL.Clear;
DM1.Tb_LDR.SQL.Add('Select * FROM CADLDR Where ');
if DM1.Qr_TID.Locate('TINOME','CADLDR',[]) then
   DM1.Tb_Ldr.SQL.Add(' STATUS<>9')
else
   DM1.Tb_LDR.SQL.add(' CODEMP=0'+IntToStr(Codemp)
                  +' and STATUS<>9');
if fsonumero(MCODLDR.Text)<>0 then
   begin
   DM1.Tb_LDR.SQL.Add(' and CODLDR='+Trim(MCODLDR.Text));
   end;

if trim(MDT1.Text)<>'/  /' then
   DM1.Tb_LDR.SQL.Add(' and '+mcinst4+'>='+chr(39)+FormatDateTime(fdt, StrToDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM1.Tb_LDR.SQL.Add(' and '+mcinst4+'<='+chr(39)+FormatDateTime(fdt, StrToDate(MDT2.Text))+chr(39));
if ValFloat(VALOR.Text)<>0 then
   begin
   DM1.Tb_LDR.SQL.Add(' and VALORP='+mudaVP(VALOR.Text));
   end;
if Trim(NUMDOC.Text)<>'' then
   begin
   DM1.Tb_LDR.SQL.Add(' and NUMDOC='+chr(39)+NUMDOC.Text+chr(39));
   end;

if Trim(NUMCHQ.Text)<>'' then
   begin
   DM1.Tb_LDR.SQL.Add(' and NUMDOC2='+chr(39)+NUMCHQ.Text+chr(39));
   end;

mcinst4:='';
mcinst2:=fItensListBox(0,lbx_codcli,OMITIR_CLI);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'CL'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'FR'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'VD'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'TR'+chr(39)+' and CODIGO '+mcinst2+')'
   end;

mcinst2:=fItensListBox(0,lbx_codusr,OMITIR_USR);
if trim(mcinst2)<>'' then
   begin
   if trim(mcinst4)='' then
      mcinst4:='( '
   else
      mcinst4:=' or ';
   mcinst4:=mcinst4+' ( TIPO='+chr(39)+'US'+chr(39)+' and CODIGO '+mcinst2+')'
   end;
if trim(mcinst4)<>'' then
   mcinst4:=mcinst4+' )';

if trim(mcinst4)<>'' then
   DM1.Tb_LDR.SQL.Add(' and '+mcinst4);


mcinst2:=fItensListBox(0,lbx_codbco,OMITIR_BCO);
if trim(mcinst2)<>'' then
   DM1.Tb_LDR.SQL.Add(' and CODBCO '+mcinst2);


mcinst2:=fItensListBox(1,lbx_coddep,OMITIR_DEP);
if trim(mcinst2)<>'' then
   DM1.Tb_LDR.SQL.Add(' and CODDEP '+mcinst2);
mcinst2:=fItensListBox(1,lbx_codccu,OMITIR_CCU);
if trim(mcinst2)<>'' then
   DM1.Tb_LDR.SQL.Add(' and CODCC '+mcinst2);
if trim(DESCMV.Text)<>'' then
   begin
   DM1.Tb_LDR.SQL.add(' and DESCMV like '+chr(39)+DESCMV.Text+'%'+chr(39));
   end;
if CB_ORDEM.ItemIndex=11 then
   DM1.Tb_LDR.SQL.Add(' order by DATAREF ')
else if CB_ORDEM.ItemIndex=10 then
   DM1.Tb_LDR.SQL.Add(' order by CODLDR ')
else if CB_ORDEM.ItemIndex=9 then
   DM1.Tb_LDR.SQL.Add(' order by NUMDOC2 ')
else if CB_ORDEM.ItemIndex=8 then
   DM1.Tb_LDR.SQL.Add(' order by NUMDOC ')
else if CB_ORDEM.ItemIndex=7 then
   DM1.Tb_LDR.SQL.Add(' order by CODDEP ')
else if CB_ORDEM.ItemIndex=6 then
   DM1.Tb_LDR.SQL.Add(' order by CODBCO ')
else if CB_ORDEM.ItemIndex=5 then
   DM1.Tb_LDR.SQL.Add(' order by CODCC ')
else if CB_ORDEM.ItemIndex=4 then
   DM1.Tb_LDR.SQL.Add(' order by VALORP ')
else if CB_ORDEM.ItemIndex=3 then
   DM1.Tb_LDR.SQL.Add(' order by TIPO ')
else if CB_ORDEM.ItemIndex=2 then
   DM1.Tb_LDR.SQL.Add(' order by DATADP ')
else if CB_ORDEM.ItemIndex=1 then
   DM1.Tb_LDR.SQL.Add(' order by DATAREAL ')
else
   DM1.Tb_LDR.SQL.Add(' order by DESCMV ');

   DM1.Tb_LDR.SQL.SaveToFile('c:\sql.txt');

try
   DM1.Tb_LDR.Open;
except
   DM1.Tb_LDR.SQL.SaveToFile('c:\sql.txt');
   fmensagem('Erro ao Abrir a Tabela de Fluxo de Caixa!',0,['0'],0);
   end;
close;
end;

procedure TFrm_PLDR.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PLDR.FormCreate(Sender: TObject);
begin
CB_ORDEM.ItemIndex:=2;


end;

procedure TFrm_PLDR.FormActivate(Sender: TObject);
begin
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_PLDR.CB_ORDEMExit(Sender: TObject);
begin
CB_ORDEM.Text:=CB_ORDEM.Items.Strings[CB_ORDEM.ItemIndex];

end;

procedure TFrm_PLDR.CODBCOKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_PLdr',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_PLDR.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)<>'' then
   begin
   if flqr1('BCBANCO','BC','CADBCO','N','BCCODBCO',CODBCO.Text) then
      begin
      lbx_codbco.Items.Add(FormatFloat('0000000',StrToFloat(CODBCO.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codbco.text := '';
      codbco.SetFocus;
      end
   else
      begin
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      codbco.text := '';
      CODBCO.SetFocus;
      end;
   end;

end;

procedure TFrm_PLDR.lbx_codbcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codbco.ItemIndex>=0 then
      lbx_codbco.Items.Delete(lbx_codbco.ItemIndex);

end;

procedure TFrm_PLDR.CODDEPExit(Sender: TObject);
begin
if Trim(CODDEP.Text)<>'' then
   begin
   if flqr1('DNOME','D','CADDEP','C','DCODDEP',CODDEP.Text) then
      begin
      lbx_coddep.Items.Add(CODDEP.TEXT
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODDEP.text := '';
      CODDEP.SetFocus;
      end
   else
      begin
      fmensagem('Departamento não Cadastrado!',0,['0'],0);
      CODDEP.text := '';
      CODDEP.SetFocus;
      end;
   end;


end;

procedure TFrm_PLDR.sbn_coddepClick(Sender: TObject);
begin
CODDEP.Text :=fChamaDeptoCX(0,'frm_PLdr','');
if trim(CODDEP.Text)<>'' then
   CODDEPExit(self);

end;

procedure TFrm_PLDR.CODCCUExit(Sender: TObject);
begin
if Trim(CODCCU.Text)<>'' then
   begin
   if flqr1('CCNAT,CCNOME','CC','CADCCU','C','CCCODCCU',CODCCU.Text) then
      begin
      lbx_codccu.Items.Add(CODCCU.TEXT
                                    +'-'+DM1.Query1.Fields[0].AsString);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end
   else
      begin
      fmensagem('Centro de Custo não Cadastrado!',0,['0'],0);
      CODCCU.text := '';
      CODCCU.SetFocus;
      end;
   end;

end;

procedure TFrm_PLDR.sbn_codccuClick(Sender: TObject);
begin
CODCCU.Text:=fChamaCCU(0,'frm_PLdr','');
if trim(CODCCU.Text)<>'' then
   CODCCUExit(self);
end;

procedure TFrm_PLDR.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
if Trim(CODCLI.Text)<>'' then
   begin
   if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',CODCLI.Text) then
      begin
      lbx_codcli.Items.Add(FormatFloat('0000000',StrToFloat(CODCLI.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end
   else
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      CODCLI.text := '';
      CODCLI.SetFocus;
      end;
   end;


end;

procedure TFrm_PLDR.CODCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODCLI.Text:=fChamaCli(0,'Frm_PLDR',key);
   if trim(CODCLI.Text)<>'' then
      CODCLIExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PLDR.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   if flqr1('FRAZAO','F','CADFOR','N','FCODFOR',CODFOR.Text) then
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(CODFOR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      codfor.text := '';
      codfor.SetFocus;
      end
   else
      begin
      fmensagem('Fornecedor não Cadastrado!',0,['0'],0);
      CODFOR.text := '';
      CODFOR.SetFocus;
      end;
   end;


end;

procedure TFrm_PLDR.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'frm_PLdr',Key);
   if trim(CODFOR.Text)<>'' then
      CODFORExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PLDR.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.Text));
   except
      fmensagem('Data Inválida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
end;

procedure TFrm_PLDR.MDT2Exit(Sender: TObject);
begin
if trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDateTime(fdt2, StrtoDate(MDT2.Text));
   except
      fmensagem('Data Inválida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_PLDR.VALORExit(Sender: TObject);
begin
VALOR.Text:=FormatFloat(mcasas, ValFloat(VALOR.Text));
end;

procedure TFrm_PLDR.MCODLDRExit(Sender: TObject);
begin
MCODLDR.Text:=fdeixanum2(MCODLDR.Text);
end;

procedure TFrm_PLDR.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if flqr1('VNOME','V','CADVEN','N','VCODVEN',CODVEN.Text) then
      begin
      lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(CODVEN.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      fmensagem('Vendedor não Cadastrado!',0,['0'],0);
      CODVEN.text := '';
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end;
   end;


end;

procedure TFrm_PLDR.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text:=FChamaVen(0,'frm_PLdr',Key);
if trim(CODVEN.Text)<>'' then
   CODVENExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;



end;

procedure TFrm_PLDR.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)<>'' then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODTRA.Text) then
      begin
      lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(CODTRA.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end
   else
      begin
      fmensagem('Transportador não Cadastrado!',0,['0'],0);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end;
   end;

end;

procedure TFrm_PLDR.CODTRAKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=FchamaTra(0,'frm_PLdr',Key);
if trim(CODTRA.Text)<>'' then
   CODTRAExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PLDR.CODUSRExit(Sender: TObject);
begin
CODUSR.Text:=fdeixanum2(CODUSR.Text);
if Trim(CODUSR.Text)<>'' then
   begin
   if flqr1('NOMUSR','','CADUSR','N','CODUSR',CODUSR.Text) then
      begin
      lbx_codusr.Items.Add(FormatFloat('0000000',StrToFloat(CODUSR.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODUSR.text := '';
      CODUSR.SetFocus;
      end
   else
      begin
      fmensagem('Usuário não Cadastrado!',0,['0'],0);
      CODUSR.text := '';
      CODUSR.SetFocus;
      end;
   end;

end;

procedure TFrm_PLDR.CODUSRKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODUSR.Text:=fChamaUsr(0,'frm_PLdr',Key);
if trim(CODUSR.Text)<>'' then
   CODUSRExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_PLDR.lbx_codusrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codusr.ItemIndex>=0 then
      lbx_codusr.Items.Delete(lbx_codusr.ItemIndex);

end;

procedure TFrm_PLDR.lbx_codtraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_PLDR.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_PLDR.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);

end;

procedure TFrm_PLDR.lbx_codcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codcli.ItemIndex>=0 then
      lbx_codcli.Items.Delete(lbx_codcli.ItemIndex);

end;

procedure TFrm_PLDR.lbx_codccuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codccu.ItemIndex>=0 then
      lbx_codccu.Items.Delete(lbx_codccu.ItemIndex);

end;

procedure TFrm_PLDR.lbx_coddepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_coddep.ItemIndex>=0 then
      lbx_coddep.Items.Delete(lbx_coddep.ItemIndex);

end;

procedure TFrm_PLDR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

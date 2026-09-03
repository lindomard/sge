unit S_CobEle_Remessa_Local;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,S_DM1,db,dbtables,func, StdCtrls, Mask, Grids, DBGrids, ExtCtrls,S_Bco,
  Buttons,lerarq, S_SelEmp;

type
  TFrm_CobEle_Remessa_Local = class(TForm)
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    periodo: TLabel;
    MDT1: TMaskEdit;
    a: TLabel;
    MDT2: TMaskEdit;
    codcliente: TLabel;
    CODBCO: TEdit;
    NOMBCO: TEdit;
    Label1: TLabel;
    MCHAVEI: TEdit;
    Label2: TLabel;
    MCHAVEF: TEdit;
    bbLocalizar: TBitBtn;
    Src_RemBco: TDataSource;
    Qr_RemBco: TQuery;
    lbl_cheio: TLabel;
    Qr_RemBcoREVALDUP: TFloatField;
    Qr_RemBcoRECODEMP: TFloatField;
    Qr_RemBcoRECODBCO: TFloatField;
    Qr_RemBcoRELOTSEQ: TFloatField;
    Qr_RemBcoRECHAVE: TFloatField;
    Qr_RemBcoRELAYOUT: TFloatField;
    Qr_RemBcoRESTATUS: TFloatField;
    Qr_RemBcoBCBANCO: TStringField;
    bbFechar: TBitBtn;
    Qr_RemBcoREHORREM: TStringField;
    Qr_RemBcoREDATREM: TStringField;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODBCOKeyPress(Sender: TObject; var Key: Char);
    procedure CODBCOExit(Sender: TObject);
    procedure MCHAVEIExit(Sender: TObject);
    procedure MCHAVEFExit(Sender: TObject);
    procedure bbLocalizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbFecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_CobEle_Remessa_Local: TFrm_CobEle_Remessa_Local;

implementation

uses S_CobEle_Remessa_Pesq;

{$R *.dfm}

procedure TFrm_CobEle_Remessa_Local.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrtoDate(MDT1.text));
   except
      fmensagem('Favor digitar uma data Válida!',0,['0'],0);
      MDT1.SetFocus;
      end
   end;

end;

procedure TFrm_CobEle_Remessa_Local.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrtoDate(MDT2.text));
   except
      fmensagem('Favor digitar uma data Válida!',0,['0'],0);
      MDT2.SetFocus;
      end
   end;

end;

procedure TFrm_CobEle_Remessa_Local.CODBCOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) then
   begin
   CODBCO.Text:=fChamaBco(0,'frm_CobEle_Remessa_Local',Key);
   if trim(CODBCO.Text)<>'' then
      CODBCOExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_CobEle_Remessa_Local.CODBCOExit(Sender: TObject);
begin
CODBCO.Text:=fdeixanum2(CODBCO.Text);
if Trim(CODBCO.Text)='' then
   NOMBCO.Text:='Todos...'
else
   begin
   if not flcadbco(1,0,0,CODBCO.Text) then
      begin
      verteclado(0);
      fmensagem('Banco não Cadastrado!',0,['0'],0);
      CODBCO.SetFocus;
      exit;
      end
   else
      begin
      NOMBCO.Text:=DM1.Tb_BcoBCBANCO.Value;
      end;
   end;
end;

procedure TFrm_CobEle_Remessa_Local.MCHAVEIExit(Sender: TObject);
begin
MCHAVEI.Text:=fdeixanum2(MCHAVEI.Text);
end;

procedure TFrm_CobEle_Remessa_Local.MCHAVEFExit(Sender: TObject);
begin
MCHAVEF.Text:=fdeixanum2(MCHAVEF.Text);
end;

procedure TFrm_CobEle_Remessa_Local.bbLocalizarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (Trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      verteclado(0);
      fmensagem('Data inicial maior que final, inválido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (Trim(MCHAVEI.Text)<>'') and (Trim(MCHAVEF.Text)<>'') then
   begin
   if ValInt(MCHAVEI.Text)>ValInt(MCHAVEF.Text) then
      begin
      verteclado(0);
      fmensagem('Chave Inicial Maior que Chave Final, inválido!',0,['0'],0);
      MCHAVEI.SetFocus;
      exit;
      end;
   end;

la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(0,'CADBCO','BCCODEMP','RECODEMP','BCCODBCO','RECODBCO');
la_Empresas:=fEmpresas_Selecionadas('CADREMBCO','RECODEMP',Form_SelEmp.CLB_EMPRESAS);

Qr_RemBco.Close;
Qr_RemBco.SQL.Clear;
Qr_RemBco.SQL.Add('Select  sum(REVALDUP) AS REVALDUP '
                 +'        ,RECODEMP as RECODEMP '
                 +'        ,RECODBCO      AS RECODBCO'
                 +'        ,RELOTSEQ      AS RELOTSEQ '
                 +'        ,RECHAVE       AS RECHAVE '
                 +'        ,RELAYOUT      AS RELAYOUT '
                 +'        ,TO_CHAR(REDATREM,'+chr(39)+'DD/MM/YYYY'+chr(39)+') AS REDATREM '
                 +'        ,TO_CHAR(REDATREM,'+chr(39)+'HH:MM:SS'+chr(39)+') AS REHORREM '
                 +'        ,RESTATUS      AS RESTATUS '
                 +'        ,BCBANCO       AS BCBANCO '
                 +' from CADREMBCO'+iif(la_tabelas='','',',')+la_tabelas
                 +'       '+la_Join);
mcinst:=' where ';
if trim(la_Empresas)<>'' then
   begin
   Qr_RemBco.SQL.Add(mcinst+la_Empresas);
   mcinst:=' and ';
   end;
if Trim(MDT1.Text)<>'/  /' then
   begin
   Qr_RemBco.SQL.Add(mcinst+' REDATREM>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
   mcinst:=' and ';
   end;
if Trim(MDT2.Text)<>'/  /' then
   begin
   Qr_RemBco.SQL.Add(mcinst+' REDATREM<='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
   mcinst:=' and ';
   end;

if Trim(CODBCO.Text)<>'' then
   begin
   Qr_RemBco.SQL.Add(mcinst+' RECODBCO=0'+Trim(CODBCO.Text));
   mcinst:=' and ';
   end;

if Trim(MCHAVEI.Text)<>'' then
   begin
   Qr_RemBco.SQL.Add(mcinst+' RECHAVE>=0'+Trim(MCHAVEI.Text));
   mcinst:=' and ';
   end;
if Trim(MCHAVEF.Text)<>'' then
   begin
   Qr_RemBco.SQL.Add(mcinst+' RECHAVE<=0'+Trim(MCHAVEF.Text));
   mcinst:=' and ';
   end;
if trim(la_instrucao)<>'' then
   begin
   Qr_RemBco.SQL.Add(mcinst+la_instrucao);
   mcinst:=' and ';
   end;
Qr_RemBco.SQL.Add(' Group by RECODEMP '
                 +' ,   RECODBCO '
                 +' ,   RELOTSEQ '
                 +'    ,RECHAVE '
                 +'    ,RELAYOUT '
                 +'    ,REDATREM '
                 +'    ,RESTATUS '
                 +'    ,BCBANCO ');
Qr_RemBco.Open;

end;

procedure TFrm_CobEle_Remessa_Local.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
{if ce_empsel=2 then
   begin
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOAMBAS.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXAMBAS.AsInteger;
   end
else if ce_empsel=1 then
   begin
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
   end
else
   begin
   lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
   lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
   end;}
Qr_RemBcoREVALDUP.DisplayFormat:=mcasas;
MDT1.Text:=FormatDatetime(fdt2, date);
MDT2.Text:=FormatDatetime(fdt2, date);
bbLocalizar.Click;
end;

procedure TFrm_CobEle_Remessa_Local.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

if pTcAtalho_ce<>0 then
   begin
   if (Shift=pSfAtalho_ce) and (pTcAtalho_ce=key) then
      begin
      lbl_cheio.Visible:=true;
      lbl_cheio.Caption:='';
{      if ce_empsel=2 then
         begin
         lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOAMBAS.Value;
         lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXAMBAS.AsInteger;
         end
      else if ce_empsel=1 then
         begin
         lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOALTO.Value;
         lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXALTO.AsInteger;
         end
      else
         begin
         lbl_cheio.Caption   :=DM1.Tb_PargerPTEXTOBAIXO.Value;
         lbl_cheio.Font.Color:=DM1.Tb_PargerPCORTEXBAIXO.AsInteger;
         end;}
      end;
   end;
end;

procedure TFrm_CobEle_Remessa_Local.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CobEle_Remessa_Local.DBGrid1DblClick(Sender: TObject);
begin
bbFechar.Click;
end;

procedure TFrm_CobEle_Remessa_Local.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;
   if (FormState<>[fsModal]) then
      Action := caFree;
end;

end.

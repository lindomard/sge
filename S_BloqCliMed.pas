unit S_BloqCliMed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons,func,lerarq, S_SelEmp;

type
  TFrm_BloqCliMed = class(TForm)
    CODVEN: TEdit;
    lbx_codven: TListBox;
    OMITIR_VEN: TCheckBox;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    MDT1: TMaskEdit;
    StaticText5: TStaticText;
    MDT2: TMaskEdit;
    ST_OBS: TStaticText;
    bbAplicar: TBitBtn;
    bbSair: TBitBtn;
    procedure CODVENExit(Sender: TObject);
    procedure CODVENKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codvenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure bbAplicarClick(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_BloqCliMed: TFrm_BloqCliMed;
  Form_SelEmp: TFrm_SelEmp;
  mQtdMes: Integer;

implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_BloqCliMed.CODVENExit(Sender: TObject);
begin
CODVEN.Text:=fdeixanum2(CODVEN.Text);
if Trim(CODVEN.Text)<>'' then
   begin
   if not flcadven(1,0,CODVEN.Text) then
      begin
      fmensagem('Vendedor nao Cadastrado!',0,['0'],0);
      if CODVEN.Enabled then
         CODVEN.SetFocus;
      end
   else
      begin
      Lbx_codven.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_VenVCODVEN.ASSTRING))
                                    +' - '+DM1.Tb_VenVNOME.Value);

      codven.text := '';
      if CODVEN.Enabled then
         codven.SetFocus;
      end;
   end;

end;

procedure TFrm_BloqCliMed.CODVENKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODVEN.Text :=fChamaVen(0,'frm_CABC',Key);
   CODVENExit(Self);
   if CODVEN.Enabled then
      codven.SetFocus;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_BloqCliMed.lbx_codvenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codven.ItemIndex>=0 then
      lbx_codven.Items.Delete(lbx_codven.ItemIndex);

end;

procedure TFrm_BloqCliMed.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_BloqCliMed.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2,StrtoDate(MDT1.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(mdt1.Text)<=StrToDate(mdt2.Text) then
      begin
      mQtdMes:=round ( (StrToDate(MDT2.Text)
                -StrToDate(MDT1.Text) ))
                 div 30;
      if mQtdMes<=1 then
         ST_OBS.Caption:='Media Extraida em '+IntToStr(mQtdMes)+' mês'
      else
         ST_OBS.Caption:='Media Extraida em '+IntToStr(mQtdMes)+' mêses';
      end;
   end;


end;

procedure TFrm_BloqCliMed.bbAplicarClick(Sender: TObject);
begin
if (Trim(MDT1.Text)<>'/  /') and (TRIM(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT2.Text)<StrToDate(MDT1.Text) then
      begin
      fmensagem('Data Final Menor que Data Inicial. Invalido!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end
else
   begin
   fmensagem('o Preenchimento das datas são Obrigatórias!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(mdt1.Text)<=StrToDate(mdt2.Text) then
      begin
      mQtdMes:=round ( (StrToDate(MDT2.Text)
                -StrToDate(MDT1.Text) ))
                 div 30;
      if mQtdMes<=1 then
         ST_OBS.Caption:='Media Extraida em '+IntToStr(mQtdMes)+' mês'
      else
         ST_OBS.Caption:='Media Extraida em '+IntToStr(mQtdMes)+' mêses';
      end;
   end;
if mQtdMes<=0 then
   begin
   fmensagem('Favor Selecionar um Periodo que possa ser maior ou igual a 1 mês !',0,['0'],0 );
   exit;
   end;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADCLI ');
mcinst:=' where ';
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   begin
   DM1.Query1.SQL.Add(' where CCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Query1.SQL.Add(mcinst+' CCODVEN '+mcinst2);
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger<=0 then
   begin
   fmensagem('Não ha clientes a ser atualizado na condição acima!',0,['0'],0);
   exit;
   end
else if DM1.Query1.Fields[0].AsInteger=1 then
   begin
   if fmensagem('Existe '+DM1.Query1.fields[0].AsString+' a ser atualizado, posso continuar?',0,['1','2'],2)<>mrYes then
      begin
      fmensagem('Não Atualizado!',2,['0'],0);
      exit;
      end;
   end
else
   begin
   if fmensagem('Existem '+DM1.Query1.fields[0].AsString+' a serem atualizados, posso continuar?',0,['1','2'],2)<>mrYes then
      begin
      fmensagem('Não Atualizado!',2,['0'],0);
      exit;
      end;
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADCLI set CLCRED=0 ');
mcinst:=' where ';
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   begin
   DM1.Query1.SQL.Add(' where CCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Query1.SQL.Add(mcinst+' CCODVEN '+mcinst2);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('erro ao atualizar os limites de creditos dos clientes!',0,['0'],0);
   exit;
   end;

if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Update CADCLI set CLCRED=(Select round(sum(CRVALOR/'+Inttostr(mQtdMes)+'),2) from CADDAR where ');
if trim(la_Empresas)<>'' then
   DM1.Query1.SQL.Add(la_Empresas+' and ');
DM1.Query1.SQL.Add(' CRCODCLI=CADCLI.CCODCLI and CRSTATUS<9 )');
mcinst:=' where ';
if not DM1.Qr_TID.locate('TINOME','CADCLI',[]) then
   begin
   DM1.Query1.SQL.Add(' where CCODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
mcinst2:=fItensListBox(0,lbx_codven,OMITIR_VEN);
if trim(mcinst2)<>'' then DM1.Query1.SQL.Add(mcinst+' CCODVEN '+mcinst2);
try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   fmensagem('erro ao atualizar os limites de creditos dos clientes!',0,['0'],0);
   exit;
   end;

fmensagem('Limite de Credito Atualizado!',0,['0'],0);



end;

procedure TFrm_BloqCliMed.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2,StrtoDate(MDT2.Text));
   except
      fmensagem('Data Invalida!',0,['0'],0);
      MDT2.SetFocus;
      exit;
      end;
   end;

if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(mdt1.Text)<=StrToDate(mdt2.Text) then
      begin
      mQtdMes:=round ( (StrToDate(MDT2.Text)
                -StrToDate(MDT1.Text) ))
                 div 30;
      if mQtdMes<=1 then
         ST_OBS.Caption:='Media Extraida em '+IntToStr(mQtdMes)+' mês'
      else
         ST_OBS.Caption:='Media Extraida em '+IntToStr(mQtdMes)+' mêses';
      end;
   end;

end;

procedure TFrm_BloqCliMed.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
if ValInt(FormatDateTime('dd', pdatasis))>20 then
   MDT2.Text:=FormatDatetime(fdt2, pdatasis)
else
   MDT2.Text:=FormatDatetime(fdt2,fdatafinal(1,pdatasis-28));
MDT2.Text   :=FormatDatetime(fdt2,fultdiames(StrToDate(MDT2.Text)));
MDT1.Text   :='01/'+FormatDatetime('mm/yyyy',fdatafinal(-2,StrtoDate(MDT2.Text)));
MDT2Exit(self);

end;

procedure TFrm_BloqCliMed.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_BloqCliMed.FormKeyDown(Sender: TObject; var Key: Word;
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

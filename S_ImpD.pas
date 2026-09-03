unit S_ImpD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, RDprint, func, S_DM1, Grids,
  DBGrids, DBTables, DB,S_Impres;

type
  TFrm_ImpD = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    LINHA1: TEdit;
    RGTFONTE: TRadioGroup;
    RGENTREL: TRadioGroup;
    Label2: TLabel;
    LINHA2: TEdit;
    PULAR1: TEdit;
    PULAR2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PULAR3: TEdit;
    Label6: TLabel;
    QTDCOL: TEdit;
    Label7: TLabel;
    QTDJ: TEdit;
    BBIMPRIMIR: TBitBtn;
    BBSAIR: TBitBtn;
    Label8: TLabel;
    QTDPC: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    NCOL1: TEdit;
    NCOL2: TEdit;
    bbincluir: TBitBtn;
    bbalterar: TBitBtn;
    bbgravar: TBitBtn;
    bbexcluir: TBitBtn;
    bbcancelar: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    NOMREL: TEdit;
    Qr_IDV: TQuery;
    Src_IDV: TDataSource;
    Qr_IDVIDCODEMP: TFloatField;
    Qr_IDVIDNOMREL: TStringField;
    Qr_IDVIDLINHA1: TStringField;
    Qr_IDVIDLINHA2: TStringField;
    Qr_IDVIDCOL1: TFloatField;
    Qr_IDVIDPULAR1: TFloatField;
    Qr_IDVIDCOL2: TFloatField;
    Qr_IDVIDPULAR2: TFloatField;
    Qr_IDVIDPULAR3: TFloatField;
    Qr_IDVIDQTDCOL: TFloatField;
    Qr_IDVIDQTDCP: TFloatField;
    Qr_IDVIDQTDJ: TFloatField;
    Qr_IDVIDFPADRAO: TFloatField;
    Qr_IDVIDQTDLPP: TFloatField;
    procedure BBSAIRClick(Sender: TObject);
    procedure PULAR1KeyPress(Sender: TObject; var Key: Char);
    procedure BBIMPRIMIRClick(Sender: TObject);
    procedure bbincluirClick(Sender: TObject);
    procedure bbalterarClick(Sender: TObject);
    procedure bbgravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbexcluirClick(Sender: TObject);
    procedure bbcancelarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure NCOL1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    form_Impres_Impd: TFrm_Impres;
  public
    { Public declarations }
  end;

var
  Frm_ImpD: TFrm_ImpD;
  mstatus  : Integer=0;
implementation


{$R *.dfm}

procedure TFrm_ImpD.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_ImpD.PULAR1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_ImpD.BBIMPRIMIRClick(Sender: TObject);
var
mfonte : TTipoFonte;
mcimp, mqtdcol: Integer;
mcol,mqtd,mimp : Integer;
mlinha: String;

begin
if (Trim(LINHA1.Text)='') and (Trim(LINHA2.Text)='') then
   begin
   fMensagem('Nada a Ser Impresso!',0,['0'],0);
   linha1.SetFocus;
   abort;
   end;
if Trim(LINHA1.Text)<>'' then
   begin
   if StrtoInt('0'+NCOL1.Text)<1 then
      begin
      fMensagem('A Coluna Tem que Ser Maior que Zero',0,['0'],0);
      NCOL1.Text;
      abort;
      end;
   end;
if StrtoInt('0'+PULAR1.Text)<1 then
   PULAR1.Text:='0';
if StrToInt('0'+PULAR2.Text)<1 then
   PULAR2.Text:='0';
if StrToInt('0'+PULAR3.Text)<1 then
   PULAR3.Text:='0';
if StrToInt('0'+QTDCOL.Text)<1 Then
   QTDCOL.Text:='1';
if (StrToInt('0'+QTDCOL.Text)>1) and (StrToInt('0'+QTDPC.Text)<1) then
   begin
   fMensagem('Pular Quantos Caracteres para Quantidade de Colunas/lados'+#13
              +'maior que 1 tem que ser Preenchido.',0,['0'],0);
   QTDPC.SetFocus;
   abort;
   end;
if StrToInt('0'+QTDJ.Text)<1 then
   begin
   fMensagem('Quantidade de Jogos Tem que ser maior que zero',0,['0'],0);
   QTDJ.SetFocus;
   abort;
   end;

if Trim(LINHA1.Text)<>'' then
   begin
   if StrtoInt('0'+NCOL1.Text)<1 then
      begin
      fMensagem('A Coluna Tem que Ser Maior que Zero',0,['0'],0);
      NCOL1.Text;
      abort;
      end;
   end;
testeform := TFrm_ImpD(FindGlobalComponent('form_Impres_Impd'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_Impres_Impd);
if RGENTREL.ItemIndex=0 then
   form_Impres_Impd.RDprint1.TamanhoQteLPP:=Seis
else
   form_Impres_Impd.RDprint1.TamanhoQteLPP:=Oito;
if RGTFONTE.ItemIndex=0 then
   begin
   form_Impres_Impd.RDprint1.FonteTamanhoPadrao:=S10cpp;
   mfonte:=normal;
   end
else if RGTFONTE.ItemIndex=1 then
   begin
   form_Impres_Impd.RDprint1.FonteTamanhoPadrao:=S12cpp;
   mfonte:=comp12;
   end
else if RGTFONTE.ItemIndex=2 then
   begin
   form_Impres_Impd.RDprint1.FonteTamanhoPadrao:=S17cpp;
   mfonte:=comp17;
   end
else if RGTFONTE.ItemIndex=3 then
   begin
   form_Impres_Impd.RDprint1.FonteTamanhoPadrao:=s20cpp;
   mfonte:=comp20;
   end
else if RGTFONTE.ItemIndex=4 then
   begin
   form_Impres_Impd.RDprint1.FonteTamanhoPadrao:=S05cpp;
   mfonte:=negrito;
   end
else if RGTFONTE.ItemIndex=5 then
   begin
   form_Impres_Impd.RDprint1.FonteTamanhoPadrao:=S05cpp;
   mfonte:=expandido;
   end;
form_Impres_Impd.RDprint1.TamanhoQteColunas:=160;

mqtdcol:=StrToInt('0'+QTDCOL.Text);
form_Impres_Impd.mlin:=1;
mqtd:=StrToInt('0'+QTDJ.Text);
mimp:=0;
testeform := TFrm_ImpD(FindGlobalComponent('form_Impres_Impd'));
if (testeform=nil)  then
   begin
   Application.CreateForm(Tfrm_Impres, form_Impres_Impd);
   end;

form_Impres_Impd.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PP
For mimp:=1 to mqtd do
   begin
   if Trim(LINHA1.Text)<>'' then
      begin
      form_Impres_Impd.mlin:=form_Impres_Impd.mlin+StrToINt('0'+PULAR1.Text);
      mcol:=StrToInt('0'+NCOL1.text);
      form_Impres_Impd.Rdprint1.ImpF(form_Impres_Impd.mlin,mcol,LINHA1.Text,[mfonte]);
      if mqtdcol>0 then
         begin
         For mcimp:=2 to mqtdcol do
            begin
            mcol:=mcol+StrToInt('0'+QTDPC.Text);
            form_Impres_Impd.Rdprint1.ImpF(form_Impres_Impd.mlin,mcol,LINHA1.Text,[mfonte]);
            end;
         end;
      end;
   if Trim(LINHA2.Text)<>'' then
      begin
      form_Impres_Impd.mlin:=form_Impres_Impd.mlin+StrToINt('0'+PULAR2.Text);
      mcol:=StrToInt('0'+NCOL2.text);
      form_Impres_Impd.Rdprint1.ImpF(form_Impres_Impd.mlin,mcol,LINHA2.Text,[mfonte]);
      if mqtdcol>0 then
         begin
         For mcimp:=2 to mqtdcol do
            begin
            mcol:=mcol+StrToInt('0'+QTDPC.Text);
            form_Impres_Impd.Rdprint1.ImpF(form_Impres_Impd.mlin,mcol,LINHA2.Text,[mfonte]);
            end;
         end;
      end;
   form_Impres_Impd.mlin:=form_Impres_Impd.mlin+StrToInt('0'+PULAR3.Text)
   end;
if form_Impres_Impd.Rdprint1.Setup then form_Impres_Impd.Rdprint1.Fechar;
form_Impres_Impd.free;
form_Impres_Impd:=nil;

end;

procedure TFrm_ImpD.bbincluirClick(Sender: TObject);
Begin
NOMREL.Text :='';
LINHA1.Text :='';
LINHA2.Text :='';
NCOL1.Text  :='';
NCOL2.Text  :='';
PULAR1.Text :='';
PULAR2.Text :='';
PULAR3.Text :='';
QTDCOL.Text :='';
QTDPC.Text  :='';
QTDJ.Text   :='';
RGTFONTE.ItemIndex:=0;
RGENTREL.ItemIndex:=0;
Panel1.Enabled :=True;
NOMREL.Enabled :=True;
NOMREL.SetFocus;
bbincluir.Enabled:=False;
bbalterar.Enabled:=False;
bbgravar.Enabled :=True;
bbexcluir.Enabled:=False;
BBIMPRIMIR.Enabled:=False;
mstatus:=1;

end;

procedure TFrm_ImpD.bbalterarClick(Sender: TObject);
begin
mstatus:=0;
NOMREL.Text :=Qr_IDVIDNOMREL.Value;
LINHA1.Text :=Qr_IDVIDLINHA1.Value;
LINHA2.Text :=Qr_IDVIDLINHA2.Value;
NCOL1.Text  :=Qr_IDVIDCOL1.AsString;
NCOL2.Text  :=Qr_IDVIDCOL2.AsString;
PULAR1.Text :=Qr_IDVIDPULAR1.AsString;
PULAR2.Text :=Qr_IDVIDPULAR2.AsString;
PULAR3.Text :=Qr_IDVIDPULAR3.AsString;
QTDCOL.Text :=Qr_IDVIDQTDCOL.AsString;
QTDPC.Text  :=Qr_IDVIDQTDCP.AsString;
QTDJ.Text   :=Qr_IDVIDQTDJ.AsString;
RGTFONTE.ItemIndex:=Qr_IDVIDFPADRAO.AsInteger;
RGENTREL.ItemIndex:=Qr_IDVIDQTDLPP.AsInteger;
Panel1.Enabled :=True;
NOMREL.Enabled :=False;
LINHA1.SetFocus;
bbincluir.Enabled:=False;
bbalterar.Enabled:=False;
bbgravar.Enabled :=True;
bbexcluir.Enabled:=False;
BBIMPRIMIR.Enabled:=False;

end;

procedure TFrm_ImpD.bbgravarClick(Sender: TObject);
begin
if (Trim(LINHA1.Text)='') and (Trim(LINHA2.Text)='') then
   begin
   fMensagem('Favor digitar uma linha Valida!',0,['0'],0);
   linha1.SetFocus;
   abort;
   end;
if Trim(LINHA1.Text)<>'' then
   begin
   if StrtoInt('0'+NCOL1.Text)<1 then
      begin
      fMensagem('A Coluna Tem que Ser Maior que Zero',0,['0'],0);
      NCOL1.Text;
      abort;
      end;
   end;
if StrtoInt('0'+PULAR1.Text)<1 then
   PULAR1.Text:='0';
if StrToInt('0'+PULAR2.Text)<1 then
   PULAR2.Text:='0';
if StrToInt('0'+PULAR3.Text)<1 then
   PULAR3.Text:='0';
if StrToInt('0'+QTDCOL.Text)<1 Then
   QTDCOL.Text:='1';
if (StrToInt('0'+QTDCOL.Text)>1) and (StrToInt('0'+QTDPC.Text)<1) then
   begin
   fMensagem('Pular Quantos Caracteres para Quantidade de Colunas/lados'+#13
              +'maior que 1 tem que ser Preenchido.',0,['0'],0);
   QTDPC.SetFocus;
   abort;
   end;
if StrToInt('0'+QTDJ.Text)<1 then
   begin
   fMensagem('Quantidade de Jogos Tem que ser maior que zero',0,['0'],0);
   QTDJ.SetFocus;
   abort;
   end;

if Trim(LINHA1.Text)<>'' then
   begin
   if StrtoInt('0'+NCOL1.Text)<1 then
      begin
      fMensagem('A Coluna Tem que Ser Maior que Zero',0,['0'],0);
      NCOL1.Text;
      abort;
      end;
   end;
DM1.Tb_IDV.Close;
DM1.Tb_IDV.Sql.Clear;
DM1.Tb_IDV.Sql.Add('Select * from CADIDV where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADIDV',[]),'',' IDCODEMP=0'+IntToStr(codemp)+' and ')
                  +'IDNOMREL='+chr(39)+NOMREL.Text+chr(39));
DM1.Tb_IDV.Open;
if (mstatus=1) and not (DM1.Tb_IDV.Eof) then
   begin
   fMensagem('Ja Existe uma Lista com Este Nome. Favor trocar',0,['0'],0);
   NOMREL.SetFocus;
   abort;
   end
else if (mstatus=0) and (DM1.Tb_IDV.Eof) then
   begin
   fMensagem('Erro ao Tentar Gravar.',0,['0'],0);
   end;
if mstatus=0 then
   DM1.Tb_IDV.Edit
else
   DM1.Tb_IDV.Append;
DM1.Tb_IDVIDCODEMP.Value:=codemp;
DM1.Tb_IDVIDNOMREL.Value:=NOMREL.Text;
dm1.Tb_IDVIDLINHA1.Value:=LINHA1.Text;
DM1.Tb_IDVIDLINHA2.Value:=LINHA2.Text;
DM1.Tb_IDVIDCOL1.Value  :=StrToInt('0'+NCOL1.Text);
DM1.Tb_IDVIDPULAR1.Value:=StrToInt('0'+PULAR1.Text);
DM1.Tb_IDVIDCOL2.Value  :=StrToInt('0'+NCOL2.Text);
DM1.Tb_IDVIDPULAR2.Value:=StrToInt('0'+PULAR2.Text);
DM1.Tb_IDVIDPULAR3.Value:=StrToInt('0'+PULAR3.Text);
DM1.Tb_IDVIDQTDCOL.Value:=StrtoInt('0'+QTDCOL.Text);
DM1.Tb_IDVIDQTDJ.Value  :=StrtoInt('0'+QTDJ.Text);
DM1.Tb_IDVIDQTDCP.Value :=StrToInt('0'+QTDPC.Text);
DM1.Tb_IDVIDFPADRAO.Value:=RGTFONTE.Itemindex;
DM1.Tb_IDVIDQTDLPP.Value :=RGENTREL.ItemIndex;
DM1.Tb_IDV.Post;
Qr_IDV.Close;
Qr_IDV.SQL.Clear;
Qr_IDV.SQL.Add('Select * from CADIDV ');
if not DM1.Qr_Tid.Locate('TINOME','CADIDV',[]) then
   Qr_IDV.SQL.Add(' where  IDCODEMP='+IntToStr(Codemp));
Qr_IDV.SQL.Add(' order by IDNOMREL ');
Qr_IDV.Open;
bbcancelar.Click;

end;

procedure TFrm_ImpD.FormCreate(Sender: TObject);
begin
Qr_IDV.Close;
Qr_Idv.Sql.Clear;
Qr_IDV.SQL.Add('Select * from CADIDV ');
if not DM1.Qr_Tid.Locate('TINOME','CADIDV',[]) then
   Qr_IDV.SQL.Add(' where  IDCODEMP='+IntToStr(Codemp));
Qr_IDV.SQL.Add(' order by IDNOMREL ');
Qr_IDV.Open;
NOMREL.Text :=Qr_IDVIDNOMREL.Value;
LINHA1.Text :=Qr_IDVIDLINHA1.Value;
LINHA2.Text :=Qr_IDVIDLINHA2.Value;
NCOL1.Text  :=Qr_IDVIDCOL1.AsString;
NCOL2.Text  :=Qr_IDVIDCOL2.AsString;
PULAR1.Text :=Qr_IDVIDPULAR1.AsString;
PULAR2.Text :=Qr_IDVIDPULAR2.AsString;
PULAR3.Text :=Qr_IDVIDPULAR3.AsString;
QTDCOL.Text :=Qr_IDVIDQTDCOL.AsString;
QTDPC.Text  :=Qr_IDVIDQTDCP.AsString;
QTDJ.Text   :=Qr_IDVIDQTDJ.AsString;
RGTFONTE.ItemIndex:=Qr_IDVIDFPADRAO.AsInteger;
RGENTREL.ItemIndex:=Qr_IDVIDQTDLPP.AsInteger;

end;

procedure TFrm_ImpD.bbexcluirClick(Sender: TObject);
begin
if fMensagem('Quer Realmente Excluir Este Registros?',0,['1','2'],2)	=mrYes then
   begin
   DM1.Tb_IDV.Close;
   DM1.Tb_IDV.Sql.Clear;
   DM1.Tb_IDV.Sql.Add('Select * from CADIDV where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADIDV',[]),'',' IDCODEMP=0'+IntToStr(codemp)+' and ')
                     +'IDNOMREL='+chr(39)+NOMREL.Text+chr(39));
   DM1.Tb_IDV.Open;

   if DM1.Tb_IDV.Eof Then
      begin
      MessageDlg('Registro Nao Encontrado!',mtWarning,[mbOk],0);
      bbcancelar.click;
      end
   else
      begin
      DM1.Tb_IDV.Delete;
      Qr_IDV.Close;
      Qr_IDV.SQL.Clear;
      Qr_IDV.SQL.Add('Select * from CADIDV ');
      if not DM1.Qr_Tid.Locate('TINOME','CADIDV',[]) then
         Qr_IDV.SQL.Add(' where  IDCODEMP='+IntToStr(Codemp));
      Qr_IDV.SQL.Add(' order by IDNOMREL ');
      Qr_IDV.Open;
      bbcancelar.click;
      end;
   end;


end;

procedure TFrm_ImpD.bbcancelarClick(Sender: TObject);
begin
bbincluir.Enabled:=True;
bbalterar.Enabled:=True;
bbgravar.Enabled :=False;
bbexcluir.Enabled:=True;
BBIMPRIMIR.Enabled:=True;
Panel1.Enabled    :=False;
NOMREL.Enabled    :=False;
bbincluir.SetFocus;

end;

procedure TFrm_ImpD.DBGrid1CellClick(Column: TColumn);
begin
NOMREL.Text :=Qr_IDVIDNOMREL.Value;
LINHA1.Text :=Qr_IDVIDLINHA1.Value;
LINHA2.Text :=Qr_IDVIDLINHA2.Value;
NCOL1.Text  :=Qr_IDVIDCOL1.AsString;
NCOL2.Text  :=Qr_IDVIDCOL2.AsString;
PULAR1.Text :=Qr_IDVIDPULAR1.AsString;
PULAR2.Text :=Qr_IDVIDPULAR2.AsString;
PULAR3.Text :=Qr_IDVIDPULAR3.AsString;
QTDCOL.Text :=Qr_IDVIDQTDCOL.AsString;
QTDPC.Text  :=Qr_IDVIDQTDCP.AsString;
QTDJ.Text   :=Qr_IDVIDQTDJ.AsString;
RGTFONTE.ItemIndex:=Qr_IDVIDFPADRAO.AsInteger;
RGENTREL.ItemIndex:=Qr_IDVIDQTDLPP.AsInteger;

end;

procedure TFrm_ImpD.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
NOMREL.Text :=Qr_IDVIDNOMREL.Value;
LINHA1.Text :=Qr_IDVIDLINHA1.Value;
LINHA2.Text :=Qr_IDVIDLINHA2.Value;
NCOL1.Text  :=Qr_IDVIDCOL1.AsString;
NCOL2.Text  :=Qr_IDVIDCOL2.AsString;
PULAR1.Text :=Qr_IDVIDPULAR1.AsString;
PULAR2.Text :=Qr_IDVIDPULAR2.AsString;
PULAR3.Text :=Qr_IDVIDPULAR3.AsString;
QTDCOL.Text :=Qr_IDVIDQTDCOL.AsString;
QTDPC.Text  :=Qr_IDVIDQTDCP.AsString;
QTDJ.Text   :=Qr_IDVIDQTDJ.AsString;
RGTFONTE.ItemIndex:=Qr_IDVIDFPADRAO.AsInteger;
RGENTREL.ItemIndex:=Qr_IDVIDQTDLPP.AsInteger;

end;

procedure TFrm_ImpD.DBGrid1Exit(Sender: TObject);
begin
NOMREL.Text :=Qr_IDVIDNOMREL.Value;
LINHA1.Text :=Qr_IDVIDLINHA1.Value;
LINHA2.Text :=Qr_IDVIDLINHA2.Value;
NCOL1.Text  :=Qr_IDVIDCOL1.AsString;
NCOL2.Text  :=Qr_IDVIDCOL2.AsString;
PULAR1.Text :=Qr_IDVIDPULAR1.AsString;
PULAR2.Text :=Qr_IDVIDPULAR2.AsString;
PULAR3.Text :=Qr_IDVIDPULAR3.AsString;
QTDCOL.Text :=Qr_IDVIDQTDCOL.AsString;
QTDPC.Text  :=Qr_IDVIDQTDCP.AsString;
QTDJ.Text   :=Qr_IDVIDQTDJ.AsString;
RGTFONTE.ItemIndex:=Qr_IDVIDFPADRAO.AsInteger;
RGENTREL.ItemIndex:=Qr_IDVIDQTDLPP.AsInteger;

end;

procedure TFrm_ImpD.NCOL1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

procedure TFrm_ImpD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

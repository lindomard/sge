unit S_SelPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBTables, Grids, DBGrids, Mask, ExtCtrls,
  s_tra, S_SelEmp;

type
  TFrm_SelPed = class(TForm)
    Panel1: TPanel;
    codtra: TEdit;
    NOMTRA: TEdit;
    MDT1: TMaskEdit;
    MDT2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DSCADP01: TDataSource;
    CADP01: TQuery;
    bbMarcar: TBitBtn;
    bbDesmarcar: TBitBtn;
    UPCADP01: TUpdateSQL;
    bbSair: TBitBtn;
    CADP01P1CODEMP: TFloatField;
    CADP01P1CHAVE: TFloatField;
    CADP01P1DATANF: TDateTimeField;
    CADP01P1NUMNF: TFloatField;
    CADP01P1CODTRA: TFloatField;
    CADP01CRAZAO: TStringField;
    CADP01P1TOTALL: TFloatField;
    CADP01P1CODCLI: TFloatField;
    CADP01P1TIPO: TFloatField;
    CADP01P1QTDVOL: TFloatField;
    CADP01P1PESOB: TFloatField;
    CADP01P1PESOL: TFloatField;
    CADP01OK: TStringField;
    CB_EMITIDAS: TCheckBox;
    CADP01P1MINUTA: TFloatField;
    CADP01P1LOTSEQ: TFloatField;
    CADP01P1VALFRE: TFloatField;
    CADP01P1BANCO: TFloatField;
    CADP01P1PREVENT: TDateTimeField;
    CADP01P1OBS1: TMemoField;
    CADP01P1OBS2: TMemoField;
    CADP01P1OBS3: TMemoField;
    procedure bbMarcarClick(Sender: TObject);
    procedure bbDesmarcarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure bbSairClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure codtraExit(Sender: TObject);
    procedure codtraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    function fAbrirPedidos(pSel: String): Boolean;
  public
    { Public declarations }
    mitem  : INTEGER;
    mchave : integer;
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_SelPed: TFrm_SelPed;

implementation

uses  S_DM1, Func, lerarq;

{$R *.dfm}

procedure TFrm_SelPed.bbMarcarClick(Sender: TObject);
begin
if (trim(MDT1.Text)<>'/  /') and  (trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data inicial maior que final, invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   exit;
   end;
fAbrirPedidos('X');
end;

procedure TFrm_SelPed.bbDesmarcarClick(Sender: TObject);
begin
if (trim(MDT1.Text)<>'/  /') and  (trim(MDT2.Text)<>'/  /') then
   begin
   if StrtoDate(MDT1.Text)>StrtoDate(MDT2.Text) then
      begin
      fmensagem('Data inicial maior que final, invalida!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;

fAbrirPedidos(' ');

end;

procedure TFrm_SelPed.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     If CADP01OK.AsString = 'X' then
     begin
         DBGrid1.Canvas.Brush.Color := clRed;
         DBGrid1.Canvas.Font.Color  := clInfoBk;
     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_SelPed.DBGrid1CellClick(Column: TColumn);
begin
        cadp01.Edit;
        IF cadp01OK.AsString <> 'X' THEN
           cadp01OK.ASSTRING := 'X'
           ELSE cadp01OK.ASSTRING := '';

end;
procedure TFrm_SelPed.bbSairClick(Sender: TObject);
begin

modalresult:=mrok;
end;

function TFrm_SelPed.fAbrirPedidos(pSel: String): Boolean;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADCLI','CCODEMP','P1CODEMP','CCODCLI','P1CODCLI');
if DM1.Qr_Tid.Locate('TINOME','CADP01',[]) then
   la_Empresas:=''
else
   la_Empresas:=fla_sqlmp('P1CODEMP',Form_SelEmp.CLB_EMPRESAS);

cadp01.Close;
cadp01.SQL.clear;
cadp01.SQL.add('select p1codemp,p1lotseq,p1chave,p1numnf,max(P1MINUTA) as P1MINUTA,max(p1datanf) as p1datanf,'
              +' max(p1obs1) p1obs1,max(p1obs2) as p1obs2,max(p1obs3) as p1obs3, '
              +' max(p1codtra) as p1codtra,max(crazao) as crazao,max(p1codcli) as p1codcli, '
              +' max(p1tipo) as p1tipo,'
              +' max(p1prevent) as p1prevent,'
              +' max(p1banco) as p1banco,' );
cadp01.SQL.add('sum(p1valfre) as p1valfre,sum(p1totall) as p1totall,sum(p1qtdvol) as p1qtdvol, '
              +'sum(p1pesob)  as p1pesob, sum(p1pesol) as p1pesol,'+chr(39)+pSel+chr(39)+' ok ');
cadp01.SQL.add('from cadp01 '+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' P1STATUS<'+mstatus_excluido+' ');
if trim(MDT1.text)<>'/  /' then
   CADP01.SQL.Add(' and p1prevent>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.text)<>'/  /' then
   CADP01.SQL.Add(' and p1prevent>='+chr(39)+FormatDateTime(fdt, StrtoDate(MDT2.Text))+chr(39));
cadp01.SQL.add(' and p1codtra =0'+trim(codtra.Text));
if not cb_emitidas.checked then
   cadp01.SQL.add(' and p1minuta=0');

cadp01.SQL.add(' group by  p1codemp,p1lotseq,p1chave,p1numnf ' );
try
   cadp01.Open;
except
   cadp01.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;
//cadp01.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));

result:=true;
end;

procedure TFrm_SelPed.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=Formatdatetime(fdt2, StrtoDate(MDT1.Text));
   except
      fmensagem('Data invalida!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end;
fAbrirPedidos(' ');
end;

procedure TFrm_SelPed.MDT2Exit(Sender: TObject);
begin
if trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=Formatdatetime(fdt2, StrtoDate(MDT2.Text));
   except
      fmensagem('Data invalida!',0,['0'],0);
      MDT2.SetFocus;
      end;
   end;
fAbrirPedidos(' ');
end;

procedure TFrm_SelPed.codtraExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if ValFloat(CODTRA.Text)>0 then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      MessageDlg('Transportadora não Cadastrada!',mtWarning,[mbOk],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;
fAbrirPedidos(' ');
end;

procedure TFrm_SelPed.codtraKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_SelPEd',Key);
   if trim(codtra.Text)<>'' then
      codtraExit(Self);
   key:=#0;
   end;


end;

procedure TFrm_SelPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_SelPed.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_SelPed.FormKeyDown(Sender: TObject; var Key: Word;
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

END.

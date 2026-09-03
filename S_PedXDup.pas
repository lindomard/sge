unit S_PedXDup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,func, ExtCtrls,db,dbtables,S_DM1, Grids,
  DBGrids, Buttons, ComCtrls, CheckLst,uexport;

type
  TFrm_PedXDup = class(TForm)
    Tb_PedDup: TQuery;
    Src_PedDup: TDataSource;
    Tb_PedDupP1CODEMP: TFloatField;
    Tb_PedDupP1CHAVE: TFloatField;
    Tb_PedDupTOTPED: TFloatField;
    Tb_PedDupTOTDUP: TFloatField;
    Tb_PedDupP1LOTSEQ: TFloatField;
    Tb_PedDupP1DATANF: TDateTimeField;
    Tb_PedDupP1TIPO: TFloatField;
    Tb_PedDupP1STATUS: TFloatField;
    Tb_PedDupTARBAN: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    MDT2: TMaskEdit;
    MDT1: TMaskEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    RG_TIPOPED: TCheckListBox;
    bbExportar: TBitBtn;
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_PedXDup: TFrm_PedXDup;

implementation

uses lerarq;

{$R *.dfm}

procedure TFrm_PedXDup.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDatetime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_PedXDup.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   try
      MDT2.Text:=FormatDatetime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_PedXDup.BitBtn1Click(Sender: TObject);
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin4(0,'CADDAR','CRCODEMP','P1CODEMP','CRLOTSEQ_CP','P1LOTSEQ','CRNPED','P1CHAVE','CRORDEM','P1ORDEM');

Tb_PedDup.Close;
Tb_PedDup.Sql.Clear;
Tb_PedDup.SQL.Add('select max(P1TIPO) as P1TIPO, max(P1STATUS) as P1STATUS,max(p1datdoc) AS P1DATANF,P1CODEMP,P1LOTSEQ,P1CHAVE,SUM(DISTINCT(P1TOTALL)) as TOTPED, '
                 +' sum(DECODE(CRVALOR '
                 +' -DECODE(P1INCTB,2,CRTARBAN,0),NULL,0,'
                 +' crvalor-DECODE(P1INCTB,2,CRTARBAN,0) )) as totdup, '
                 +' sum(DECODE(P1INCTB,2,CRTARBAN,0)) as tarban '
                 +' from cadp01,CADDAR   '
                 +'       where  P1STATUS<'+mstatus_excluido+' '
                 +iif(la_instrucao='','',' and '+la_instrucao));
if Trim(MDT1.Text)<>'/  /' then
   Tb_PedDup.Sql.add(' and P1DATDOC>='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT1.Text))+chr(39));
if Trim(MDT2.Text)<>'/  /' then
   Tb_PedDup.Sql.add(' and P1DATDOC<='+chr(39)+FormatDateTime(Fdt, StrtoDate(MDT2.Text))+chr(39));
//Tb_PedDup.Sql.add('

Tb_PedDup.SQL.add(' and P1STATUS<'+mstatus_excluido+' ');
Tb_PedDup.SQL.add(' and P1EMIDOC<>0 ');
mcinst2:=fItenstCheckListBox(1,RG_TIPOPED);
if trim(mcinst2)<>'' then
   Tb_PedDup.sQL.Add(' and P1TIPO '+mcinst2);

Tb_PedDup.SQL.add(' having( sum(DISTINCT(P1TOTALL))<>sum(DECODE(CRVALOR-DECODE(P1INCTB,2,CRTARBAN,0) ,NULL,0,crvalor-+DECODE(P1INCTB,2,CRTARBAN,0)))) '
                 +' group by P1CODEMP,P1LOTSEQ,P1CHAVE ');

{
Select  SUM(DISTINCT(P1TOTALL))  AS TOTPED ,SUM(CRVALOR) AS TOTDUP
,MIN(P1ORDEM) AS ORDMENOR,MAX(P1ORDEM) AS ORDMAIOR
,MIN(CRDESD) AS MINDESD,MAX(CRDESD) AS MAXDESD
,P1CODEMP,P1CHAVE,CRNPED
from SGE10.CADP01,SGE10.CADDAR
WHERE P1DATAP>='01/01/2005'
AND P1DATAP<='30/03/2008'
AND CRCODEMP=P1CODEMP
AND CRLOTSEQ_CP=P1LOTSEQ
AND CRNPED=P1CHAVE
GROUP BY P1CODEMP,P1CHAVE,CRNPED
having sum(DISTINCT(P1TOTALL))<>SUM(CRVALOR)
 }
Tb_Peddup.SQL.savetofile(mpastatemp + 'SQL02.TXT');

try
   Tb_Peddup.Open;
except
   Tb_Peddup.SQL.savetofile(mpastatemp + 'SQL.TXT');
   end;


end;

procedure TFrm_PedXDup.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_PedXDup.RG_TIPOPEDClick(Sender: TObject);
begin
RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_PedXDup.FormCreate(Sender: TObject);
var
x: Integer;
begin
   RG_TIPOPED.Items.Clear;
   for x:=1 to high(tab_tped) do
      begin
      RG_TIPOPED.Items.Add(tab_tped[x]);
      end;
   RG_TIPOPED.Visible:=true;
   RG_TIPOPED.Checked[0] := TRUE;

end;

procedure TFrm_PedXDup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_PedXDup.bbExportarClick(Sender: TObject);
begin
if (Tb_PedDup.Active=false) or (Tb_PedDup.IsEmpty) then
   exit;
bbExportar.Enabled:=false;

Application.CreateForm(TfExport, fExport);
fExport.DataSet1 :=  Src_PedDup.DataSet;       //define o DataSet a ser exportado
freeandnil(fExport);
bbExportar.Enabled:=true;


end;

end.

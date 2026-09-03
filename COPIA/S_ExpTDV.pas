unit S_ExpTDV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, Buttons, db, dbtables, func, S_DM1,
  S_DM2;

type
  TFrm_ExpTDV = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    Panel4: TPanel;
    DriveComboBox1: TDriveComboBox;
    Label1: TLabel;
    NOMARQ: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ExpTDV: TFrm_ExpTDV;

implementation

uses S_TPro, lerarq;

{$R *.dfm}

procedure TFrm_ExpTDV.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ExpTDV.FormCreate(Sender: TObject);
var
msaida: String;
mlid,mtam: Integer;
begin
mtam:=length(Trim(Frm_Tpro.NOMREL.Caption));
msaida:='';
for mlid:=1 to mtam do
   begin
   if copy(Trim(Frm_TPro.NOMREL.Caption),mlid,1)<>' ' then
      msaida:=msaida+copy(Trim(Frm_TPro.NOMREL.Caption),mlid,1);
   end;
NOMARQ.Text:=msaida;

end;

procedure TFrm_ExpTDV.BitBtn1Click(Sender: TObject);
var
f: TextFile;
mnomarq: String;
begin
mnomarq:=DirectoryListBox1.Directory;
if copy(mnomarq,length(mnomarq),1)<>'\' then
   mnomarq:=mnomarq+'\';
mnomarq:=mnomarq+Trim(NOMARQ.Text);
if FileExists(mnomarq) then
   begin
   if fmensagem('Este Arquivo ja Existe. Deseja Sobrepor?',0,['1','2'],2)=mrNo then
      begin
      NOMARQ.SetFocus;
      abort;
      end;
   end;

AssignFile(f,mnomarq);
Rewrite(f);

if not fltdvca(0,0,mreltab,frm_TPro.NOMREL.Caption,'CADTDV') then


While not DM1.Tb_TDVCA.eof do
   begin
   WriteLn(f,'CTDVCA',FormatFloat('00000',DM1.Tb_TDVCATCCODEMP.Value)
          +'00'
          +insere2(DM1.Tb_TDVCATCDOC.Value,' ',10)
          +insere2(DM1.Tb_TDVCATCNOME.Value,' ',20)
          +FormatFloat('0000',zeranegreal(DM1.Tb_TDVCATCQTDLIN.Value))
          +FormatFloat('0000',zeranegreal(DM1.Tb_TDVCATCQTDCOL.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCFPADRAO.Value))
          +FormatFloat('0000',zeranegreal(DM1.Tb_TDVCATCQTDITEM.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCQTDLPP.Value))
          +FormatFloat('0000',zeranegreal(DM1.Tb_TDVCATCNUMCOL.Value))
          +FormatFloat('0000',zeranegreal(DM1.Tb_TDVCATCINTCOL.Value))
          +FormatFloat('0000',zeranegreal(DM1.Tb_TDVCATCTPCOL.Value))
          +FormatFloat('0000',zeranegreal(DM1.Tb_TDVCATCORDEM.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCMPAGGR.Value))
          +insere2(DM1.Tb_TDVCATCOBS.Value,' ',200)
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCTPESQ.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCTPREL.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCIMPG.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCIMPSG.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCAVPTPI.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCAVPIPF.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCSTATUS.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCVIS.Value))
          +FormatFloat('000',zeranegreal(DM1.Tb_TDVCATCQTDSER.Value))
          +FormatFloat('0',zeranegreal(DM1.Tb_TDVCATCIMPDA.Value)));

{
  resumo do lay-out

Nome do arquivo    001-006    6
codemp             007-011    5
Local              012-013    2
TCDOC              014-023   10
TNOME              024-043   20
TCQTDLIN           044-047    4
TCQTDCOL           048-051    4
TCFPADRAO          052-052    1
TCQTDITEM          053-056    4
TCQTDLPP           057-057    1
TCNUMCOL           058-061    4
TCINTCOL           062-065    4
TCTPCOL            066-069    4
TCORDEM            070-073    4
TCMPAGGR           074-074    1
TCOBS              075-274  200
TCTPESQ            275-275    1
TCTPREL            276-276    1
TCIMPG             277-277    1
TCIMPSG            278-278    1
TCAVPTPI           279-279    1
TCAVPIPF           280-280    1
STATUS             281-281    1
TCVIS              282-282    1
TCQTDSER           283-285    3
TCAVPIPF           286-286    1


}

   DM1.Tb_TDVCA.Next;
   end;


fltdvop(0,0,mreltab,Frm_TPro.NOMREL.Caption,'CADTDV','','','');
While not DM2.Tb_Op.Eof do
   begin
   WriteLn(f,'CTDVOP'+FormatFloat('00000',DM2.Tb_OPTOCODEMP.Value)
          +'01'
          +insere2(DM2.Tb_OPTODOC.Value,' ',10)
          +insere2(DM2.Tb_OPTONOME.Value,' ',20)
          +FormatFloat('000',zeranegreal(DM2.Tb_OPTOTDET.Value))
          +insere2(DM2.Tb_OPTOTOP0.Value,' ',1)
          +insere2(DM2.Tb_OPTOOP0.Value,' ',40)
          +insere2(DM2.Tb_OPTODESOP0.Value,' ',80)
          +insere2(DM2.Tb_OPTOTOP1.Value,' ',1)
          +insere2(DM2.Tb_OPTOOP1.Value,' ',40)
          +insere2(DM2.Tb_OPTODESOP1.Value,' ',80)
          +insere2(DM2.Tb_OPTOTOP2.Value,' ',1)
          +insere2(DM2.Tb_OPTOOP2.Value,' ',40)
          +insere2(DM2.Tb_OPTODESOP2.Value,' ',80)
          +insere2(DM2.Tb_OPTOTOP3.Value,' ',1)
          +insere2(DM2.Tb_OPTOOP3.Value,' ',40)
          +insere2(DM2.Tb_OPTODESOP3.Value,' ',80)
          +insere2(DM2.Tb_OPTOCONDT1.Value,' ',1)
          +insere2(DM2.Tb_OPTOCOND01.Value,' ',30)
          +insere2(DM2.Tb_OPTODCOND01.Value,' ',80)
          +insere2(DM2.Tb_OPTOCONDOP.Value,' ',5)
          +insere2(DM2.Tb_OPTOCONDT2.Value,' ',1)
          +insere2(DM2.Tb_OPTOCOND02.Value,' ',30)
          +insere2(DM2.Tb_OPTODCOND02.Value,' ',80)
          +insere2(DM2.Tb_OPTOPER0.Value,' ',1)
          +insere2(DM2.Tb_OPTOPER1.Value,' ',1)
          +insere2(DM2.Tb_OPTOPER2.Value,' ',1)
          +FormatFloat('0000000000',DM2.Tb_OPTOCODIGO.Value));
   DM2.Tb_Op.Next;
   end;
{ Resumo do Lay-Out Acima
Nome da Tabela   001-006    6
TOCODEMP         007-011    5
local            012-013    2
TODOC            014-023   10
TONOME           024-043   20
TOTDET           044-046    3
TOTOP0           047-047    1
TOOP0            048-087   40
TOTDESOP0        088-167   80
TOTOP1           168-168    1
TOOP1            169-208   40
TODESOP1         209-288   80
TOTOP2           289-289    1
TOOP2            290-329   40
TODESOP2         330-409   80
TOTOP3           410-410    1
TOOP3            411-450   40
TOPDESOP3        451-530   80
TOCONDT1         531-531    1
TOCOND01         532-561   30
TODCOND01        562-641   80
TOCONDOP         642-646    5
TOCONDT2         647-647    1
TOCOND02         648-677   30
TODCOND02        678-757   80
TOPER0           758-758    1
TOPER1           759-759    1
TOPER2           760-760    1
TOCODIGO         761-770   10
}
flcadtdv(0,0,mreltab,frm_TPro.NOMREL.Caption,'','','CADTDV');

While not DM1.Tb_TDV.Eof do
   begin
   WriteLn(f,'CADTDV'+FormatFloat('00000',DM1.Tb_TDVTCODEMP.Value)
   +'02'
   +insere2(DM1.Tb_TDVTDOC.Value,' ',10)
   +insere2(DM1.Tb_TDVTNOME.Value,' ',20)
   +FormatFloat('000',DM1.Tb_TDVTLOCAL.Value)
   +Formatfloat('000000000',DM1.Tb_TDVTSEQ.Value)
   +FormatFloat('0000',DM1.Tb_TDVTLIN.Value)
   +FormatFloat('0000',DM1.Tb_TDVTCOL.Value)
   +FormatFloat('0000',DM1.Tb_TDVTFONTE.Value)
   +FormatFloat('0000',DM1.Tb_TDVTTIPO.Value)
   +insere2(DM1.Tb_TDVTCAMPO.Value,' ',140)
   +insere2(DM1.Tb_TDVTDCAMPO.Value,' ',140)
   +insere2(DM1.Tb_TDVTTIPOC.Value,' ',1)
   +Formatfloat('0',DM1.Tb_TDVTALINHAR.Value)
   +Formatfloat('0000',DM1.Tb_TDVTTAM.Value)
   +insere2(DM1.Tb_TDVTFORMATO.value,' ',40)
   +insere2(DM1.Tb_TDVTCONDT1.Value,' ',1)
   +insere2(DM1.Tb_TDVTCOND01.Value,' ',30)
   +insere2(DM1.Tb_TDVTCONDOP.Value,' ',5)
   +insere2(DM1.Tb_TDVTCONDT2.Value,' ',1)
   +insere2(DM1.Tb_TDVTCOND02.Value,' ',30)
   +Formatfloat('0',DM1.Tb_TDVTZERVAR.Value));
   DM1.Tb_Tdv.Next;
   end;
{ Resumo do lay-out acima
Nome da Tabela      001-006   6
TCODEMP             007-011   5
local               012-013   2
TDOC                014-023  10
TNOME               024-043  20
TLOCAL              044-046   3
TSEQ                047-055   9
TLIN                056-059   4
TCOL                060-063   4
TFONTE              064-067   4
TTIPO               068-071   4
TCAMPO              072-131 140
TDCAMPO             212-271 140
TTIPOC              352-352   1
TALINHAR            353-353 1
TTAM                354-357   4
TFORMATO            358-397  40
TCONDT1             398-398   1
TCOND01             399-428  30
TCONDOP             429-433   5
TCONDT2             434-434   1
TCOND02             435-464  30
TZERVAR             465-465   1


}

CloseFile(f);

end;

procedure TFrm_ExpTDV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

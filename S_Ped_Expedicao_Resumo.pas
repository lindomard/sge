unit S_Ped_Expedicao_Resumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBCtrls,func,
  lerarq;

type
  TFrm_Ped_Expedicao_Resumo = class(TForm)
    PageControl1: TPageControl;
    tsOk: TTabSheet;
    TsErro: TTabSheet;
    Label5: TLabel;
    bbPreFat: TBitBtn;
    Label1: TLabel;
    CB_MODELO: TComboBox;
    sbSalvarPadrao: TSpeedButton;
    StaticText1: TStaticText;
    NOMTRA: TEdit;
    bbFechar: TBitBtn;
    Label2: TLabel;
    Panel1: TPanel;
    bbErroFechar: TBitBtn;
    DBGrid_erro: TDBGrid;
    GroupBox1: TGroupBox;
    DBText1: TDBText;
    StaticText2: TStaticText;
    CHAVE_MIN: TEdit;
    OBS_RESUMO: TStaticText;
    procedure bbFecharClick(Sender: TObject);
    procedure bbErroFecharClick(Sender: TObject);
    procedure bbPreFatClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbSalvarPadraoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ped_Expedicao_Resumo: TFrm_Ped_Expedicao_Resumo;

implementation

uses S_Ped_Expedicao, S_Min2, S_DM1, S_DM4;

{$R *.dfm}

procedure TFrm_Ped_Expedicao_Resumo.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_Expedicao_Resumo.bbErroFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_Expedicao_Resumo.bbPreFatClick(Sender: TObject);
begin
if Frm_Min2=nil then
   Application.Createform(TFrm_Min2, Frm_Min2)
else
   begin
   fmensagem('O Programa de Minuta esta ocupado no momento',0,['0'],0);
   exit;
   end;

Frm_Min2.Tb_Min2.Close;
Frm_Min2.Tb_Min2.Sql.Clear;
Frm_Min2.Tb_Min2.Sql.Add('Select CM2CODEMP  ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2LOTSEQ ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2CODMIN ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2SEQ ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2TIPO ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2LOTSEQ_CP ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2NUMERO ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2CLIFOR ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2CODIGO ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2TIPDOC ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2NUMDOC  ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2QTDVOL ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2PESOB ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2PESOL');
Frm_Min2.Tb_Min2.Sql.Add(',CM2VALOR ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2OBS01');
Frm_Min2.Tb_Min2.Sql.Add(',CM2OBS02');
Frm_Min2.Tb_Min2.Sql.Add(',CM2OBS03');
Frm_Min2.Tb_Min2.Sql.Add(',CM2DTCONF');
Frm_Min2.Tb_Min2.Sql.Add(',CM2USRCONF');
Frm_Min2.Tb_Min2.Sql.Add(',CM2PED_CODEMP');
Frm_Min2.Tb_Min2.Sql.Add(',CM2QTDITENS');
Frm_Min2.Tb_Min2.Sql.Add(',CM2QTDUND ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2TIPOPED ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2CODCLI ');
Frm_Min2.Tb_Min2.Sql.Add(',CM2VALFRE');
Frm_Min2.Tb_Min2.Sql.Add(',CM2QTDPAG');
Frm_Min2.Tb_Min2.Sql.Add(',CM2QTDTIT');
Frm_Min2.Tb_Min2.Sql.Add(',CM2CODBCO');
Frm_Min2.Tb_Min2.Sql.Add(',CM2DATANF');
Frm_Min2.Tb_Min2.Sql.Add(',CRAZAO AS NOMCLI ');
Frm_Min2.Tb_Min2.Sql.Add(',CCIDADE ');
Frm_Min2.Tb_Min2.Sql.Add(',CUF ');
Frm_Min2.Tb_Min2.Sql.Add(',CFONE01 ');
Frm_Min2.Tb_Min2.Sql.Add(' from CADMIN2, CADCLI ');
Frm_Min2.Tb_Min2.Sql.Add(' where '+iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' CM2CODEMP=0'+IntToStr(codemp)+' and '));
Frm_Min2.Tb_Min2.Sql.Add(' CM2LOTSEQ=0 '
                  +' AND CM2CODMIN=0'+Trim(CHAVE_MIN.Text)
                  +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=0'+IntTostr(codemp)+' and ')
                  +' and CCODCLI=CM2CODIGO '
                  +' order by CRAZAO,CCIDADE,CUF,CFONE01,CM2CODCLI,CM2NUMERO,CM2SEQ');
try
   Frm_Min2.Tb_Min2.Open;
except
   Frm_Min2.Tb_Min2.sql.savetofile(mpastatemp +'sql.txt');
   end;
Frm_Min2.CHAVE.Text          :=CHAVE_MIN.Text;
Frm_Min2.RG_TIPOREL.ItemIndex:=CB_MODELO.ItemIndex;
Frm_Min2.MDATA.Text  :=FormatDateTime(fdt2,pdatasis);
Frm_Min2.CODTRA.Text :=Frm_Ped_Expedicao.CODTRA.Text;
Frm_Min2.NOMTRA.Text :=Frm_Ped_Expedicao.NOMTRA.Text;
Frm_Min2.NOMENT.Text :=Frm_Ped_Expedicao.NOMENT.Text;
Frm_Min2.CNPF.Text   :=Frm_Ped_Expedicao.CNPF.Text;
Frm_Min2.RG.Text     :=Frm_Ped_Expedicao.RG.Text;
Frm_Min2.BBIMPRIMIRClick(Self);
Frm_Min2.Free;
Frm_Min2:=nil;
end;

procedure TFrm_Ped_Expedicao_Resumo.FormCreate(Sender: TObject);
begin
if flfilpad(0,'_PED_EXPEDICAO_RESUMO','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','CB_MODELO',[]) then
      CB_MODELO.ItemIndex:=valint(DM4.Tb_FilPad2FPVALOR.Value);
   end;

end;

procedure TFrm_Ped_Expedicao_Resumo.sbSalvarPadraoClick(Sender: TObject);
begin
fDeletaPadroes(0,'_PED_EXPEDICAO_RESUMO','');
fGravaPadroes(codusr,'CB_MODELO'   ,'itemindex'   ,'_PED_EXPEDICAO_RESUMO',Inttostr(CB_MODELO.ItemIndex));
fmensagem('Gravado!',0,['0'],0);

end;
end.


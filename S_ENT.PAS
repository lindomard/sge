unit S_ent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, db, dbtables, Buttons, func,
  S_SLib,lerarq,

  ComCtrls, ToolWin, Menus, ImgList, s_Pro,S_Cli,
  S_Funcao, S_Usr, S_Sen01,  AppEvnts, ADODB;

type
  TFrm_Ent = class(TForm)
    Panel1: TPanel;
    CB_EMP: TComboBox;
    CB_USU: TComboBox;
    SENHA: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CB_EMPExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CB_USUExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//    procedure ATUALIZAMENU(MODULOAUX : STRING);
//    procedure busca_texto(textom : string);
//    procedure busca_prog;

  private
    { Private declarations }
  procedure VerificaBloqueio;

  public
    { Public declarations }
  end;
function fEntConclui(ptipo: Integer): Boolean;
function fAtualizaAtalho(ptipo: Integer): Boolean;

var
  Frm_Ent: TFrm_Ent;
  mtent: Integer=0;
  texto     : string;
  prog      : string;
  CMODULO   : STRING;

implementation

uses S_DM1, S_DM4, func_excecoes, S_ProConf,
   DateUtils, S_PesqProd, s_Princ, S_DM1_ADO, Func2;

{$R *.DFM}

procedure TFrm_Ent.FormCreate(Sender: TObject);

var
mPedele_comando: String;

begin
mPedele_comando:='c:\sge\sge_pedele.exe';
if FileExists(mPedele_comando) then
   begin
   PostMessage(FindWindow(nil, 'Pedido Eletronico'), WM_CLOSE, 0,0);
   end;

if mpcodace>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADUSR set ENDERECOIP=null '
                     +' where 1=1 '
                     + fFiltrosMultiEmpresa('CODEMP','CADUR',codemp)
                     +' and '
                     +' CODUSR=0'+IntToStr(codusr));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,59,'Frm_Ent','CADUSR');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADCAC set CADATAF='+chr(39)+FormatDatetime(fdt,date)+chr(39)
                    +', CAHORAF='+chr(39)+FormatDatetime('hh:nn:ss',time)+chr(39)
                    +' where CASEQ=0'+IntToStr(mpcodace));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,70,'Frm_Ent','CADCAC');
      end;
   end;
mpcodace:=0;

DM4.Tb_Usr.Close;
DM4.Tb_Usr.SQL.Clear;
DM4.Tb_Usr.SQL.Add('Select * from CADUSR ');
mcinst2:=fRetInstMECadastro('CADUSR','CODEMP',codemp);
mcinst:=' where ';
if trim(mcinst2)<>'' then
  begin
  DM4.Tb_Usr.Sql.add(mcinst+mcinst2);
  mcinst:=' and ';
  end;

DM4.Tb_Usr.SQL.add(mcinst+' USR_SITCAD<8 ');

DM4.Tb_Usr.SQL.add(' order by CODEMP,CODUSR');
DM4.Tb_Usr.Open;
{
if codusr=1111 then
  frm_princ.PedidoEletronicoNovaRotinaMaster1.visible:=true
else
  frm_princ.PedidoEletronicoNovaRotinaMaster1.visible:=false;
}
         frm_princ.mmoe_0103.Enabled  :=True;
         frm_princ.mmoe_0106.Enabled  :=True;
         frm_princ.mvei_0103.Enabled  :=True;
         frm_princ.mvei_0106.Enabled  :=True;
         frm_princ.mvei_0109.Enabled  :=True;
         frm_princ.mimo_0103.Enabled  :=True;
         frm_princ.mimo_0106.Enabled  :=True;
         frm_princ.mimo_0109.Enabled  :=True;

         frm_princ.mpro_0103.Enabled  :=True;
         Frm_Princ.bbcadastroprod.Visible:=true;
         frm_princ.mpro_0106.Enabled  :=True;
         frm_princ.mpro_0109.Enabled  :=True;
         frm_princ.mpro_0203.Enabled  :=True;
         frm_princ.mpro_0207.Enabled  :=True;
         frm_princ.bbpedidocompra.Visible  :=True;
         frm_princ.mpro_0206.Enabled  :=True;
         frm_princ.mpro_0209.Enabled  :=True;
         frm_princ.mpro_0212.Enabled  :=True;
         frm_princ.mpro_0112.Enabled  :=True;
         frm_princ.mpro_0115.Enabled  :=True;
         frm_princ.mpro_0118.Enabled  :=True;
         frm_princ.mpro_0121.Enabled  :=True;
         frm_princ.mpro_0124.Enabled  :=True;
         frm_princ.mpro_0127.Enabled  :=True;
         frm_princ.mpro_0128.Enabled  :=True;
         frm_princ.mpro_0129.Enabled  :=True;
         frm_princ.mpro_0130.Enabled  :=True;
         frm_princ.mpro_0133.Enabled  :=True;
         frm_princ.mpro_0142.Enabled  :=True;
         frm_princ.mpro_0145.Enabled  :=True;
         frm_princ.mpro_0148.Enabled  :=True;
         frm_princ.mpro_0151.Enabled  :=True;
         frm_princ.mpro_0152.Enabled  :=True;
         frm_princ.mpro_0153.Enabled  :=True;
         frm_princ.mpro_0155.Enabled  :=True;
         frm_princ.mpro_0154.Enabled  :=True;
         frm_princ.mpro_0155.Enabled  :=True;
         frm_princ.mpro_0157.Enabled  :=True;
         frm_princ.mpro_0169.Enabled  :=True;
         frm_princ.mpro_0172.Enabled  :=True;
         frm_princ.mpro_0175.Enabled  :=True;
         frm_princ.mpro_0178.Enabled  :=True;
         frm_princ.mpro_0181.Enabled  :=True;
         frm_princ.mpro_0184.Enabled  :=True;
         frm_princ.mpro_0185.Enabled  :=True;
         frm_princ.mpro_0186.Enabled  :=True;
         frm_princ.mpro_0189.Enabled  :=True;
         frm_princ.mpro_0192.Enabled  :=True;
         frm_princ.mpro_0187.Enabled  :=True;
         frm_princ.mpro_0301.Enabled  :=True;
         frm_princ.mpro_0190.Enabled  :=True;
         frm_princ.mpro_0193.Enabled  :=True;
         frm_princ.mpro_0160.Enabled  :=True;
         Frm_Princ.UltimasVendas1.Enabled:=True;
         Frm_Princ.mpro_0194.Enabled  :=True;
         Frm_Princ.mpro_01100.Enabled  :=True;
         Frm_Princ.ConsultasdeRE1.Enabled:=True;
         frm_princ.mpro_0163.Enabled  :=True;
         frm_princ.rpro_0160.Enabled  :=True;
         frm_princ.rpro_0161.Enabled  :=True;
         frm_princ.rpro_0162.Enabled  :=True;
         frm_princ.rpro_0163.Enabled  :=True;                           
         frm_princ.rpro_0166.Enabled  :=True;
         frm_princ.rpro_0169.Enabled  :=True;
         frm_princ.rpro_0178.Enabled  :=True;
         frm_princ.rpro_0181.Enabled  :=True;
         frm_princ.rpro_0184.Enabled  :=True;
         frm_princ.rpro_0187.Enabled  :=True;
         frm_princ.mpro_0166.Enabled  :=True;


         frm_princ.mloc_0103.Enabled  :=True;
         frm_princ.mloc_0106.Enabled  :=True;
         frm_princ.mloc_0107.Enabled  :=True;
         frm_princ.mloc_0108.Enabled  :=True;
         frm_princ.mloc_0109.Enabled  :=True;
         frm_princ.mloc_0112.Enabled  :=True;
         frm_princ.mloc_0115.Enabled  :=True;
         frm_princ.mIndEnv_0103.Enabled  :=True;
         frm_princ.mIndEnv_0106.Enabled  :=True;
         frm_princ.mIndEnv_0107.Enabled  :=True;
         frm_princ.mIndEnv_0109.Enabled  :=True;
         frm_princ.mIndEnv_0115.Enabled  :=True;
         frm_princ.mIndEnv_0120.Enabled  :=True;

         frm_princ.musu_0103.Enabled  :=True;
         frm_princ.musu_0106.Enabled  :=True;
         frm_princ.musu_0109.Enabled  :=True;
         frm_princ.musu_0112.Enabled  :=True;
         frm_princ.mfor_0103.Enabled  :=True;
         frm_princ.bbcadastroforn.Visible  :=True;


         frm_princ.mfor_0106.Enabled  :=True;
         frm_princ.mfor_0109.Enabled  :=True;
         frm_princ.mfor_0110.Enabled  :=True;
         Frm_Princ.MFOR_0111.Enabled  :=True;
         frm_princ.mcli_0103.Enabled  :=True;
         frm_princ.bbcadastroclie.Visible  :=True;

         frm_princ.mcli_0106.Enabled  :=True;
         frm_princ.mcli_0109.Enabled  :=True;
         frm_princ.mcli_0112.Enabled  :=True;
         frm_princ.mcli_0115.Enabled  :=True;
         frm_princ.mcli_0118.Enabled  :=True;
         frm_princ.mcli_0121.Enabled  :=True;
         frm_princ.mcli_0124.Enabled  :=True;
         Frm_Princ.mcli_0125.Enabled  :=True;
         frm_princ.mcli_0130.Enabled  :=True;
         frm_princ.mcli_0133.Enabled  :=True;
         frm_princ.mcli_0136.Enabled  :=True;
         frm_princ.mcli_0139.Enabled  :=True;
         frm_princ.mven_0103.Enabled  :=True;
         frm_princ.mven_0106.Enabled  :=True;
         frm_princ.mven_0109.Enabled  :=True;
         frm_princ.mven_0112.Enabled  :=True;
         frm_princ.mven_0115.Enabled  :=True;
         frm_princ.mven_0118.Enabled  :=True;
         frm_princ.mven_0121.Enabled  :=True;
         frm_princ.mtra_0103.Enabled  :=True;
         frm_princ.mtra_0106.Enabled  :=True;
         frm_princ.mcai_0103.Enabled  :=True;
         frm_princ.mcai_0106.Enabled  :=True;
         frm_princ.mcai_0107.Enabled  :=True;
         frm_princ.mcai_0109.Enabled  :=True;
         frm_princ.mcai_0112.Enabled  :=True;
         frm_princ.mcai_0115.Enabled  :=True;
         frm_princ.mcai_0118.Enabled  :=True;
         frm_princ.mcai_0121.Enabled  :=True;
         frm_princ.mcai_0124.Enabled  :=True;
         frm_princ.mcai_0127.Enabled  :=True;
         frm_princ.mcai_0130.Enabled  :=True;
         frm_princ.mcai_0133.Enabled  :=True;
         frm_princ.mcai_0136.Enabled  :=True;
         frm_princ.mcai_0137.Enabled  :=True;         
         frm_princ.mcai_0140.Enabled  :=True;
         frm_princ.mcai_0143.Enabled  :=True;
         frm_princ.mind_0103.Enabled  :=True;
         frm_princ.mind_0106.Enabled  :=True;
         frm_princ.mind_0109.Enabled  :=True;
         frm_princ.mind_0112.Enabled  :=True;
         frm_princ.mind_0115.Enabled  :=True;
         frm_princ.mind_0118.Enabled  :=True;
         frm_princ.mind_0121.Enabled  :=True;
         Frm_Princ.mind_0122.Enabled:=True;
         Frm_Princ.mind_0123.Enabled:=True;
         Frm_Princ.mind_0126.Enabled:=True;
         frm_princ.mind_0124.Enabled  :=True;
         frm_princ.mind_0127.Enabled  :=True;
         frm_princ.mind_0130.Enabled  :=True;
         frm_princ.mind_0133.Enabled  :=True;
         frm_princ.mind_0136.Enabled  :=True;
         frm_princ.mind_0139.Enabled  :=True;
         frm_princ.mdiv_0103.Enabled  :=True;
         frm_princ.mdiv_0106.Enabled  :=True;
         frm_princ.mdiv_0109.Enabled  :=True;
         frm_princ.mdiv_0112.Enabled  :=True;
         frm_princ.mdiv_0115.Enabled  :=True;
         frm_princ.mdiv_0118.Enabled  :=True;
         frm_princ.mdiv_0121.Enabled  :=True;
         frm_princ.mdiv_0124.Enabled  :=True;
         frm_princ.mdiv_0127.Enabled  :=True;
         frm_princ.mdiv_0130.Enabled  :=True;
         frm_princ.mdiv_0133.Enabled  :=True;
         frm_princ.mfol_0103.Enabled  :=True;
         frm_princ.mfol_0106.Enabled  :=True;
         frm_princ.mfol_0109.Enabled  :=True;
         frm_princ.mfol_0115.Enabled  :=True;
         frm_princ.mfol_0118.Enabled  :=True;
         frm_princ.mfol_0133.Enabled  :=True;
         frm_princ.mfol_0121.Enabled  :=True;
         frm_princ.mfol_0124.Enabled  :=True;
         frm_princ.mfol_0125.Enabled  :=True;
         frm_princ.mfol_0127.Enabled  :=True;
         frm_princ.mfol_0130.Enabled  :=True;

         frm_princ.rpro_0103.Enabled  :=True;
         frm_princ.rpro_0106.Enabled  :=True;
         frm_princ.rpro_0109.Enabled  :=True;
         frm_princ.rped_0101.Enabled   :=True;
         frm_princ.rpro_0112.Enabled  :=True;
         frm_princ.rpro_0115.Enabled  :=True;
//         frm_princ.rpro_0116.Enabled  :=True;
         frm_princ.rpro_0117.Enabled  :=True;
         frm_princ.rpro_0118.Enabled  :=True;
         frm_princ.rpro_0121.Enabled  :=True;
         frm_princ.rpro_0127.Enabled  :=True;
         frm_princ.rpro_0130.Enabled  :=True;
//         frm_princ.rpro_0131.Enabled  :=True;
         frm_princ.rpro_0133.Enabled  :=True;
         frm_princ.rpro_0136.Enabled  :=True;
         frm_princ.rpro_0139.Enabled  :=True;
         frm_princ.rpro_0142.Enabled  :=True;
         frm_princ.rpro_0145.Enabled  :=True;
         frm_princ.rpro_0148.Enabled  :=True;
         frm_princ.rpro_0151.Enabled  :=True;
         frm_princ.rpro_0154.Enabled  :=True;
         frm_princ.rpro_0157.Enabled  :=True;
         frm_princ.rfor_0103.Enabled  :=True;
         frm_princ.rfor_0106.Enabled  :=True;
         frm_princ.rfor_0109.Enabled  :=True;
         frm_princ.rfor_0112.Enabled  :=True;
         frm_princ.rfor_0115.Enabled  :=True;
         frm_princ.rfor_0118.Enabled  :=True;
         frm_princ.rfor_0121.Enabled  :=True;
         frm_princ.rfor_0124.Enabled  :=True;
         frm_princ.rest_0103.Enabled  :=True;
         frm_princ.rest_0106.Enabled  :=True;
         frm_princ.rest_0109.Enabled  :=True;
         frm_princ.rest_0112.Enabled  :=True;
         frm_princ.rest_0115.Enabled  :=True;
         frm_princ.rest_0118.Enabled  :=True;
         frm_princ.rest_0121.Enabled  :=True;
         frm_princ.rcli_0103.Enabled  :=True;
         frm_princ.rcli_0106.Enabled  :=True;
         frm_princ.rel_0103.Enabled  :=True;

         Frm_Princ.rcli_0128.Enabled  :=True;
         frm_princ.rcli_0109.Enabled  :=True;
         frm_princ.rcli_0112.Enabled  :=True;
         frm_princ.rcli_0115.Enabled  :=True;
         frm_princ.rcli_0118.Enabled  :=True;
         frm_princ.rcli_0121.Enabled  :=True;
         frm_princ.rcli_0122.Enabled  :=True;
         frm_princ.rcli_0127.Enabled  :=True;
//         frm_princ.rcli_0130.Enabled  :=True;
         frm_princ.rcli_0303.Enabled  :=True;
         frm_princ.rcli_0306.Enabled  :=True;
         Frm_Princ.ExportarEmailCSV1.Enabled :=True;
         frm_princ.rtpro_0103.Enabled  :=True;
         frm_princ.rtpro_0106.Enabled  :=True;
         frm_princ.rtpro_0109.Enabled  :=True;
         frm_princ.rtpro_0112.Enabled  :=True;
         frm_princ.rtpro_0115.Enabled  :=True;
         frm_princ.rgpro_0103.Enabled  :=True;
         frm_princ.rgpro_0106.Enabled  :=True;
         frm_princ.rgpro_0109.Enabled  :=True;
         frm_princ.rgpro_0112.Enabled  :=True;
         frm_princ.rgpro_0115.Enabled  :=True;
         frm_princ.rger_0103.Enabled   :=True;
         frm_princ.rger_0106.Enabled   :=True;
         frm_princ.rger_0109.Enabled   :=True;
         frm_princ.rger_0112.Enabled   :=True;
         frm_princ.rger_0115.Enabled   :=True;
         frm_princ.rger_0200.Enabled   :=True;
         frm_princ.rger_0212.Enabled   :=True;
         frm_princ.rger_0215.Enabled   :=True;
         frm_princ.rger_0218.Enabled   :=True;
         frm_princ.rger_0221.Enabled   :=True;
         frm_princ.rger_0224.Enabled   :=True;
         frm_princ.rger_0230.Enabled   :=True;
         frm_princ.rger_0227.Enabled   :=True;
         frm_princ.rger_0233.Enabled   :=True;
         frm_princ.rger_0236.Enabled   :=True;
         frm_princ.rger_0239.Enabled   :=True;
         frm_princ.rger_0242.Enabled   :=True;
         frm_princ.rger_0245.Enabled   :=True;
         frm_princ.rger_0248.Enabled   :=True;
         frm_princ.rger_0251.Enabled   :=True;
         frm_princ.rger_0254.Enabled   :=True;
         frm_princ.rger_0257.Enabled   :=True;
         frm_princ.rger_0260.Enabled   :=True;
         frm_princ.rger_0261.Enabled   :=True;
         frm_princ.rger_0262.Enabled   :=True;
         frm_princ.rger_0265.Enabled   :=True;
         frm_princ.rger_0263.Enabled   :=True;
         frm_princ.rger_0266.Enabled   :=True;
         frm_princ.rger_0209.Enabled   :=True;
         frm_princ.bbprevxreal.Enabled :=True;
         frm_princ.rcpro_0103.Enabled  :=True;
         frm_princ.rcpro_0106.Enabled  :=True;
         frm_princ.rcpro_0109.Enabled  :=True;
         frm_princ.rcpro_0112.Enabled  :=True;
         frm_princ.rcpro_0115.Enabled  :=True;

         frm_princ.rrpro_0103.Enabled  :=True;
         frm_princ.rrpro_0106.Enabled  :=True;
         frm_princ.rrpro_0109.Enabled  :=True;
         frm_princ.rped_0101.Enabled   :=True;
         frm_princ.rrpro_0112.Enabled  :=True;
         frm_princ.rrpro_0115.Enabled  :=True;
         frm_princ.rimo_0103.Enabled   :=True;
         frm_princ.rimo_0106.Enabled   :=True;
         frm_princ.rvei_0103.Enabled   :=True;
         frm_princ.rvei_0106.Enabled   :=True;
         frm_princ.rmoe_0103.Enabled   :=True;
         frm_princ.ros_0103.Enabled    :=True;
         frm_princ.rdiv_0103.Enabled    :=True;
         frm_princ.rind_0103.Enabled    :=True;
         frm_princ.rfun_0001.Enabled    :=True;
         frm_princ.rind_0106.Enabled    :=True;

         frm_princ.rven_0103.Enabled   :=True;
         frm_princ.rven_0106.Enabled   :=True;
         frm_princ.rven_0109.Enabled   :=True;
         frm_princ.rven_0112.Enabled   :=True;
         frm_princ.rven_0115.Enabled   :=True;
         frm_princ.rven_0118.Enabled   :=True;
         frm_princ.rven_0121.Enabled   :=True;
         frm_princ.rven_0124.Enabled   :=True;
         frm_princ.rven_0127.Enabled   :=True;
         frm_princ.rven_0130.Enabled   :=True;
         frm_princ.rven_0133.Enabled   :=True;
         frm_princ.rven_0136.Enabled   :=True;
         frm_princ.rven_0142.Enabled   :=True;
         frm_princ.rven_0145.Enabled   :=True;
         frm_princ.rven_0148.Enabled   :=True;
         frm_princ.rven_0151.Enabled   :=True;
         frm_princ.rven_0153.Enabled   :=True;
         frm_princ.rven_0154.Enabled   :=True;
         frm_princ.rven_0156.Enabled   :=True;         
         frm_princ.rtra_0103.Enabled   :=True;
         frm_princ.rtra_0104.Enabled   :=True;         
         frm_princ.rusu_0103.Enabled   :=True;
         frm_princ.rfun_0103.Enabled   :=True;
         frm_princ.rpv_0103.Enabled    :=True;
         frm_princ.rbco_0103.Enabled   :=True;
         frm_princ.rccu_0103.Enabled   :=True;
         frm_princ.rdep_0103.Enabled   :=True;
         frm_princ.rcai_0103.Enabled   :=True;
         frm_princ.rpfor_0101.Enabled  :=True;
         frm_princ.rpfor_0103.Enabled  :=True;
         frm_princ.rpfor_0106.Enabled  :=True;
         frm_princ.rped_0101.Enabled   :=True;
         frm_princ.rped_0103.Enabled   :=True;
         frm_princ.rped_0102.Enabled   :=True;
         frm_princ.rped_0109.Enabled   :=True;
         frm_princ.rped_0112.Enabled   :=True;
         frm_princ.rped_0115.Enabled   :=True;
         frm_princ.rped_0118.Enabled   :=True;
         frm_princ.rped_0119.Enabled   :=True;
         frm_princ.rped_0120.Enabled   :=True;
         frm_princ.rped_0121.Enabled   :=True;         
         frm_princ.rped_0124.Enabled   :=True;
         frm_princ.rped_0301.Enabled   :=True;
         frm_princ.est_0103.Enabled    :=True;
         frm_princ.est_0106.Enabled    :=True;
         frm_princ.est_0109.Enabled    :=True;
         frm_princ.est_0112.Enabled    :=True;
         frm_princ.est_0115.Enabled    :=True;
         frm_princ.est_0118.Enabled    :=True;
         frm_princ.est_0121.Enabled    :=True;
         frm_princ.est_0124.Enabled    :=True;
         frm_princ.est_0127.Enabled    :=True;
         frm_princ.est_0130.Enabled    :=True;
         frm_princ.est_0133.Enabled    :=True;
         frm_princ.est_0136.Enabled    :=True;
         frm_princ.est_0139.Enabled    :=True;
         frm_princ.est_0142.Enabled    :=True;
         frm_princ.est_0145.Enabled    :=True;
         frm_princ.est_0148.Enabled    :=True;
         frm_princ.est_0151.Enabled    :=True;
         frm_princ.est_0154.Enabled    :=True;
         frm_princ.est_0157.Enabled    :=True;
         frm_princ.est_0160.Enabled    :=True;
         frm_princ.est_0163.Enabled    :=True;
         frm_princ.est_0166.Enabled    :=True;

         frm_princ.rent_0103.Enabled   :=True;
         frm_princ.rsai_0103.Enabled   :=True;
         frm_princ.bbpedidovenda.Visible   :=True;
         frm_princ.rsai_0106.Enabled   :=True;
         frm_princ.rsai_0109.Enabled   :=True;
         frm_princ.rsai_0112.Enabled   :=True;
         frm_princ.rsai_0115.Enabled   :=True;
         frm_princ.cfo_0103.Enabled    :=True;
         frm_princ.cfo_0104.Enabled    :=True;
         frm_princ.gnre0103.Enabled    :=True;
         frm_princ.lf_0103.Enabled     :=True;
         frm_princ.lf_0106.Enabled     :=True;
         frm_princ.lf_0109.Enabled     :=True;
         frm_princ.lf_0112.Enabled     :=True;
         frm_princ.lf_0115.Enabled     :=True;
         frm_princ.lf_0118.Enabled     :=True;
         frm_princ.lf_0127.Enabled     :=True;
         frm_princ.lf_0130.Enabled     :=True;
         frm_princ.lf_0133.Enabled     :=True;
         frm_princ.lf_0136.Enabled     :=True;
         frm_princ.lf_0139.Enabled     :=True;
         frm_princ.lf_0121.Enabled     :=True;
         frm_princ.lf_0124.Enabled     :=True;
         frm_princ.lf_0142.Enabled     :=True;
         frm_princ.lf_0145.Enabled     :=True;
         frm_princ.lf_0148.Enabled     :=True;
         frm_princ.lf_0151.Enabled     :=True;
         frm_princ.lf_0154.Enabled     :=True;
         frm_princ.lf_0157.Enabled     :=True;
         frm_princ.lf_0160.Enabled     :=True;
         frm_princ.lf_0163.Enabled     :=True;
         frm_princ.lf_0166.Enabled     :=True;
         frm_princ.lf_0169.Enabled     :=True;
         frm_princ.lf_0172.Enabled     :=True;
         frm_princ.lf_0175.Enabled     :=True;
         frm_princ.lf_0178.Enabled     :=True;
         frm_princ.lf_0181.Enabled     :=True;
         frm_princ.lf_0184.Enabled     :=True;
         frm_princ.lf_0187.Enabled     :=True;
         frm_princ.lf_0190.Enabled     :=True;
         frm_princ.lf_0193.Enabled     :=True;
         frm_princ.lf_0196.Enabled     :=True;
         frm_princ.lf_0199.Enabled     :=True;

         frm_princ.sai_0103.Enabled    :=True;
         frm_princ.bbpedidocompra.Visible    :=True;
         frm_princ.sai_0106.Enabled    :=True;
         frm_princ.sai_0109.Enabled    :=True;
         frm_princ.sai_0112.Enabled    :=True;
         frm_princ.sai_0115.Enabled    :=True;
         frm_princ.sai_0118.Enabled    :=True;
         frm_princ.sai_0120.Enabled    :=True;
         frm_princ.sai_0121.Enabled    :=True;
         frm_princ.sai_0123.Enabled    :=True;
         frm_princ.sai_0124.Enabled    :=True;
         frm_princ.sai_0126.Enabled    :=True;
         frm_princ.sai_0127.Enabled    :=True;
         frm_princ.sai_0128.Enabled    :=True;         
         frm_princ.sai_0133.Enabled    :=True;
         frm_princ.sai_0136.Enabled    :=True;
         frm_princ.sai_0139.Enabled    :=True;
         frm_princ.sai_0142.Enabled    :=True;
         frm_princ.sai_0143.Enabled    :=True;
         frm_princ.sai_0145.Enabled    :=True;
         frm_princ.sai_0148.Enabled    :=True;
         frm_princ.sai_0151.Enabled    :=True;
         frm_princ.sai_0152.Enabled    :=True;         
         frm_princ.sai_0155.Enabled    :=True;
         frm_princ.sai_0158.Enabled    :=True;
         frm_princ.sai_0154.Enabled    :=True;
         frm_princ.sai_0157.Enabled    :=True;
         frm_princ.sai_0160.Enabled    :=True;
         frm_princ.sai_0163.Enabled    :=True;
         frm_princ.sai_0166.Enabled    :=True;
         frm_princ.sai_0169.Enabled    :=True;
         frm_princ.sai_0172.Enabled    :=True;
         frm_princ.sai_0175.Enabled    :=True;
         frm_princ.sai_0178.Enabled    :=True;
         frm_princ.sai_0181.Enabled    :=True;
         frm_princ.sai_0184.Enabled    :=True;
         frm_princ.sai_0187.Enabled    :=True;
         frm_princ.sai_0190.Enabled    :=True;
         frm_princ.sai_0193.Enabled    :=True;
         frm_princ.sai_0123.Enabled    :=True;


         frm_princ.sai_0196.Enabled    :=True;
         frm_princ.sai_0199.Enabled    :=True;
         frm_princ.sai_0202.Enabled    :=True;
         frm_princ.saiconf_0103.Enabled    :=True;
         frm_princ.saiconf_0106.Enabled    :=True;
         frm_princ.saiconf_0109.Enabled    :=True;
         frm_princ.saiconf_0112.Enabled    :=True;
         frm_princ.saiconf_0115.Enabled    :=True;
         frm_princ.saiconf_0118.Enabled    :=True;
         frm_princ.saiconf_0119.Enabled    :=True;
         frm_princ.cp_0103.Enabled     :=True;
         frm_princ.cp_0109.Enabled     :=True;
         frm_princ.cp_0112.Enabled     :=True;
         frm_princ.cp_0115.Enabled     :=True;
         frm_princ.cp_0121.Enabled     :=True;
         frm_princ.cp_0124.Enabled     :=True;
         frm_princ.cp_0127.Enabled     :=True;
         frm_princ.cp_0130.Enabled     :=True;
         frm_princ.cp_0203.Enabled     :=True;
         frm_princ.cp_0206.Enabled     :=True;
         frm_princ.cp_0209.Enabled     :=True;
         frm_princ.cp_0212.Enabled     :=True;
         frm_princ.cp_0215.Enabled     :=True;
         frm_princ.cp_0303.Enabled     :=True;
         frm_princ.cp_0306.Enabled     :=True;
         frm_princ.cp_0309.Enabled     :=True;
         frm_princ.cp_0312.Enabled     :=True;
         frm_princ.cp_0313.Enabled     :=True;
         frm_princ.cr_0103.Enabled     :=True;
         frm_princ.cr_0203.Enabled     :=True;
         frm_princ.cr_0206.Enabled     :=True;
         frm_princ.cr_0209.Enabled     :=True;
         frm_princ.cr_0212.Enabled     :=True;
         frm_princ.bbrelanalitico.Enabled:=True;
         frm_princ.cr_0215.Enabled     :=True;
         frm_princ.cr_0218.Enabled     :=True;
         frm_princ.cr_0221.Enabled     :=True;
         frm_princ.cr_0224.Enabled     :=True;
         frm_princ.cr_0230.Enabled     :=True;
         frm_princ.cr_0233.Enabled     :=True;
         frm_princ.cr_0236.Enabled     :=True;
         frm_princ.cr_0239.Enabled     :=True;
         frm_princ.cr_0242.Enabled     :=True;
         frm_princ.cr_0303.Enabled     :=True;
         frm_princ.bbbaixa.Enabled     :=True;
         frm_princ.cr_0306.Enabled     :=True;
         frm_princ.cr_0309.Enabled     :=True;
         frm_princ.cr_0312.Enabled     :=True;
         frm_princ.cr_0315.Enabled     :=True;
         frm_princ.cr_0318.Enabled     :=True;


         frm_princ.cr_0903.Enabled     :=True;
         frm_princ.cr_0906.Enabled     :=True;
         frm_princ.cr_0909.Enabled     :=True;
         frm_princ.cr_0912.Enabled     :=True;
         frm_princ.cr_0915.Enabled     :=True;
         frm_princ.cr_0918.Enabled     :=True;
         frm_princ.cr_0919.Enabled     :=True;         
         frm_princ.cr_0921.Enabled     :=True;
         frm_princ.cr_0924.Enabled     :=True;
         frm_princ.cr_0927.Enabled     :=True;

         frm_princ.cr_0934.Enabled     :=True;
         frm_princ.cr_0937.Enabled     :=True;

         frm_princ.cr_0928.Enabled     :=True;
         frm_princ.cr_0930.Enabled     :=True;
         frm_princ.cr_0933.Enabled     :=True;
         frm_princ.cr_0929.Enabled     :=True;

         frm_princ.sis_0103.Enabled    :=True;
         Frm_Princ.sis_0643.Enabled    :=True;
         frm_princ.sis_0106.Enabled    :=True;
         frm_princ.msis_0703.Enabled   :=True;
         frm_princ.msis_0706.Enabled   :=True;
         frm_princ.msis_0709.Enabled   :=True;
         frm_princ.msis_0712.Enabled   :=True;
         frm_princ.msis_0715.Enabled   :=True;
         frm_princ.msis_0718.Enabled   :=True;
         frm_princ.msis_0721.Enabled   :=True;
         frm_princ.sis_0109.Enabled    :=True;
         frm_princ.sis_0112.Enabled    :=True;
         frm_princ.sis_0114.Enabled    :=True;
         frm_princ.sis_0117.Enabled    :=True;
         frm_princ.sis_0120.Enabled    :=True;
         frm_princ.sis_0123.Enabled    :=True;
         frm_princ.sis_0126.Enabled    :=True;
         frm_princ.sis_0129.Visible    :=True;
         frm_princ.sis_0132.Visible    :=True;
         frm_princ.sis_0135.Visible    :=True;
         frm_princ.sis_0138.Visible    :=True;
         frm_princ.sis_0141.Visible    :=True;
         frm_princ.sis_0144.Visible    :=True;
         frm_princ.sis_0147.Visible    :=True;
         frm_princ.sis_0203.Enabled    :=True;
         frm_princ.sis_0206.Enabled    :=True;
         frm_princ.sis_0209.Enabled    :=True;
         frm_princ.sis_0212.Enabled    :=True;
         frm_princ.sis_0215.Enabled    :=True;
         frm_princ.sis_0218.Enabled    :=True;
         frm_princ.sis_0221.Enabled    :=True;
         frm_princ.sis_0224.Enabled    :=True;
         frm_princ.sis_0227.Enabled    :=True;
         frm_princ.sis_0230.Enabled    :=True;
         frm_princ.sis_0233.Enabled    :=True;
         frm_princ.sis_0236.Enabled    :=True;
         frm_princ.sis_0239.Enabled    :=True;
         frm_princ.sis_0242.Enabled    :=True;
         frm_princ.sis_0245.Enabled    :=True;
         frm_princ.sis_0248.Enabled    :=True;
         frm_princ.sis_0251.Enabled    :=True;
         frm_princ.sis_0254.Enabled    :=True;
         frm_princ.sis_0115.Enabled    :=True;
         frm_princ.sis_0118.Enabled    :=True;
         frm_princ.sis_0121.Enabled    :=True;
         frm_princ.sis_0312.Enabled    :=True;
         frm_princ.sis_0124.Enabled    :=True;
         frm_princ.sis_0127.Enabled    :=True;
         frm_princ.sis_0130.Enabled    :=True;
         frm_princ.sis_0133.Enabled    :=True;
         frm_princ.sis_0601.Enabled    :=True;
         frm_princ.sis_0112.Enabled    :=True;
         frm_princ.sis_0114.Enabled    :=True;
         frm_princ.sis_0117.Enabled    :=True;
         frm_princ.sis_0120.Enabled    :=True;
         frm_princ.sis_0123.Enabled    :=True;
         frm_princ.sis_0612.Enabled    :=True;
         frm_princ.sis_0903.Enabled    :=True;
         frm_princ.sis_0906.Enabled    :=True;
         frm_princ.sis_0909.Enabled    :=True;

                                                      
         frm_princ.sis_0615.Enabled    :=True;
         frm_princ.sis_0618.Enabled    :=True;
         frm_princ.sis_0621.Enabled    :=True;
         frm_princ.sis0615.Enabled     :=True;
         frm_princ.sis0618.Enabled     :=True;
         frm_princ.sis0621.Enabled     :=True;
         frm_princ.sis0624.Enabled     :=True;
         frm_princ.sis0627.Enabled     :=True;
         frm_princ.sis0630.Enabled     :=True;
         frm_princ.sis0633.Enabled     :=True;
         frm_princ.sis0636.Enabled     :=True;
         frm_princ.sis0639.Enabled     :=True;
         frm_princ.sis0642.Enabled     :=True;
         frm_princ.sis2103.Enabled     :=True;
         frm_princ.rcr_0106.Enabled    :=True;
         frm_princ.rcr_0109.Enabled    :=True;
         frm_princ.rcr_0112.Enabled    :=True;
         frm_princ.rcr_0115.Enabled    :=True;
         frm_princ.rcr_0118.Enabled    :=True;
         frm_princ.rcr_0121.Enabled    :=True;
         frm_princ.rcr_0124.Enabled    :=True;
         frm_princ.rcr_0127.Enabled    :=True;
         frm_princ.rcr_0128.Enabled    :=True;
         frm_princ.rcr_0130.Enabled    :=True;
         frm_princ.rcr_0139.Enabled    :=True;

DM1.Tb_Emp.Close;
DM1.Tb_Emp.SQL.Clear;
DM1.Tb_Emp.SQL.Add('Select * from CADEMP '
                  +' order by RAZAO ');
try
   DM1.Tb_Emp.Open;
except
   DM1.Tb_Emp.sql.savetofile(mpastatemp + 'sqlemp.txt');
   end;

end;

procedure TFrm_Ent.FormActivate(Sender: TObject);
var
x: Integer;
begin

mtent:=0;
if not flparger(0,0,'1') then
   begin
   DM1.Tb_Parger.Append;
   DM1.Tb_PargerCODIGO.Value:=1;
   DM1.Tb_PargerEMPPRE.Value:=codemp;
   DM1.Tb_Parger.Post;
   end;

DM1.Tb_Emp.Close;
DM1.Tb_Emp.SqL.Clear;
DM1.Tb_Emp.SQL.Add('Select * from CADEMP where CODEMP<100'
                  +' ORDER BY CODEMP,RAZAO ');
DM1.Tb_Emp.Open;


mNivel_Criptog:=0;
mcinst:=insere(DM1.Tb_EmpCGC.AsString,'0',14);



for x:=1 to Length(mcinst) do
   begin
   if mcinst[x] in ['0'..'9'] then
      mNivel_Criptog:=mNivel_Criptog+StrToInt(mcinst[x]);
   end;


CB_EMP.Items.Clear;

While not DM1.Tb_emp.Eof do
   begin
   CB_EMP.Items.Add(DM1.Tb_EmpRAZAO.Value);
   DM1.Tb_Emp.Next;
   end;
if (codemp<>0) or (DM1.Tb_PargerEMPPRE.Value>0) then
   begin
   DM1.Tb_Emp.Locate('CODEMP',DM1.Tb_ParGerEMPPRE.AsString,[locaseinsensitive]);
   codemp:=DM1.Tb_PargerEMPPRE.AsInteger;
   CB_EMP.Text:=DM1.Tb_EmpRAZAO.Value;
   CB_USU.Items.Clear;
   DM4.Tb_Usr.Close;
   DM4.Tb_Usr.SQL.Clear;
   DM4.Tb_Usr.SQL.add('Select * from CADUSR where (USUARIO<>1 or USUARIO is null) ');


   mcinst2:=fRetInstMECadastro('CADUSR','CODEMP',codemp);
   mcinst:=' and  ';
   if trim(mcinst2)<>'' then
     begin
     DM4.Tb_Usr.Sql.add(mcinst+mcinst2);
     mcinst:=' and ';
     end;
   DM4.Tb_Usr.SQL.add(mcinst+' USR_SITCAD<8 ');

   DM4.Tb_Usr.SQL.add(' order by CODEMP,CODUSR');
   TRY
      DM4.Tb_Usr.Open;
   except
      DM4.Tb_Usr.sql.savetofile(mpastatemp + 'sql.txt');

      end;
   While not DM4.Tb_Usr.Eof do
      begin
      CB_USU.Items.Add(DM4.Tb_UsrNOMUSR.Value);
      DM4.Tb_Usr.Next;
      end;

   CB_USU.SetFocus;
   end;
end;

procedure TFrm_Ent.DBGrid1DblClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ent.CB_EMPExit(Sender: TObject);
begin
// if BitBtn2.Focused then
//   exit;
if not DM1.Tb_Emp.Locate('RAZAO',CB_EMP.Text,[locaseinsensitive]) then
   begin
   fMensagem('Empresa Nao Encontrada',0,['0'],0);
   CB_EMP.SetFocus;
   end;
CB_EMP.Text:=DM1.Tb_EmpRAZAO.Value;
codemp:=DM1.Tb_EmpCODEMP.AsInteger;
{if codemp>99 then
   ce_empsel:=1
else
   ce_empsel:=0;}
CB_USU.Items.Clear;
DM4.Tb_Usr.Close;
DM4.Tb_Usr.SQL.Clear;
DM4.Tb_Usr.SQL.add('Select * from CADUSR ');

mcinst2:=fRetInstMECadastro('CADUSR','CODEMP',codemp);
mcinst:=' where ';
if trim(mcinst2)<>'' then
  begin
  DM4.Tb_Usr.Sql.add(mcinst+mcinst2);
  mcinst:=' and ';
  end;
DM4.Tb_Usr.SQL.add(mcinst+' USR_SITCAD<8 ');

DM4.Tb_Usr.SQL.add(' order by CODEMP,CODUSR');
DM4.Tb_Usr.Open;
While not DM4.Tb_Usr.Eof do
   begin
   CB_USU.Items.Add(DM4.Tb_UsrNOMUSR.Value);
   DM4.Tb_Usr.Next;
   end;
end;

procedure TFrm_Ent.BitBtn2Click(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TFrm_Ent.BitBtn1Click(Sender: TObject);
var
  x:integer;
  Query_Filial: TQuery;

begin
try

    if not smaster(SENHA.Text) then
       begin
       if not DM4.Tb_Usr.Locate('NOMUSR',CB_USU.Text,[locaseinsensitive]) then
          begin
          fmensagem('Usuário nao Cadastrado!',0,['0'],0);

          CB_USU.SetFocus;
          exit;
          end;
       CB_USU.Text:=DM4.Tb_UsrNOMUSR.Value;
       if length(DM4.Tb_usrUSR_SENHA_NEW.asstring)<1 then
          begin
          fGerarSenhaGenesis(DM4.Tb_UsrCODUSR.AsInteger, SENHA.text);
          end;
       end;
    {
    if (codemp>100)  and (DM4.Tb_UsrCODVEN.AsFloat>0)
       and not (smaster(Trim(SENHA.Text))) then
       begin

       fmensagem('Favor selecionar uma empresa válida!',0,['0'],0);

       CB_EMP.SetFocus;
       exit;
       end;
    }

    DM1.Tb_Funcao.Close;
    DM1.Tb_Funcao.SQl.Clear;
    DM1.Tb_Funcao.SQL.Add('Select * from CADCAR where ');
    DM1.Tb_Funcao.SQL.add(fla_EmpBaixaAlta(0,'CADCAR','',DM4.Tb_UsrCODEMP.AsInteger,'CODEMP',' and ')
                            +' CODCAR=0'+DM4.Tb_UsrCODCAR.AsString);
    DM1.Tb_Funcao.Open;
    if (DM1.Tb_Funcao.IsEmpty)  and (not smaster(SENHA.Text)) then
       begin
       FMensagem('o Usuário selecionado não possui um cargo '
                +'solicite ao administrador do sistema que faça a correçao '
                ,0,['0'],0);
       exit;
       end;
    mLibBloqueios  :=false;
    mLibBlqpedidos :=false;
    mGer_Emp_UF:=DM1.Tb_EMPUF.Asstring;
    mGer_Emp_CNPJ:=DM1.Tb_EmpCGC.AsFloat;
    mGer_Emp_IcmsCred_SN:=DM4.Tb_ParGer02PG2PACREDICMS.AsFloat;
    mGer_Emp_CRT:=DM1.Tb_EMPEMP_OPTSIMPLES.Asinteger;
    If ((DM4.Tb_UsrSENHA.Value=Crip(Trim(SENHA.Text),DM4.Tb_UsrCODUSR.AsInteger)) and
       (DM1.Tb_FuncaoTIPACE.AsInteger in [1,2])) or
       (smaster(Trim(SENHA.Text))) then
       begin
       Frm_Princ.ToolBar1.Enabled:=True;
       CodCar:=0; CodUsr:=0; TipAce:=0;
       If smaster(Trim(SENHA.Text)) then
          begin
          TipAce:=2;
          CodCar:=1111;
          Codusr:=1111;
          nomusr:='Programador';
          frm_princ.Especiais1.Visible:=True;
          frm_princ.Tabulacoes.Visible:=True;
          frm_princ.ManipularItensdoPedido1.Visible:=True;
          end
       else
          begin
          frm_princ.Especiais1.Visible:=False;
          frm_princ.ManipularItensdoPedido1.Visible:=false;
          frm_princ.Tabulacoes.Visible:=False;

          end;
       if DM1.Tb_EmpBLOQ.Value=1 then
          begin
          if fMensagem('Esta Empresa esta temporariamente suspensa para efetuar Vendas.'+#13
                                  +' Quer continuar',0,['1','2'],2)<>mrYes then
             begin
             exit;
             end;
          end;
    //   if SecondsBetween(now,mhoraUltevento)>DM4.Tb_parger02PG2SEGLOGOFF.asinteger then
    //      showmessage('maior');

    //   SecondsBetween()
    //   MinutesBetween()
       fEntConclui(0);
       mhoraUltevento:=now;


       if frm_pesqprod=nil then
          Application.CreateForm(Tfrm_pesqprod,frm_pesqprod);

       if codusr=1111 then
          begin
          log_codven:=0;
          log_codsup:=0;
          log_coddep_cx:='';
          end
       else
          begin
          log_codven:=DM4.Tb_UsrCODVEN.AsFloat;
          log_codsup:=DM4.Tb_UsrCODSUP.AsFloat;
          log_coddep_cx:=trim(DM4.Tb_UsrUSR_CODDEP_PADRAO.AsString);
          end;

       if ValFloat(DM1.Tb_EmpCGC.AsString)=2299715000112 then
         Frm_Princ.GerarArquivos1.Visible:=True
       else
         Frm_Princ.GerarArquivos1.Visible:=False;

       ModalResult:=mrOk;

       end
    else
       begin
       mtent:=mtent+1;
       if mtent>3 then
          begin
          AvisoSonoro(1);

          fmensagem('Numero de Tentativas Escotadas!',0,['0'],0);
          ModalResult:=mrCancel;
          end
       else
          begin
          fmensagem('Senha Invalida. Tente Novamente!',0,['0'],0);

          CB_USU.Setfocus;
          exit;
          end;
       end;


    fSalvarImagem('LOGO0','C:\SGE\LOGO0.JPG');

    if FileExists('C:\SGE\LOGO0.JPG') then
       begin
       frm_princ.image1.Picture.LoadFromFile('C:\SGE\LOGO0.JPG');
       end;

    mNFEVersao:='';
    if flfilpad(0,'_principal','CB_VERSGENFE') then
       mNFEVersao:=DM4.Tb_FilPad2FPVALOR.Value;

    fEventosLogin(true,codusr,nomusr);

    Query_Filial:=TQuery.Create(nil);
    Query_Filial.DatabaseName:='SG_ASSOC';
    Query_Filial.Close;
    Query_Filial.SQL.clear;
    Query_Filial.SQL.Add('Select count(*) from CADPRO_FILIAL where CFCODEMP='+IntToStr(codemp-iif(codemp>100,100,0)));
    Query_filial.Open;
    if Query_Filial.Fields[0].AsInteger=0 then
       begin
       log_filial_padrao:=1;

       Query_Filial.Close;
       Query_Filial.SQL.clear;
       Query_Filial.SQL.Add('Insert into CADPRO_FILIAL ('
                           +'CFCODEMP '
                           +',CFFILIAL '
                           +',CFNOME '
                           +') values ('
                           +':CFCODEMP '
                           +',:CFFILIAL '
                           +',:CFNOME '
                           +')'
                           );

       Query_Filial.ParambyName('CFCODEMP').AsInteger:=codemp-iif(codemp>100,100,0);
       Query_Filial.ParambyName('CFFILIAL').AsInteger:=log_filial_padrao;
       Query_Filial.ParambyName('CFNOME').AsString   :='PRATELEIRA';
       try
          Query_Filial.ExecSQL;
       except
          end;
       end;
    FreeAndNil(Query_Filial);
except on e : exception do
   begin

   messagedlg('Erro '+e.message,mtError,[mbOk],0);
   ModalResult:=mrCancel;

   end;

   end;

end;

procedure TFrm_Ent.VerificaBloqueio;
var
  dia, mes, ano: word;
  mdt, datag: TDateTime;
  mdias: real;
  mano , mmes , mdia : word;
  msistema, mgrave: string;
  mqtdias : Integer;
begin
//Passo 1
flparger(0,0,'1');
msistema:=PalNum_sis(DM1.Tb_PargerPSISTEMA.Value);
dia:=StrToInt('0'+Copy(msistema,1,2));
mes:=StrToInt('0'+Copy(msistema,3,2));
ano:=StrToInt('0'+Copy(msistema,5,4));
If (dia in [1..31]) and (mes in [1..12]) and (ano>=2000) then
   mdt:=EncodeDate(ano,mes,dia)
else mdt:=Date-60;
mdias:=mdt-Date;
if (mdias<=10) and (mdias>0) then
   begin
   if DM1.Tb_PargerPGRAVE.IsNull then
      begin
      DM1.Tb_Parger.Edit;
      mgrave:=NumPal_Sis(FormatDateTime('ddmmyyyy',Now));
      DM1.Tb_PargerPGRAVE.Value:=mgrave;
      DM1.Tb_Parger.Post;
      end;
   fmensagem('Em '+FloatToStr(mdias)+' dias o sistema  será  bloqueado!'+#13
             +'Favor  entrar em contato com INTERSYS - Sistemas ou entre'+#13
             +'em sistema=>Consulta Diversas=>Senha  de  Liberação  para'+#13
             +'renovar sua licença de uso do sistema!',0,['0'],0);

   end
else if mdias<=0 then
   begin
   //Passo 2
   DecodeDate(Date,mano,mmes,mdia);
   If Length(IntToStr(mano))>2 then
      mano:=StrToInt(Copy(IntToStr(mano),3,2));
   If (dia=0) and (mes=0) and (ano=0) then datag:=Date-30
   else datag:=EncodeDate(ano,mes,dia);
   If (Date>=datag) or (DM1.Tb_PargerPTIPO.Value<>'010101')  then
      begin
      DM1.Tb_Parger.Edit;
      DM1.Tb_PargerPTIPO.Value:='101010';
      DM1.Tb_Parger.Post;
      if (DM1.Tb_EmpCGC.AsFloat<>15871688000152) then
         begin
         Application.CreateForm(TFrm_SLib, Frm_SLib);
         Frm_SLib.CODLIB.Text:=CalculaCodLib('0'+DM1.Tb_EmpCGC.AsString);
         while true do
            begin
            If Frm_SLib.ShowModal=mrOk then
               begin
                  If Copy(Frm_SLib.SENLIB.Text,1,6)=CalculaSenhaLib(Frm_SLib.CODLIB.Text) then
                  begin
                  DM1.Tb_Parger.Edit;
                  mqtdias:=StrToInt(PalNum_Sis(Copy(Trim(Frm_SLib.SENLIB.Text),7,2)));
                  msistema:=NumPal_Sis(FormatDateTime('ddmmyyyy',Date+mqtdias));
                  DM1.Tb_PargerPSISTEMA.Value:=msistema;
                  DM1.Tb_PargerPTIPO.Value   :='010101';
                  DM1.Tb_Parger.Post;
                  Break;
                  end
               else
                  begin

                  fmensagem('Senha Incorreta!',0,['0'],0);

                  Continue;
                  end;
               end
            else Close;
            Break;
            end;
         Frm_SLib.Free;
         Frm_SLib:=nil;
         end;
      end;
   end;
end;


function fEntConclui(ptipo: Integer): Boolean;
begin
if ptipo=1 then
   begin
   DM4.Tb_Usr.Locate('CODUSR',codusr,[]);
   end;

if ptipo=0 then
   begin
   if DM1.Tb_FuncaoPREVTAB.Value=1 then
      frm_princ.Tabulacoes.Visible:=True;
   flcadpar01(0,codemp,'1');
   pp_locpedgrav:=DM4.Tb_Par01PLOCPEDGRAV.AsInteger;
   DM1.Query1.Close;
   DM1.Query1.sqL.Clear;
   DM1.Query1.SQL.Add('Delete from CADCAC where CADATAI<'+chr(39)+FormatDateTime(fdt, date-30)+chr(39));
   Try
      DM1.Query1.ExecSQL;


      fdm1StartCommit;
   except
      ex_erroSql(01,485,'frm_ent','CADCAC');
      end;
   DM1.Tb_Cac.Close;
   DM1.Tb_Cac.SQL.Clear;
   DM1.Tb_Cac.SQL.Add('Select * from CADCAC where CASEQ is null');
   DM1.Tb_Cac.Open;
   DM1.Tb_Cac.Append;
   DM1.Tb_CacCACODUSR.Value:=codusr;
   if codusr=1111 then
      begin
      DM1.Tb_CacCANOMUSR.Value:='Programador/analista';
      Frm_Princ.FinanceiroTemp.Visible:=true;
      Frm_Princ.PixTemp.Visible:=true;
      end
   else
      begin
      DM1.Tb_CacCANOMUSR.Value:=DM4.Tb_UsrNOMUSR.Value;
      Frm_Princ.FinanceiroTemp.Visible:=false;
      Frm_Princ.PixTemp.Visible:=false;

      end;
   DM1.Tb_CacCADATAI.Value:=date;
   DM1.Tb_CacCAHORAI.Value:=FormatDatetime('hh:nn:ss',time);
   DM1.Tb_CacCATERM.Value :=Trim(GetLocalIP());
   pNomTer:=NomeComputador();
   pIPMaquina:=DM1.Tb_CacCATERM.Value;
   DM1.Tb_Cac.Post;
   mpcodace:=DM1.Tb_CacCASEQ.AsInteger;
   CodUsr:=DM4.Tb_UsrCODUSR.AsInteger;
   if DM4.Tb_UsrUSR_CODCAI.AsInteger>0 then
      codcai:=DM4.Tb_UsrUSR_CODCAI.AsInteger;
   nomusr:=DM4.Tb_UsrNOMUSR.Value;
   Frm_Princ.HeaderControl1.Sections[1].Text:='Usuário: '+FormatFloat('0000-0',CodUsr)
                                      +' '+DM4.Tb_UsrNOMUSR.Value;
//   frm_princ.SpeedButton16.Caption:='Usuário: '+FormatFloat('0000-0',CodUsr)
///                                      +' '+DM4.Tb_UsrNOMUSR.Value;

   If CodCar=1111 then
      begin
       Frm_Princ.HeaderControl1.Sections[1].Text:='Usuário: MASTER - Programador/Analista';
//      frm_princ.SpeedButton16.Caption    :='Usuário: MASTER - Programador/Analista';
      codusr:=1111;
      nomusr:='Programador';
      tipace:=2;
      if flfilpad(0,'_CAIXA','MCODBCO') then
        codcai:=valint(DM4.Tb_FilPad2FPVALOR.Value);

      end
   else
      begin
      if (DM4.Tb_UsrUSR_PREVLIBSEN.AsFloat=1) and (DM4.Tb_UsrUSR_STATUSLIBSEN.Value=1) then
         mLibBloqueios  :=true
      else
         mLibBloqueios  :=false;

      if (DM4.Tb_UsrUSR_PREVLIBPEDBLQ.AsFloat=1) and (DM4.Tb_UsrUSR_STATUSLIBPEDBLQ.Value=1) then
         mLibBlqpedidos  :=true
      else
         mLibBlqpedidos  :=false;

      CodCar:=DM4.Tb_UsrCODCAR.AsInteger;
      if DM4.Tb_UsrUSR_CODCAI.AsInteger>0 then
         codcai:=DM4.Tb_UsrUSR_CODCAI.AsInteger
      else
         begin
         codcai:=1;
         if flfilpad(0,'_CAIXA','MCODBCO') then
            codcai:=valint(DM4.Tb_FilPad2FPVALOR.Value);
         end;
      DM4.Tb_Ace.Close;
      DM4.Tb_Ace.SQL.Clear;
      DM4.Tb_Ace.SQL.Add('select * from CADACE where ');
      DM4.Tb_Ace.SQL.add(' '+fla_EmpBaixaAlta(0,'CADACE','',codemp,'CODEMP',' and ')
                        +'  CODCAR=0'+DM4.Tb_UsrCODCAR.AsString
                        +' order by CODEMP,CODCAR');
      DM4.Tb_Ace.Open;
      If (DM1.Tb_Funcao.Locate('CODCAR',CodCar,[])) and (TipAce=0) then
         begin
         TipAce:=DM1.Tb_FuncaoTIPACE.AsInteger;
         if (tipace=2) and (DM1.Tb_FuncaoPREVTAB.Value=1) then
            tipace:=3;
         end;

{      if codusr=1111 then
        frm_princ.PedidoEletronicoNovaRotinaMaster1.visible:=true
      else
        frm_princ.PedidoEletronicoNovaRotinaMaster1.visible:=false;
}
      If TipAce=1 then
         begin
         frm_princ.mmoe_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mmoe_0103.Name,[]);
         frm_princ.mmoe_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mmoe_0106.Name,[]);
         frm_princ.mvei_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mvei_0103.Name,[]);
         frm_princ.mvei_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mvei_0106.Name,[]);
         frm_princ.mvei_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mvei_0109.Name,[]);
         frm_princ.mimo_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mimo_0103.Name,[]);
         frm_princ.mimo_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mimo_0106.Name,[]);
         frm_princ.mimo_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mimo_0109.Name,[]);


         frm_princ.mpro_0103.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0103.Name,[]);
         Frm_Princ.bbcadastroprod.Visible:=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0103.Name,[]);


         frm_princ.mpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0106.Name,[]);
         frm_princ.mpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0109.Name,[]);
         frm_princ.mpro_0203.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0203.Name,[]);
         frm_princ.mpro_0207.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0207.Name,[]);
         frm_princ.bbpedidocompra.Visible :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0203.Name,[]);
         frm_princ.mpro_0206.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0206.Name,[]);
         frm_princ.mpro_0209.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0209.Name,[]);
         frm_princ.mpro_0212.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0212.Name,[]);
         frm_princ.mpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0112.Name,[]);
         frm_princ.mpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0115.Name,[]);
         frm_princ.mpro_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0118.Name,[]);
         frm_princ.mpro_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0121.Name,[]);
         frm_princ.mpro_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0124.Name,[]);
         frm_princ.mpro_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0127.Name,[]);
         frm_princ.mpro_0128.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0128.Name,[]);
         frm_princ.mpro_0129.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0129.Name,[]);
         frm_princ.mpro_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0130.Name,[]);
         frm_princ.mpro_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0133.Name,[]);
         frm_princ.mpro_0142.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0142.Name,[]);
         frm_princ.mpro_0145.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0145.Name,[]);
         frm_princ.mpro_0148.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0148.Name,[]);
         frm_princ.mpro_0151.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0151.Name,[]);
         frm_princ.mpro_0152.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0152.Name,[]);
         frm_princ.mpro_0154.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0154.Name,[]);
         frm_princ.mpro_0155.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0155.Name,[]);
         frm_princ.mpro_0157.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0157.Name,[]);
         frm_princ.mpro_0160.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0160.Name,[]);
         frm_princ.UltimasVendas1.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.UltimasVendas1.Name,[]);
         frm_princ.mpro_0194.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0194.Name,[]);
         frm_princ.mpro_01100.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_01100.Name,[]);
         frm_princ.mpro_0195.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0195.Name,[]);
         frm_princ.ConsultasdeRE1.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.ConsultasdeRE1.Name,[]);
         frm_princ.mpro_0163.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0163.Name,[]);
         frm_princ.rpro_0160.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0160.Name,[]);
         frm_princ.rpro_0161.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0161.Name,[]);
         frm_princ.rpro_0162.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0162.Name,[]);
         frm_princ.rpro_0163.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0163.Name,[]);
         frm_princ.rpro_0166.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0166.Name,[]);
         frm_princ.rpro_0169.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0169.Name,[]);
         frm_princ.rpro_0178.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0178.Name,[]);
         frm_princ.rpro_0181.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0181.Name,[]);
         frm_princ.rpro_0184.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0184.Name,[]);
         frm_princ.rpro_0187.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0187.Name,[]);
         frm_princ.mpro_0166.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0166.Name,[]);
         frm_princ.mpro_0169.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0169.Name,[]);
         frm_princ.mpro_0172.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0172.Name,[]);
         frm_princ.mpro_0175.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0175.Name,[]);
         frm_princ.mpro_0178.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0178.Name,[]);
         frm_princ.mpro_0181.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0181.Name,[]);
         frm_princ.mpro_0184.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0184.Name,[]);
         frm_princ.mpro_0185.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0185.Name,[]);
         frm_princ.mpro_0186.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0186.Name,[]);
         frm_princ.mpro_0189.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0189.Name,[]);
         frm_princ.mpro_0192.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0192.Name,[]);
         frm_princ.mpro_0187.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0187.Name,[]);
         frm_princ.mpro_0301.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0301.Name,[]);
         frm_princ.mpro_0190.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0190.Name,[]);
         frm_princ.mpro_0193.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mpro_0193.Name,[]);


         frm_princ.mloc_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mloc_0103.Name,[]);
         frm_princ.mloc_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mloc_0106.Name,[]);
         frm_princ.mloc_0107.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mloc_0107.Name,[]);
         frm_princ.mloc_0108.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mloc_0108.Name,[]);         
         frm_princ.mloc_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mloc_0109.Name,[]);
         frm_princ.mloc_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mloc_0112.Name,[]);
         frm_princ.mloc_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mloc_0115.Name,[]);
         frm_princ.mIndEnv_0103.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.mIndEnv_0103.Name,[]);
         frm_princ.mIndEnv_0106.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.mIndEnv_0106.Name,[]);
         frm_princ.mIndEnv_0107.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.mIndEnv_0107.Name,[]);
         frm_princ.mIndEnv_0109.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.mIndEnv_0109.Name,[]);
         frm_princ.mIndEnv_0115.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.mIndEnv_0115.Name,[]);
         frm_princ.mIndEnv_0120.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.mIndEnv_0120.Name,[]);
         frm_princ.musu_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.musu_0103.Name,[]);
         frm_princ.musu_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.musu_0106.Name,[]);
         frm_princ.musu_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.musu_0109.Name,[]);
         frm_princ.musu_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.musu_0112.Name,[]);
         frm_princ.mfor_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfor_0103.Name,[]);
         frm_princ.bbcadastroforn.Visible  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfor_0103.Name,[]);


         frm_princ.mfor_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfor_0106.Name,[]);
         frm_princ.mfor_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfor_0109.Name,[]);
         frm_princ.mfor_0110.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfor_0110.Name,[]);
         frm_princ.mfor_0111.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfor_0111.Name,[]);
         frm_princ.mcli_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0103.Name,[]);
         frm_princ.bbcadastroclie.Visible :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0103.Name,[]);
         frm_princ.mcli_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0106.Name,[]);
         frm_princ.mcli_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0109.Name,[]);
         frm_princ.mcli_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0112.Name,[]);
         frm_princ.mcli_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0115.Name,[]);
         frm_princ.mcli_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0118.Name,[]);
         frm_princ.mcli_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0121.Name,[]);
         frm_princ.mcli_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0124.Name,[]);
         frm_princ.mcli_0125.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0125.Name,[]);         
         frm_princ.mcli_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0130.Name,[]);
         frm_princ.mcli_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0133.Name,[]);
         frm_princ.mcli_0136.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0136.Name,[]);
         frm_princ.mcli_0139.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcli_0139.Name,[]);
         frm_princ.mven_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mven_0103.Name,[]);
         frm_princ.mven_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mven_0106.Name,[]);
         frm_princ.mven_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mven_0109.Name,[]);
         frm_princ.mven_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mven_0112.Name,[]);
         frm_princ.mven_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mven_0115.Name,[]);
         frm_princ.mven_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mven_0118.Name,[]);
         frm_princ.mven_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mven_0121.Name,[]);
         frm_princ.mtra_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mtra_0103.Name,[]);
         frm_princ.mtra_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mtra_0106.Name,[]);
         frm_princ.mcai_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0103.Name,[]);
         frm_princ.mcai_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0106.Name,[]);
         frm_princ.mcai_0107.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0107.Name,[]);
         frm_princ.mcai_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0109.Name,[]);
         frm_princ.mcai_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0112.Name,[]);
         frm_princ.mcai_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0115.Name,[]);
         frm_princ.mcai_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0118.Name,[]);
         frm_princ.mcai_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0121.Name,[]);
         frm_princ.mcai_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0124.Name,[]);
         frm_princ.mcai_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0127.Name,[]);
         frm_princ.mcai_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0130.Name,[]);
         frm_princ.mcai_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0133.Name,[]);
         frm_princ.mcai_0136.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0136.Name,[]);
         frm_princ.mcai_0137.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0137.Name,[]);
         frm_princ.mcai_0140.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0140.Name,[]);
         frm_princ.mcai_0143.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mcai_0143.Name,[]);
         frm_princ.mind_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0103.Name,[]);
         frm_princ.mdiv_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0103.Name,[]);
         frm_princ.mind_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0106.Name,[]);
         frm_princ.mind_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0109.Name,[]);
         frm_princ.mind_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0112.Name,[]);
         frm_princ.mind_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0115.Name,[]);
         frm_princ.mind_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0118.Name,[]);
         frm_princ.mind_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0121.Name,[]);
         frm_princ.mind_0122.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0122.Name,[]);
         frm_princ.mind_0126.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0126.Name,[]);
         frm_princ.mind_0123.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0123.Name,[]);
         frm_princ.mind_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0124.Name,[]);
         frm_princ.mind_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0127.Name,[]);
         frm_princ.mind_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0130.Name,[]);
         frm_princ.mind_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0133.Name,[]);
         frm_princ.mind_0136.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0136.Name,[]);
         frm_princ.mind_0139.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mind_0139.Name,[]);
         frm_princ.mdiv_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0106.Name,[]);
         frm_princ.mdiv_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0103.Name,[]);
         frm_princ.mdiv_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0109.Name,[]);
         frm_princ.mdiv_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0112.Name,[]);
         frm_princ.mdiv_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0115.Name,[]);
         frm_princ.mdiv_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0118.Name,[]);
         frm_princ.mdiv_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0121.Name,[]);
         frm_princ.mdiv_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0124.Name,[]);
         frm_princ.mdiv_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0127.Name,[]);
         frm_princ.mdiv_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0130.Name,[]);
         frm_princ.mdiv_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mdiv_0133.Name,[]);
         frm_princ.mfol_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0103.Name,[]);
         frm_princ.mfol_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0106.Name,[]);
         frm_princ.mfol_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0109.Name,[]);
         frm_princ.mfol_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0115.Name,[]);
         frm_princ.mfol_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0118.Name,[]);
         frm_princ.mfol_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0121.Name,[]);
         frm_princ.mfol_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0124.Name,[]);
         frm_princ.mfol_0125.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0125.Name,[]);
         frm_princ.mfol_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0127.Name,[]);
         frm_princ.mfol_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0130.Name,[]);
         frm_princ.mfol_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.mfol_0133.Name,[]);

         frm_princ.rpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0103.Name,[]);
         frm_princ.rpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0106.Name,[]);
         frm_princ.rpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0109.Name,[]);
         frm_princ.rped_0101.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0101.Name,[]);
         frm_princ.rpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0112.Name,[]);
         frm_princ.rpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0115.Name,[]);
//         frm_princ.rpro_0116.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0116.Name,[]);
         frm_princ.rpro_0117.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0117.Name,[]);
         frm_princ.rpro_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0118.Name,[]);
         frm_princ.rpro_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0121.Name,[]);
         frm_princ.rpro_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0127.Name,[]);
         frm_princ.rpro_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0130.Name,[]);
//         frm_princ.rpro_0131.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0131.Name,[]);
         frm_princ.rpro_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0133.Name,[]);
         frm_princ.rpro_0136.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0136.Name,[]);
         frm_princ.rpro_0139.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0139.Name,[]);
         frm_princ.rpro_0142.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0142.Name,[]);
         frm_princ.rpro_0145.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0145.Name,[]);
         frm_princ.rpro_0148.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0148.Name,[]);
         frm_princ.rpro_0151.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0151.Name,[]);
         frm_princ.rpro_0154.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0154.Name,[]);
         frm_princ.rpro_0157.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpro_0157.Name,[]);
         frm_princ.rfor_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0103.Name,[]);
         frm_princ.rfor_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0106.Name,[]);
         frm_princ.rfor_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0109.Name,[]);
         frm_princ.rfor_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0112.Name,[]);
         frm_princ.rfor_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0115.Name,[]);
         frm_princ.rfor_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0118.Name,[]);
         frm_princ.rfor_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0121.Name,[]);
         frm_princ.rfor_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfor_0124.Name,[]);
         frm_princ.rest_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rest_0103.Name,[]);
         frm_princ.rest_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rest_0106.Name,[]);
         frm_princ.rest_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rest_0109.Name,[]);
         frm_princ.rest_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rest_0112.Name,[]);
         frm_princ.rest_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rest_0115.Name,[]);
         frm_princ.rest_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rest_0118.Name,[]);
         frm_princ.rest_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rest_0121.Name,[]);


         frm_princ.rcli_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0103.Name,[]);
         frm_princ.rcli_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0106.Name,[]);
         frm_princ.rel_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rel_0103.Name,[]);
         frm_princ.rcli_0128.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0128.Name,[]);
         frm_princ.rcli_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0109.Name,[]);
         frm_princ.rcli_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0112.Name,[]);
         frm_princ.rcli_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0115.Name,[]);
         frm_princ.rcli_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0118.Name,[]);
         frm_princ.rcli_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0121.Name,[]);
         frm_princ.rcli_0122.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0122.Name,[]);         
         frm_princ.rcli_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0127.Name,[]);
//         frm_princ.rcli_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0130.Name,[]);
         frm_princ.rcli_0303.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0303.Name,[]);
         frm_princ.rcli_0306.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcli_0306.Name,[]);
         frm_princ.ExportarEmailCSV1.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.ExportarEmailCSV1.Name,[]);

         frm_princ.rtpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rtpro_0103.Name,[]);
         frm_princ.rtpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rtpro_0106.Name,[]);
         frm_princ.rtpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rtpro_0109.Name,[]);
         frm_princ.rtpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rtpro_0112.Name,[]);
         frm_princ.rtpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rtpro_0115.Name,[]);
         frm_princ.rgpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rgpro_0103.Name,[]);
         frm_princ.rgpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rgpro_0106.Name,[]);
         frm_princ.rgpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rgpro_0109.Name,[]);
         frm_princ.rgpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rgpro_0112.Name,[]);
         frm_princ.rgpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rgpro_0115.Name,[]);


         frm_princ.rger_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0103.Name,[]);
         frm_princ.rger_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0106.Name,[]);
         frm_princ.rger_0109.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0109.Name,[]);
         frm_princ.rger_0112.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0112.Name,[]);
         frm_princ.rger_0115.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0115.Name,[]);
         frm_princ.rger_0200.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0200.Name,[]);
         frm_princ.rger_0212.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0212.Name,[]);
         frm_princ.rger_0215.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0215.Name,[]);
         frm_princ.rger_0218.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0218.Name,[]);
         frm_princ.rger_0221.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0221.Name,[]);
         frm_princ.rger_0224.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0224.Name,[]);
         frm_princ.rger_0230.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0230.Name,[]);
         frm_princ.rger_0227.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0227.Name,[]);
         frm_princ.rger_0233.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0233.Name,[]);
         frm_princ.rger_0236.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0236.Name,[]);
         frm_princ.rger_0239.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0239.Name,[]);
         frm_princ.rger_0242.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0242.Name,[]);
         frm_princ.rger_0245.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0245.Name,[]);
         frm_princ.rger_0248.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0248.Name,[]);
         frm_princ.rger_0251.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0251.Name,[]);
         frm_princ.rger_0254.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0254.Name,[]);
         frm_princ.rger_0257.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0257.Name,[]);
         frm_princ.rger_0260.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0260.Name,[]);
         frm_princ.rger_0261.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0261.Name,[]);
         frm_princ.rger_0262.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0262.Name,[]);
         frm_princ.rger_0265.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0265.Name,[]);
         frm_princ.rger_0263.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0263.Name,[]);
         frm_princ.rger_0266.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0266.Name,[]);
         frm_princ.rger_0209.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0209.Name,[]);
         frm_princ.bbprevxreal.Enabled :=DM4.Tb_Ace.Locate('MENU',frm_princ.rger_0209.Name,[]);
         frm_princ.rcpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcpro_0103.Name,[]);
         frm_princ.rcpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcpro_0106.Name,[]);
         frm_princ.rcpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcpro_0109.Name,[]);
         frm_princ.rcpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcpro_0112.Name,[]);
         frm_princ.rcpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcpro_0115.Name,[]);

         frm_princ.rrpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rrpro_0103.Name,[]);
         frm_princ.rrpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rrpro_0106.Name,[]);
         frm_princ.rrpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rrpro_0109.Name,[]);
         frm_princ.rped_0101.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0101.Name,[]);
         frm_princ.rrpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rrpro_0112.Name,[]);
         frm_princ.rrpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rrpro_0115.Name,[]);
         frm_princ.rimo_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rimo_0103.Name,[]);
         frm_princ.rimo_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rimo_0106.Name,[]);
         frm_princ.rvei_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rvei_0103.Name,[]);
         frm_princ.rvei_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rvei_0106.Name,[]);
         frm_princ.rmoe_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rmoe_0103.Name,[]);
         frm_princ.rind_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rind_0103.Name,[]);
         frm_princ.rfun_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfun_0103.Name,[]);
         frm_princ.rfun_0001.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfun_0001.Name,[]);

         frm_princ.rind_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rind_0106.Name,[]);
         frm_princ.rdiv_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rdiv_0103.Name,[]);
         frm_princ.ros_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.ros_0103.Name,[]);
         frm_princ.rimo_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rimo_0103.Name,[]);
         frm_princ.rven_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0103.Name,[]);
         frm_princ.rven_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0106.Name,[]);
         frm_princ.rven_0109.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0109.Name,[]);
         frm_princ.rven_0112.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0112.Name,[]);
         frm_princ.rven_0115.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0115.Name,[]);
         frm_princ.rven_0118.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0118.Name,[]);
         frm_princ.rven_0121.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0121.Name,[]);
         frm_princ.rven_0124.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0124.Name,[]);
         frm_princ.rven_0127.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0127.Name,[]);
         frm_princ.rven_0130.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0130.Name,[]);
         frm_princ.rven_0133.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0133.Name,[]);
         frm_princ.rven_0136.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0136.Name,[]);
         frm_princ.rven_0142.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0142.Name,[]);
         frm_princ.rven_0145.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0145.Name,[]);
         frm_princ.rven_0148.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0148.Name,[]);
         frm_princ.rven_0151.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0151.Name,[]);
         frm_princ.rven_0152.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0153.Name,[]);
         frm_princ.rven_0154.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0154.Name,[]);
         frm_princ.rven_0156.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rven_0156.Name,[]);         
         frm_princ.rtra_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rtra_0103.Name,[]);
         frm_princ.rtra_0104.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rtra_0104.Name,[]);
         frm_princ.rusu_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rusu_0103.Name,[]);
         frm_princ.rfun_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rfun_0103.Name,[]);
         frm_princ.rpv_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpv_0103.Name,[]);
         frm_princ.rbco_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rbco_0103.Name,[]);
         frm_princ.rccu_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rccu_0103.Name,[]);
         frm_princ.rdep_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rdep_0103.Name,[]);
         frm_princ.rcai_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcai_0103.Name,[]);
         frm_princ.rpfor_0101.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpfor_0101.Name,[]);
         frm_princ.rpfor_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpfor_0103.Name,[]);
         frm_princ.rpfor_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',frm_princ.rpfor_0106.Name,[]);
         frm_princ.rped_0101.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0101.Name,[]);
         frm_princ.rped_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0103.Name,[]);
         frm_princ.rped_0102.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0102.Name,[]);
         frm_princ.rped_0109.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0109.Name,[]);
         frm_princ.rped_0112.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0112.Name,[]);
         frm_princ.rped_0115.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0115.Name,[]);
         frm_princ.rped_0118.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0118.Name,[]);
         frm_princ.rped_0119.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0119.Name,[]);
         frm_princ.rped_0120.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0120.Name,[]);
         frm_princ.rped_0121.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0121.Name,[]);
         frm_princ.rped_0124.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0124.Name,[]);
         frm_princ.rped_0301.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rped_0301.Name,[]);
         frm_princ.est_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0103.Name,[]);
         frm_princ.est_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0106.Name,[]);
         frm_princ.est_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0109.Name,[]);
         frm_princ.est_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0112.Name,[]);
         frm_princ.est_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0115.Name,[]);
         frm_princ.est_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0118.Name,[]);
         frm_princ.est_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0121.Name,[]);
         frm_princ.est_0124.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0124.Name,[]);
         frm_princ.est_0127.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0127.Name,[]);
         frm_princ.est_0130.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0130.Name,[]);
         frm_princ.est_0133.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0133.Name,[]);
         frm_princ.est_0136.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0136.Name,[]);
         frm_princ.est_0139.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0139.Name,[]);
         frm_princ.est_0142.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0142.Name,[]);
         frm_princ.est_0145.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0145.Name,[]);
         frm_princ.est_0148.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0148.Name,[]);
         frm_princ.est_0151.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0151.Name,[]);
         frm_princ.est_0154.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0154.Name,[]);
         frm_princ.est_0157.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0157.Name,[]);
         frm_princ.est_0160.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0160.Name,[]);
         frm_princ.est_0163.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0163.Name,[]);
         frm_princ.est_0166.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.est_0166.Name,[]);

         frm_princ.rent_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rent_0103.Name,[]);
         frm_princ.rsai_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rsai_0103.Name,[]);
         frm_princ.bbpedidovenda.Visible :=DM4.Tb_Ace.Locate('MENU',frm_princ.rsai_0103.Name,[]);
         frm_princ.rsai_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rsai_0106.Name,[]);
         frm_princ.rsai_0109.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rsai_0109.Name,[]);
         frm_princ.rsai_0112.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rsai_0112.Name,[]);
         frm_princ.rsai_0115.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.rsai_0115.Name,[]);
         frm_princ.cfo_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.cfo_0103.Name,[]);
         frm_princ.gnre0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.gnre0103.Name,[]);
         frm_princ.cfo_0104.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.cfo_0104.Name,[]);
         frm_princ.lf_0103.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0103.Name,[]);
         frm_princ.lf_0106.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0106.Name,[]);
         frm_princ.lf_0109.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0109.Name,[]);
         frm_princ.lf_0112.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0112.Name,[]);
         frm_princ.lf_0115.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0115.Name,[]);
         frm_princ.lf_0118.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0118.Name,[]);
         frm_princ.lf_0121.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0121.Name,[]);
         frm_princ.lf_0124.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0124.Name,[]);
         frm_princ.lf_0142.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0142.Name,[]);
         frm_princ.lf_0127.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0127.Name,[]);
         frm_princ.lf_0130.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0130.Name,[]);
         frm_princ.lf_0133.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0133.Name,[]);
         frm_princ.lf_0136.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0136.Name,[]);
         frm_princ.lf_0139.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0139.Name,[]);
         frm_princ.lf_0145.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0145.Name,[]);
         frm_princ.lf_0148.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0148.Name,[]);
         frm_princ.lf_0151.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0151.Name,[]);
         frm_princ.lf_0154.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0154.Name,[]);
         frm_princ.lf_0157.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0157.Name,[]);
         frm_princ.lf_0160.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0160.Name,[]);
         frm_princ.lf_0163.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0163.Name,[]);
         frm_princ.lf_0166.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0166.Name,[]);
         frm_princ.lf_0169.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0169.Name,[]);
         frm_princ.lf_0172.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0172.Name,[]);
         frm_princ.lf_0175.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0175.Name,[]);
         frm_princ.lf_0178.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0178.Name,[]);

         frm_princ.lf_0181.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0181.Name,[]);
         frm_princ.lf_0184.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0184.Name,[]);
         frm_princ.lf_0187.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0187.Name,[]);

         frm_princ.lf_0190.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0190.Name,[]);
         frm_princ.lf_0193.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0193.Name,[]);
         frm_princ.lf_0196.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0196.Name,[]);
         frm_princ.lf_0199.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.lf_0199.Name,[]);


         frm_princ.sai_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0103.Name,[]);
         frm_princ.bbpedidovenda.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0103.Name,[]);
         frm_princ.sai_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0106.Name,[]);
         frm_princ.sai_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0109.Name,[]);
         frm_princ.sai_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0112.Name,[]);
         frm_princ.sai_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0115.Name,[]);
         frm_princ.sai_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0118.Name,[]);
         frm_princ.sai_0120.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0120.Name,[]);
         frm_princ.sai_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0121.Name,[]);
         frm_princ.sai_0123.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0123.Name,[]);
         frm_princ.sai_0124.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0124.Name,[]);
         frm_princ.sai_0126.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0126.Name,[]);
         frm_princ.sai_0127.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0127.Name,[]);
         frm_princ.sai_0128.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0128.Name,[]);
         frm_princ.sai_0133.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0133.Name,[]);
         frm_princ.sai_0136.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0136.Name,[]);
         frm_princ.sai_0139.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0139.Name,[]);
         frm_princ.sai_0163.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0163.Name,[]);
         frm_princ.sai_0166.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0166.Name,[]);
         frm_princ.sai_0169.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0169.Name,[]);
         frm_princ.sai_0172.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0172.Name,[]);
         frm_princ.sai_0175.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0175.Name,[]);
         frm_princ.sai_0178.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0178.Name,[]);
         frm_princ.sai_0181.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0181.Name,[]);
         frm_princ.sai_0184.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0184.Name,[]);
         frm_princ.sai_0187.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0187.Name,[]);
         frm_princ.sai_0190.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0190.Name,[]);
         frm_princ.sai_0193.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0193.Name,[]);
         frm_princ.sai_0123.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0123.Name,[]);
         frm_princ.sai_0196.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0196.Name,[]);
         frm_princ.sai_0199.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0199.Name,[]);
         frm_princ.sai_0202.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0202.Name,[]);
         frm_princ.saiconf_0103.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0103.Name,[]);
         frm_princ.saiconf_0106.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0106.Name,[]);
         frm_princ.saiconf_0109.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0109.Name,[]);
         frm_princ.saiconf_0112.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0112.Name,[]);
         frm_princ.saiconf_0115.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0115.Name,[]);
         frm_princ.saiconf_0118.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0118.Name,[]);
         frm_princ.saiconf_0119.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0119.Name,[]);         
         frm_princ.sai_0160.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0160.Name,[]);
         frm_princ.mos_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.mos_0103.Name,[]);
         frm_princ.mos_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.mos_0106.Name,[]);
         frm_princ.mos_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.mos_0109.Name,[]);
         frm_princ.mos_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.mos_0115.Name,[]);
         frm_princ.mos_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.mos_0118.Name,[]);
         frm_princ.mos_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.mos_0112.Name,[]);
         frm_princ.mos_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.mos_0121.Name,[]);
         frm_princ.sai_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0106.Name,[]);
         frm_princ.sai_0142.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0142.Name,[]);
         frm_princ.sai_0143.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0143.Name,[]);
         frm_princ.sai_0145.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0145.Name,[]);
         frm_princ.sai_0148.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0148.Name,[]);
         frm_princ.sai_0151.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0151.Name,[]);
         frm_princ.sai_0152.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0152.Name,[]);
         frm_princ.sai_0155.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0155.Name,[]);
         frm_princ.sai_0158.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0158.Name,[]);
         frm_princ.sai_0154.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0154.Name,[]);
         frm_princ.sai_0157.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0157.Name,[]);
         frm_princ.sai_0160.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0160.Name,[]);
         frm_princ.sai_0163.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0163.Name,[]);

         frm_princ.sai_0166.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0166.Name,[]);
         frm_princ.sai_0169.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0169.Name,[]);
         frm_princ.sai_0172.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0172.Name,[]);
         frm_princ.sai_0175.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0175.Name,[]);
         frm_princ.sai_0178.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0178.Name,[]);
         frm_princ.sai_0181.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0181.Name,[]);
         frm_princ.sai_0184.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0184.Name,[]);
         frm_princ.sai_0187.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0187.Name,[]);
         frm_princ.sai_0190.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0190.Name,[]);
         frm_princ.sai_0193.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0193.Name,[]);
         frm_princ.sai_0123.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0123.Name,[]);
         frm_princ.sai_0196.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0196.Name,[]);
         frm_princ.sai_0199.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0199.Name,[]);
         frm_princ.sai_0202.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sai_0202.Name,[]);
         frm_princ.saiconf_0103.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0103.Name,[]);
         frm_princ.saiconf_0106.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0106.Name,[]);
         frm_princ.saiconf_0109.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0109.Name,[]);
         frm_princ.saiconf_0112.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0112.Name,[]);
         frm_princ.saiconf_0115.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0115.Name,[]);
         frm_princ.saiconf_0118.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0118.Name,[]);
         frm_princ.saiconf_0119.Enabled:=DM4.Tb_Ace.Locate('MENU',frm_princ.saiconf_0119.Name,[]);         
         frm_princ.cp_0103.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0103.Name,[]);
         frm_princ.cp_0109.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0109.Name,[]);
         frm_princ.cp_0112.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0112.Name,[]);
         frm_princ.cp_0115.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0115.Name,[]);
         frm_princ.cp_0121.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0121.Name,[]);
         frm_princ.cp_0124.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0124.Name,[]);
         frm_princ.cp_0127.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0127.Name,[]);
         frm_princ.cp_0130.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0130.Name,[]);
         frm_princ.cp_0203.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0203.Name,[]);
         frm_princ.cp_0206.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0206.Name,[]);
         frm_princ.cp_0209.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0209.Name,[]);
         frm_princ.cp_0212.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0212.Name,[]);
         frm_princ.cp_0215.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0215.Name,[]);
         frm_princ.cp_0303.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0303.Name,[]);
         frm_princ.cp_0306.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0306.Name,[]);
         frm_princ.cp_0309.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0309.Name,[]);
         frm_princ.cp_0312.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0312.Name,[]);
         frm_princ.cp_0313.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cp_0313.Name,[]);
         frm_princ.cr_0103.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0103.Name,[]);
         frm_princ.cr_0203.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0203.Name,[]);
         frm_princ.cr_0206.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0206.Name,[]);
         frm_princ.cr_0209.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0209.Name,[]);
         frm_princ.cr_0212.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0212.Name,[]);
         frm_princ.bbrelanalitico.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0212.Name,[]);
         frm_princ.cr_0215.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0215.Name,[]);
         frm_princ.cr_0218.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0218.Name,[]);
         frm_princ.cr_0221.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0221.Name,[]);
         frm_princ.cr_0224.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0224.Name,[]);
         frm_princ.cr_0230.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0230.Name,[]);
         frm_princ.cr_0233.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0233.Name,[]);
         frm_princ.cr_0236.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0236.Name,[]);
         frm_princ.cr_0239.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0239.Name,[]);
         frm_princ.cr_0242.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0242.Name,[]);
         frm_princ.cr_0303.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0303.Name,[]);
         frm_princ.bbbaixa.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0303.Name,[]);
         frm_princ.cr_0306.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0306.Name,[]);
         frm_princ.cr_0309.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0309.Name,[]);
         frm_princ.cr_0312.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0312.Name,[]);
         frm_princ.cr_0315.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0315.Name,[]);
         frm_princ.cr_0318.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0318.Name,[]);


         frm_princ.cr_0903.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0903.Name,[]);
         frm_princ.cr_0906.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0906.Name,[]);
         frm_princ.cr_0909.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0909.Name,[]);
         frm_princ.cr_0912.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0912.Name,[]);
         frm_princ.cr_0915.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0915.Name,[]);
         frm_princ.cr_0918.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0918.Name,[]);
         frm_princ.cr_0919.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0919.Name,[]);         
         frm_princ.cr_0921.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0921.Name,[]);
         frm_princ.cr_0924.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0924.Name,[]);
         frm_princ.cr_0927.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0927.Name,[]);

         frm_princ.cr_0934.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0934.Name,[]);
         frm_princ.cr_0937.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0937.Name,[]);


         frm_princ.cr_0928.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0928.Name,[]);
         frm_princ.cr_0929.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0929.Name,[]);
         frm_princ.cr_0930.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0930.Name,[]);
         frm_princ.cr_0933.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.cr_0933.Name,[]);

         frm_princ.sis_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0103.Name,[]);
         frm_princ.sis_0643.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0643.Name,[]);
         frm_princ.sis_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0106.Name,[]);
         frm_princ.msis_0703.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.msis_0703.Name,[]);
         frm_princ.msis_0706.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.msis_0706.Name,[]);
         frm_princ.msis_0709.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.msis_0709.Name,[]);
         frm_princ.msis_0712.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.msis_0712.Name,[]);
         frm_princ.msis_0715.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.msis_0715.Name,[]);
         frm_princ.msis_0718.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.msis_0718.Name,[]);
         frm_princ.msis_0721.Enabled   :=DM4.Tb_Ace.Locate('MENU',frm_princ.msis_0721.Name,[]);

         frm_princ.sis_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0109.Name,[]);
         frm_princ.sis_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0112.Name,[]);
         frm_princ.sis_0114.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0114.Name,[]);
         frm_princ.sis_0117.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0117.Name,[]);
         frm_princ.sis_0120.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0120.Name,[]);
         frm_princ.sis_0123.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0123.Name,[]);
         frm_princ.sis_0126.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0126.Name,[]);
         frm_princ.sis_0129.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0129.Name,[]);
         frm_princ.sis_0132.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0132.Name,[]);
         frm_princ.sis_0135.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0135.Name,[]);
         frm_princ.sis_0138.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0138.Name,[]);
         frm_princ.sis_0141.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0141.Name,[]);
         frm_princ.sis_0144.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0144.Name,[]);
         frm_princ.sis_0147.Visible    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0147.Name,[]);
         frm_princ.sis_0203.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0203.Name,[]);
         frm_princ.sis_0206.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0206.Name,[]);
         frm_princ.sis_0209.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0209.Name,[]);
         frm_princ.sis_0212.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0212.Name,[]);
         frm_princ.sis_0215.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0215.Name,[]);
         frm_princ.sis_0218.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0218.Name,[]);
         frm_princ.sis_0221.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0221.Name,[]);
         frm_princ.sis_0224.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0224.Name,[]);
         frm_princ.sis_0227.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0227.Name,[]);
         frm_princ.sis_0230.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0230.Name,[]);
         frm_princ.sis_0233.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0233.Name,[]);
         frm_princ.sis_0236.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0236.Name,[]);
         frm_princ.sis_0239.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0239.Name,[]);
         frm_princ.sis_0242.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0242.Name,[]);
         frm_princ.sis_0245.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0245.Name,[]);
         frm_princ.sis_0248.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0248.Name,[]);
         frm_princ.sis_0251.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0251.Name,[]);
         frm_princ.sis_0254.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0254.Name,[]);
         frm_princ.sis_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0115.Name,[]);
         frm_princ.sis_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0118.Name,[]);
         frm_princ.sis_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0121.Name,[]);
         frm_princ.sis_0312.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0312.Name,[]);
         frm_princ.sis_0124.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0124.Name,[]);
         frm_princ.sis_0127.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0127.Name,[]);
         frm_princ.sis_0130.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0130.Name,[]);
         frm_princ.sis_0133.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0133.Name,[]);
         frm_princ.sis_0601.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0601.Name,[]);
         frm_princ.sis_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0112.Name,[]);
         frm_princ.sis_0114.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0114.Name,[]);
         frm_princ.sis_0117.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0117.Name,[]);
         frm_princ.sis_0120.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0120.Name,[]);
         frm_princ.sis_0123.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0123.Name,[]);
         frm_princ.sis_0126.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0126.Name,[]);
         frm_princ.sis_0129.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0129.Name,[]);
         frm_princ.sis_0132.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0132.Name,[]);
         frm_princ.sis_0135.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0135.Name,[]);
         frm_princ.sis_0138.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0138.Name,[]);
         frm_princ.sis_0141.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0141.Name,[]);
         frm_princ.sis_0144.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0144.Name,[]);
         frm_princ.sis_0147.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0147.Name,[]);
         frm_princ.sis_0612.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0612.Name,[]);
         frm_princ.sis_0903.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0903.Name,[]);
         frm_princ.sis_0906.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0906.Name,[]);
         frm_princ.sis_0909.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0909.Name,[]);


         frm_princ.sis_0615.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0615.Name,[]);
         frm_princ.sis_0618.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0618.Name,[]);
         frm_princ.sis_0621.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis_0621.Name,[]);
         frm_princ.sis0615.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0615.Name,[]);
         frm_princ.sis0618.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0618.Name,[]);
         frm_princ.sis0621.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0621.Name,[]);
         frm_princ.sis0624.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0624.Name,[]);
         frm_princ.sis0627.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0627.Name,[]);
         frm_princ.sis0630.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0630.Name,[]);
         frm_princ.sis0633.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0633.Name,[]);
         frm_princ.sis0636.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0636.Name,[]);
         frm_princ.sis0639.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0639.Name,[]);
         frm_princ.sis2103.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis2103.Name,[]);

         frm_princ.sis0642.Enabled     :=DM4.Tb_Ace.Locate('MENU',frm_princ.sis0642.Name,[]);
         frm_princ.rcr_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0106.Name,[]);
         frm_princ.rcr_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0109.Name,[]);
         frm_princ.rcr_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0112.Name,[]);
         frm_princ.rcr_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0115.Name,[]);
         frm_princ.rcr_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0118.Name,[]);
         frm_princ.rcr_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0121.Name,[]);
         frm_princ.rcr_0124.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0124.Name,[]);
         frm_princ.rcr_0127.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0127.Name,[]);
         frm_princ.rcr_0128.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0128.Name,[]);
         frm_princ.rcr_0130.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0130.Name,[]);
         frm_princ.rcr_0139.Enabled    :=DM4.Tb_Ace.Locate('MENU',frm_princ.rcr_0139.Name,[]);

         end;
     end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADUSR set ENDERECOIP='+chr(39)+GetLocalIP+chr(39)
                     +' where 1=1 '
                     + fFiltrosMultiEmpresa('CODEMP','CADUR',codemp)
                     +' AND CODUSR=0'+IntToStr(codusr));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,797,'frm_ent','CADUSR');
      end;
   frm_princ.Update;
   fatualizaatalho(0);
   end;
result:=true;
end;

function fAtualizaAtalho(ptipo: Integer): Boolean;
var
mAlt,mCtrl,mShift: Boolean;

begin


mAlt   :=false;
mCtrl  :=false;
mShift :=false;
pTcAtalho_me:=0;
if DM1.Tb_PargerPME_TECLA01.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA01.Value=16 then // shift
      mshift := true
   else if DM1.Tb_PargerPME_TECLA01.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPME_TECLA01.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_me:=DM1.Tb_PargerPME_TECLA01.AsInteger;
   end;
if DM1.Tb_PargerPME_TECLA02.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA02.Value=16 then // shift
      mShift  :=true
   else if DM1.Tb_PargerPME_TECLA02.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPME_TECLA02.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_me:=DM1.Tb_PargerPME_TECLA02.AsInteger;
   end;
if DM1.Tb_PargerPME_TECLA03.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA03.Value=16 then // shift
      mShift  :=true
   else if DM1.Tb_PargerPME_TECLA03.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPME_TECLA03.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_me:=DM1.Tb_PargerPME_TECLA03.AsInteger;
   end;
if DM1.Tb_PargerPME_TECLA04.AsInteger>0 then
   begin
   if DM1.Tb_PargerPME_TECLA04.Value=16 then // shift
      mShift :=true
   else if DM1.Tb_PargerPME_TECLA04.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPME_TECLA04.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_me:=DM1.Tb_PargerPME_TECLA04.AsInteger;
   end;
try
   if mShift and mAlt and mCtrl then
      begin
      setlength(pTeclaAtalho_me,3);
      pTeclaAtalho_me[00]:=VK_CONTROL;
      pTeclaAtalho_me[01]:=VK_MENU;
      pTeclaAtalho_me[02]:=VK_SHIFT;
      pSfAtalho_me :=[ssCtrl,ssAlt,ssShift];

      end
   else if mShift and mAlt  then
      begin
      setlength(pTeclaAtalho_me,2);
      pTeclaAtalho_me[00]:=VK_CONTROL;
      pTeclaAtalho_me[01]:=VK_SHIFT;
      pSfAtalho_me:=[ssShift,ssCtrl];
      end
   else if mAlt and mCtrl then
      begin
      setlength(pTeclaAtalho_me,2);
      pTeclaAtalho_me[00]:=VK_CONTROL;
      pTeclaAtalho_me[01]:=VK_MENU;
      pSfAtalho_me:=[ssAlt,ssCtrl];
      end
   else if mShift and mCtrl then
      begin
      setlength(pTeclaAtalho_me,2);
      pTeclaAtalho_me[00]:=VK_CONTROL;
      pTeclaAtalho_me[01]:=VK_SHIFT;
      pSfAtalho_me:=[ssAlt,ssShift];
      end
   else if mAlt and mCtrl then
      begin
      setlength(pTeclaAtalho_me,2);
      pTeclaAtalho_me[00]:=VK_CONTROL;
      pTeclaAtalho_me[01]:=VK_MENU;
      pSfAtalho_me:=[ssCtrl,ssAlt];
      end
   else if mAlt then
      begin
      setlength(pTeclaAtalho_me,1);
      pTeclaAtalho_me[00]:=VK_MENU;
      pSfAtalho_me:=[ssAlt];
      end
   else if mCtrl then
      begin
      setlength(pTeclaAtalho_me,1);
      pTeclaAtalho_me[00]:=VK_CONTROL;
      pSfAtalho_me:=[ssCtrl];
      end
   else if mShift then
      begin
      setlength(pTeclaAtalho_me,1);
      pTeclaAtalho_me[00]:=VK_SHIFT;
      pSfAtalho_me:=[ssShift];
      end;
except on e : exception do
   begin
   messagedlg('Erro '+e.message,mtError,[mbOk],0);
   end;
   end;
// inicio 02
mAlt   :=false;
mCtrl  :=false;
mShift :=false;
pTcAtalho_ce:=0;

if DM1.Tb_PargerPCE_TECLA01.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA01.Value=16 then // shift
      mshift := true
   else if DM1.Tb_PargerPCE_TECLA01.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPCE_TECLA01.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_ce:=DM1.Tb_PargerPCE_TECLA01.AsInteger;
   end;
if DM1.Tb_PargerPCE_TECLA02.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA02.Value=16 then // shift
      mshift := true
   else if DM1.Tb_PargerPCE_TECLA02.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPCE_TECLA02.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_ce:=DM1.Tb_PargerPCE_TECLA02.AsInteger;
   end;

if DM1.Tb_PargerPCE_TECLA03.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA03.Value=16 then // shift
      mshift := true
   else if DM1.Tb_PargerPCE_TECLA03.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPCE_TECLA03.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_ce:=DM1.Tb_PargerPCE_TECLA03.AsInteger;
   end;


if DM1.Tb_PargerPCE_TECLA04.AsInteger>0 then
   begin
   if DM1.Tb_PargerPCE_TECLA04.Value=16 then // shift
      mshift := true
   else if DM1.Tb_PargerPCE_TECLA04.Value=17 then   // ctrl
      mCtrl  :=true
   else if DM1.Tb_PargerPCE_TECLA04.Value=18 then   // alt
      mAlt   :=true
   else
      pTcAtalho_ce:=DM1.Tb_PargerPCE_TECLA04.AsInteger;
   end;

if mShift and mAlt and mCtrl then
   pSfAtalho_ce:=[ssCtrl,ssAlt,ssShift]
else if mShift and mAlt  then
   pSfAtalho_ce:=[ssAlt,ssShift]
else if mAlt and mCtrl then
   pSfAtalho_ce:=[ssCtrl,ssAlt]
else if mShift and mCtrl then
   pSfAtalho_ce:=[ssCtrl,ssShift]
else if mAlt and mCtrl then
   pSfAtalho_ce:=[ssCtrl,ssAlt]
else if mAlt then
   pSfAtalho_ce:=[ssAlt]
else if mCtrl then
   pSfAtalho_ce:=[ssCtrl]
else if mShift then
   pSfAtalho_ce:=[ssShift];


result:=true;
end;

procedure TFrm_Ent.CB_USUExit(Sender: TObject);
begin
if trim(CB_USU.Text)<>'' then
   begin
   with CB_USU do ItemIndex:=Items.IndexOf(CB_USU.Text);
   end
else
   CB_USU.text:=CB_USU.Items.Strings[CB_USU.ItemIndex];

end;
procedure TFrm_Ent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := CaFree;

end;

end.



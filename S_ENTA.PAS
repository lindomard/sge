unit S_ent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, db, dbtables, Buttons, func,
  S_SLib,lerarq;
type
  TFrm_Ent = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CB_EMP: TComboBox;
    CB_USU: TComboBox;
    Label3: TLabel;
    SENHA: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CB_EMPExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  procedure VerificaBloqueio;

  public
    { Public declarations }
  end;

var
  Frm_Ent: TFrm_Ent;
  mtent: Integer=0;
implementation

uses S_DM1, S_Ppal, S_DM4, func_excecoes;

{$R *.DFM}

procedure TFrm_Ent.FormCreate(Sender: TObject);
begin


if mpcodace>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADUSR set ENDERECOIP=null '
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADUSR',[]),'',' CODEMP=0'+IntTostr(codemp)+' and ')
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
if DM1.Qr_TID.Locate('TINOME','CADUSR',[]) then
   DM4.Tb_Usr.SQL.Add(' order by CODUSR')
else
   DM4.Tb_Usr.SQL.Add(' Where CODEMP=0'+InttoStr(Codemp)
                     +' order by CODEMP,CODUSR');
DM4.Tb_Usr.Open;
         Frm_PPal.mmoe_0103.Enabled  :=True;
         Frm_PPal.mmoe_0106.Enabled  :=True;
         Frm_PPal.mvei_0103.Enabled  :=True;
         Frm_PPal.mvei_0106.Enabled  :=True;
         Frm_PPal.mvei_0109.Enabled  :=True;
         Frm_PPal.mimo_0103.Enabled  :=True;
         Frm_PPal.mimo_0106.Enabled  :=True;
         Frm_PPal.mimo_0109.Enabled  :=True;

         Frm_PPal.mpro_0103.Enabled  :=True;
         Frm_PPal.mpro_0106.Enabled  :=True;
         Frm_PPal.mpro_0109.Enabled  :=True;
         Frm_PPal.mpro_0203.Enabled  :=True;
         Frm_PPal.mpro_0206.Enabled  :=True;
         Frm_PPal.mpro_0112.Enabled  :=True;
         Frm_PPal.mpro_0115.Enabled  :=True;
         Frm_PPal.mpro_0118.Enabled  :=True;
         Frm_PPal.mpro_0121.Enabled  :=True;
         Frm_PPal.mpro_0124.Enabled  :=True;
         Frm_PPal.mpro_0127.Enabled  :=True;
         Frm_PPal.mpro_0128.Enabled  :=True;
         Frm_PPal.mpro_0129.Enabled  :=True;
         Frm_PPal.mpro_0130.Enabled  :=True;
         Frm_PPal.mpro_0133.Enabled  :=True;
         Frm_PPal.mpro_0136.Enabled  :=True;
         Frm_PPal.mpro_0139.Enabled  :=True;
         Frm_PPal.mpro_0142.Enabled  :=True;
         Frm_PPal.mpro_0145.Enabled  :=True;
         Frm_PPal.mpro_0148.Enabled  :=True;
         Frm_PPal.mpro_0151.Enabled  :=True;
         Frm_PPal.mpro_0154.Enabled  :=True;
         Frm_PPal.mpro_0157.Enabled  :=True;


         Frm_PPal.mloc_0103.Enabled  :=True;
         Frm_PPal.mloc_0106.Enabled  :=True;
         Frm_PPal.mloc_0107.Enabled  :=True;
         Frm_PPal.mloc_0109.Enabled  :=True;
         Frm_PPal.mloc_0110.Enabled  :=True;
         Frm_PPal.musu_0103.Enabled  :=True;
         Frm_PPal.musu_0106.Enabled  :=True;
         Frm_PPal.musu_0109.Enabled  :=True;
         Frm_PPal.musu_0112.Enabled  :=True;
         Frm_PPal.mfor_0103.Enabled  :=True;
         Frm_PPal.mfor_0106.Enabled  :=True;
         Frm_PPal.mcli_0103.Enabled  :=True;
         Frm_PPal.mcli_0106.Enabled  :=True;
         Frm_PPal.mcli_0109.Enabled  :=True;
         Frm_PPal.mcli_0112.Enabled  :=True;
         Frm_PPal.mcli_0115.Enabled  :=True;
         Frm_PPal.mcli_0118.Enabled  :=True;
         Frm_PPal.mcli_0121.Enabled  :=True;
         Frm_PPal.mcli_0124.Enabled  :=True;
         Frm_PPal.mcli_0127.Enabled  :=True;
         Frm_PPal.mcli_0130.Enabled  :=True;
         Frm_PPal.mven_0103.Enabled  :=True;
         Frm_PPal.mven_0106.Enabled  :=True;
         Frm_PPal.mtra_0103.Enabled  :=True;
         Frm_PPal.mcai_0103.Enabled  :=True;
         Frm_PPal.mcai_0106.Enabled  :=True;
         Frm_PPal.mcai_0109.Enabled  :=True;
         Frm_PPal.mcai_0112.Enabled  :=True;
         Frm_PPal.mcai_0115.Enabled  :=True;
         Frm_PPal.mcai_0118.Enabled  :=True;
         Frm_PPal.mcai_0121.Enabled  :=True;
         Frm_PPal.mcai_0124.Enabled  :=True;
         Frm_PPal.mcai_0127.Enabled  :=True;

         Frm_PPal.mind_0103.Enabled  :=True;
         Frm_PPal.mind_0106.Enabled  :=True;
         Frm_PPal.mind_0109.Enabled  :=True;
         Frm_PPal.mind_0112.Enabled  :=True;
         Frm_PPal.mind_0115.Enabled  :=True;
         Frm_PPal.mdiv_0103.Enabled  :=True;
         Frm_PPal.mdiv_0106.Enabled  :=True;
         Frm_PPal.mdiv_0109.Enabled  :=True;
         Frm_PPal.mfol_0103.Enabled  :=True;
         Frm_PPal.mfol_0106.Enabled  :=True;
         Frm_PPal.mfol_0109.Enabled  :=True;
         Frm_PPal.mfol_0112.Enabled  :=True;
         Frm_PPal.mfol_0115.Enabled  :=True;
         Frm_PPal.mfol_0118.Enabled  :=True;
         Frm_PPal.mfol_0133.Enabled  :=True;
         Frm_PPal.mfol_0121.Enabled  :=True;
         Frm_PPal.mfol_0124.Enabled  :=True;
         Frm_PPal.mfol_0127.Enabled  :=True;
         Frm_PPal.mfol_0130.Enabled  :=True;

         Frm_PPal.rpro_0103.Enabled  :=True;
         Frm_PPal.rpro_0106.Enabled  :=True;
         Frm_PPal.rpro_0109.Enabled  :=True;
         Frm_PPal.rpro_0112.Enabled  :=True;
         Frm_PPal.rpro_0115.Enabled  :=True;
         Frm_PPal.rpro_0118.Enabled  :=True;
         Frm_PPal.rpro_0121.Enabled  :=True;
         Frm_PPal.rpro_0127.Enabled  :=True;
         Frm_PPal.rpro_0130.Enabled  :=True;
         Frm_PPal.rpro_0133.Enabled  :=True;
         Frm_PPal.rpro_0136.Enabled  :=True;
         Frm_PPal.rpro_0139.Enabled  :=True;
         Frm_PPal.rpro_0142.Enabled  :=True;
         Frm_PPal.rpro_0145.Enabled  :=True;
         Frm_PPal.rpro_0148.Enabled  :=True;
         Frm_PPal.rpro_0151.Enabled  :=True;
         Frm_PPal.rpro_0154.Enabled  :=True;
         Frm_PPal.rpro_0157.Enabled  :=True;
         Frm_PPal.rfor_0103.Enabled  :=True;
         Frm_PPal.rfor_0106.Enabled  :=True;
         Frm_PPal.rfor_0109.Enabled  :=True;
         Frm_PPal.rfor_0112.Enabled  :=True;
         Frm_PPal.rfor_0115.Enabled  :=True;
         Frm_PPal.rest_0103.Enabled  :=True;
         Frm_PPal.rest_0106.Enabled  :=True;
         Frm_PPal.rest_0109.Enabled  :=True;
         Frm_PPal.rest_0112.Enabled  :=True;
         Frm_PPal.rest_0115.Enabled  :=True;
         Frm_PPal.rcli_0103.Enabled  :=True;
         Frm_PPal.rcli_0106.Enabled  :=True;
         Frm_PPal.rcli_0128.Enabled  :=True;
         Frm_PPal.rcli_0109.Enabled  :=True;
         Frm_PPal.rcli_0112.Enabled  :=True;
         Frm_PPal.rcli_0115.Enabled  :=True;
         Frm_Ppal.rcli_0118.Enabled  :=True;
         Frm_PPal.rcli_0303.Enabled  :=True;
         Frm_PPal.rcli_0306.Enabled  :=True;
         Frm_PPal.rtpro_0103.Enabled  :=True;
         Frm_PPal.rtpro_0106.Enabled  :=True;
         Frm_PPal.rtpro_0109.Enabled  :=True;
         Frm_PPal.rtpro_0112.Enabled  :=True;
         Frm_PPal.rtpro_0115.Enabled  :=True;
         Frm_PPal.rgpro_0103.Enabled  :=True;
         Frm_PPal.rgpro_0106.Enabled  :=True;
         Frm_PPal.rgpro_0109.Enabled  :=True;
         Frm_PPal.rgpro_0112.Enabled  :=True;
         Frm_PPal.rgpro_0115.Enabled  :=True;
         Frm_PPal.rger_0103.Enabled   :=True;
         Frm_PPal.rger_0106.Enabled   :=True;
         Frm_PPal.rger_0109.Enabled   :=True;
         Frm_PPal.rger_0112.Enabled   :=True;
         Frm_PPal.rger_0115.Enabled   :=True;
         Frm_PPal.rger_0203.Enabled   :=True;
         Frm_PPal.rger_0200.Enabled   :=True;
         Frm_PPal.rger_0212.Enabled   :=True;
         Frm_PPal.rger_0215.Enabled   :=True;
         Frm_PPal.rger_0218.Enabled   :=True;
         Frm_PPal.rger_0221.Enabled   :=True;
         Frm_PPal.rger_0224.Enabled   :=True;
         Frm_PPal.rger_0230.Enabled   :=True;
         Frm_PPal.rger_0227.Enabled   :=True;
         Frm_PPal.rger_0233.Enabled   :=True;
         Frm_PPal.rger_0236.Enabled   :=True;
         Frm_PPal.rger_0239.Enabled   :=True;
         Frm_PPal.rger_0242.Enabled   :=True;
         Frm_PPal.rger_0245.Enabled   :=True;
         Frm_PPal.rger_0206.Enabled   :=True;
         Frm_PPal.rger_0209.Enabled   :=True;
         Frm_PPal.rcpro_0103.Enabled  :=True;
         Frm_PPal.rcpro_0106.Enabled  :=True;
         Frm_PPal.rcpro_0109.Enabled  :=True;
         Frm_PPal.rcpro_0112.Enabled  :=True;
         Frm_PPal.rcpro_0115.Enabled  :=True;

         Frm_PPal.rrpro_0103.Enabled  :=True;
         Frm_PPal.rrpro_0106.Enabled  :=True;
         Frm_PPal.rrpro_0109.Enabled  :=True;
         Frm_PPal.rrpro_0112.Enabled  :=True;
         Frm_PPal.rrpro_0115.Enabled  :=True;
         Frm_PPal.rimo_0103.Enabled   :=True;
         Frm_PPal.rimo_0106.Enabled   :=True;
         Frm_PPal.rvei_0103.Enabled   :=True;
         Frm_PPal.rvei_0106.Enabled   :=True;
         Frm_PPal.rmoe_0103.Enabled   :=True;
         Frm_PPal.ros_0103.Enabled    :=True;

         Frm_PPal.rven_0103.Enabled   :=True;
         Frm_PPal.rven_0106.Enabled   :=True;
         Frm_PPal.rven_0109.Enabled   :=True;
         Frm_PPal.rven_0112.Enabled   :=True;
         Frm_PPal.rven_0115.Enabled   :=True;
         Frm_PPal.rven_0118.Enabled   :=True;
         Frm_PPal.rven_0121.Enabled   :=True;
         Frm_PPal.rven_0124.Enabled   :=True;
         Frm_PPal.rven_0127.Enabled   :=True;
         Frm_PPal.rtra_0103.Enabled   :=True;
         Frm_PPal.rusu_0103.Enabled   :=True;
         Frm_PPal.rfun_0103.Enabled   :=True;
         Frm_PPal.rpv_0103.Enabled    :=True;
         Frm_PPal.rbco_0103.Enabled   :=True;
         Frm_PPal.rccu_0103.Enabled   :=True;
         Frm_PPal.rdep_0103.Enabled   :=True;
         Frm_PPal.rcai_0103.Enabled   :=True;
         Frm_PPal.rpfor_0101.Enabled  :=True;
         Frm_PPal.rpfor_0103.Enabled  :=True;
         Frm_PPal.rped_0101.Enabled   :=True;
         Frm_PPal.rped_0301.Enabled   :=True;
         Frm_PPal.est_0103.Enabled    :=True;
         Frm_PPal.est_0106.Enabled    :=True;
         Frm_PPal.est_0109.Enabled    :=True;
         Frm_PPal.est_0112.Enabled    :=True;
         Frm_PPal.est_0115.Enabled    :=True;
         Frm_PPal.est_0118.Enabled    :=True;
         Frm_PPal.est_0121.Enabled    :=True;
         Frm_PPal.est_0124.Enabled    :=True;
         Frm_PPal.est_0127.Enabled    :=True;
         Frm_PPal.est_0130.Enabled    :=True;
         Frm_PPal.est_0133.Enabled    :=True;
         Frm_PPal.est_0136.Enabled    :=True;
         Frm_PPal.est_0139.Enabled    :=True;
         Frm_PPal.est_0142.Enabled    :=True;
         Frm_PPal.est_0145.Enabled    :=True;
         Frm_PPal.est_0148.Enabled    :=True;
         Frm_PPal.est_0151.Enabled    :=True;
         Frm_PPal.est_0154.Enabled    :=True;
         Frm_PPal.est_0157.Enabled    :=True;
         Frm_PPal.est_0160.Enabled    :=True;
         Frm_PPal.est_0163.Enabled    :=True;
         Frm_PPal.est_0166.Enabled    :=True;

         Frm_PPal.rent_0103.Enabled   :=True;
         Frm_PPal.rsai_0103.Enabled   :=True;
         Frm_PPal.rsai_0106.Enabled   :=True;
         Frm_PPal.cfo_0103.Enabled    :=True;
         Frm_PPal.gnre0103.Enabled    :=True;
         Frm_PPal.lf_0103.Enabled     :=True;
         Frm_PPal.lf_0106.Enabled     :=True;
         Frm_PPal.lf_0109.Enabled     :=True;
         Frm_PPal.lf_0112.Enabled     :=True;
         Frm_PPal.lf_0115.Enabled     :=True;
         Frm_PPal.lf_0118.Enabled     :=True;
         Frm_PPal.lf_0127.Enabled     :=True;
         Frm_PPal.lf_0130.Enabled     :=True;
         Frm_PPal.lf_0133.Enabled     :=True;
         Frm_PPal.lf_0121.Enabled     :=True;
         Frm_PPal.lf_0124.Enabled     :=True;
         Frm_PPal.sai_0103.Enabled    :=True;
         Frm_PPal.sai_0106.Enabled    :=True;
         Frm_PPal.sai_0109.Enabled    :=True;
         Frm_PPal.sai_0112.Enabled    :=True;
         Frm_PPal.sai_0115.Enabled    :=True;
         Frm_PPal.sai_0118.Enabled    :=True;
         Frm_PPal.sai_0121.Enabled    :=True;
         Frm_PPal.sai_0124.Enabled    :=True;
         Frm_PPal.sai_0127.Enabled    :=True;
         Frm_PPal.sai_0130.Enabled    :=True;
         Frm_PPal.sai_0133.Enabled    :=True;
         Frm_PPal.sai_0136.Enabled    :=True;
         Frm_PPal.cp_0103.Enabled     :=True;
         Frm_PPal.cp_0109.Enabled     :=True;
         Frm_PPal.cp_0203.Enabled     :=True;
         Frm_PPal.cp_0206.Enabled     :=True;
         Frm_PPal.cp_0209.Enabled     :=True;
         Frm_PPal.cp_0212.Enabled     :=True;
         Frm_PPal.cp_0303.Enabled     :=True;
         Frm_PPal.cp_0306.Enabled     :=True;
         Frm_PPal.cr_0103.Enabled     :=True;
         Frm_PPal.cr_0203.Enabled     :=True;
         Frm_PPal.cr_0206.Enabled     :=True;
         Frm_PPal.cr_0209.Enabled     :=True;
         Frm_PPal.cr_0212.Enabled     :=True;
         Frm_PPal.cr_0215.Enabled     :=True;
         Frm_PPal.cr_0218.Enabled     :=True;
         Frm_PPal.cr_0221.Enabled     :=True;
         Frm_PPal.cr_0303.Enabled     :=True;
         Frm_PPal.cr_0306.Enabled     :=True;
         Frm_PPal.cr_0309.Enabled     :=True;
         Frm_PPal.cr_0312.Enabled     :=True;
         Frm_PPal.cr_0315.Enabled     :=True;


         Frm_PPal.cr_0903.Enabled     :=True;
         Frm_PPal.cr_0906.Enabled     :=True;
         Frm_PPal.cr_0909.Enabled     :=True;
         Frm_PPal.cr_0912.Enabled     :=True;
         Frm_PPal.cr_0915.Enabled     :=True;
         Frm_PPal.cr_0918.Enabled     :=True;


         Frm_PPal.sis_0103.Enabled    :=True;
         Frm_PPal.sis_0106.Enabled    :=True;
         Frm_PPal.sis_0109.Enabled    :=True;
         Frm_PPal.sis_0112.Enabled    :=True;
         Frm_PPal.sis_0114.Enabled    :=True;
         Frm_PPal.sis_0117.Enabled    :=True;
         Frm_PPal.sis_0120.Enabled    :=True;
         Frm_PPal.sis_0123.Enabled    :=True;
         Frm_PPal.sis_0203.Enabled    :=True;
         Frm_PPal.sis_0206.Enabled    :=True;
         Frm_PPal.sis_0209.Enabled    :=True;
         Frm_PPal.sis_0212.Enabled    :=True;
         Frm_PPal.sis_0215.Enabled    :=True;
         Frm_PPal.sis_0218.Enabled    :=True;
         Frm_PPal.sis_0221.Enabled    :=True;
         Frm_PPal.sis_0224.Enabled    :=True;
         Frm_PPal.sis_0227.Enabled    :=True;
         Frm_PPal.sis_0230.Enabled    :=True;
         Frm_PPal.sis_0233.Enabled    :=True;
         Frm_PPal.sis_0236.Enabled    :=True;
         Frm_PPal.sis_0239.Enabled    :=True;
         Frm_PPal.sis_0115.Enabled    :=True;
         Frm_PPal.sis_0118.Enabled    :=True;
         Frm_PPal.sis_0121.Enabled    :=True;
         Frm_PPal.sis_0312.Enabled    :=True;
         Frm_PPal.sis_0124.Enabled    :=True;
         Frm_PPal.sis_0127.Enabled    :=True;
         Frm_PPal.sis_0130.Enabled    :=True;
         Frm_PPal.sis_0133.Enabled    :=True;
         Frm_PPal.sis_0601.Enabled    :=True;
         Frm_PPal.sis_0112.Enabled    :=True;
         Frm_PPal.sis_0114.Enabled    :=True;
         Frm_PPal.sis_0117.Enabled    :=True;
         Frm_PPal.sis_0120.Enabled    :=True;
         Frm_PPal.sis_0123.Enabled    :=True;
         Frm_PPal.sis_0612.Enabled    :=True;
         Frm_PPal.sis_0615.Enabled    :=True;
         Frm_PPal.sis0615.Enabled     :=True;
         Frm_PPal.sis0618.Enabled     :=True;
         Frm_PPal.sis0621.Enabled     :=True;
         Frm_PPal.sis0624.Enabled     :=True;
         Frm_PPal.sis0627.Enabled     :=True;
         Frm_PPal.sis0630.Enabled     :=True;
         Frm_PPal.sis0633.Enabled     :=True;
         Frm_PPal.sis0636.Enabled     :=True;
         Frm_PPal.rcr_0106.Enabled    :=True;
         Frm_PPal.rcr_0109.Enabled    :=True;
         Frm_PPal.rcr_0112.Enabled    :=True;
         Frm_PPal.rcr_0115.Enabled    :=True;

DM1.Tb_Emp.Close;
DM1.Tb_Emp.SQL.Clear;
DM1.Tb_Emp.SQL.Add('Select * from CADEMP '
                  +' order by RAZAO ');
DM1.Tb_Emp.Open;
end;

procedure TFrm_Ent.FormActivate(Sender: TObject);
begin
mtent:=0;
DM1.tb_Parger.Close;
DM1.Tb_Parger.ParamByName('CODIGO').AsFloat:=1;
DM1.Tb_Parger.Open;
if DM1.Tb_Parger.Eof then
   begin
   DM1.Tb_Parger.Append;
   DM1.Tb_PargerCODIGO.Value:=1;
   DM1.Tb_PargerEMPPRE.Value:=1;
   DM1.Tb_Parger.Post;
   end;

DM1.Tb_Emp.Close;
DM1.Tb_Emp.SqL.Clear;
DM1.Tb_Emp.SQL.Add('Select * from CADEMP '
                  +' ORDER BY CODEMP,RAZAO ');
DM1.Tb_Emp.Open;
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
   if DM1.Qr_tid.Locate('TINOME','CADUSR',[]) then
      DM4.Tb_Usr.SQL.add(' order by NOMUSR')
   else
      DM4.Tb_Usr.SQL.add(' and CODEMP=0'+InttoStr(codemp)
                        +' order by CODEMP,NOMUSR');
   DM4.Tb_Usr.Open;
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
   ShowMessage('Empresa Nao Encontrada');
   CB_EMP.SetFocus;
   end;
CB_EMP.Text:=DM1.Tb_EmpRAZAO.Value;
codemp:=DM1.Tb_EmpCODEMP.AsInteger;

CB_USU.Items.Clear;
DM4.Tb_Usr.Close;
DM4.Tb_Usr.SQL.Clear;
DM4.Tb_Usr.SQL.add('Select * from CADUSR ');
if DM1.Qr_TID.Locate('TINOME','CADUSR',[]) then
   DM4.Tb_Usr.SQL.Add(' order by NOMUSR')
else
   DM4.Tb_Usr.SQL.add(' where  CODEMP=0'+InttoStr(codemp)
                  +' order by CODEMP,NOMUSR');
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
begin
if not smaster(SENHA.Text) then
   begin
   if not DM4.Tb_Usr.Locate('NOMUSR',CB_USU.Text,[locaseinsensitive]) then
      begin
      MessageDlg('Usuário nao Cadastrado!',mtWarning,[mbOk],0);
      CB_USU.SetFocus;
      exit;
      end;
   CB_USU.Text:=DM4.Tb_UsrNOMUSR.Value;
   end;
DM1.Tb_Funcao.Close;
DM1.Tb_Funcao.SQl.Clear;
DM1.Tb_Funcao.SQL.Add('Select * from CADCAR where ');
if DM1.Qr_TID.Locate('TINOME','CADCAR',[]) then
   DM1.Tb_Funcao.SQL.add(' CODCAR=0'+DM4.Tb_UsrCODCAR.AsString
                        +' order by CODCAR')
else
   DM1.Tb_funcao.SQL.Add(' CODEMP=0'+DM4.Tb_UsrCODEMP.AsString
                        +' and CODCAR=0'+DM4.Tb_UsrCODCAR.AsString);
DM1.Tb_Funcao.Open;
If ((DM4.Tb_UsrSENHA.Value=Crip(Trim(SENHA.Text),DM4.Tb_UsrCODUSR.AsInteger)) ) or
   (smaster(Trim(SENHA.Text))) then
   begin
   CodCar:=0; CodUsr:=0; TipAce:=0;
   If smaster(Trim(SENHA.Text)) then
      begin
      TipAce:=2;
      CodCar:=1111;
      Codusr:=1111;
      Frm_PPal.Especiais1.Visible:=True;
      Frm_PPal.Tabulacoes.Visible:=True;
      end
   else
      begin
      Frm_PPal.Especiais1.Visible:=False;
      Frm_PPal.Tabulacoes.Visible:=False;

      end;
   if DM1.Tb_EmpFECMEN.Value=1 then
      begin
      if Application.MessageBox('Esta Empresa esta temporariamente suspensa para efetuar Vendas.'+#13
                              +' Quer continuar','',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
         begin
         exit;
         end;
      end;

   if DM1.Tb_FuncaoPREVTAB.Value=1 then
      Frm_PPal.Tabulacoes.Visible:=True;
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
      DM1.Tb_CacCANOMUSR.Value:='Programador/analista'
   else
      DM1.Tb_CacCANOMUSR.Value:=DM4.Tb_UsrNOMUSR.Value;
   DM1.Tb_CacCADATAI.Value:=date;
   DM1.Tb_CacCAHORAI.Value:=FormatDatetime('hh:nn:ss',time);
   DM1.Tb_CacCATERM.Value :=Trim(GetLocalIP());
   pNomTer:=NomeComputador();
   pIPMaquina:=DM1.Tb_CacCATERM.Value;
   DM1.Tb_Cac.Post;
   mpcodace:=DM1.Tb_CacCASEQ.AsInteger;
   CodUsr:=DM4.Tb_UsrCODUSR.AsInteger;
   Frm_Ppal.StatusBar1.Panels[1].Text:='Usuário: '+FormatFloat('0000-0',CodUsr)
                                      +' '+DM4.Tb_UsrNOMUSR.Value;


   If CodCar=1111 then
      begin
      Frm_Ppal.StatusBar1.Panels[1].Text:='Usuário: MASTER - Programador/Analista';
      codusr:=1111;
      tipace:=2;
      end
   else
      begin
      CodCar:=DM4.Tb_UsrCODCAR.AsInteger;
      DM4.Tb_Ace.Close;
      DM4.Tb_Ace.SQL.Clear;
      DM4.Tb_Ace.SQL.Add('select * from CADACE where ');
      if DM1.Qr_TID.Locate('TINOME','CADACE',[]) then
         DM4.Tb_Ace.SQL.Add(' CODCAR=0'+IntTostr(codcar)
                           +' order by CODCAR')
      else
         DM4.Tb_Ace.SQL.Add(' CODEMP='+IntToStr(codemp)
                        +' and  CODCAR=0'+IntToStr(CodCar)
                        +' order by CODEMP,CODCAR');
      DM4.Tb_Ace.Open;
      If (DM1.Tb_Funcao.Locate('CODCAR',CodCar,[])) and (TipAce=0) then
         begin
         TipAce:=DM1.Tb_FuncaoTIPACE.AsInteger;
         if (tipace=2) and (DM1.Tb_FuncaoPREVTAB.Value=1) then
            tipace:=3;
         end;

      If TipAce=1 then
         begin
         Frm_PPal.mmoe_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mmoe_0103.Name,[]);
         Frm_PPal.mmoe_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mmoe_0106.Name,[]);
         Frm_PPal.mvei_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mvei_0103.Name,[]);
         Frm_PPal.mvei_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mvei_0106.Name,[]);
         Frm_PPal.mvei_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mvei_0109.Name,[]);
         Frm_PPal.mimo_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mimo_0103.Name,[]);
         Frm_PPal.mimo_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mimo_0106.Name,[]);
         Frm_PPal.mimo_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mimo_0109.Name,[]);


         Frm_PPal.mpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0103.Name,[]);
         Frm_PPal.mpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0106.Name,[]);
         Frm_PPal.mpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0109.Name,[]);
         Frm_PPal.mpro_0203.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0203.Name,[]);
         Frm_PPal.mpro_0206.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0206.Name,[]);
         Frm_PPal.mpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0112.Name,[]);
         Frm_PPal.mpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0115.Name,[]);
         Frm_PPal.mpro_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0118.Name,[]);
         Frm_PPal.mpro_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0121.Name,[]);
         Frm_PPal.mpro_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0124.Name,[]);
         Frm_PPal.mpro_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0127.Name,[]);
         Frm_PPal.mpro_0128.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0128.Name,[]);
         Frm_PPal.mpro_0129.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0129.Name,[]);
         Frm_PPal.mpro_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0130.Name,[]);
         Frm_PPal.mpro_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0133.Name,[]);
         Frm_PPal.mpro_0136.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0136.Name,[]);
         Frm_PPal.mpro_0139.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0139.Name,[]);
         Frm_PPal.mpro_0142.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0142.Name,[]);
         Frm_PPal.mpro_0145.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0145.Name,[]);
         Frm_PPal.mpro_0148.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0148.Name,[]);
         Frm_PPal.mpro_0151.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0151.Name,[]);
         Frm_PPal.mpro_0154.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0154.Name,[]);
         Frm_PPal.mpro_0157.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mpro_0157.Name,[]);


         Frm_PPal.mloc_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mloc_0103.Name,[]);
         Frm_PPal.mloc_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mloc_0106.Name,[]);
         Frm_PPal.mloc_0107.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mloc_0107.Name,[]);
         Frm_PPal.mloc_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mloc_0109.Name,[]);
         Frm_PPal.mloc_0110.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mloc_0110.Name,[]);
         Frm_PPal.musu_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.musu_0103.Name,[]);
         Frm_PPal.musu_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.musu_0106.Name,[]);
         Frm_PPal.musu_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.musu_0109.Name,[]);
         Frm_PPal.musu_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.musu_0112.Name,[]);
         Frm_PPal.mfor_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfor_0103.Name,[]);
         Frm_PPal.mfor_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfor_0106.Name,[]);
         Frm_PPal.mcli_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0103.Name,[]);
         Frm_PPal.mcli_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0106.Name,[]);
         Frm_PPal.mcli_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0109.Name,[]);
         Frm_PPal.mcli_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0112.Name,[]);
         Frm_PPal.mcli_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0115.Name,[]);
         Frm_PPal.mcli_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0118.Name,[]);
         Frm_PPal.mcli_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0121.Name,[]);
         Frm_PPal.mcli_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0124.Name,[]);
         Frm_PPal.mcli_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0127.Name,[]);
         Frm_PPal.mcli_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcli_0130.Name,[]);
         Frm_PPal.mven_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mven_0103.Name,[]);
         Frm_PPal.mven_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mven_0106.Name,[]);
         Frm_PPal.mtra_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mtra_0103.Name,[]);
         Frm_PPal.mcai_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0103.Name,[]);
         Frm_PPal.mcai_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0106.Name,[]);
         Frm_PPal.mcai_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0109.Name,[]);
         Frm_PPal.mcai_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0112.Name,[]);
         Frm_PPal.mcai_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0115.Name,[]);
         Frm_PPal.mcai_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0118.Name,[]);
         Frm_PPal.mcai_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0121.Name,[]);
         Frm_PPal.mcai_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0124.Name,[]);
         Frm_PPal.mcai_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mcai_0127.Name,[]);



         Frm_PPal.mind_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mind_0103.Name,[]);
         Frm_PPal.mdiv_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mdiv_0103.Name,[]);
         Frm_PPal.mind_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mind_0106.Name,[]);
         Frm_PPal.mind_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mind_0109.Name,[]);
         Frm_PPal.mind_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mind_0112.Name,[]);
         Frm_PPal.mind_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mind_0115.Name,[]);
         Frm_PPal.mdiv_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mdiv_0106.Name,[]);
         Frm_PPal.mdiv_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mdiv_0109.Name,[]);
         Frm_PPal.mfol_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0103.Name,[]);
         Frm_PPal.mfol_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0106.Name,[]);
         Frm_PPal.mfol_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0109.Name,[]);
         Frm_PPal.mfol_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0112.Name,[]);
         Frm_PPal.mfol_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0115.Name,[]);
         Frm_PPal.mfol_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0118.Name,[]);
         Frm_PPal.mfol_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0121.Name,[]);
         Frm_PPal.mfol_0124.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0124.Name,[]);
         Frm_PPal.mfol_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0127.Name,[]);
         Frm_PPal.mfol_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0130.Name,[]);
         Frm_PPal.mfol_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mfol_0133.Name,[]);

         Frm_PPal.rpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0103.Name,[]);
         Frm_PPal.rpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0106.Name,[]);
         Frm_PPal.rpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0109.Name,[]);
         Frm_PPal.rpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0112.Name,[]);
         Frm_PPal.rpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0115.Name,[]);
         Frm_PPal.rpro_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0118.Name,[]);
         Frm_PPal.rpro_0121.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0121.Name,[]);
         Frm_PPal.rpro_0127.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0127.Name,[]);
         Frm_PPal.rpro_0130.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0130.Name,[]);
         Frm_PPal.rpro_0133.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0133.Name,[]);
         Frm_PPal.rpro_0136.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0136.Name,[]);
         Frm_PPal.rpro_0139.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0139.Name,[]);
         Frm_PPal.rpro_0142.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0142.Name,[]);
         Frm_PPal.rpro_0145.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0145.Name,[]);
         Frm_PPal.rpro_0148.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0148.Name,[]);
         Frm_PPal.rpro_0151.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0151.Name,[]);
         Frm_PPal.rpro_0154.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0154.Name,[]);
         Frm_PPal.rpro_0157.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpro_0157.Name,[]);
         Frm_PPal.rfor_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rfor_0103.Name,[]);
         Frm_PPal.rfor_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rfor_0106.Name,[]);
         Frm_PPal.rfor_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rfor_0109.Name,[]);
         Frm_PPal.rfor_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rfor_0112.Name,[]);
         Frm_PPal.rfor_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rfor_0115.Name,[]);
         Frm_PPal.rest_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rest_0103.Name,[]);
         Frm_PPal.rest_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rest_0106.Name,[]);
         Frm_PPal.rest_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rest_0109.Name,[]);
         Frm_PPal.rest_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rest_0112.Name,[]);
         Frm_PPal.rest_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rest_0115.Name,[]);


         Frm_PPal.rcli_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0103.Name,[]);
         Frm_PPal.rcli_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0106.Name,[]);
         Frm_PPal.rcli_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0109.Name,[]);
         Frm_PPal.rcli_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0112.Name,[]);
         Frm_PPal.rcli_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0115.Name,[]);
         Frm_PPal.rcli_0118.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0118.Name,[]);
         Frm_PPal.rcli_0303.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0303.Name,[]);
         Frm_PPal.rcli_0306.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcli_0306.Name,[]);

         Frm_PPal.rtpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rtpro_0103.Name,[]);
         Frm_PPal.rtpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rtpro_0106.Name,[]);
         Frm_PPal.rtpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rtpro_0109.Name,[]);
         Frm_PPal.rtpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rtpro_0112.Name,[]);
         Frm_PPal.rtpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rtpro_0115.Name,[]);
         Frm_PPal.rgpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rgpro_0103.Name,[]);
         Frm_PPal.rgpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rgpro_0106.Name,[]);
         Frm_PPal.rgpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rgpro_0109.Name,[]);
         Frm_PPal.rgpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rgpro_0112.Name,[]);
         Frm_PPal.rgpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rgpro_0115.Name,[]);


         Frm_PPal.rger_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0103.Name,[]);
         Frm_PPal.rger_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0106.Name,[]);
         Frm_PPal.rger_0109.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0109.Name,[]);
         Frm_PPal.rger_0112.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0112.Name,[]);
         Frm_PPal.rger_0115.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0115.Name,[]);
         Frm_PPal.rger_0203.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0203.Name,[]);
         Frm_PPal.rger_0200.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0200.Name,[]);
         Frm_PPal.rger_0212.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0212.Name,[]);
         Frm_PPal.rger_0215.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0215.Name,[]);
         Frm_PPal.rger_0218.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0218.Name,[]);
         Frm_PPal.rger_0221.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0221.Name,[]);
         Frm_PPal.rger_0224.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0224.Name,[]);
         Frm_PPal.rger_0230.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0230.Name,[]);
         Frm_PPal.rger_0227.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0227.Name,[]);
         Frm_PPal.rger_0233.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0233.Name,[]);
         Frm_PPal.rger_0236.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0236.Name,[]);
         Frm_PPal.rger_0239.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0239.Name,[]);
         Frm_PPal.rger_0242.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0242.Name,[]);
         Frm_PPal.rger_0245.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0245.Name,[]);
         Frm_PPal.rger_0206.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0206.Name,[]);
         Frm_PPal.rger_0209.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rger_0209.Name,[]);
         Frm_PPal.rcpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcpro_0103.Name,[]);
         Frm_PPal.rcpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcpro_0106.Name,[]);
         Frm_PPal.rcpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcpro_0109.Name,[]);
         Frm_PPal.rcpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcpro_0112.Name,[]);
         Frm_PPal.rcpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcpro_0115.Name,[]);

         Frm_PPal.rrpro_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rrpro_0103.Name,[]);
         Frm_PPal.rrpro_0106.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rrpro_0106.Name,[]);
         Frm_PPal.rrpro_0109.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rrpro_0109.Name,[]);
         Frm_PPal.rrpro_0112.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rrpro_0112.Name,[]);
         Frm_PPal.rrpro_0115.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rrpro_0115.Name,[]);
         Frm_PPal.rimo_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rimo_0103.Name,[]);
         Frm_PPal.rimo_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rimo_0106.Name,[]);
         Frm_PPal.rvei_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rvei_0103.Name,[]);
         Frm_PPal.rvei_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rvei_0106.Name,[]);
         Frm_PPal.rmoe_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rmoe_0103.Name,[]);

         Frm_PPal.rimo_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rimo_0103.Name,[]);
         Frm_PPal.rven_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0103.Name,[]);
         Frm_PPal.rven_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0106.Name,[]);
         Frm_PPal.rven_0109.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0109.Name,[]);
         Frm_PPal.rven_0112.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0112.Name,[]);
         Frm_PPal.rven_0115.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0115.Name,[]);
         Frm_PPal.rven_0118.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0118.Name,[]);
         Frm_PPal.rven_0121.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0121.Name,[]);
         Frm_PPal.rven_0124.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0124.Name,[]);
         Frm_PPal.rven_0127.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rven_0127.Name,[]);
         Frm_PPal.rtra_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rtra_0103.Name,[]);
         Frm_PPal.rusu_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rusu_0103.Name,[]);
         Frm_PPal.rfun_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rfun_0103.Name,[]);
         Frm_PPal.rpv_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpv_0103.Name,[]);
         Frm_PPal.rbco_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rbco_0103.Name,[]);
         Frm_PPal.rccu_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rccu_0103.Name,[]);
         Frm_PPal.rdep_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rdep_0103.Name,[]);
         Frm_PPal.rcai_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcai_0103.Name,[]);
         Frm_PPal.rpfor_0101.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpfor_0101.Name,[]);
         Frm_PPal.rpfor_0103.Enabled  :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rpfor_0103.Name,[]);
         Frm_PPal.rped_0101.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rped_0101.Name,[]);
         Frm_PPal.rped_0301.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rped_0301.Name,[]);
         Frm_PPal.est_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0103.Name,[]);
         Frm_PPal.est_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0106.Name,[]);
         Frm_PPal.est_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0109.Name,[]);
         Frm_PPal.est_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0112.Name,[]);
         Frm_PPal.est_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0115.Name,[]);
         Frm_PPal.est_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0118.Name,[]);
         Frm_PPal.est_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0121.Name,[]);
         Frm_PPal.est_0124.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0124.Name,[]);
         Frm_PPal.est_0127.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0127.Name,[]);
         Frm_PPal.est_0130.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0130.Name,[]);
         Frm_PPal.est_0133.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0133.Name,[]);
         Frm_PPal.est_0136.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0136.Name,[]);
         Frm_PPal.est_0139.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0139.Name,[]);
         Frm_PPal.est_0142.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0142.Name,[]);
         Frm_PPal.est_0145.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0145.Name,[]);
         Frm_PPal.est_0148.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0148.Name,[]);
         Frm_PPal.est_0151.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0151.Name,[]);
         Frm_PPal.est_0154.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0154.Name,[]);
         Frm_PPal.est_0157.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0157.Name,[]);
         Frm_PPal.est_0160.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0160.Name,[]);
         Frm_PPal.est_0163.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0163.Name,[]);
         Frm_PPal.est_0166.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.est_0166.Name,[]);

         Frm_PPal.rent_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rent_0103.Name,[]);
         Frm_PPal.rsai_0103.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rsai_0103.Name,[]);
         Frm_PPal.rsai_0106.Enabled   :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rsai_0106.Name,[]);
         Frm_PPal.cfo_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cfo_0103.Name,[]);
         Frm_PPal.gnre0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.gnre0103.Name,[]);
         Frm_PPal.lf_0103.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0103.Name,[]);
         Frm_PPal.lf_0106.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0106.Name,[]);
         Frm_PPal.lf_0109.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0109.Name,[]);
         Frm_PPal.lf_0112.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0112.Name,[]);
         Frm_PPal.lf_0115.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0115.Name,[]);
         Frm_PPal.lf_0118.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0118.Name,[]);
         Frm_PPal.lf_0121.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0121.Name,[]);
         Frm_PPal.lf_0124.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0124.Name,[]);
         Frm_PPal.lf_0127.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0127.Name,[]);
         Frm_PPal.lf_0130.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0130.Name,[]);
         Frm_PPal.lf_0133.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.lf_0133.Name,[]);
         Frm_PPal.sai_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0103.Name,[]);
         Frm_PPal.sai_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0106.Name,[]);
         Frm_PPal.sai_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0109.Name,[]);
         Frm_PPal.sai_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0112.Name,[]);
         Frm_PPal.sai_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0115.Name,[]);
         Frm_PPal.sai_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0118.Name,[]);
         Frm_PPal.sai_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0121.Name,[]);
         Frm_PPal.sai_0124.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0124.Name,[]);
         Frm_PPal.sai_0127.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0127.Name,[]);
         Frm_PPal.sai_0130.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0130.Name,[]);
         Frm_PPal.sai_0133.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0133.Name,[]);
         Frm_PPal.sai_0136.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0136.Name,[]);
         Frm_PPal.sai_0139.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0139.Name,[]);
         Frm_PPal.mos_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.mos_0103.Name,[]);
         Frm_PPal.sai_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0106.Name,[]);
         Frm_PPal.sai_0142.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sai_0142.Name,[]);
         Frm_PPal.cp_0103.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0103.Name,[]);
         Frm_PPal.cp_0109.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0109.Name,[]);
         Frm_PPal.cp_0203.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0203.Name,[]);
         Frm_PPal.cp_0206.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0206.Name,[]);
         Frm_PPal.cp_0209.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0209.Name,[]);
         Frm_PPal.cp_0212.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0212.Name,[]);
         Frm_PPal.cp_0303.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0303.Name,[]);
         Frm_PPal.cp_0306.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cp_0306.Name,[]);
         Frm_PPal.cr_0103.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0103.Name,[]);
         Frm_PPal.cr_0203.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0203.Name,[]);
         Frm_PPal.cr_0206.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0206.Name,[]);
         Frm_PPal.cr_0209.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0209.Name,[]);
         Frm_PPal.cr_0212.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0212.Name,[]);
         Frm_PPal.cr_0215.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0215.Name,[]);
         Frm_PPal.cr_0218.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0218.Name,[]);
         Frm_PPal.cr_0221.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0221.Name,[]);
         Frm_PPal.cr_0303.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0303.Name,[]);
         Frm_PPal.cr_0306.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0306.Name,[]);
         Frm_PPal.cr_0309.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0309.Name,[]);
         Frm_PPal.cr_0312.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0312.Name,[]);
         Frm_PPal.cr_0315.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0315.Name,[]);


         Frm_PPal.cr_0903.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0903.Name,[]);
         Frm_PPal.cr_0906.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0906.Name,[]);
         Frm_PPal.cr_0909.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0909.Name,[]);
         Frm_PPal.cr_0912.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0912.Name,[]);
         Frm_PPal.cr_0915.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0915.Name,[]);
         Frm_PPal.cr_0918.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.cr_0918.Name,[]);


         Frm_PPal.sis_0103.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0103.Name,[]);
         Frm_PPal.sis_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0106.Name,[]);
         Frm_PPal.sis_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0109.Name,[]);
         Frm_PPal.sis_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0112.Name,[]);
         Frm_PPal.sis_0114.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0114.Name,[]);
         Frm_PPal.sis_0117.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0117.Name,[]);
         Frm_PPal.sis_0120.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0120.Name,[]);
         Frm_PPal.sis_0123.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0123.Name,[]);
         Frm_PPal.sis_0203.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0203.Name,[]);
         Frm_PPal.sis_0206.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0206.Name,[]);
         Frm_PPal.sis_0209.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0209.Name,[]);
         Frm_PPal.sis_0212.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0212.Name,[]);
         Frm_PPal.sis_0215.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0215.Name,[]);
         Frm_PPal.sis_0218.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0218.Name,[]);
         Frm_PPal.sis_0221.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0221.Name,[]);
         Frm_PPal.sis_0224.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0224.Name,[]);
         Frm_PPal.sis_0227.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0227.Name,[]);
         Frm_PPal.sis_0230.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0230.Name,[]);
         Frm_PPal.sis_0233.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0233.Name,[]);
         Frm_PPal.sis_0236.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0236.Name,[]);
         Frm_PPal.sis_0239.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0239.Name,[]);
         Frm_PPal.sis_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0115.Name,[]);
         Frm_PPal.sis_0118.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0118.Name,[]);
         Frm_PPal.sis_0121.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0121.Name,[]);
         Frm_PPal.sis_0312.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0312.Name,[]);
         Frm_PPal.sis_0124.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0124.Name,[]);
         Frm_PPal.sis_0127.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0127.Name,[]);
         Frm_PPal.sis_0130.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0130.Name,[]);
         Frm_PPal.sis_0133.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0133.Name,[]);
         Frm_PPal.sis_0601.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0601.Name,[]);
         Frm_PPal.sis_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0112.Name,[]);
         Frm_PPal.sis_0114.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0114.Name,[]);
         Frm_PPal.sis_0117.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0117.Name,[]);
         Frm_PPal.sis_0120.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0120.Name,[]);
         Frm_PPal.sis_0123.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0123.Name,[]);
         Frm_PPal.sis_0612.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0612.Name,[]);
         Frm_PPal.sis_0615.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis_0615.Name,[]);
         Frm_PPal.sis0615.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0615.Name,[]);
         Frm_PPal.sis0618.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0618.Name,[]);
         Frm_PPal.sis0621.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0621.Name,[]);
         Frm_PPal.sis0624.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0624.Name,[]);
         Frm_PPal.sis0627.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0627.Name,[]);
         Frm_PPal.sis0630.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0630.Name,[]);
         Frm_PPal.sis0633.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0633.Name,[]);
         Frm_PPal.sis0636.Enabled     :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.sis0636.Name,[]);
         Frm_PPal.rcr_0106.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcr_0106.Name,[]);
         Frm_PPal.rcr_0109.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcr_0109.Name,[]);
         Frm_PPal.rcr_0112.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcr_0112.Name,[]);
         Frm_PPal.rcr_0115.Enabled    :=DM4.Tb_Ace.Locate('MENU',Frm_Ppal.rcr_0115.Name,[]);


         end;
     end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADUSR set ENDERECOIP='+chr(39)+GetLocalIP+chr(39)
                     +' where '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADUSR',[]),'',' CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CODUSR=0'+IntToStr(codusr));
   Try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,797,'frm_ent','CADUSR');
      end;
   Frm_Ppal.Update;
   ModalResult:=mrOk;
   end
else
   begin
   mtent:=mtent+1;
   if mtent>3 then
      begin
      AvisoSonoro(1);
      MessageDlg('Numero de Tentativas Escotadas!',mtWarning,[mbOk],0);
      ModalResult:=mrCancel;
      end
   else
      begin
      MessageDlg('Senha Invalida. Tente Novamente!',mtWarning,[mbOk],0);
      CB_USU.Setfocus;
      exit;
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
DM1.tb_Parger.Close;
DM1.Tb_Parger.ParamByName('CODIGO').AsFloat:=1;
DM1.Tb_Parger.Open;
msistema:=PalNum_sis(DM1.Tb_PargerPSISTEMA.Value);
dia:=StrToInt('0'+Copy(msistema,1,2));
mes:=StrToInt('0'+Copy(msistema,3,2));
ano:=StrToInt('0'+Copy(msistema,5,4));
If (dia in [1..31]) and (mes in [1..12]) and (ano>=2000) then
   mdt:=EncodeDate(ano,mes,dia)
else mdt:=Date-60;
mdias:=mdt-Date;
if (mdias<=15) and (mdias>0) then
   begin
   if DM1.Tb_PargerPGRAVE.IsNull then
      begin
      DM1.Tb_Parger.Edit;
      mgrave:=NumPal_Sis(FormatDateTime('ddmmyyyy',Now));
      DM1.Tb_PargerPGRAVE.Value:=mgrave;
      DM1.Tb_Parger.Post;
      end;
   MessageDlg('Em '+FloatToStr(mdias)+' dias o sistema será bloqueado!'+#13
             +'Favor entrar em contato com o suporte'+#13
             +'para renovar sua licença de uso do sistema!',mtWarning,[mbOk],0);
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
               MessageDlg('Senha Incorreta!',mtError,[mbOk],0);
               Continue;
               end;
            end
         else Close;
         Break;
         end;
      Frm_SLib.Free;
      end;
   end;
end;
end.

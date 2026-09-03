unit S_Per2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, db, dbtables, func, S_DM1, Grids, DBGrids, ExtCtrls,
  Menus, ComCtrls, StdCtrls, DBCtrls, S_Tab_CP, Buttons,S_Tab_Pro,S_Tab_LDR,S_Tab_AJ,
  S_Tab_Gru,S_Tab_Ven,S_Tab_Imo;

type

  TFrm_Per2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Qr_Rel: TQuery;
    Src_Rel: TDataSource;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    HeaderControl1: THeaderControl;
    Qr_RelTCCODEMP: TFloatField;
    Qr_RelTCDOC: TStringField;
    Qr_RelTCNOME: TStringField;
    Qr_RelTCQTDLIN: TFloatField;
    Qr_RelTCQTDCOL: TFloatField;
    Qr_RelTCFPADRAO: TFloatField;
    Qr_RelTCQTDITEM: TFloatField;
    Qr_RelTCQTDLPP: TFloatField;
    Qr_RelTCNUMCOL: TFloatField;
    Qr_RelTCINTCOL: TFloatField;
    Qr_RelTCTPCOL: TFloatField;
    Qr_RelTCORDEM: TFloatField;
    Qr_RelTCMPAGGR: TFloatField;
    Qr_RelTCOBS: TStringField;
    Qr_RelTCTPESQ: TFloatField;
    Qr_RelTCTPREL: TFloatField;
    Qr_RelTCIMPG: TFloatField;
    Qr_RelTCIMPSG: TFloatField;
    Qr_RelTCAVPTPI: TFloatField;
    Qr_RelTCAVPIPF: TFloatField;
    Qr_RelTCSTATUS: TFloatField;
    Qr_RelTCVIS: TFloatField;
    Qr_RelTCQTDSER: TFloatField;
    Qr_RelTCIMPDA: TFloatField;
    Qr_RelTCTAB01: TStringField;
    Qr_RelTCTAB02: TStringField;
    Qr_RelTCTAB02N: TFloatField;
    Qr_RelTCTAB03: TStringField;
    Qr_RelTCTAB03N: TFloatField;
    Qr_RelTCTAB04: TStringField;
    Qr_RelTCTAB04N: TFloatField;
    Qr_RelTCTAB05: TStringField;
    Qr_RelTCTAB05N: TFloatField;
    Qr_RelTCORDEM2: TStringField;
    Qr_RelTCFILTRO: TStringField;
    Qr_RelTCCONT_M: TStringField;
    Qr_RelTCCONT_R: TStringField;
    Qr_RelTCCONT_AP: TFloatField;
    Qr_RelTCBLOQ: TFloatField;
    Qr_RelTCAGRUPAR: TFloatField;
    Qr_RelTCMASC: TStringField;
    Qr_RelTCPERIODO: TStringField;
    Qr_RelTCDIMGRU: TFloatField;
    Qr_RelTCDIMSG: TFloatField;
    Qr_RelTCTPFORM: TFloatField;
    Qr_RelTCQTDDIV: TFloatField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Qr_RelTCTAB06: TStringField;
    Qr_RelTCTAB06N: TFloatField;
    Qr_RelTCTAB07: TStringField;
    Qr_RelTCTAB07N: TFloatField;
    Qr_RelTCTAB08: TStringField;
    Qr_RelTCTAB08N: TFloatField;
    Qr_RelTCTAB09: TStringField;
    Qr_RelTCTAB09N: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Per2: TFrm_Per2;
  per2_NomeRel: String;
  per2_Doc: String;
  per2_emppad: String;

implementation

uses 
  S_Tab_CCU, S_Tab_Cli, S_Tab_Dep,
  S_Tab_PV, S_Tab_Con, S_Tab_NS, S_Tab_Tra, S_Tab_Usr, S_Tab_CR, S_Tab_Tip,
  S_Tab_UF, S_Tab_PF, S_Tab_Bco, S_Tab_NE, S_Tab_Pen, S_Tab_For, S_Tab_Car,
  S_Tab_Ped, S_Tab_Vei, S_Tab_Moe, S_Tab_OS, S_Tab_MVei, S_Tab_MImo,
  S_Tab05, S_Tab_Loc, S_Tab_Fol, S_Tab_Bai, S_Tab_Fun, S_Tab_Ram,
  S_Tab_Lic;



{$R *.dfm}

procedure TFrm_Per2.FormCreate(Sender: TObject);
begin
Qr_Rel.Close;
Qr_Rel.SQL.Clear;
Qr_Rel.SQL.Add('Select * from CTDVCA Where ');
if DM1.Qr_TID.Locate('TINOME','CADTDV',[]) then
   Qr_Rel.SQl.add(' TCDOC='+chr(39)+mreltab+chr(39))
else
   Qr_Rel.Sql.Add(' TCCODEMP='+IntTostr(codemp)
                 +' and TCDOC='+chr(39)+mreltab+chr(39));
Qr_Rel.Open;

end;


procedure TFrm_Per2.DBGrid1DblClick(Sender: TObject);
begin
BitBtn1.Click;
end;

procedure TFrm_Per2.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Per2.BitBtn1Click(Sender: TObject);
begin
per2_NomeRel:=Qr_RelTCNOME.AsString;
per2_Doc    :=Qr_RelTCDOC.AsString;

if Qr_RelTCNOME.Value<>'' then
   begin

   if mreltab='CADDAP' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_Per2(FindGlobalComponent('Frm_Tab_CP'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_CP, Frm_Tab_CP);
            Frm_Tab_CP.Show;
      end
   else if mreltab='CADPRO' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_Per2(FindGlobalComponent('Frm_Tab_pro'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Pro, Frm_Tab_Pro);
            Frm_Tab_Pro.Show;
      end
   else if mreltab='CADLDR' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_Per2(FindGlobalComponent('Frm_Tab_ldr'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_LDR, Frm_Tab_LDR);
            Frm_Tab_Ldr.Show;
      end
   else if mreltab='CADRAM' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_Per2(FindGlobalComponent('Frm_Tab_ram'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Ram, Frm_Tab_Ram);
            Frm_Tab_Ram.Show;
      end
   else if mreltab='CADAJU' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_Per2(FindGlobalComponent('Frm_Tab_aj'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_AJ, Frm_Tab_AJ);
            Frm_Tab_AJ.Show;
      end
   else if mreltab='CADGRU' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_Per2(FindGlobalComponent('Frm_Tab_gru'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Gru, Frm_Tab_Gru);
            Frm_Tab_Gru.Show;
      end
   else if mreltab='CADVEN' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_Per2(FindGlobalComponent('Frm_Tab_ven'));
      if testeform=nil then
Application.CreateForm(TFrm_Tab_Ven, Frm_Tab_Ven);
         Frm_Tab_Ven.Show;
      end
   else if mreltab='CADCCU' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_ccu'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_CCU, Frm_Tab_CCU);
            Frm_Tab_CCU.Show;
      end
   else if mreltab='CADCLI' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_cli'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Cli, Frm_Tab_Cli);
            Frm_Tab_Cli.Show;
      end

   else if mreltab='CADLC1' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_lic'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_lic, Frm_Tab_lic);
            Frm_Tab_lic.Show;
      end
   else if mreltab='CADBAI' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_bai'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Bai, Frm_Tab_Bai);
            Frm_Tab_Bai.Show;
      end

   else if mreltab='CADFUN' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_fun'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_fun, Frm_Tab_fun);
            Frm_Tab_fun.Show;
      end

   else if mreltab='CADLOC' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_loc'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Loc, Frm_Tab_Loc);
            Frm_Tab_Loc.Show;
      end

   else if mreltab='CADDEP' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_dep'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Dep, Frm_Tab_Dep);
         Frm_Tab_Dep.Show;
      end
   else if mreltab='CADPV' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_pv'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_PV, Frm_Tab_PV);
            Frm_Tab_PV.Show;
      end
   else if mreltab='CADCON' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_con'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Con, Frm_Tab_Con);
            Frm_Tab_Con.Show;
      end
   else if mreltab='CADNS' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_ns'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_NS, Frm_Tab_NS);
            Frm_Tab_NS.Show;
      end
   else if mreltab='CADTRA' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_tra'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Tra, Frm_Tab_Tra);
            Frm_Tab_Tra.Show;
      end
   else if mreltab='CADUSR' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_usr'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Usr, Frm_Tab_Usr);
            Frm_Tab_Usr.Show;
      end
   else if mreltab='CADDAR' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_cr'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_CR, Frm_Tab_CR);
            Frm_Tab_CR.Show;
      end
   else if mreltab='CADTP' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_tip'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Tip, Frm_Tab_Tip);
            Frm_Tab_Tip.Show;
      end
   else if mreltab='CADUF' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_uf'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_UF, Frm_Tab_UF);
            Frm_Tab_UF.Show;
      end
   else if mreltab='CADPF1' then
      Begin
      per2_emppad:='';

      if (Qr_RelTCTAB01.Value='CADPF1') or
         (Qr_RelTCTAB02.Value='CADPF1') or
         (Qr_RelTCTAB03.Value='CADPF1') or
         (Qr_RelTCTAB04.Value='CADPF1') or
         (Qr_RelTCTAB05.Value='CADPF1') or
         (Qr_RelTCTAB06.Value='CADPF1') or
         (Qr_RelTCTAB07.Value='CADPF1') or
         (Qr_RelTCTAB08.Value='CADPF1') or
         (Qr_RelTCTAB09.Value='CADPF1') then
          begin
          per2_emppad:='PF1CODEMP';
          end
      else if (Qr_RelTCTAB01.Value='CADPF2') or
         (Qr_RelTCTAB02.Value='CADPF2') or
         (Qr_RelTCTAB03.Value='CADPF2') or
         (Qr_RelTCTAB04.Value='CADPF2') or
         (Qr_RelTCTAB05.Value='CADPF2') or
         (Qr_RelTCTAB06.Value='CADPF2') or
         (Qr_RelTCTAB07.Value='CADPF2') or
         (Qr_RelTCTAB08.Value='CADPF2') or
         (Qr_RelTCTAB09.Value='CADPF2') then
          begin
          per2_emppad:='PF2CODEMP';
          end;
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_pf'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_PF, Frm_Tab_PF);
            Frm_Tab_PF.Show;
      end
   else if mreltab='CADBCO' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_bco'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Bco, Frm_Tab_Bco);
            Frm_Tab_Bco.Show;
      end
   else if mreltab='CADNE' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_ne'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_NE, Frm_Tab_NE);
            Frm_Tab_NE.Show;
      end
   else if mreltab='CADPEN' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_pen'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Pen, Frm_Tab_Pen);
            Frm_Tab_pen.Show;
      end
   else if mreltab='CADFOR' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_for'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_For, Frm_Tab_For);
            Frm_Tab_For.Show;
      end
   else if mreltab='CADCAR' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_car'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Car, Frm_Tab_Car);
            Frm_Tab_Car.Show;
      end
   else if mreltab='CADP01' then
      Begin
      per2_emppad:='';

      if (Qr_RelTCTAB01.Value='CADP01') or
         (Qr_RelTCTAB02.Value='CADP01') or
         (Qr_RelTCTAB03.Value='CADP01') or
         (Qr_RelTCTAB04.Value='CADP01') or
         (Qr_RelTCTAB05.Value='CADP01') or
         (Qr_RelTCTAB06.Value='CADP01') or
         (Qr_RelTCTAB07.Value='CADP01') or
         (Qr_RelTCTAB08.Value='CADP01') or
         (Qr_RelTCTAB09.Value='CADP01') then
         begin
         per2_emppad:='P1CODEMP';
         end
      else if (Qr_RelTCTAB01.Value='CADP02') or
         (Qr_RelTCTAB02.Value='CADP02') or
         (Qr_RelTCTAB03.Value='CADP02') or
         (Qr_RelTCTAB04.Value='CADP02') or
         (Qr_RelTCTAB05.Value='CADP02') or
         (Qr_RelTCTAB06.Value='CADP02') or
         (Qr_RelTCTAB07.Value='CADP02') or
         (Qr_RelTCTAB08.Value='CADP02') or
         (Qr_RelTCTAB09.Value='CADP02') then
         begin
         per2_emppad:='CRCODEMP';
         end;

      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_ped'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Ped, Frm_Tab_Ped);
            Frm_Tab_Ped.Show;
      end
   else if mreltab='CADIMO' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_imo'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Imo, Frm_Tab_Imo);
            Frm_Tab_Imo.Show;
      end
   else if mreltab='CADVEI01' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_vei'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Vei, Frm_Tab_Vei);
            Frm_Tab_Vei.Show;
      end
   else if mreltab='CADMOE' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_moe'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Moe, Frm_Tab_Moe);
            Frm_Tab_Moe.Show;
      end
   else if mreltab='CADOS' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_os'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_OS, Frm_Tab_OS);
            Frm_Tab_OS.Show;
      end
   else if mreltab='CADMVEI' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_mvei'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_MVei, Frm_Tab_MVei);
            Frm_Tab_MVei.Show;
      end
   else if mreltab='CADMIMO' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_mimo'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_MImo, Frm_Tab_MImo);
            Frm_Tab_MImo.Show;
      end
   else if mreltab='CADLFOL' then
      Begin
      mnomrel:=Qr_RelTCNOME.Value;
      testeform := TFrm_per2(FindGlobalComponent('Frm_Tab_fol'));
      if testeform=nil then
         Application.CreateForm(TFrm_Tab_Fol, Frm_Tab_Fol);
            Frm_Tab_Fol.Show;
      end;
  // ModalResult:=mrOk;
   end;

end;

procedure TFrm_Per2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_NE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, S_C, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons,
  ExtCtrls,db,dbtables,func,S_DM1,S_For,lerarq, RxDBComb, ADODB;

 {
00	Nota Fiscal [01-EFD]
01	Nota Fiscal Avulsa [1B-EFD]
02	Nota Fiscal de Venda a Consumidor
03	Cupom Fiscal [2D-EFD]
04	Nota Fiscal de Produtor
05	Cupom Fiscal Bilhete de Passagem [2E-EFD]
06	Nota Fiscal/Conta de Energia Elétrica
07	Nota Fiscal de Serviço de Transporte
08	Conhecimento de Transporte Rodoviário de Cargas
09	Conhecimento de Transporte Aquaviário de Cargas
10	Conhecimento Aéreo
11	Conhecimento de Transporte Ferroviário de Cargas
12	Conhecimento de Transporte de Cargas Avulso [8B-EFD]
13	Bilhete de Passagem Rodoviário
14	Bilhete de Passagem Aquaviário
15	Bilhete de Passagem e Nota de Bagagem
16	Bilhete de Passagem Ferroviário
17	Despacho de Transporte
18	Resumo de Movimento Diário
19	nao usado
20	Ordem de Coleta de Cargas
21	Nota Fiscal de Serviço de Comunicação
22	Nota Fiscal de Serviço de Telecomunicação
23	GNRE
24	Autorização de Carregamento e Transporte
25	Manifesto de Carga
26	Conhecimento de Transporte Multimodal de Cargas
27	Nota Fiscal De Transporte Ferroviário De Carga
28	Nota Fiscal/Conta de Fornecimento de Gás Canalizado
29	Nota Fiscal/Conta De Fornecimento D'água Canalizada
55	Nota Fiscal Eletrônica
57	Conhecimento de Transporte Eletrônico - CT-e
59	Cupom Fiscal Eletrônico - CF-e
}
type
  TFrm_NE = class(TFrm_C)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    db_subserie: TDBEdit;
    DBEdit2: TDBEdit;
    DBE_CFOP: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Label15: TLabel;
    DBE_seg: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    Label23: TLabel;
    Label21: TLabel;
    DBEdit22: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBE_OUTRAS: TDBEdit;
    DBE_valfre: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label25: TLabel;
    DBEdit27: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit28: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label28: TLabel;
    DBE_OUTRAS_ALIQ: TDBEdit;
    Label29: TLabel;
    DBE_OUTRAS_IMP: TDBEdit;
    Label30: TLabel;
    DBE_CFOP_comp: TDBEdit;
    sbnAjustarItens: TSpeedButton;
    LANCAR: TBitBtn;
    BitBtn1: TBitBtn;
    DBNavigator2: TDBNavigator;
    Label31: TLabel;
    DBE_PIPIFRETE: TDBEdit;
    Label32: TLabel;
    DBE_IPIFRETE: TDBEdit;
    RxDBCb_TIPO: TRxDBComboBox;
    Label33: TLabel;
    Label34: TLabel;
    RxDBCb_frete: TRxDBComboBox;
    Label35: TLabel;
    DBE_aliq_frete: TDBEdit;
    DBE_icmsfrete: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit4: TDBEdit;
    grupo_energia: TGroupBox;
    Label38: TLabel;
    DBEdit6: TDBEdit;
    Label39: TLabel;
    DBEdit11: TDBEdit;
    Label40: TLabel;
    RxDBCod_Cons: TRxDBComboBox;
    Label41: TLabel;
    RxDBcb_tp_ligacao: TRxDBComboBox;
    Label42: TLabel;
    RxDBcb_Grupo_Tensao: TRxDBComboBox;
    Label43: TLabel;
    DBEdit15: TDBEdit;
    BitBtn2: TBitBtn;
    opd1: TOpenDialog;
    BitBtn3: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BBnAtuClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure sbnAjustarItensClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure LANCARClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    function fNE01lerant(ptipo: Integer):Boolean;

  public
    { Public declarations }
  end;

var
  Frm_NE: TFrm_NE;
  ne_ori:String;
  moper_ne: Integer;
  mchave    : Integer=0;
  mant_codfor: Real;
  mant_numero: Real;
  mant_serie: string;
  mant_subserie: string;
  mant_modelo: string;
  mant_cfop: Real;
  mant_dtent: TdateTime;
  mant_dtemis: TdateTime;




implementation

uses S_DM4, S_Compras_Orc, S_DM1_ADO;

{$R *.dfm}

procedure TFrm_NE.FormCreate(Sender: TObject);
begin
  inherited;
ne_ori:='';
if flcadactab(0,0,IntToStr(codcar),'CADNE') then
   begin
   if DM4.Tb_AcTabAT_INC.Value=1 then
      bbinc_true:=False;
   if DM4.Tb_AcTabAT_ALT.Value=1 then
      bbalt_true:=False;
   if DM4.Tb_AcTabAT_EXC.Value=1 then
      bbexc_true:=False;
   end
else
   begin
   bbinc_true:=true;
   bbalt_true:=true;
   bbexc_true:=true;
   end;
if DBGrid1.DataSource=nil then
   DBGrid1.DataSource:=DM1.Src_NE;

if DBNavigator2.DataSource=nil then
   DBNavigator2.DataSource:=DM1.Src_NE;

INCLUIR.Enabled:=bbinc_true;
ALTERAR.Enabled:=bbalt_true;
EXCLUIR.Enabled:=bbexc_true;

end;

procedure TFrm_NE.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
if ne_ori='' then
   begin
   PC1.ActivePageIndex:=0;
   ALTERAR.SetFocus;
   end
else
   begin
   ModalResult:=MrOk;
   ne_ori := '';
   end;

end;

procedure TFrm_NE.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key=9 then
   begin
   if ne_ori='' then
      begin
      PC1.ActivePageIndex:=0;
      ALTERAR.SetFocus;
      end
   else
      begin
      ModalResult:=MrOk;
      ne_ori := '';
      end;
   abort;
   end;

end;

procedure TFrm_NE.DBEdit1Exit(Sender: TObject);
begin
  inherited;
if CANCELAR.focused then
   exit
else
   begin
   if not flqr1('FCGC,FRAZAO','F','CADFOR','N','FCODFOR',DM1.Tb_NENECODFOR.AsString) then
      begin
      fMensagem('Fornecedor Não Cadastrado',0,['0'],0);
      DBEdit1.SetFocus;
      if DM1.Query1.FieldByName('FCGC').AsFloat=0 then
         begin
         if fmensagem('Para o Registro Fiscal é Necessario que o Fornecedor Tenha CNPJ, deseja grava-lo assim mesmo?',0,['1','2'],2)<>1 then
            begin
            DBEdit1.SetFocus;
            end;
         end;
      end;
   end;

end;

procedure TFrm_NE.BBnAtuClick(Sender: TObject);
begin
  inherited;
if ne_ori='consulta' then
   begin
   fne01lerant(0);
   end
else
   flcadne(CAMPO.ItemIndex,EDIT1.Text,'','','','','','');

end;

procedure TFrm_NE.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      DM1.Tb_NENECODFOR.Value:=ValFloat(fChamaFor(0,'frm_NE',Key));
      DBedit2.SetFocus;
      key:=#0;
      end;


end;

procedure TFrm_NE.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
If DM1.Tb_Pv.State in [dsInsert, dsEdit] then
   begin
   Case fmensagem('O registro atual não está gravado!'+#13
                  +'Deseja gravar agora?',0,['1','2','3'],0) of
      mrYes: GRAVAR.Click;
      mrNo : CANCELAR.Click;
      else CanClose:=False;
      end;
   end;

end;



procedure TFrm_NE.INCLUIRClick(Sender: TObject);
begin
  inherited;
moper_ne:=0;
DM1.Tb_NE.Append;
DM1.Tb_NENETIPO.Value:=0;
DBEdit1.SetFocus;

end;

procedure TFrm_NE.ALTERARClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_NENECODFOR.IsNull then
   begin
   fMensagem('Nao a registro a ser alterado',0,['0'],0);
   exit;
   end;
moper_ne:=8;
DM1.Tb_NE.Edit;
mant_codfor :=DM1.Tb_NENECODFOR.AsFloat;
mant_numero :=DM1.Tb_NENENUMERO.AsFloat;
mant_serie  :=DM1.Tb_NENESERIE.AsString;
mant_subserie:=DM1.Tb_NENESUBSER.AsString;
mant_modelo  :=DM1.Tb_NENEMODELO.AsString;
mant_cfop    :=DM1.Tb_NENECFO.AsFloat;
mant_dtent   :=DM1.Tb_NENEDTENT.AsDateTime;
mant_dtemis  :=DM1.Tb_NENEDTEMIS.AsDateTime;
DBEdit1.SetFocus;
end;

procedure TFrm_NE.EXCLUIRClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_NENECODFOR.IsNull then
   begin
   fMensagem('Não ha registro a ser excluido!',0,['0'],0);
   exit;
   end;

if fmensagem('Quer Realmente Excluir Este Registro?',0,['1','2'],1)=mrYes then
   begin
   FGerarAntes(9,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.Asstring,
                  'NECODNOV','NEDATHOR','NECODUSR_MAN',
                  'NESITUACAO',['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                              DM1.Tb_NENECODFOR.AsString
                              ,DM1.Tb_NENENUMERO.AsString
                              ,DM1.Tb_NENESERIE.AsString
                              ,DM1.Tb_NENESUBSER.AsString
                              ,DM1.Tb_NENEMODELO.AsString
                              ,DM1.Tb_NENECFO.AsString
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTENT.Value)
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTEMIS.Value)]
                  ,DM1.Tb_NE);

   FAtualizaBanco(2,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                 ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                               DM1.Tb_NENECODFOR.AsString
                              ,DM1.Tb_NENENUMERO.AsString
                              ,DM1.Tb_NENESERIE.AsString
                              ,DM1.Tb_NENESUBSER.AsString
                              ,DM1.Tb_NENEMODELO.AsString
                              ,DM1.Tb_NENECFO.AsString
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTENT.Value)
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTEMIS.Value)]
                  ,DM1.Tb_NE);

   DM1.Tb_NE.Delete;
   CANCELAR.Click;
   end;


end;

procedure TFrm_NE.GRAVARClick(Sender: TObject);
var
i: Integer;
begin
  inherited;


  if (DM1.Tb_NENECODFOR.IsNull) or (DM1.Tb_NENECODFOR.AsFloat=0) then
   begin
   fMensagem('Código do Fornecedor Invalido!',0,['0'],0);
   DBEdit1.SetFocus;
   exit;
   end;
if not flqr1('FRAZAO,FCGC','F','CADFOR','N','FCODFOR',DM1.Tb_NENECODFOR.AsString) then
   begin
   if DM1.Query1.FieldByName('FCGC').AsFloat=0 then
      begin
      if fmensagem('Para o Registro Fiscal é Necessario que o Fornecedor Tenha CNPJ, deseja grava-lo assim mesmo?',0,['1','2'],2)<>1 then
         begin
         exit;
         end;
      end;
   end;

if (DM1.Tb_NENEDTEMIS.IsNull) or (DM1.Tb_NENEDTEMIS.AsDateTime<=pdatanula) then
   begin
   fmensagem('Favor digitar uma data de emissao valida!',0,['0'],0);
   DBEdit5.SetFocus;
   exit;
   end;
if (DM1.Tb_NENEDTENT.IsNull) or (DM1.Tb_NENEDTENT.AsDateTime<=pdatanula) then
   DM1.Tb_NENEDTENT.Value:=DM1.Tb_NENEDTEMIS.Value;

if (DM1.Tb_NENETOTNOT.IsNull) or (DM1.Tb_NENETOTNOT.AsFloat<=0) then
   begin
   fmensagem('Total da nota tem que ser um valor positivo valido!!!',0,['0'],0);
   DBEdit19.SetFocus;
   exit;
   end;

if (DM1.Tb_NENESERIE.IsNull) then
   begin
   fmensagem('Serie Campo Obrigatorio valido!!!',0,['0'],0);
   DBEdit3.SetFocus;
   exit;
   end;

if (DM1.Tb_NENECFO.IsNull) then
   begin
   fmensagem('cfop Campo Obrigatorio valido!!!',0,['0'],0);
   DBEdit3.SetFocus;
   exit;
   end;


{if  (DM1.Tb_NENEBASEN.AsFloat=0) and (DM1.Tb_NENEOUTRAS.AsFloat=0)
    and (DM1.Tb_NENEISENTAS.AsFloat=0)
    and (DM1.Tb_NENEICMSR.AsFloat=0)
    and (DM1.Tb_NENEOUTNINC.AsFloat=0) then
    DM1.Tb_NENEOUTDESP.Value:=DM1.Tb_NENETOTNOT.Value;}
{
if Arredonda( (DM1.Tb_NENEBASEN.AsFloat+Arredonda(DM1.TB_NENEIPIFRETE.AsFloat*DM1.TB_NENEFRETE.AsFloat,2)+DM1.TB_NENEFRETE.AsFloat+DM1.Tb_NENEOUTRAS.AsFloat+DM1.Tb_NENEISENTAS.AsFloat
    +DM1.Tb_NENEICMSR.AsFloat+DM1.Tb_NENEOUTDESP.AsFloat+DM1.Tb_NENEOUTNINC.AsFloat
    +DM1.Tb_NENEIPI.AsFloat+DM1.Tb_NENETOTMER.AsFloat ) , DM1.Tb_PargerPCASAS.AsInteger)
    <> Arredonda( DM1.Tb_NENETOTNOT.AsFloat, DM1.Tb_PargerPCASAS.AsInteger) then
   begin
   if (DM1.Tb_NENETOTMER.AsFloat>0) and (DM1.Tb_NENEBASER.AsFloat=0) then
      begin
      if DM1.Tb_NENEOUTNINC.AsFloat=0 then
         begin
         DM1.Tb_NENEOUTNINC.AsFloat:=(DM1.Tb_NENETOTMER.AsFloat-DM1.Tb_NENEBASEN.AsFloat-DM1.Tb_NENEISENTAS.Asfloat);
         if DM1.Tb_NENEOUTNINC.AsFloat<0 then
            DM1.Tb_NENEOUTNINC.AsFloat:=0;
         end;
      end;

   if Arredonda( (DM1.Tb_NENEBASEN.AsFloat+DM1.Tb_NENEOUTRAS.AsFloat+DM1.Tb_NENEISENTAS.AsFloat
       +DM1.Tb_NENEICMSR.AsFloat+DM1.Tb_NENEOUTDESP.AsFloat+DM1.Tb_NENEOUTNINC.AsFloat+DM1.Tb_NENEIPI.AsFloat ) , DM1.Tb_PargerPCASAS.AsInteger)
       <> Arredonda( DM1.Tb_NENETOTNOT.AsFloat, DM1.Tb_PargerPCASAS.AsInteger) then
       begin
       fmensagem('o valor dos dados difere do valor total, favor corrigir!',0,['0'],0);
       exit;
       end;
   end;
}
DM1.Tb_NENECODUSR.Value:=codusr;
DM1.Tb_NENEDTALT.Value :=now;
DM1.Tb_NENEHRALT.Value :=FormatDateTime('hh:nn:ss',time);
if DM1.Tb_NENECODEMP.IsNull then
   DM1.Tb_NENECODEMP.asfloat:=codemp;




if moper_ne=8 then
   begin
   FGerarAntes(8,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.Asstring,
                  'NECODNOV','NEDATHOR','NECODUSR_MAN',
                  'NESITUACAO',['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                              DM1.Tb_NENECODFOR.AsString
                              ,DM1.Tb_NENENUMERO.AsString
                              ,DM1.Tb_NENESERIE.AsString
                              ,DM1.Tb_NENESUBSER.AsString
                              ,DM1.Tb_NENEMODELO.AsString
                              ,DM1.Tb_NENECFO.AsString
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTENT.Value)
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTEMIS.Value)]
                  ,DM1.Tb_NE);
   FAtualizaBanco(1,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                 ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                               FloatTostr(mant_codfor)
                              ,FloatTostr(mant_numero)
                              ,mant_serie
                              ,mant_subserie
                              ,mant_modelo
                              ,FloatTostr(mant_cfop)
                              ,FormatDateTime(fdt,  mant_dtent)
                              ,FormatDateTime(fdt,  mant_dtemis)]
                  ,DM1.Tb_NE);

   end
else
   begin
   DM1.Tb_NENECODEMP.Value:=codemp;
   FAtualizaBanco(0,'CADNE','NECODEMP',DM1.Tb_NENECODEMP.AsString
                 ,['NECODEMP','NECODFOR','NENUMERO','NESERIE','NESUBSER','NEMODELO',
                              'NECFO','NEDTENT','NEDTEMIS'],[DM1.Tb_NENECODEMP.AsString,
                               DM1.Tb_NENECODFOR.AsString
                              ,DM1.Tb_NENENUMERO.AsString
                              ,DM1.Tb_NENESERIE.AsString
                              ,DM1.Tb_NENESUBSER.AsString
                              ,DM1.Tb_NENEMODELO.AsString
                              ,DM1.Tb_NENECFO.AsString
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTENT.Value)
                              ,FormatDateTime(fdt,  DM1.Tb_NENEDTEMIS.Value)]
                  ,DM1.Tb_NE);

   end;
dm1.Tb_NE.Post;

CANCELAR.Click;


end;

procedure TFrm_NE.CANCELARClick(Sender: TObject);
begin
  inherited;
DM1.Tb_NE.Cancel;
moper_ne:=0;

end;
function tfrm_NE.fNE01lerant(ptipo: Integer):Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;

begin
minstru:=' Select ';
v:='';
for x:=0 to DM1.Tb_ne.FieldCount-1 do
   begin
   if DM1.Tb_ne.Fields[x].FieldKind=fkCalculated then
      Continue;
   minstru:=minstru+v+DM1.Tb_ne.Fields[x].FieldName;
   v:=',';
   end;
minstru:=minstru+' from OLD_CADNE where NECODNOV=0'+DM1.Qr_EventoCODNOV.AsString;
DM1.Tb_ne.Close;
DM1.Tb_ne.SQL.Clear;
DM1.Tb_ne.SQL.add(minstru);
DM1.Tb_ne.Open;
BBnAtu.Enabled      :=False;
INCLUIR.Enabled     :=False;
ALTERAR.Enabled     :=False;
EXCLUIR.Enabled     :=False;
CANCELAR.Enabled    :=False;
DBNavigator2.Enabled:=False;
DBGrid1.Enabled     :=False;
end;




procedure TFrm_NE.Edit1Exit(Sender: TObject);
begin
  inherited;
if (CAMPO.ItemIndex=0) or (CAMPO.ItemIndex=2) then
   begin
   if fsonumero(EDIT1.Text)<=0 then
      Edit1.Text:=''
   else
      edit1.Text:=fdeixanum(EDIT1.Text);
   end;
end;

procedure TFrm_NE.SAIRClick(Sender: TObject);
begin
  inherited;
  if    ne_ori = '' then close;
end;

procedure TFrm_NE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_NE.DBEdit18Exit(Sender: TObject);
begin
  inherited;
if DM1.Tb_NENETOTMER.AsFloat<>0 then
   begin
   if DM1.Tb_NENETOTNOT.AsFloat<=0 then
      begin
      DM1.Tb_NENETOTNOT.AsFloat:=DM1.Tb_NENETOTMER.AsFloat-DM1.Tb_NENETOTDES.AsFloat
                                +DM1.Tb_NENEIPI.AsFloat+DM1.Tb_NENEFRETE.AsFloat
                                +DM1.Tb_NENESEG.AsFloat+DM1.Tb_NENEICMSR.AsFloat;
      if (DM1.Tb_NENETOTNEG.AsFloat=0) and (DM1.Tb_NENETOTPOS.AsFloat=0) and (DM1.Tb_NENETOTINA.AsFloat=0) then
         DM1.Tb_NENETOTINA.AsFloat:=DM1.Tb_NENETOTMER.AsFloat-DM1.Tb_NENETOTDES.AsFloat;
      end;
   end;

end;

procedure TFrm_NE.DBEdit5Exit(Sender: TObject);
begin
  inherited;
if not (DM1.Tb_NENEDTEMIS.IsNull) and ((DM1.Tb_NENEDTENT.IsNull) or (DM1.Tb_NENEDTENT.AsDateTime<=pdatanula)) then
   DM1.Tb_NENEDTENT.Value:=DM1.Tb_NENEDTEMIS.Value; 
end;

procedure TFrm_NE.DBEdit12Exit(Sender: TObject);
begin
  inherited;
if ((DM1.Tb_NENEICMSN.AsFloat=0) and (DM1.Tb_NENEICMSN.IsNull)) and (DM1.Tb_NENEALIQ.AsFloat<>0)
   and (DM1.Tb_NENEBASEN.AsFloat>0) then
   DM1.Tb_NENEICMSN.Value := Arredonda( (DM1.Tb_NENEBASEN.AsFloat*DM1.Tb_NENEALIQ.AsFloat/100) , DM1.Tb_PargerPCASAS.AsInteger);
end;

procedure TFrm_NE.sbnAjustarItensClick(Sender: TObject);
begin
  inherited;
if DM1.Tb_NENECHAVEP.AsFloat=0 then
   begin
   fmensagem('Este Nota nao possui pedido!',0,['0'],0);
   exit;
   end;
if fmensagem('Quer Realmente Aplicar em todos os Itens?',0,['1','2'],1)<>mrYes then
   exit;
DBE_CFOP.SetFocus;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.Params.CreateParam(ftString,'CFOP_COMP',ptInput);

DM1.Query2.SQL.Add('Update CADPF2 SET PF2CFOP_COMP=:CFOP_COMP where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPF2',[]),'',' PF2CODEMP=0'+DM1.Tb_NENECODEMP.AsString+' and ')
                  +' PF2CHAVE=0'+DM1.Tb_NENECHAVEP.AsString);
DM1.Query2.ParambyName('CFOP_COMP').AsString:=DM1.Tb_NENECFOP_COMP.AsString;

try
   DM1.Query2.ExecSQL;
   fdm1StartCommit;
except
   end;

fmensagem('Concluido!',0,['0'],0);

end;

procedure TFrm_NE.FormShow(Sender: TObject);
begin
  inherited;
  DBGrid1.DataSource      := DM1.Src_NE;
  DBNavigator2.DataSource := DM1.Src_NE;
end;

procedure TFrm_NE.DBEdit25Exit(Sender: TObject);
begin
  inherited;
  if gravar.Enabled then begin
     gravar.SetFocus;
  end;
end;

procedure TFrm_NE.LANCARClick(Sender: TObject);
var
form_compras_cor: TFrm_Compras_Orc;
begin
  inherited;
if (not DM1.Tb_NE.Active) or (DM1.Tb_NENECHAVEP.AsFloat=0) then
   begin
   MessageDlg('Não Possui Pedido vinculado para correção!',mtWarning,[mbOk],0);
   exit;
   end;
testeform := TFrm_Compras_Orc(FindGlobalComponent('form_compras_cor'));
if (testeform=nil) then
   begin
   Application.CreateForm(Tfrm_compras_orc, form_compras_cor);
   form_compras_cor.top:=0;
   end;


form_compras_cor.mCorrecaodoPedido:=true;
form_compras_cor.edt_chave.Text:=DM1.Tb_NENECHAVEP.AsString;
form_compras_cor.edt_chaveExit(self);

form_compras_cor.sbnImpXML.Enabled:=false;
form_compras_cor.sbnPreco.Enabled :=false;
form_compras_cor.DBGrid_itens.Columns[01].ReadOnly:=true;
form_compras_cor.DBGrid_itens.Columns[04].ReadOnly:=true;
form_compras_cor.DBGrid_itens.Columns[05].ReadOnly:=true;
form_compras_cor.DBGrid_itens.Columns[06].ReadOnly:=true;

if form_compras_cor.WindowState=WsMinimized then
   form_compras_cor.WindowState:=WsNormal
else
   form_compras_cor.Show;

end;

procedure TFrm_NE.BitBtn2Click(Sender: TObject);
var
  adoQuery_temp: TADOQuery;
begin
  inherited;
if (not DM1.Tb_NE.Active) or (DM1.Tb_NENENUMERO.IsNull) or (DM1.Tb_NENEMODELO.AsString='55') then
  begin
  MessageDlg('Não é uma NFE Válida!',mtWarning,[mbOk],0);
  exit;
  end;
if opd1.Execute then
  begin
  adoQuery_temp:=TADOQuery.Create(nil);
  adoQuery_temp.Connection:=DM1_ADO.ADOConnection1;
  adoQuery_temp.Close;
  adoQuery_temp.SQL.Clear;
  adoQuery_temp.SQL.Add('Update CADNE set'
                           +' NENFE_XML_FORNECEDOR=:NFE_XML_FORNECEDOR ');
  adoQuery_temp.SQL.Add(' where NECHAVEP=:CHAVE '
                           +' and NELOTSEQ_CP=:CHAVE_ANO '
                           +' and NECODEMP=:CODEMP ');
  adoQuery_temp.Parameters.ParamByName('NFE_XML_FORNECEDOR').LoadFromFile(opd1.FileName,ftMemo);
  adoQuery_temp.Parameters.ParamByName('CHAVE').Value:=DM1.Tb_NsNSCHAVEP.AsInteger;
  adoQuery_temp.Parameters.ParamByName('CHAVE_ANO').Value:=DM1.Tb_NsNSLOTSEQ_CP.AsInteger;
  adoQuery_temp.Parameters.ParamByName('CODEMP').Value:=DM1.Tb_NsNSCODEMP.AsInteger;
  try
     adoQuery_temp.ExecSQL;
     fdm1StartCommit;
  except
     end;
  FreeAndNil(adoQuery_temp);
  end;
end;

procedure TFrm_NE.BitBtn3Click(Sender: TObject);
var
  Query_Cons: TADOQuery;
begin
  inherited;
query_Cons:=TADOQuery.Create(nil);
query_Cons.Connection:=DM1_ADO.ADOConnection1;
query_Cons.Close;
query_Cons.SQL.Clear;
query_Cons.SQL.Add('Select * from cadne where NECODEMP='+DM1.Tb_NENECODEMP.AsString
                  +'  and NELOTSEQ_CP='+DM1.Tb_NENELOTSEQ_CP.AsString
                  +'  and NECHAVEP='+DM1.Tb_NENECHAVEP.AsString
                  +'  and NECODFOR='+DM1.Tb_NENECODFOR.AsString);
try
  query_Cons.Open;
except
  FreeAndNil(query_cons);
  exit;
  end;
if not Query_Cons.IsEmpty then
  if not Query_Cons.FieldByName('NENFE_XML_FORNECEDOR').IsNull then
    begin
    (query_cons.FieldByName('NENFE_XML_FORNECEDOR') as TMemoField)
    .SaveToFile('C:\SGE\NFECPR-'+DM1.Tb_NENENUMERO.AsString+'.xml');
    fmensagem('Salvo em C:\SGE\NFECPR-'+DM1.Tb_NENENUMERO.AsString+'.xml!',0,['0'],0);
    end;
end;

end.

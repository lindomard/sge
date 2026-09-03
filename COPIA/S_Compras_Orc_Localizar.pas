unit S_Compras_Orc_Localizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, CheckLst, Buttons, FMTBcd, DB,
  Provider, DBClient, SqlExpr, Grids, DBGrids, ToolEdit, DBTables;

type
  TFrm_Compras_Orc_Localizar = class(TForm)
    Panel_cabecalho: TPanel;
    Edit3: TEdit;
    edt_chave_ini: TEdit;
    Edit1: TEdit;
    edt_chave_fin: TEdit;
    Edit5: TEdit;
    edt_data_Ini: TDateEdit;
    Edit2: TEdit;
    edt_data_fin: TDateEdit;
    Edit4: TEdit;
    edt_codfor: TEdit;
    OMITIR_FOR: TCheckBox;
    lbx_codfor: TListBox;
    Edit6: TEdit;
    bbLocalizar: TBitBtn;
    bb_sair: TBitBtn;
    gbPedCab: TGroupBox;
    gb_itens: TGroupBox;
    Panel_rodape: TPanel;
    src_pfor01_orc: TDataSource;
    DBGrid_pforCab: TDBGrid;
    DBGrid_pfordet: TDBGrid;
    Src_pfor02_orc: TDataSource;
    Tb_Pfor01_Orc: TQuery;
    Tb_Pfor01_OrcPF1CHAVE: TFloatField;
    Tb_Pfor01_OrcPF1LOTSEQ: TFloatField;
    Tb_Pfor01_OrcPF1CODFOR: TFloatField;
    Tb_Pfor01_OrcFRAZAO: TStringField;
    Tb_Pfor01_OrcPF1DATA: TDateTimeField;
    Tb_Pfor01_OrcPF1TOTLIQ: TFloatField;
    Tb_Pfor01_OrcPF1CODEMP: TFloatField;
    Tb_Pfor02_Orc: TQuery;
    Tb_Pfor02_OrcPF2CODEMP: TFloatField;
    Tb_Pfor02_OrcPF2CHAVE: TFloatField;
    Tb_Pfor02_OrcPF2LOTSEQ: TFloatField;
    Tb_Pfor02_OrcPF2ITEM: TFloatField;
    Tb_Pfor02_OrcPF2CODPRO: TFloatField;
    Tb_Pfor02_OrcPDNOME: TStringField;
    Tb_Pfor02_OrcPDUND: TStringField;
    Tb_Pfor02_OrcPF2QTDPED: TFloatField;
    Tb_Pfor02_OrcPF2PCOUNI: TFloatField;
    Tb_Pfor02_OrcPF2DESC_PERC01: TFloatField;
    Tb_Pfor02_OrcPF2DESC_PERC02: TFloatField;
    Tb_Pfor02_OrcPF2DESC_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2DESC_TOTDES: TFloatField;
    Tb_Pfor02_OrcPF2CST: TStringField;
    Tb_Pfor02_OrcPF2CFOP: TFloatField;
    Tb_Pfor02_OrcPF2IPI_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2PIS_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2COFINS_VALOR: TFloatField;
    Tb_Pfor02_OrcPF2TOTLIQ: TFloatField;
    Tb_Pfor02_OrcPF2ICMSSN_VALOR: TFloatField;
    Edit7: TEdit;
    edt_numnf_ini: TEdit;
    Edit9: TEdit;
    edt_numnf_fin: TEdit;
    Tb_Pfor01_OrcPF1NUMNF: TFloatField;
    rgStatus: TRadioGroup;
    CB_CHAVEBRANCO: TCheckBox;
    Edit8: TEdit;
    CB_ORDEM: TComboBox;
    procedure bb_sairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt_chave_iniExit(Sender: TObject);
    procedure edt_chave_finExit(Sender: TObject);
    procedure edt_data_IniExit(Sender: TObject);
    procedure edt_codforKeyPress(Sender: TObject; var Key: Char);
    procedure edt_codforExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbLocalizarClick(Sender: TObject);
    procedure src_pfor01_orcDataChange(Sender: TObject; Field: TField);
    procedure RG_TIPOPEDClick(Sender: TObject);
    procedure DBGrid_pforCabDblClick(Sender: TObject);
    procedure edt_data_finExit(Sender: TObject);
    procedure edt_numnf_iniExit(Sender: TObject);
    procedure edt_numnf_finExit(Sender: TObject);
    procedure CB_CHAVEBRANCOClick(Sender: TObject);
    procedure CB_ORDEMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mChave_Sel: Integer;
    mChave_Ano_Sel: Integer;
  end;

var
  Frm_Compras_Orc_Localizar: TFrm_Compras_Orc_Localizar;

implementation

uses S_DM1, LerArq, func, func_excecoes, S_DM4;

{$R *.dfm}

procedure TFrm_Compras_Orc_Localizar.bbLocalizarClick(Sender: TObject);
const
mOrdem: array [0..09] of string = ('PF1CHAVE','PF1CHAVE desc ','PF1CODFOR'
                                  ,'PF1DATA','PF1DATA desc ','FRAZAO '
                                  ,'PF1NUMNF','PF1NUMNF desc ','PF1TOTLIQ'
                                  ,'PF1TOTLIQ desc ');

var
mcinst2: string;
begin
if (fsonumero(edt_numnf_ini.Text)>0) and (fSonumero(edt_numnf_fin.Text)>0) then
   begin
   if fsonumero(edt_numnf_ini.Text)>fSonumero(edt_numnf_fin.Text) then
      edt_numnf_fin.Text:=edt_numnf_fin.Text;
   end;


tb_pfor02_orc.Close;

Tb_pfor01_orc.Close;
Tb_pfor01_orc.SQL.Clear;
Tb_pfor01_orc.SQL.Add('select PF1CHAVE,PF1LOTSEQ,PF1CODFOR,FRAZAO,'
                     +'       PF1DATA,PF1TOTLIQ,PF1CODEMP ,PF1NUMNF '


                     +'       FROM CADPF1,CADFOR '
                     +' where FCODFOR=PF1CODFOR ');


Tb_pfor01_orc.SQL.Add(' and PF1CODEMP = '+IntToStr(codemp));

if valint(edt_chave_ini.Text)>0 then
   Tb_pfor01_orc.SQL.Add(' and PF1CHAVE>='+fdeixanum(edt_chave_ini.Text));
if valint(edt_chave_fin.Text)>0 then
   Tb_pfor01_orc.SQL.Add(' and PF1CHAVE<='+fdeixanum(edt_chave_fin.Text));


if fsonumero(edt_numnf_ini.Text)>0 then
   Tb_pfor01_orc.SQL.Add(' and PF1NUMNF>='+fdeixanum(edt_numnf_ini.Text));
if fsonumero(edt_numnf_fin.Text)>0 then
   Tb_pfor01_orc.SQL.Add(' and PF1NUMNF<='+fdeixanum(edt_numnf_fin.Text));

if edt_data_Ini.Date>pDataNula then
   begin
   Tb_pfor01_orc.SQL.Add(' and PF1DATA>=:DATAINI');
   Tb_pfor01_orc.ParamByName('DATAINI').AsDateTime:=edt_data_Ini.Date;
   end;
if edt_data_fin.Date>pDataNula then
   begin
   Tb_pfor01_orc.SQL.Add(' and PF1DATA<=:DATAFIN');
   Tb_pfor01_orc.ParamByName('DATAFIN').AsDateTime:=edt_data_fin.Date;
   end;



mcinst2:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mcinst2)<>'' then
   begin
   Tb_pfor01_orc.SQL.Add(' and PF1CODFOR '+mcinst2);
   end;
if rgStatus.ItemIndex<>2 then
  Tb_Pfor01_Orc.SQL.Add(' and PF1STATUS ='+IntToStr(rgStatus.ItemIndex));
Tb_Pfor01_Orc.SQL.Add(' Order by '+mordem[CB_ORDEM.itemindex]);
{mcinst2:=fItenstCheckListBox(0,RG_TIPOPED);
if trim(mcinst2)<>'' then
   begin
   Tb_pfor01_orc.SQL.Add(' and FTIPOF '+mcinst2);
   end;}

try
   Tb_pfor01_orc.Open;
except
   if not fVerificaRedeAtiva(true) then
      begin
      end
   else
      begin
      ex_erroSql_Novo(Tb_pfor01_orc,165,'_lerarq','cadpf01_orc');
      exit;
      end;
   end;

end;

procedure TFrm_Compras_Orc_Localizar.bb_sairClick(Sender: TObject);
begin
mChave_Sel    :=0;
mChave_Ano_Sel:=0;

close;
end;

procedure TFrm_Compras_Orc_Localizar.DBGrid_pforCabDblClick(Sender: TObject);
begin
if (tb_pfor01_orc.Active) and (not tb_pfor01_orcPF1CHAVE.IsNull) then
   begin
   mChave_Sel:=tb_pfor01_orcPF1CHAVE.AsInteger;
   mChave_Ano_Sel:=Tb_Pfor01_OrcPF1LOTSEQ.AsInteger;
   close;
   end;
end;

procedure TFrm_Compras_Orc_Localizar.edt_chave_finExit(Sender: TObject);
begin
edt_chave_fin.Text:=fdeixanum(edt_chave_fin.Text);

end;

procedure TFrm_Compras_Orc_Localizar.edt_chave_iniExit(Sender: TObject);
begin
edt_chave_ini.Text:=fdeixanum(edt_chave_ini.Text);
if valint(edt_chave_fin.Text)<valint(edt_chave_ini.Text) then
   edt_chave_fin.Text:=fdeixanum(edt_chave_ini.Text);


end;

procedure TFrm_Compras_Orc_Localizar.edt_codforExit(Sender: TObject);
begin
edt_codfor.Text:=fdeixanum2(edt_codfor.Text);
if Trim(edt_codfor.Text)<>'' then
   begin
   if not flcadfor(1,0,edt_codfor.Text) then
      begin
      MessageDlg('Fornecedor não Cadastrado!',mtWarning,[mbOk],0);
      edt_codfor.Text := '';
      edt_codfor.SetFocus;
      end
   else
      lbx_codfor.Items.Add(FormatFloat('0000000',DM1.Tb_ForFCODFOR.Value)
                                    +' - '+DM1.Tb_ForFRAZAO.Value);
      edt_codfor.text := '';
      edt_codfor.SetFocus;
   end;

end;

procedure TFrm_Compras_Orc_Localizar.edt_codforKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   edt_codfor.Text:=fChamaFor(0,'Frm_compras_orc_localizar',key);
   edt_codforExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Compras_Orc_Localizar.edt_data_IniExit(Sender: TObject);
begin
if edt_data_Ini.Date>edt_data_fin.Date then
   edt_data_fin.Date:=edt_data_Ini.Date;

end;

procedure TFrm_Compras_Orc_Localizar.FormCreate(Sender: TObject);
var
Query_Exe: TQuery;
begin
if codusr=1111 then
   CB_CHAVEBRANCO.Visible:=true
else
   CB_CHAVEBRANCO.Visible:=false;

if flfilpad(-1,'_COMPRAS_ORC_LOCALIZAR','CB_CHAVEBRANCO') then
  CB_CHAVEBRANCO.Checked:=DM4.Tb_FilPad2FPVALOR.AsString='true';

if flfilpad(-2,'_COMPRAS_ORC_LOCALIZAR','CB_ORDEM') then
  CB_ORDEM.Itemindex:=valint(DM4.Tb_FilPad2FPVALOR.AsString);

edt_chave_ini.Text:='';
edt_chave_fin.Text:='';

if CB_CHAVEBRANCO.Checked=false then
   begin
   Query_Exe:= TQuery.Create(nil);
   Query_Exe.DatabaseName:='SG_ASSOC';
   Query_Exe.Close;
   Query_Exe.SQL.Clear;
   Query_Exe.SQL.Add('Select max(PF1CHAVE) AS CHAVE'
                        +'  from CADPF1 ');

   try
      Query_Exe.Open;
   except
      if not fVerificaRedeAtiva(true) then
         begin
         end
      else
         begin
         ex_erroSql_Novo(Query_Exe,301,'_lerarq','Cadp01_pre');
         freeandnil(query_exe);
         exit;
         end;
      end;
    edt_chave_ini.Text:= Query_exe.Fields[0].AsString;
    edt_chave_fin.Text:=edt_chave_ini.Text;
    freeandnil(query_exe);
    end;
edt_data_Ini.Text:='';
edt_data_fin.Text:='';
edt_codfor.Text:='';
edt_numnf_ini.Text:='';
edt_numnf_fin.Text:='';

lbx_codfor.Clear;

Tb_Pfor01_OrcPF1DATA.DisplayFormat       :=fdt2;
Tb_pfor01_orcPF1TOTLIQ.DisplayFormat      :=mCasas;
Tb_Pfor02_OrcPF2QTDPED.DisplayFormat      :=mcasqtd;
Tb_Pfor02_OrcPF2PCOUNI.DisplayFormat      :=mcasaspu;
Tb_pfor02_orcPF2DESC_PERC01.DisplayFormat :=mCasas;
Tb_pfor02_orcPF2DESC_PERC02.DisplayFormat :=mCasas;
Tb_pfor02_orcPF2DESC_VALOR.DisplayFormat  :=mCasas;
Tb_pfor02_orcPF2DESC_TOTDES.DisplayFormat :=mCasas;
Tb_pfor02_orcPF2IPI_VALOR.DisplayFormat   :=mCasas;
Tb_pfor02_orcPF2PIS_VALOR.DisplayFormat   :=mCasas;
Tb_pfor02_orcPF2COFINS_VALOR.DisplayFormat:=mCasas;
Tb_pfor02_orcPF2TOTLIQ.DisplayFormat      :=mCasas;
Tb_pfor02_orcPF2ICMSSN_VALOR.DisplayFormat:=mCasas;


end;

procedure TFrm_Compras_Orc_Localizar.lbx_codforKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      Lbx_codfor.Items.Delete(Lbx_codfor.ItemIndex);

end;

procedure TFrm_Compras_Orc_Localizar.RG_TIPOPEDClick(Sender: TObject);
begin
//RG_TIPOPED:=Valida_CheckList(RG_TIPOPED);

end;

procedure TFrm_Compras_Orc_Localizar.src_pfor01_orcDataChange(Sender: TObject;
  Field: TField);
begin
if (not Tb_pfor01_orcPF1CHAVE.IsNull) and
   ( (not Tb_pfor02_orc.Active) or
     (Tb_pfor01_orcPF1CHAVE.AsInteger<>Tb_pfor02_orcPF2CHAVE.AsInteger) or
     (Tb_Pfor01_OrcPF1LOTSEQ.AsInteger<>Tb_Pfor02_OrcPF2LOTSEQ.AsInteger) or
     (Tb_pfor01_orcPF1CODEMP.AsInteger<>Tb_pfor02_orcPF2CODEMP.AsInteger)
     ) then
   begin
   Tb_pfor02_orc.Close;
   Tb_pfor02_orc.SQL.clear;
   Tb_pfor02_orc.SQL.Add('select PF2CODEMP,PF2CHAVE,PF2LOTSEQ,PF2ITEM,PF2CODPRO, '
                        +'PDNOME,PDUND,PF2QTDP AS PF2QTDPED,PF2PU AS PF2PCOUNI, '
                        +'PF2DESC01 PF2DESC_PERC01,PF2DESC02 AS PF2DESC_PERC02,'
                        +'PF2DESC03 AS PF2DESC_VALOR,PF2TOTDES AS PF2DESC_TOTDES,'
                        +'PF2SIT AS PF2CST,PF2CFO AS PF2CFOP,PF2IPI AS PF2IPI_VALOR,'
                        +'PF2PIS_VALOR,PF2COFINS_VALOR,PF2TOTLIQ,PF2ICMSSN_VALOR from '
                        +' CADPF2,CADPRO '
                        +' where PDCODPRO=PF2CODPRO ');
   Tb_pfor02_orc.SQL.Add(' and PF2CODEMP='+Tb_pfor01_orcPF1CODEMP.AsString
                        +' and PF2CHAVE='+Tb_pfor01_orcPF1CHAVE.AsString
                        +' and PF2LOTSEQ='+Tb_Pfor01_OrcPF1LOTSEQ.AsString
                        +iif(DM1.Qr_TID.locate('TINOME','CADPRO',[]),'','PDCODEMP=0'+IntToStr(codemp)+' and ')
                        +' order by PF2ITEM ');

    try
       Tb_pfor02_orc.Open;
    except
       if not fVerificaRedeAtiva(true) then
          begin
          end
       else
          begin
          ex_erroSql_Novo(Tb_pfor02_orc,303,'_compras_orc_localizar','cadpf02_orc');
          exit;
          end;
       end;
   end;
end;

procedure TFrm_Compras_Orc_Localizar.edt_data_finExit(Sender: TObject);
begin
if (edt_data_Ini.Date>0) and (edt_data_fin.date>0) then
  begin
  if edt_data_Ini.Date > edt_data_fin.Date then
    begin
    fmensagem('Data Final não pode ser menor'+#13+' que a Data Inicial!',0,['0'],0);
    edt_data_fin.SetFocus;
    end;
  end;
end;

procedure TFrm_Compras_Orc_Localizar.edt_numnf_iniExit(Sender: TObject);
begin
edt_numnf_ini.Text:=fdeixanum(edt_numnf_ini.Text);
end;

procedure TFrm_Compras_Orc_Localizar.edt_numnf_finExit(Sender: TObject);
begin
edt_numnf_fin.Text:=fdeixanum(edt_numnf_fin.Text);

end;

procedure TFrm_Compras_Orc_Localizar.CB_CHAVEBRANCOClick(Sender: TObject);
begin
fDeletaPadroes(-1,'_COMPRAS_ORC_LOCALIZAR','CB_CHAVEBRANCO');
if CB_CHAVEBRANCO.Checked then
  fGravaPadroes(-1,'CB_CHAVEBRANCO'    ,'checked'   ,'_COMPRAS_ORC_LOCALIZAR','true');

end;

procedure TFrm_Compras_Orc_Localizar.CB_ORDEMClick(Sender: TObject);
begin
fDeletaPadroes(-2,'_COMPRAS_ORC_LOCALIZAR','CB_ORDEM');
fGravaPadroes(-2,'CB_ORDEM'    ,'itemindex'   ,'_COMPRAS_ORC_LOCALIZAR',inttostr(CB_ORDEM.itemindex));
end;

end.

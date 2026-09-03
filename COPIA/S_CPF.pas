unit S_CPF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, func, S_For, S_Pro, S_DM1, DB, DBTables,
  Grids, DBGrids,lerarq, s_lerarq_geral, DBCtrls;

type
  TFrm_CPF = class(TForm)
    Qr_CPF: TQuery;
    Src_CPF: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid_cpf: TDBGrid;
    Qr_CPFobs_fator: TStringField;
    DBText1: TDBText;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    CODFOR: TEdit;
    lbx_codfor: TListBox;
    OMITIR_FOR: TCheckBox;
    Label4: TLabel;
    CODPRO: TEdit;
    lbx_codpro: TListBox;
    OMITIR_PRO: TCheckBox;
    Label6: TLabel;
    edt_codpforn: TEdit;
    lbx_codpforn: TListBox;
    OMITIR_CPF: TCheckBox;
    BBSAIR: TBitBtn;
    GroupBox3: TGroupBox;
    Qr_for: TQuery;
    Src_For: TDataSource;
    Qr_forFCODFOR: TFloatField;
    Qr_forFRAZAO: TStringField;
    Qr_forFCIDADE: TStringField;
    Qr_forFUF: TStringField;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    EXCLUIR: TBitBtn;
    U_CPF: TUpdateSQL;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edt_nomfor: TEdit;
    Label2: TLabel;
    edt_nompro: TEdit;
    Qr_CPFPFCODEMP: TFloatField;
    Qr_CPFPFCODPRO: TFloatField;
    Qr_CPFPFCODPFORN: TStringField;
    Qr_CPFFCODFOR: TFloatField;
    Qr_CPFFRAZAO: TStringField;
    Qr_CPFPDNOME: TStringField;
    Qr_CPFPDMARCA: TStringField;
    Qr_CPFPDUND: TStringField;
    Qr_CPFPFFATOR: TFloatField;
    Qr_CPFPFUNDFOR: TStringField;
    Qr_CPFQTDPRO: TFloatField;
    Qr_CPFPFQTDFOR: TFloatField;
    procedure BBSAIRClick(Sender: TObject);
    procedure Qr_CPFCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CODFORExit(Sender: TObject);
    procedure CODFORKeyPress(Sender: TObject; var Key: Char);
    procedure CODPROExit(Sender: TObject);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure lbx_codproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_codpfornExit(Sender: TObject);
    procedure lbx_codforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbx_codpfornKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Src_ForDataChange(Sender: TObject; Field: TField);
    procedure Qr_CPFAfterInsert(DataSet: TDataSet);
    procedure DBGrid_cpfColExit(Sender: TObject);
    procedure Qr_CPFBeforePost(DataSet: TDataSet);
    procedure Qr_CPFBeforeDelete(DataSet: TDataSet);
    procedure Qr_CPFBeforeEdit(DataSet: TDataSet);
    procedure Qr_CPFAfterPost(DataSet: TDataSet);
    procedure edt_nomforChange(Sender: TObject);
    procedure edt_nomproChange(Sender: TObject);
    procedure DBGrid_cpfKeyPress(Sender: TObject; var Key: Char);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure DBGrid_cpfExit(Sender: TObject);
  private
    { Private declarations }

    mLendofornecedor : Boolean;

    mOper_cpf: Integer;
    mAnt_Codpro: Real;
    mAnt_CodpFor: String;
    mAnt_CodFor: Real;

    function fLerProdutos: Boolean;

    function fLerFornecedor: Boolean;

  public
    morigem: String;
    { Public declarations }
  end;

var
  Frm_CPF: TFrm_CPF;
  mstatus: Integer;

implementation

uses func_excecoes;

{$R *.DFM}

procedure TFrm_CPF.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_CPF.Qr_CPFCalcFields(DataSet: TDataSet);
begin
if Qr_CPFPFFATOR.AsFloat<>0 then
   begin
   Qr_CPFobs_fator.Value:='1 '+Qr_CPFPFUNDFOR.AsString+' é igual a '+
                         FloatToStr(1*Qr_CPFPFFATOR.AsFloat)+' '+Qr_CPFPDUND.AsString+' '+Qr_CPFPDNOME.AsString;
   end
else
   Qr_CPFobs_fator.Value:='';
end;

procedure TFrm_CPF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_CPF.CODFORExit(Sender: TObject);
begin
CODFOR.Text:=fdeixanum2(CODFOR.Text);
if Trim(CODFOR.Text)<>'' then
   begin
   flcadfor(1,0,CODFOR.Text);
   if DM1.Tb_for.Eof then
      begin
      fmensagem('fornecedor nao Cadastrado!',0,['0'],0);
      CODfor.SetFocus;
      end
   else
      begin
      lbx_codfor.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ForFCODFOR.ASSTRING))
                                    +' - '+DM1.Tb_ForFRAZAO.AsString);
      codfor.text := '';
      fLerFornecedor;

      codfor.setfocus;

      end;
   end;

end;

procedure TFrm_CPF.CODFORKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODFOR.Text:=fChamaFor(0,'FRM_MEDTPRO',KEY);
   if valFloat(codfor.text)<>0 then
      CODFORExit(self);
   CODFOR.text := '';
   key:=#0;
   end;

end;

function TFrm_CPF.fLerFornecedor: Boolean;
var
mCompSql: String;
begin
mLendofornecedor:=true;
Qr_for.close;
Qr_for.SQL.clear;
Qr_for.SQL.Add('SELECT FCODFOR,FRAZAO,FCIDADE,FUF FROM CADFOR '
              +',CODPFOR WHERE PFCODFOR(+)=FCODFOR AND PFCODEMP(+)=FCODEMP '
              +' and NVL(FTIPOF,0)=0 '
              );
mCompSql:=fItensListBox(0,lbx_codfor,OMITIR_FOR);
if trim(mCompSql)<>'' then
   Qr_For.SQL.Add(' and FCODFOR '+mCompSql);
Qr_for.SQL.add(' GROUP BY FCODFOR,FRAZAO,FCIDADE,FUF ORDER BY FRAZAO ');
Qr_for.Open;
mLendofornecedor:=false;
fLerProdutos;
end;
function TFrm_CPF.fLerProdutos: Boolean;
var
mCompSql: String;
begin
Qr_CPF.close;
Qr_CPF.SQL.clear;
Qr_CPF.SQL.Add('SELECT PDCODEMP AS PFCODEMP,PDCODPRO AS PFCODPRO,PFCODPFORN,FCODFOR,FRAZAO,PDNOME,PDMARCA,PDUND '
              +',PFFATOR,PFUNDFOR,1 as PFQTDFOR,1*PFFATOR AS QTDPRO  '
              +' FROM CODPFOR,CADPRO,CADFOR '
              +' WHERE PFCODEMP='+IntTostr(codemp)
              +' and FCODEMP=PFCODEMP and FCODFOR=PFCODFOR '
              +' and PDCODEMP=PFCODEMP '
              +' and PDCODPRO=PFCODPRO ');
mCompSql:=fItensListBox(0,lbx_codfor,OMITIR_FOR);

 Qr_cpf.SQL.Add(' and PFCODFOR='+Qr_forFCODFOR.AsString);

mCompSql:=fItensListBox(0,lbx_codpro,OMITIR_PRO);
if trim(mCompSql)<>'' then
   Qr_cpf.SQL.Add(' and PDCODPRO '+mCompSql);

mCompSql:=fItensListBox(1,lbx_codpforn,OMITIR_CPF);
if trim(mCompSql)<>'' then
   Qr_cpf.SQL.Add(' and PFCODPFORN '+mCompSql);

Qr_cpf.SQL.Add(' order by PDNOME ');

//Qr_CPF.sql.savetofile('c:\sql.txt');

try
   Qr_CPF.open;
except
   Qr_CPF.sql.savetofile('c:\sql.txt');
   end;

end;

procedure TFrm_CPF.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Trim(CODPRO.Text)<>'' then
   begin
   if not flcadpro(1,0,0,CODPRO.Text) then
      begin
      fmensagem('Produto nao Cadastrado!',0,['0'],0);
      CODpro.SetFocus;
      end
   else
      begin
      lbx_codpro.Items.Add(FormatFloat('0000000',StrToFloat(DM1.Tb_ProPDCODPRO.ASSTRING))
                                    +' - '+DM1.Tb_ProPDNOME.AsString);
      codpro.text := '';
      codpro.setfocus;
      fLerProdutos;
      end;

   end;

end;

procedure TFrm_CPF.CODPROKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'MedPro02',key);
   key:=#0;
   CODPROExit(Self);
   end;

end;

procedure TFrm_CPF.lbx_codproKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=46 then
   if lbx_codpro.ItemIndex>=0 then
      begin
      lbx_codpro.Items.Delete(lbx_codpro.ItemIndex);
      fLerProdutos;
      end;

end;

procedure TFrm_CPF.edt_codpfornExit(Sender: TObject);
begin
if Trim(edt_codpforn.Text)<>'' then
   begin
   lbx_codpforn.Items.Add(edt_codpforn.Text+' - '+edt_codpforn.Text);
   edt_codpforn.text := '';
   edt_codpforn.setfocus;
   fLerProdutos;
   end;

end;

procedure TFrm_CPF.lbx_codforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then
   if lbx_codfor.ItemIndex>=0 then
      begin
      lbx_codfor.Items.Delete(lbx_codfor.ItemIndex);
      fLerFornecedor;
      end;

end;

procedure TFrm_CPF.lbx_codpfornKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=46 then

   if lbx_codpforn.ItemIndex>=0 then
      begin
      lbx_codpforn.Items.Delete(lbx_codpforn.ItemIndex);
      fLerProdutos;
      end;

end;

procedure TFrm_CPF.FormCreate(Sender: TObject);
begin
    mLendofornecedor := false;

end;

procedure TFrm_CPF.FormShow(Sender: TObject);
begin
   fLerFornecedor;
end;

procedure TFrm_CPF.Src_ForDataChange(Sender: TObject; Field: TField);
begin
if not mLendofornecedor then
   fLerProdutos;

end;

procedure TFrm_CPF.Qr_CPFAfterInsert(DataSet: TDataSet);
begin
    mOper_cpf   :=0; // inclusao
    mAnt_Codpro :=0;
    mAnt_CodpFor:='';
    mAnt_CodFor :=0;

Qr_CPFPFCODEMP.Value:=codemp;
Qr_CPFFRAZAO.Value  :=Qr_forFRAZAO.AsString;
Qr_CPFFCODFOR.Value :=Qr_forFCODFOR.AsFloat;

Qr_CPFPFQTDFOR.Value :=1;
Qr_CPFQTDPRO.Value   :=1;
end;

procedure TFrm_CPF.DBGrid_cpfColExit(Sender: TObject);
begin
if Qr_CPF.State in [dsEdit,dsInsert] then
   begin
   if DBGrid_cpf.SelectedField=Qr_CPFPFCODPRO then
      begin
      if flcadpro(1,0,0,Qr_CPFPFCODPRO.AsString) then
         begin
         Qr_CPFPDNOME.AsString:=DM1.Tb_ProPDNOME.AsString;
         Qr_CPFPDUND.AsString :=DM1.Tb_ProPDUND.AsString;
         Qr_CPFPDMARCA.AsString:=DM1.Tb_ProPDMARCA.AsString;
         end
      else
         begin
         Qr_CPFPDNOME.AsString :='';
         Qr_CPFPFCODPRO.Value  :=0;
         Qr_CPFPDUND.AsString  :='';
         Qr_CPFPDMARCA.AsString:='';
         end;
      end;
   end;
end;

procedure TFrm_CPF.Qr_CPFBeforePost(DataSet: TDataSet);
begin
if (Qr_CPFPFCODPRO.IsNull) or (Qr_CPFPFCODPRO.AsFloat=0) then
    begin
    Qr_CPF.Cancel;
    abort;
    exit;
    end;
if Qr_CPFPFCODEMP.AsInteger<=0 then
   Qr_CPFPFCODEMP.Value:=codemp;
if Qr_CPFFCODFOR.AsFloat<=0 then
   begin
   Qr_CPFFCODFOR.Value := Qr_forFCODFOR.AsFloat;
   Qr_CPFFRAZAO.Value  := Qr_forFRAZAO.AsString;
   end;
if Qr_CPFQTDPRO.AsFloat<0 then
   Qr_CPFQTDPRO.AsFloat:=1;
if Qr_CPFFCODFOR.AsFloat<0 then
   Qr_CPFFCODFOR.AsFloat:=1;

end;

procedure TFrm_CPF.Qr_CPFBeforeDelete(DataSet: TDataSet);
var
query_exe: tQuery;
begin
if not Qr_CPFPFCODPRO.IsNull then
   begin
   query_exe:=tQuery.Create(nil);
   query_exe.DatabaseName:='SG_ASSOC';
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Delete from CODPFOR where PFCODEMP=:CODEMP ');
   query_exe.ParamByName('CODEMP').AsInteger:=codemp;
   if trim(Qr_CPFPFCODPFORN.Value)<>'' then
      begin
      query_exe.sql.add(' and PFCODPFORN=:CODPFORN ');
      Query_exe.ParamByName('CODPFORN').Value := Qr_CPFPFCODPFORN.AsString;
      end
   else
      query_exe.sql.add(' and NVL(PFCODPFORN,'+QuotedStr(' ')+')='+QuotedStr(' '));

   if fsonumero(Qr_CPFPFCODPRO.AsString)=0 then
      begin
      query_exe.sql.add(' and PFCODPRO=:CODPRO ');
      Query_exe.ParamByName('CODPRO').Value := Qr_CPFPFCODPRO.AsString;
      end;
   query_exe.ExecSQL;

   end;
end;

procedure TFrm_CPF.Qr_CPFBeforeEdit(DataSet: TDataSet);
begin
    mOper_cpf   :=1; // alteracao
    mAnt_Codpro :=Qr_CPFPFCODPRO.AsFloat;
    mAnt_CodpFor:=Qr_CPFPFCODPFORN.AsString;
    mAnt_CodFor :=Qr_CPFFCODFOR.AsFloat;

end;

procedure TFrm_CPF.Qr_CPFAfterPost(DataSet: TDataSet);
var
query_cpf: TQuery;
begin
query_cpf:=TQuery.Create(nil);
query_cpf.DatabaseName:='SG_ASSOC';
query_cpf.Close;
query_cpf.SQL.Clear;
if mOper_cpf=0 then // se inclusao
   begin
   query_cpf.sql.add('Insert into CODPFOR ('
                    +'PFCODEMP '
                    +',PFCODPRO '
                    +',PFCODFOR  '
                    +',PFCODPFORN  '
                    +',PFDATA_EVE  '
                    +',PFFATOR  '
                    +',PFUNDFOR '
                    +') values ('
                    +':PFCODEMP '
                    +',:PFCODPRO '
                    +',:PFCODFOR  '
                    +',:PFCODPFORN  '
                    +',SYSDATE  '
                    +',:PFFATOR  '
                    +',:PFUNDFOR '
                    +')');
   query_cpf.ParamByName('PFCODEMP').AsFloat:=Qr_CPFPFCODEMP.AsFloat;
   query_cpf.ParamByName('PFCODPRO').AsFloat:=Qr_CPFPFCODPRO.AsFloat;
   query_cpf.ParamByName('PFCODFOR').AsFloat:=Qr_CPFFCODFOR.AsFloat;
   query_cpf.ParamByName('PFCODPFORN').Value:=Qr_CPFPFCODPFORN.AsString;
   if (Qr_CPFQTDPRO.AsFloat>0) and (Qr_CPFPFQTDFOR.AsFloat>0) then
      query_cpf.ParamByName('PFFATOR').AsFloat :=Qr_CPFQTDPRO.AsFloat/Qr_CPFPFQTDFOR.AsFloat
   else
      query_cpf.ParamByName('PFFATOR').AsFloat :=0;
   query_cpf.ParamByName('PFUNDFOR').Value  :=copy(Qr_CPFPFUNDFOR.AsString,1,3);
   try
      query_cpf.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end
else
   begin
   query_cpf.sql.add('update CODPFOR set '
                    +'PFCODEMP=:PFCODEMP '
                    +',PFCODPRO=:PFCODPRO  '
                    +',PFCODFOR=:PFCODFOR  '
                    +',PFCODPFORN=:PFCODPFORN '
                    +',PFDATA_EVE=SYSDATE  '
                    +',PFFATOR=:PFFATOR  '
                    +',PFUNDFOR=:PFUNDFOR '
                    +' where PFCODEMP=:ANT_PFCODEMP '
                    +' and   PFCODPRO=:ANT_PFCODPRO '
                    +' and   PFCODFOR=:ANT_PFCODFOR ');
   query_cpf.ParamByName('PFCODEMP').AsFloat:=Qr_CPFPFCODEMP.AsFloat;
   query_cpf.ParamByName('PFCODPRO').AsFloat:=Qr_CPFPFCODPRO.AsFloat;
   query_cpf.ParamByName('PFCODFOR').AsFloat:=Qr_CPFFCODFOR.AsFloat;
   if (Qr_CPFQTDPRO.AsFloat>0) and (Qr_CPFPFQTDFOR.AsFloat>0) then
      query_cpf.ParamByName('PFFATOR').AsFloat :=Qr_CPFQTDPRO.AsFloat/Qr_CPFPFQTDFOR.AsFloat
   else
      query_cpf.ParamByName('PFFATOR').AsFloat :=0;
   query_cpf.ParamByName('PFUNDFOR').Value  :=copy(Qr_CPFPFUNDFOR.AsString,1,3);

   query_cpf.ParamByName('ANT_PFCODEMP').AsFloat:= Qr_CPFPFCODEMP.AsFloat;
   query_cpf.ParamByName('ANT_PFCODPRO').AsFloat:=mAnt_Codpro;
   query_cpf.ParamByName('ant_PFCODFOR').AsFloat:=mAnt_CodFor;
   query_cpf.ParamByName('PFCODPFORN').Value:=Qr_CPFPFCODPFORN.AsString;
   query_cpf.ParamByName('PFFATOR').AsFloat :=Qr_CPFQTDPRO.AsFloat/Qr_CPFPFQTDFOR.AsFloat;
   query_cpf.ParamByName('PFUNDFOR').Value  :=copy(Qr_CPFPFUNDFOR.AsString,1,3);
   try
      query_cpf.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;
freeandnil(query_cpf);

Try
  DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
  If not DM1.SG_ASSOC.InTransaction then
    DM1.SG_ASSOC.StartTransaction;
  DM1.SG_ASSOC.Commit;
Except
  fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
  end;


end;

procedure TFrm_CPF.edt_nomforChange(Sender: TObject);
begin
Qr_For.Locate('FRAZAO',edt_nomfor.text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFrm_CPF.edt_nomproChange(Sender: TObject);
begin
Qr_CPF.Locate('PDNOME',edt_nompro.text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFrm_CPF.DBGrid_cpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['0'..'9']) and
   (DBGrid_CPF.SelectedField=Qr_CPFPFCODPRO) and
   (Qr_CPF.State in [dsBrowse]) then
   begin
   if Qr_CPFPFCODPRO.IsNull then
      begin
      Qr_CPF.Append;
     end;
   end
else if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%'))
   and (DBGrid_CPF.SelectedField=Qr_CPFPFCODPRO) then
   begin
   if not (Qr_CPF.State in [dsEdit,dsInsert]) then
      begin
      if Qr_CPFPFCODPRO.IsNull then
         Qr_CPF.Append
      else
         Qr_CPF.Edit;
      end;
   Qr_CPFPFCODPRO.AsString:=fChamaPesqPro(0,'_venda',key);
   key:=#0;
   if (Qr_CPFPFCODPRO.AsString)<>'' then
      begin
      DBGrid_cpfColExit(self);

      keybd_event(VK_RETURN,0,0,0);

//      Self.Perform(WM_NEXTDLGCTL,0,0);
//      DBGrid_itens.SelectedField:=Tb_Ped02_preP2QTD;
      end;

   end;

end;

procedure TFrm_CPF.INCLUIRClick(Sender: TObject);
begin
if Qr_CPF.Active then
   begin
   Qr_CPF.Append;
   DBGrid_cpf.SetFocus;
   end;
end;

procedure TFrm_CPF.ALTERARClick(Sender: TObject);
begin
if (Qr_CPF.Active) and (not Qr_CPFPFCODPRO.IsNull) then
   begin
   Qr_CPF.Edit;
   DBGrid_cpf.SetFocus;
   end;

end;

procedure TFrm_CPF.EXCLUIRClick(Sender: TObject);
begin
if (Qr_CPF.Active) and (not Qr_CPFPFCODPRO.IsNull) then
   begin
   if Application.MessageBox(pchar('Quer realmente excluir o produto: '+Qr_CPFPFCODPRO.asstring),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   Qr_CPF.Delete;
   end;

end;

procedure TFrm_CPF.DBGrid_cpfExit(Sender: TObject);
begin
IF Qr_CPF.State in  [dsedit,dsinsert] then
   Qr_CPF.Post;
end;

end.

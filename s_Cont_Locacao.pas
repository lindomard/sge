unit s_Cont_Locacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, DBCtrls, Buttons, ComCtrls,
  DB, DBTables, RXDBCtrl, Grids, DBGrids, Menus, WPCTRRich, WPTbar,
  WPRTEDefs, WPCTRMemo, WPRuler,s_lerarq_geral;

type
  TFrm_Cont_Locacao = class(TForm)
    Panel_navegar: TPanel;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;                
    EXCLUIR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    IMPRIMIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    Label4: TLabel;
    CB_TIPO: TComboBox;
    NOME: TEdit;
    bbAtualizar: TBitBtn;
    SAIR: TBitBtn;
    PC1: TPageControl;
    TsCad: TTabSheet;
    tsLista: TTabSheet;
    Panel_CAB: TPanel;
    Label1: TLabel;
    Label2: TLabel;            
    Label3: TLabel;
    gb_cab: TGroupBox;
    Label5: TLabel;
    Qr_Loca01: TQuery;
    Qr_Loca02: TQuery;
    Qr_Loca02LC02_CODEMP: TFloatField;
    Qr_Loca02LC02_CHAVE: TFloatField;
    Qr_Loca02LC02_ITEM: TFloatField;
    Qr_Loca02LC02_CODPRO: TFloatField;
    Qr_Loca02LC02_QUANT: TFloatField;
    Qr_Loca02LC02_NOME: TStringField;
    Qr_Loca02LC02_COMPLEMENTO: TStringField;
    Qr_Loca02LC02_PU: TFloatField;
    Src_Loca01: TDataSource;
    Src_Loca02: TDataSource;
    DBE_DATA: TDBDateEdit;
    dbe_CHAVEPED: TDBEdit;
    DBE_NUMCON: TDBEdit;
    DBE_CODCLI: TDBEdit;
    DBE_NOMCLI: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    Label8: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label9: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label10: TLabel;
    DBE_VALCON: TDBEdit;
    Label11: TLabel;
    DBE_FPGTO: TDBEdit;
    gb_itens: TGroupBox;
    DBGrid1_Itens: TDBGrid;
    pop_excluir: TPopupMenu;
    ExluirItem1: TMenuItem;
    U_Loca02: TUpdateSQL;
    Label12: TLabel;
    DBE_CHAVE: TDBEdit;
    DBGrid1: TDBGrid;
    U_Loca01: TUpdateSQL;
    Qr_Loca01endereco: TStringField;
    Qr_Loca01documento: TStringField;
    Qr_Loca01fone: TStringField;
    TsConfiguracoes: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    gb_subst: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    gb_macros: TGroupBox;
    Label27: TLabel;
    tsRelatorio1: TTabSheet;
    wp_texto1: TWPRichText;
    Panel1: TPanel;
    txt_pagini: TEdit;
    Label25: TLabel;
    txt_pagfin: TEdit;
    Label26: TLabel;
    BitBtn1: TBitBtn;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Qr_Loca01documento2: TStringField;
    Label31: TLabel;
    Label32: TLabel;
    DBMemo3: TDBMemo;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    WPVertRuler1: TWPVertRuler;
    WPRuler1: TWPRuler;
    WPToolBar1: TWPToolBar;
    tsRelatorio2: TTabSheet;
    Panel2: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    txt_pagini2: TEdit;
    txt_pagfin2: TEdit;
    BitBtn2: TBitBtn;
    WPToolBar2: TWPToolBar;
    WPVertRuler2: TWPVertRuler;
    WPRuler2: TWPRuler;
    Label38: TLabel;
    wp_texto2: TWPRichText;
    DBMemo2: TDBMemo;
    Qr_Loca01LC01_CODEMP: TFloatField;
    Qr_Loca01LC01_CHAVE: TFloatField;
    Qr_Loca01LC01_NUMCON: TStringField;
    Qr_Loca01LC01_DATA: TDateTimeField;
    Qr_Loca01LC01_DATA_INI: TDateTimeField;
    Qr_Loca01LC01_DATA_FIN: TDateTimeField;
    Qr_Loca01LC01_DATA_DEV: TDateTimeField;
    Qr_Loca01LC01_CODUSR_DEV: TFloatField;
    Qr_Loca01LC01_CODCLI: TFloatField;
    Qr_Loca01LC01_OBSERVACAO: TMemoField;
    Qr_Loca01LC01_CHAVEPED: TFloatField;
    Qr_Loca01LC01_VALOR: TFloatField;
    Qr_Loca01LC01_FPGTO: TStringField;
    Qr_Loca01LC01_DATHOR_INC: TDateTimeField;
    Qr_Loca01LC01_CODUSR_INC: TFloatField;
    Qr_Loca01LC01_DATHOR_ALT: TDateTimeField;
    Qr_Loca01LC01_CODUSR_ALT: TFloatField;
    Qr_Loca01LC01_LOCALIZACAO: TMemoField;
    Qr_Loca01CLOG: TStringField;
    Qr_Loca01CBAIRRO: TStringField;
    Qr_Loca01CCIDADE: TStringField;
    Qr_Loca01CUF: TStringField;
    Qr_Loca01CCEP: TStringField;
    Qr_Loca01CCNPJ: TFloatField;
    Qr_Loca01CIE: TStringField;
    Qr_Loca01CCPF: TFloatField;
    Qr_Loca01CRG: TStringField;
    Qr_Loca01CFONE01: TStringField;
    Qr_Loca01CFONE02: TStringField;
    Qr_Loca01CRAZAO: TStringField;
    Qr_Loca01CCELULAR: TStringField;
    procedure SAIRClick(Sender: TObject);
    procedure DBGrid1_ItensColEnter(Sender: TObject);
    procedure DBGrid1_ItensColExit(Sender: TObject);
    procedure DBGrid1_ItensExit(Sender: TObject);
    procedure DBGrid1_ItensKeyPress(Sender: TObject; var Key: Char);
    procedure ExluirItem1Click(Sender: TObject);
    procedure c(DataSet: TDataSet);
    procedure Qr_Loca02AfterInsert(DataSet: TDataSet);
    procedure Qr_Loca02AfterPost(DataSet: TDataSet);
    procedure Qr_Loca02BeforeCancel(DataSet: TDataSet);
    procedure Qr_Loca02BeforeDelete(DataSet: TDataSet);
    procedure Qr_Loca02BeforeEdit(DataSet: TDataSet);
    procedure Qr_Loca02BeforePost(DataSet: TDataSet);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_Loca01DataChange(Sender: TObject; Field: TField);
    procedure INCLUIRClick(Sender: TObject);
    procedure ALTERARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure Qr_Loca01CalcFields(DataSet: TDataSet);
    procedure DBE_CODCLIKeyPress(Sender: TObject; var Key: Char);
    procedure DBE_CODCLIExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbe_CHAVEPEDEnter(Sender: TObject);
    procedure dbe_CHAVEPEDExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wp_texto1BeforePasteText(Sender: TObject;
      RTFData: TWPRTFDataCollection; par: TParagraph; Stream: TStream;
      Reader: TWPCustomTextReader; OnlyBodyText: Boolean;
      var LoadedText: TWPRTFDataBlock);
    procedure wp_texto1WorkOnTextChanged(Sender: TObject);
    procedure wp_texto2BeforePasteText(Sender: TObject;
      RTFData: TWPRTFDataCollection; par: TParagraph; Stream: TStream;
      Reader: TWPCustomTextReader; OnlyBodyText: Boolean;
      var LoadedText: TWPRTFDataBlock);
    procedure wp_texto2WorkOnTextChanged(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

     procedure ReplaceTags(var Editor: TWPRichText; LocTexto,pNovoValor: String);
     procedure FCarregaGrade(RowNr, ColNr: Integer; par: TParagraph);
     function fLerLoca01(pTipo: Integer): Boolean;
     function fLerLoca02(pTipo: Integer): Boolean;
     function fLoc01gant(ptipo: Integer): Boolean;
     function fCriarGradeItensModelo01(Editor: TWPRichText; pTipo: Integer): Boolean;
     Function fLerAtualizaRel1(pTipo: Integer): Boolean;
     Function fLerAtualizaRel2(pTipo: Integer): Boolean;

  end;

var
  Frm_Cont_Locacao: TFrm_Cont_Locacao;
  mProx_Item   : Integer=0;
  mAnt_CodPro  : Real=0;
  mAnt_Qtd     : Real=0;
  mOper_item   :Integer=0;
  mOper_Loc    :Integer=0;
  mAnt_Item    :Integer=0;
  mPosReg: TBookmark;


   FCellNr : Integer;

  pTitCol: Array of String;
  pNomCol: Array of string;
  pTamCol: Array of Integer;
  pFormato: Array of string;

  pDataSet: TDataSet;
  wprt    : TWPRichText;
  mChave_Ant: Real=0;
implementation

uses S_DM1, lerarq, Func, func_excecoes;

{$R *.dfm}

procedure TFrm_Cont_Locacao.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Cont_Locacao.DBGrid1_ItensColEnter(Sender: TObject);
begin
if DBGrid1_Itens.SelectedField=Qr_Loca02LC02_ITEM then
   begin
   if Qr_Loca02.State in [dsEdit,dsInsert] then
      begin
      if Qr_Loca02LC02_ITEM.AsFloat=0 then
         begin
         Qr_Loca02LC02_ITEM.AsFloat:=mProx_Item;
         mProx_Item:=mProx_item+1;
         end;
      end;
   end;

end;

procedure TFrm_Cont_Locacao.DBGrid1_ItensColExit(Sender: TObject);
begin
if (DBGrid1_Itens.SelectedField=Qr_Loca02LC02_CODPRO) then
   begin
   if (Qr_Loca02.State in [dsInsert, DsEdit]) and
      (Qr_Loca02LC02_CODPRO.AsFloat<>mAnt_Codpro) then
      begin
      if Qr_Loca02LC02_CODPRO.AsFloat<=0 then
         Qr_Loca02LC02_CODPRO.Value:=0
      else
         begin
         if flqr1('PDCODPRO,PDNOME,PDUND,PDPRECO1,PDMARCA','PD',
            'CADPRO','N','PDCODPRO',Qr_Loca02LC02_CODPRO.AsString) then
            begin
            Qr_Loca02LC02_NOME.Value:=DM1.Query1.FieldbyName('PDNOME').AsString;
            Qr_Loca02LC02_PU.Value:=DM1.Query1.FieldbyName('PDPRECO1').AsFloat;
            end
         else
            begin
            FMensagem('Produto Não Cadastrado.',0,['0'],0);
            Qr_Loca02LC02_CODPRO.Value:=0;
            abort;
            end;
         end;
      end;
   end;

end;

procedure TFrm_Cont_Locacao.DBGrid1_ItensExit(Sender: TObject);
begin
if (GRAVAR.Enabled) and (Qr_Loca02.State in [dsEdit,dsInsert]) then
   begin
   if (Qr_Loca02LC02_NOME.IsNull) or (Qr_Loca02LC02_QUANT.Asfloat=0) then
      Qr_Loca02.Cancel
   else
      Qr_Loca02.Post;
   end;
end;

procedure TFrm_Cont_Locacao.DBGrid1_ItensKeyPress(Sender: TObject;
  var Key: Char);
begin
if not GRAVAR.Enabled then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key in ['0'..'9']) then
      key:=#0;
   end;

if Qr_Loca02.State in [dsEdit, DsInsert] then
   begin
   if DBGrid1_Itens.SelectedField=Qr_Loca02LC02_CODPRO then
      begin
      if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
          begin
          Qr_Loca02LC02_CODPRO.Value:=valfloat(fChamaPro(0,'Frm_Lic1',key));
          DBGrid1_ItensColExit(Self);
          key:=#0;
          end;
      end;
   end;


end;

procedure TFrm_Cont_Locacao.ExluirItem1Click(Sender: TObject);
begin
if fmensagem('Quer Realmente Excluir?',0,['1','2'],2)=mrYes then
   begin
   try
      Qr_Loca02.Delete;
   except
      fmensagem('exessao',0,['0'],0);
      end;
   end;

end;

procedure TFrm_Cont_Locacao.c(DataSet: TDataSet);
begin
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;

end;

procedure TFrm_Cont_Locacao.Qr_Loca02AfterInsert(DataSet: TDataSet);
begin
Qr_Loca02LC02_CODEMP.Value  :=codemp;
Qr_Loca02LC02_CHAVE.Value   :=Qr_Loca01LC01_CHAVE.AsFloat;
Qr_LOCA02LC02_ITEM.Value    :=mProx_Item;
mProx_item:=mProx_item+1;
mAnt_qtd       :=Qr_Loca02LC02_QUANT.AsFloat;
moper_item     :=0;
mPosReg:=Qr_Loca02.GetBookmark;
end;

procedure TFrm_Cont_Locacao.Qr_Loca02AfterPost(DataSet: TDataSet);
begin
  mAnt_qtd              :=0;
  mAnt_Item             :=0;
mPosReg:=nil;
moper_item:=-1;
Try
   DM1.SG_ASSOC.ApplyUpdates([DataSet as TQuery]);
   If not DM1.SG_ASSOC.InTransaction then
      DM1.SG_ASSOC.StartTransaction;
   DM1.SG_ASSOC.Commit;
Except
   fmensagem('Ja Existe um Registro igual a Este Click em Cancelar!',0,['0'],0);
   end;



end;

procedure TFrm_Cont_Locacao.Qr_Loca02BeforeCancel(DataSet: TDataSet);
begin
  mAnt_qtd       :=0;
  mAnt_Item      :=0;

  mPosReg        :=Nil;
  if Qr_Loca02.State in [dsInsert] then
     mProx_Item:=mProx_Item-1;

end;

procedure TFrm_Cont_Locacao.Qr_Loca02BeforeDelete(DataSet: TDataSet);
begin

  mAnt_qtd       :=0;
  mAnt_Item      :=0;
  moper_item:=-1;

end;

procedure TFrm_Cont_Locacao.Qr_Loca02BeforeEdit(DataSet: TDataSet);
begin
  mAnt_qtd       :=Qr_Loca02LC02_QUANT.AsFloat;
  mAnt_Item      :=Qr_Loca02LC02_ITEM.AsInteger;
  moper_item:=1;
  mPosReg:=Qr_Loca02.GetBookmark;

end;

procedure TFrm_Cont_Locacao.Qr_Loca02BeforePost(DataSet: TDataSet);
begin
if (Qr_Loca02LC02_NOME.IsNull) and (Qr_Loca02LC02_QUANT.IsNull) then
   begin
   Qr_Loca02.Cancel;
   abort;
   end;

if Qr_Loca02LC02_NOME.IsNull then
   begin
   fMensagem('Favor Digitar um ítem válido!',0,['0'],0);
   DBGrid1_itens.SelectedField:=Qr_Loca02LC02_CODPRO;
   Abort;
   exit;
   end;
if Qr_Loca02LC02_QUANT.AsFloat<=0 then
   begin
   fmensagem('Quantidade Invalida!',0,['0'],0);
   DBGrid1_Itens.SelectedField:=Qr_Loca02LC02_QUANT;
   if PC1.ActivePage<>TsCad then
      PC1.ActivePage:=TsCad;
   if not DBGrid1_Itens.Focused then
      DBGrid1_Itens.SetFocus;
   abort;
   end;


if Qr_Loca02LC02_CODPRO.IsNull then
   Qr_Loca02LC02_CODPRO.Value    :=0;
if Qr_Loca02LC02_QUANT.IsNull then
   Qr_Loca02LC02_QUANT.Value    :=0;
if Qr_Loca02LC02_ITEM.AsFloat=0 then
   begin
   Qr_Loca02LC02_ITEM.AsFloat:=mProx_Item;
   mProx_Item:=mProx_item+1;
   end;

if mOper_item=0 then
   mProx_Item:=Qr_Loca02LC02_ITEM.AsInteger+1;




end;


function TFrm_Cont_Locacao.fLerLoca01(pTipo: Integer): Boolean;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
la_Empresas:='';
fInnerJoin(1,'CADCLI','CCODEMP','LC01_CODEMP','CCODCLI','LC01_CODCLI');

Qr_Loca01.Close;
Qr_Loca01.SQL.Clear;
Qr_Loca01.SQL.Add('Select CRAZAO,CLOG,CCIDADE,CUF,CCEP,CBAIRRO,CCELULAR,'
                 +' CFONE01,CFONE02,CCNPJ,CCPF,CIE,CRG, CADLOCA01.* '
                 +' from CADLOCA01'+iif(la_tabelas='','',',')+la_tabelas
               +'       '+la_Join
               +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
               +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
               +' LC01_CHAVE<>-1 ');
if not DM1.Qr_TID.locate('TINOME','CADPED',[]) then
   Qr_Loca01.SQL.add(' and LC01_CODEMP=0'+IntToStr(codemp));
if NOME.text<>'' then
   begin
   if CB_TIPO.ItemIndex=0 then
      Qr_Loca01.SQL.Add(' AND LC01_CHAVE='+fdeixanum(NOME.Text))
   else if CB_TIPO.Itemindex=1 then
      begin
      Qr_Loca01.SQL.Add(' AND LC01_DATA=:DATA');
      Qr_Loca01.ParamByName('DATA').AsDateTime := date;
      try
         Qr_Loca01.ParamByName('DATA').AsDateTime:=StrtoDate(NOME.Text)
      except
         NOME.Text:=FormatDatetime(fdt2, date);
         Qr_Loca01.ParamByName('DATA').AsDateTime := date;
         end;
      end
   else if CB_TIPO.ItemIndex=2 then
      Qr_Loca01.SQL.Add(' AND LC01_CODCLI='+fdeixanum(NOME.Text))
   else if CB_TIPO.ItemIndex=3 then
      begin
      Qr_Loca01.SQL.Add(' AND CRAZAO like :RAZAO');
      Qr_Loca01.ParamByName('RAZAO').AsString:=NOME.Text+'%';
      end
   else if CB_TIPO.ItemIndex=4 then
      begin
      Qr_Loca01.SQL.Add(' AND LC01_NUMCON like :NUMCON');
      Qr_Loca01.ParamByName('NUMCON').AsString:=NOME.Text+'%';
      end
   else if CB_TIPO.ItemIndex=5 then
      begin
      Qr_Loca01.SQL.Add(' AND LC01_CHAVEPED like :NUMCON');
      Qr_Loca01.ParamByName('NUMCON').AsString:=NOME.Text+'%';
      end;

   end;
//Qr_Loca01.SQL.Savetofile(mpastatemp +'sql2.txt');

try
   Qr_Loca01.Open;
   result:=true;
except
   ex_erroSql_Novo(Qr_Loca01,397,'frm_cont_locacao','CADLOCA01,CADCLI');
   result:=false;
   end;
end;
function TFrm_Cont_Locacao.fLerLoca02(pTipo: Integer): Boolean;
begin
if Qr_Loca01.Active then
   begin
   if (not Qr_Loca02.Active) or (Qr_Loca01LC01_CHAVE.AsFloat<>Qr_Loca02LC02_CHAVE.AsFloat) then
      begin
      Qr_Loca02.Close;
      Qr_Loca02.SQL.clear;
      Qr_Loca02.SQL.Add('Select * from CADLOCA02 where '
                       +' LC02_CHAVE=0'+Qr_Loca01LC01_CHAVE.AsString
                       +' and LC02_CODEMP=0'+Qr_Loca01LC01_CODEMP.AsString);
      try
         Qr_Loca02.Open;
      except
         ex_erroSql_Novo(Qr_Loca02,397,'frm_cont_locacao','CADLOCA02');
         end;
      end;
   end;
result:=true;
end;

procedure TFrm_Cont_Locacao.bbAtualizarClick(Sender: TObject);
begin
fLerLoca01(0);
end;

procedure TFrm_Cont_Locacao.Src_Loca01DataChange(Sender: TObject;
  Field: TField);
begin
if not (Qr_Loca01.State in [dsEdit, dsInsert]) then
   fLerLoca02(0);
end;

procedure TFrm_Cont_Locacao.INCLUIRClick(Sender: TObject);
begin
if not Qr_Loca01.Active then
   begin
   bbAtualizarClick(self);
   end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(LC01_CHAVE) from CADLOCA01 ');
if not DM1.Qr_tid.locate('TINOME','CADPED',[]) then
   DM1.Query1.SQL.add(' where LC01_CODEMP=0'+IntTosTr(codemp));
try
   DM1.Query1.open;
except
   exit;
   end;




PC1.ActivePageIndex:=0;
Qr_Loca01.Append;
Qr_Loca01LC01_CHAVE.AsFloat         :=DM1.Query1.fields[0].Asfloat+1;
Qr_Loca01LC01_NUMCON.AsFloat        :=Qr_Loca01LC01_CHAVE.AsFloat;
Qr_Loca01LC01_CODEMP.AsFloat        :=codemp;
Qr_Loca01LC01_CODCLI.AsFloat        :=0;
Qr_Loca01LC01_CODUSR_INC.AsFloat    :=codusr;
Qr_Loca01LC01_DATA.AsDateTime       :=date;
Qr_Loca01LC01_DATHOR_INC.AsDateTime :=now;
Qr_Loca01LC01_DATA.AsDateTime       :=date;
Qr_Loca01LC01_DATA_INI.AsDateTime   :=date;
Qr_Loca01LC01_DATA_FIN.AsDateTime   :=date+1;
Qr_Loca01LC01_VALOR.AsFloat         :=0;
FAtualizaBanco(0,'CADLOCA01','LC01_CODEMP',Qr_Loca01LC01_CODEMP.AsString
,['LC01_CHAVE'],[Qr_Loca01LC01_CHAVE.AsString]
 ,Qr_Loca01);
Qr_Loca01.Post;
mAnt_Item      :=0;
mPosReg:=nil;
fLerLoca02(0);
ALTERARClick(self);
mOper_Loc:=0;
mProx_item:=1;
end;

procedure TFrm_Cont_Locacao.ALTERARClick(Sender: TObject);
begin
if Qr_Loca01LC01_CHAVE.IsNull then
   begin
   Fmensagem('Não ha registro a ser alterado!',0,['0'],0);
   abort;
   end;
fLerLoca02(0);

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(LC02_ITEM) from CADLOCA02 where '
                  +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' LC02_CODEMP=0'+IntTostr(codemp)+' and ')
                  +' LC02_CHAVE=0'+Qr_Loca01LC01_CHAVE.AsString);
try
   DM1.Query1.open;
except
   end;
mProx_Item:=DM1.Query1.fields[0].asinteger+1;

PC1.ActivePageIndex:=0;
Panel_CAB.Enabled     :=True;
gb_cab.Enabled        :=True;
DBGrid1_Itens.ReadOnly:=false;
DBGrid1.Enabled       :=false;

PC1.ActivePageIndex:=0;

Qr_Loca01.Edit;
Qr_Loca01LC01_CODUSR_ALT.AsFloat   :=codusr;
Qr_Loca01LC01_DATHOR_ALT.AsDateTime:=now;

DBE_DATA.SetFocus;
INCLUIR.Enabled      :=False;
ALTERAR.Enabled      :=False;
IMPRIMIR.Enabled       :=False;
GRAVAR.Enabled       :=True;
EXCLUIR.Enabled      :=False;
CANCELAR.Enabled:=True;
fLerloca02(0);
mOper_Loc:=1;


end;

procedure TFrm_Cont_Locacao.EXCLUIRClick(Sender: TObject);
begin
if Qr_Loca01LC01_CHAVE.IsNull then
   begin
   Fmensagem('Não há registro a ser excluido!',0,['0'],0);
   abort;
   end;
if fMensagem('Quer Realmente Excluir este Registro?',0,['1','2'],2)=mrYes then
   begin
   fLoc01gant(9);
   DM1.Query1.Close;
   DM1.Query1.Sql.clear;
   DM1.Query1.Sql.add('Delete from CADLOCA02 where '
                   +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' LC02_CODEMP=0'+IntTostr(codemp)+' and '));
   DM1.Query1.SQL.add(' LC02_CHAVE=0'+Qr_Loca01LC01_CHAVE.AsString);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   FAtualizaBanco(2,'CADLOCA01','LC01_CODEMP',Qr_Loca01LC01_CODEMP.AsString
   ,['LC01_CHAVE'],[Qr_Loca01LC01_CHAVE.AsString]
   ,Qr_Loca01);
   DBGrid1.Enabled  :=True;
   INCLUIR.Enabled:=true;
   ALTERAR.Enabled:=true;

   GRAVAR.Enabled :=False;
   IMPRIMIR.Enabled:=false;
   EXCLUIR.Enabled:=true;
   CANCELAR.Enabled:=True;
   bbAtualizarClick(self);
   end;



end;

function TFrm_Cont_Locacao.fLoc01gant(ptipo: Integer): Boolean;
var
x,mcod: Integer;
minstru: String;
v: String;
begin
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select max(LC01_CODNOV) from OLD_CADLOCA01');
DM1.Query1.Open;
mcod:=DM1.Query1.Fields[0].AsInteger+1;
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select COLUMN_NAME from USER_TAB_COLUMNS where '
                  +' TABLE_NAME=:NOMETAB');
DM1.Query2.ParamByName('NOMETAB').AsString:='CADLOCA01';
DM1.query2.Open;



minstru:='Insert into OLD_CADLOCA01 (';
v:='';
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+',LC01_CODUSR';
minstru:=minstru+',LC01_DATHOR';
minstru:=minstru+',LC01_STATUS';

minstru:=minstru+',LC01_CODNOV) Select ';

v:='';
DM1.Query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;

minstru:=minstru+',:LC01_CODUSR';
minstru:=minstru+',:LC01_DATHOR';
minstru:=minstru+',:LC01_STATUS';

minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as LC01_CODNOV ';
minstru:=minstru+' from CADLOCA01 where LC01_CODEMP=0'+Qr_Loca01LC01_CODEMP.AsString
                +' and LC01_CHAVE=0'+Qr_Loca01LC01_CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
DM1.Query1.parambyName('LC01_CODUSR').asfloat     :=codusr;
DM1.Query1.parambyName('LC01_DATHOR').asdatetime  :=now;
DM1.Query1.parambyName('LC01_STATUS').asFloat     :=ptipo;

Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query1,3544,'frm_cont_locacao','OLD_CADLC1');
   end;


DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select COLUMN_NAME from USER_TAB_COLUMNS where '
                  +' TABLE_NAME=:NOMETAB');
DM1.Query2.ParamByName('NOMETAB').AsString:='CADLOCA02';
DM1.query2.Open;


DM1.Query1.Close;
minstru:='Insert into OLD_CADLOCA02 (';
v:='';
DM1.query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;

minstru:=minstru+',LC02_CODNOV) Select ';
v:='';
DM1.query2.First;
While not DM1.Query2.Eof do
   begin
   minstru:=minstru+v+DM1.Query2.fieldbyName('COLUMN_NAME').AsString;
   v:=',';
   DM1.Query2.Next;
   end;
minstru:=minstru+v+FormatFloat('0000000000',mcod)+' as LC02_CODNOV ';
minstru:=minstru+' from CADLOCA02 where LC02_CODEMP=0'+Qr_Loca01LC01_CODEMP.AsString
                +' and LC02_CHAVE=0'+Qr_Loca01LC01_CHAVE.AsString;
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add(minstru);
Try
   DM1.Query1.ExecSQL;
   fdm1StartCommit;
except
   ex_erroSql_Novo(DM1.Query1,3576,'form_cont_locacao','OLD_CADLOCA02');
   end;
DM1.Query1.Close;
result:=True;
end;


procedure TFrm_Cont_Locacao.GRAVARClick(Sender: TObject);
var
  x: Integer;
  STR: sTRING;
begin
if Qr_Loca01LC01_CODCLI.IsNull then
   Qr_Loca01LC01_CODCLI.Value:=0;
if Qr_Loca01LC01_CHAVE.IsNull then
   begin
   Fmensagem('Data Campo Obrigatório!',0,['0'],0);
   DBE_DATA.SetFocus;
   exit;
   end;
STR:=Qr_Loca01LC01_LOCALIZACAO.AsString;
if mOper_Loc=1 then
   fLoc01gant(8);
FAtualizaBanco(1,'CADLOCA01','LC01_CODEMP',Qr_Loca01LC01_CODEMP.AsString
   ,['LC01_CHAVE'],[Qr_Loca01LC01_CHAVE.AsString]
   ,Qr_Loca01);
Qr_Loca01.Post;



Panel_CAB.Enabled     :=false;
gb_cab.Enabled        :=false;
DBGrid1_Itens.ReadOnly:=true;
DBGrid1.Enabled       :=true;


INCLUIR.Enabled:=true;
ALTERAR.Enabled:=true;


GRAVAR.Enabled :=False;
IMPRIMIR.Enabled:=false;
EXCLUIR.Enabled:=true;
CANCELAR.Enabled:=True;
IMPRIMIR.Enabled:=true;
DBGrid1.Enabled:=True;
mOper_Loc:=-1;


end;

procedure TFrm_Cont_Locacao.CANCELARClick(Sender: TObject);
begin
Panel_navegar.SetFocus;
if mOper_Loc=0 then
   begin
   if Qr_Loca01LC01_CHAVE.AsFloat>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.Sql.clear;
      DM1.Query1.Sql.add('Delete from CADLOCA02 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' LC02_CODEMP=0'+IntTostr(codemp)+' and '));
      DM1.Query1.SQL.add(' LC02_CHAVE=0'+Qr_Loca01LC01_CHAVE.AsString);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      FAtualizaBanco(2,'CADLOCA01','LC01_CODEMP',Qr_Loca01LC01_CODEMP.AsString
      ,['LC01_CHAVE'],[Qr_Loca01LC01_CHAVE.AsString]
      ,Qr_Loca01);

      Qr_Loca01.Delete;
      end;
   end
else
   Qr_Loca01.Cancel;
mOper_Loc:=-1;

INCLUIR.Enabled:=true;
ALTERAR.Enabled:=true;

GRAVAR.Enabled :=false;
IMPRIMIR.Enabled:=true;
EXCLUIR.Enabled:=true;
CANCELAR.Enabled:=True;

Panel_CAB.Enabled     :=false;
gb_cab.Enabled        :=false;
DBGrid1_Itens.ReadOnly:=true;
DBGrid1.Enabled       :=true;


end;

procedure TFrm_Cont_Locacao.Qr_Loca01CalcFields(DataSet: TDataSet);
begin
flqr1('CLOG, CBAIRRO, CCIDADE, CUF, CCEP, CCNPJ, CIE,'
     +'CCPF, CRG, CFONE01, CFONE02, CRAZAO, CCELUlAR','C','CADCLI','N','CCODCLI',Qr_Loca01LC01_CODCLI.AsString);

Qr_Loca01CLOG.AsString    :=DM1.Query1.Fields[00].AsString;
Qr_Loca01CBAIRRO.AsString :=DM1.Query1.Fields[01].AsString;
Qr_Loca01CCIDADE.AsString :=DM1.Query1.Fields[02].AsString;
Qr_Loca01CUF.AsString     :=DM1.Query1.Fields[03].AsString;
Qr_Loca01CCEP.AsString    :=DM1.Query1.Fields[04].AsString;
Qr_Loca01CCNPJ.AsString   :=DM1.Query1.Fields[05].AsString;
Qr_Loca01CIE.AsString     :=DM1.Query1.Fields[06].AsString;
Qr_Loca01CCPF.AsString    :=DM1.Query1.Fields[07].AsString;
Qr_Loca01CRG.AsString     :=DM1.Query1.Fields[08].AsString;
Qr_Loca01CFONE01.AsString :=DM1.Query1.Fields[09].AsString;
Qr_Loca01CFONE02.AsString :=DM1.Query1.Fields[10].AsString;
Qr_Loca01CRAZAO.AsString  :=DM1.Query1.Fields[11].AsString;
Qr_Loca01CCELULAR.AsString:=DM1.Query1.Fields[12].AsString;

Qr_Loca01endereco.Value:=Qr_Loca01CLOG.AsString+' - '+Qr_Loca01CBAIRRO.AsString
                        +' - '+Qr_Loca01CCIDADE.AsString+' - '+Qr_Loca01CUF.AsString
                        +' - CEP: '+Qr_Loca01CCEP.AsString;
Qr_Loca01documento2.AsString:='';
if Qr_Loca01CCNPJ.AsFloat>0 then
   begin
   Qr_Loca01documento.AsString:='C.N.P.J: '+FormatFloat(pDFCNPJ, Qr_Loca01CCNPJ.AsFloat);
   if length(Qr_Loca01CIE.AsString)>2 then
      Qr_Loca01documento2.AsString:=' Inscrição: '+Qr_Loca01CIE.AsString;
   end
else if Qr_Loca01CCPF.AsFloat>0 then
   begin
   Qr_Loca01documento.AsString:='C.P.F: '+FormatFloat(pDFCNPF, Qr_Loca01CCPF.AsFloat);
   if length(Qr_Loca01CRG.AsString)>2 then
      Qr_Loca01documento2.AsString:=' Registro Geral: '+Qr_Loca01CRG.AsString;
   end
else
   begin
   Qr_Loca01documento.AsString:='*** SEM DOCUMENTO ***';
   end;
Qr_Loca01fone.Value:=Qr_Loca01CFONE01.AsString;
if length(Qr_Loca01fone.AsString)>2 then
   Qr_Loca01fone.Value:=Qr_Loca01fone.Value+'/';
if length(Qr_Loca01CFONE02.AsString)>2 then
   Qr_Loca01fone.Value:=Qr_Loca01fone.Value+Qr_Loca01CFONE01.AsString;
end;

procedure TFrm_Cont_Locacao.DBE_CODCLIKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   Qr_Loca01LC01_CODCLI.Value:=ValFloat(fChamaCli(0,'Frm_CABC',key));
   DBE_CODCLIExit(Self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_Cont_Locacao.DBE_CODCLIExit(Sender: TObject);
begin
if Qr_Loca01LC01_CODCLI.AsFloat>0 then
   begin
   if not flcadcli(1,0,Qr_Loca01LC01_CODCLI.AsString) then
      begin
      fmensagem('Cliente não Cadastrado!',0,['0'],0);
      Qr_Loca01LC01_CODCLI.AsFloat:=0;
      DBE_CODCLI.SetFocus;
      exit;
      end
   end;
end;

Function TFrm_Cont_Locacao.fLerAtualizaRel1(pTipo: Integer): Boolean;
begin
if not DirectoryExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario) then
   CreateDir(Banco_Servidor+'\PASTADOCS\'+Banco_usuario);
if not FileExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\LOCACAO.RTF') then
   begin
   fmensagem('Não Existe um Texto Padrão de Locação!',0,['0'],0);
   exit;
   end;
tsRelatorio1.TabVisible:=true;

wp_texto1.Clear;

PC1.ActivePage := tsRelatorio1;
wp_texto1.LoadFromFile(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\LOCACAO.RTF');


{---Ativa o Cabeçalho para Substituição de Valores das [TAGS]--}
wp_texto1.WorkOnText   := wpHeader;
ReplaceTags(wp_texto1,'RAZSOC',Qr_Loca01CRAZAO.AsString);
ReplaceTags(wp_texto1,'ENDERECO01',Qr_Loca01endereco.AsString);
ReplaceTags(wp_texto1,'NUMCON',Qr_Loca01LC01_NUMCON.AsString);
ReplaceTags(wp_texto1,'LOCALIZACAO',Qr_Loca01LC01_LOCALIZACAO.AsString );
ReplaceTags(wp_texto1,'PERIODO',FormatDateTime(fdt2, Qr_Loca01LC01_DATA_INI.Value)+' à '+FormatDateTime(fdt2, Qr_Loca01LC01_DATA_FIN.Value) );
ReplaceTags(wp_texto1,'VALOR',FormatFloat(mcasas, Qr_Loca01LC01_VALOR.Value) );
ReplaceTags(wp_texto1,'VALOR_EXTENSO',Extenso(Qr_Loca01LC01_VALOR.AsFloat));
ReplaceTags(wp_texto1,'FORMA_PGTO',Qr_Loca01LC01_FPGTO.AsString);
ReplaceTags(wp_texto1,'DATA_EXTENSO',DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', Qr_Loca01LC01_DATA.Value)
+' de '+NMes(Qr_Loca01LC01_DATA.AsDateTime)+' de '+FormatDateTime('yyyy', Qr_Loca01LC01_DATA.AsDateTime)+'.');
ReplaceTags(wp_texto1,'FONES',Qr_Loca01fone.AsString);
ReplaceTags(wp_texto1,'CELULAR',Qr_Loca01CCELULAR.AsString);
ReplaceTags(wp_texto1,'OBSERVACAO',Qr_Loca01LC01_OBSERVACAO.AsString );
ReplaceTags(wp_texto1,'DOCUMENTO',Qr_Loca01documento.AsString);
ReplaceTags(wp_texto1,'DOCUMENTO2',Qr_Loca01documento2.AsString);
ReplaceTags(wp_texto1,'DATA_ENT',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_INI.Value));
ReplaceTags(wp_texto1,'DATA_DEV',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_FIN.Value));
ReplaceTags(wp_texto1,'DATA_CON',FormatDateTime(fdt2,Qr_Loca01LC01_DATA.Value));


{---Ativa o Corpo do Relatorio para Substituição de Valores das [TAGS]--}
wp_texto1.WorkOnText   := wpBody;
ReplaceTags(wp_texto1,'RAZSOC',Qr_Loca01CRAZAO.AsString);
ReplaceTags(wp_texto1,'ENDERECO01',Qr_Loca01endereco.AsString);
ReplaceTags(wp_texto1,'NUMCON',Qr_Loca01LC01_NUMCON.AsString);
ReplaceTags(wp_texto1,'LOCALIZACAO',Qr_Loca01LC01_LOCALIZACAO.AsString );
ReplaceTags(wp_texto1,'PERIODO',FormatDateTime(fdt2, Qr_Loca01LC01_DATA_INI.Value)+' à '+FormatDateTime(fdt2, Qr_Loca01LC01_DATA_FIN.Value) );
ReplaceTags(wp_texto1,'VALOR',FormatFloat(mcasas, Qr_Loca01LC01_VALOR.Value) );
ReplaceTags(wp_texto1,'VALOR_EXTENSO',Extenso(Qr_Loca01LC01_VALOR.AsFloat));
ReplaceTags(wp_texto1,'FORMA_PGTO',Qr_Loca01LC01_FPGTO.AsString);
ReplaceTags(wp_texto1,'DATA_EXTENSO',DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', Qr_Loca01LC01_DATA.Value)
+' de '+NMes(Qr_Loca01LC01_DATA.AsDateTime)+' de '+FormatDateTime('yyyy', Qr_Loca01LC01_DATA.AsDateTime)+'.');
ReplaceTags(wp_texto1,'FONES',Qr_Loca01fone.AsString);
ReplaceTags(wp_texto1,'CELULAR',Qr_Loca01CCELULAR.AsString);
ReplaceTags(wp_texto1,'OBSERVACAO',Qr_Loca01LC01_OBSERVACAO.AsString );
ReplaceTags(wp_texto1,'DOCUMENTO',Qr_Loca01documento.AsString);
ReplaceTags(wp_texto1,'DOCUMENTO2',Qr_Loca01documento2.AsString);
ReplaceTags(wp_texto1,'DATA_ENT',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_INI.Value));
ReplaceTags(wp_texto1,'DATA_DEV',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_FIN.Value));
ReplaceTags(wp_texto1,'DATA_CON',FormatDateTime(fdt2,Qr_Loca01LC01_DATA.Value));
ReplaceTags(wp_texto1,'ITENS_MODELO01','');

wp_texto1.InputTextField(wpoPageNumber);
txt_pagini.Text := '1';
txt_pagfin.Text := IntToStr(wp_texto1.PageCount);


end;

Function TFrm_Cont_Locacao.fLerAtualizaRel2(pTipo: Integer): Boolean;
begin
if not DirectoryExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario) then
   CreateDir(Banco_Servidor+'\PASTADOCS\'+Banco_usuario);
if not FileExists(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\MONTAGEM.RTF') then
   begin
   fmensagem('Não Existe um Texto Padrão de Montagem e Desmontagem!',0,['0'],0);
   exit;
   end;
tsRelatorio2.TabVisible:=true;

wp_texto2.Clear;

PC1.ActivePage := tsRelatorio2;
wp_texto2.LoadFromFile(Banco_Servidor+'\PASTADOCS\'+Banco_usuario+'\MONTAGEM.RTF');

{---Ativa o Cabeçalho para Substituição de Valores das [TAGS]--}
wp_texto2.WorkOnText   := wpHeader;
ReplaceTags(wp_texto2,'RAZSOC',Qr_Loca01CRAZAO.AsString);
ReplaceTags(wp_texto2,'ENDERECO01',Qr_Loca01endereco.AsString);
ReplaceTags(wp_texto2,'NUMCON',Qr_Loca01LC01_NUMCON.AsString);
ReplaceTags(wp_texto2,'LOCALIZACAO',Qr_Loca01LC01_LOCALIZACAO.AsString );
ReplaceTags(wp_texto2,'PERIODO',FormatDateTime(fdt2, Qr_Loca01LC01_DATA_INI.Value)+' à '+FormatDateTime(fdt2, Qr_Loca01LC01_DATA_FIN.Value) );
ReplaceTags(wp_texto2,'VALOR',FormatFloat(mcasas, Qr_Loca01LC01_VALOR.Value) );
ReplaceTags(wp_texto2,'VALOR_EXTENSO',Extenso(Qr_Loca01LC01_VALOR.AsFloat));
ReplaceTags(wp_texto2,'FORMA_PGTO',Qr_Loca01LC01_FPGTO.AsString);
ReplaceTags(wp_texto2,'DATA_EXTENSO',DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', Qr_Loca01LC01_DATA.Value)
+' de '+NMes(Qr_Loca01LC01_DATA.AsDateTime)+' de '+FormatDateTime('yyyy', Qr_Loca01LC01_DATA.AsDateTime)+'.');
ReplaceTags(wp_texto2,'FONES',Qr_Loca01fone.AsString);
ReplaceTags(wp_texto2,'CELULAR',Qr_Loca01CCELULAR.AsString);
ReplaceTags(wp_texto2,'OBSERVACAO',Qr_Loca01LC01_OBSERVACAO.AsString );
ReplaceTags(wp_texto2,'DOCUMENTO',Qr_Loca01documento.AsString);
ReplaceTags(wp_texto2,'DOCUMENTO2',Qr_Loca01documento2.AsString);
ReplaceTags(wp_texto2,'DATA_ENT',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_INI.Value));
ReplaceTags(wp_texto2,'DATA_DEV',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_FIN.Value));
ReplaceTags(wp_texto2,'DATA_CON',FormatDateTime(fdt2,Qr_Loca01LC01_DATA.Value));

{---Ativa o Corpo do Relatorio para Substituição de Valores das [TAGS]--}
wp_texto2.WorkOnText   := wpBody;
ReplaceTags(wp_texto2,'RAZSOC',Qr_Loca01CRAZAO.AsString);
ReplaceTags(wp_texto2,'ENDERECO01',Qr_Loca01endereco.AsString);
ReplaceTags(wp_texto2,'NUMCON',Qr_Loca01LC01_NUMCON.AsString);
ReplaceTags(wp_texto2,'LOCALIZACAO',Qr_Loca01LC01_LOCALIZACAO.AsString );
ReplaceTags(wp_texto2,'PERIODO',FormatDateTime(fdt2, Qr_Loca01LC01_DATA_INI.Value)+' à '+FormatDateTime(fdt2, Qr_Loca01LC01_DATA_FIN.Value) );
ReplaceTags(wp_texto2,'VALOR',FormatFloat(mcasas, Qr_Loca01LC01_VALOR.Value) );
ReplaceTags(wp_texto2,'VALOR_EXTENSO',Extenso(Qr_Loca01LC01_VALOR.AsFloat));
ReplaceTags(wp_texto2,'FORMA_PGTO',Qr_Loca01LC01_FPGTO.AsString);
ReplaceTags(wp_texto2,'DATA_EXTENSO',DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', Qr_Loca01LC01_DATA.Value)
+' de '+NMes(Qr_Loca01LC01_DATA.AsDateTime)+' de '+FormatDateTime('yyyy', Qr_Loca01LC01_DATA.AsDateTime)+'.');
ReplaceTags(wp_texto2,'FONES',Qr_Loca01fone.AsString);
ReplaceTags(wp_texto2,'CELULAR',Qr_Loca01CCELULAR.AsString);
ReplaceTags(wp_texto2,'OBSERVACAO',Qr_Loca01LC01_OBSERVACAO.AsString );
ReplaceTags(wp_texto2,'DOCUMENTO',Qr_Loca01documento.AsString);
ReplaceTags(wp_texto2,'DOCUMENTO2',Qr_Loca01documento2.AsString);
ReplaceTags(wp_texto2,'DATA_ENT',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_INI.Value));
ReplaceTags(wp_texto2,'DATA_DEV',FormatDateTime(fdt2,Qr_Loca01LC01_DATA_FIN.Value));
ReplaceTags(wp_texto2,'DATA_CON',FormatDateTime(fdt2,Qr_Loca01LC01_DATA.Value));
ReplaceTags(wp_texto2,'ITENS_MODELO01','');

wp_texto2.InputTextField(wpoPageNumber);
txt_pagini2.Text := '1';
txt_pagfin2.Text := IntToStr(wp_texto2.PageCount);
end;

procedure TFrm_Cont_Locacao.ReplaceTags(var Editor: TWPRichText; LocTexto,pNovoValor: String);
var
//  Localizar : String;
  BlobStream: TStream;
begin
//  Localizar := '['+LocTexto+']';
  LocTexto  := '['+LocTexto+']';

with Editor.Finder do
  begin
  wildcard := '*';
  ToStart;
  try
    Editor.Finder.ToStart;
    while Editor.Finder.Next(LocTexto) do
      begin
      Editor.CPPosition       := Editor.Finder.FoundPosition;
      if LocTexto='[ITENS_MODELO01]' then
        begin
        Editor.Finder.FoundText := '';
        fCriarGradeItensModelo01(Editor,0);
        end
      else
        Editor.Finder.FoundText := pNovoValor;
    end;
    Editor.DelayedReformat;
  finally
    FreeAndNil(wprt);
    end;
  Editor.Refresh;
  end;
end;

function TFrm_Cont_Locacao.fCriarGradeItensModelo01(Editor: TWPRichText; pTipo: Integer): Boolean;
begin
Qr_Loca02.First;

pDataSet := Qr_Loca02;
setlength(pTamCol,3);
pTamCol[00] := 100;
pTamCol[01] := 500;
pTamCol[02] := 90;

setlength(pNomCol,3);
pNomCol[00] := 'LC02_QUANT';
pNomCol[01] := 'LC02_NOME';
pNomCol[02] := 'LC02_COMPLEMENTO';

setlength(pFormato,7);
//pFormato[00] := '#,##0';
pFormato[00] := 'CC';
pFormato[01] := '';
pFormato[02] := '';

setlength(pTitCol,3);
pTitCol[00] := 'Quantidade';
pTitCol[01] := 'Descrição';
pTitCol[02] := 'Observações';
pDataSet.First;
Editor.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1,[wptblActivateBorders],nil,FCarregaGrade);
//wp_texto1.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1,[wptblActivateBorders],nil,FCarregaGrade);
//wp_texto2.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1,[wptblActivateBorders],nil,FCarregaGrade);
end;

procedure TFrm_Cont_Locacao.FCarregaGrade(RowNr, ColNr: Integer; par: TParagraph);
begin
  wprt := TWPRichText.Create(Self);
  try
    wprt.Clear;
    wprt.CheckHasBody;
    {---Adiciona Cabeçalho da Tabela---}
{    par.ASet(WPAT_BOXWIDTH, WPCentimeterToTwips(3));
    par.ASet(WPAT_BoxWidth_PC, 50);
    par.ASet(WPAT_BoxMarginLeft, WPCentimeterToTwips(-25));}


    if (RowNr > 2) and (ColNr = 1) then
       pDataSet.Next;

    if (RowNr) = 1 then begin
       par.ASetColumn(WPAT_Alignment, Integer(paralCenter));
       par.ASetColumn(WPAT_COLUMNS, pTamCol[ColNr-1]);
       par.SetText(pTitCol[ColNr-1]);
       par.ASet(WPAT_ParProtectStyle, 1);
       par.ASetColor(WPAT_FGColor, $A0A0A0);
    end else if assigned(wprt) then  begin
       if (RowNr and 1) = 0 then
        par.Style := wprt.ParStyles.GetID('evenstyle')
     else
        par.Style := wprt.ParStyles.GetID('oddstyle');

        if trim(PNomCol[ColNr-1])<>'' then
           begin

           if pFormato[ColNr-1]<>'' then
              begin
              if pFormato[ColNr-1]='CC' then
                 begin
                  par.ASet(WPAT_Alignment, Integer(paralCenter));
                  par.SetText(pDataSet.fieldByName(PNomCol[ColNr-1]).AsString);
                  end
              else
                  begin
                  par.ASet(WPAT_Alignment, Integer(paralRight));
                 if pFormato[ColNr-1]='DD' then
                    par.SetText(pDataSet.fieldByName(PNomCol[ColNr-1]).AsString)
                 else if pFormato[ColNr-1]=fdt2 then
                    par.SetText(FormatFloat(pFormato[ColNr-1], pDataSet.fieldByName(PNomCol[ColNr-1]).AsDateTime))
                 else
                    par.SetText(FormatFloat(pFormato[ColNr-1], pDataSet.fieldByName(PNomCol[ColNr-1]).AsFloat));
                 end;
              end
           else
              par.SetText(pDataSet.fieldByName(PNomCol[ColNr-1]).AsString);
           end;
        inc(FCellNr);
     end;
   finally
     FreeAndNil(wprt);
   end;
end;

procedure TFrm_Cont_Locacao.BitBtn1Click(Sender: TObject);
begin
if (ValInt(txt_pagini.Text) > 0) and (ValInt(txt_pagfin.Text) > 0) then
   begin
   if ValInt(txt_pagini.Text) <= ValInt(txt_pagfin.Text) then
      wp_texto1.PrintPages(ValInt(txt_pagini.Text),ValInt(txt_pagfin.Text))
   else
      begin
      fmensagem('Página Inicial maior que a Página Final!',0,['0'],0);
      txt_pagini.SetFocus;
      Exit;
      end;
   end
else
   wp_texto1.Print;
end;

procedure TFrm_Cont_Locacao.IMPRIMIRClick(Sender: TObject);
begin
IMPRIMIR.Enabled:=false;

fLerAtualizaRel1(0);

fLerAtualizaRel2(0);

IMPRIMIR.Enabled:=true;
end;

procedure TFrm_Cont_Locacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if GRAVAR.Enabled=True then
  begin
  fmensagem('Grave ou Cancele o Contrato selecionado!!!',0,['0'],0);
  Abort;
  end;


if (FormState<>[fsModal]) then
   Action := caFree;

end;

procedure TFrm_Cont_Locacao.FormCreate(Sender: TObject);
begin
Top:=0;
if codusr=1111 then
  TsConfiguracoes.TabVisible:=true
else
  TsConfiguracoes.TabVisible:=false;
tsRelatorio1.TabVisible:=false;
tsRelatorio2.TabVisible:=false;
Qr_Loca01LC01_VALOR.displayFormat:=mCasas;

end;

procedure TFrm_Cont_Locacao.dbe_CHAVEPEDEnter(Sender: TObject);
begin
mChave_Ant:=Qr_Loca01LC01_CHAVEPED.AsFloat;
end;

procedure TFrm_Cont_Locacao.dbe_CHAVEPEDExit(Sender: TObject);
begin
if (Qr_Loca01LC01_CHAVEPED.AsFloat>0) and (mChave_Ant<>Qr_Loca01LC01_CHAVEPED.AsFloat) then
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.clear;
   flcademp(1,0,IIF(codemp>100,codemp-100,codemp));
   if (DM1.Tb_EmpCGC.AsString='1596015000127') or (DM1.Tb_EmpCGC.AsString='12448851000180') then
     begin
     DM1.Query2.SQL.add('Select P1CODEMP,P1CHAVE,P1CODCLI,P1CODVEN,P1TOTALL '
                     +' from CADP01 where P1LOTSEQ=0 '
                     +' and P1CHAVE=0'+Qr_Loca01LC01_CHAVEPED.AsString);
     end
   else
     begin
     DM1.Query2.SQL.add('Select P1CODEMP,P1CHAVE,P1CODCLI,P1CODVEN,P1TOTALL '
                     +' from CADP01 where P1LOTSEQ=0 and P1EMIDOC>0 '
                     +' and P1CHAVE=0'+Qr_Loca01LC01_CHAVEPED.AsString);
     end;

   DM1.Query2.Open;
   if not DM1.Query2.IsEmpty then
      begin
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2CODEMP','PDCODPRO','P2CODPRO');
      DM1.Query3.Close;
      DM1.Query3.SQL.Clear;
      DM1.Query3.SQL.Add('Select P2CODPRO,P2COMPLEMENTO,PDCODPRO,PDNOME,P2QTD,P2PRECO,p2nompro_ori FROM CADP02'
                        +iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                        +' P2LOTSEQ=0'
                        +' and P2CHAVE=0'+Qr_Loca01LC01_CHAVEPED.AsString);
      DM1.Query3.SQL.Add(' union ');
      la_tabelas  :='';
      la_Join     :='';
      la_instrucao:='';
      la_Empresas:='';
      fInnerJoin(1,'CADPRO','PDCODEMP','P2SCODEMP','PDCODPRO','P2SCODPRO');
      DM1.Query3.SQL.Add('Select P2SCODPRO AS P2CODPRO,'+QuotedStr('')+' P2COMPLEMENTO,PDCODPRO,PDNOME,P2SQTD AS P2QTD,P2SPRECO AS P2PRECO,'+QuotedStr('')+'p2nompro_ori FROM CADP02S'
                        +iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                        +'      '+        iif(la_instrucao='','',la_instrucao+' and ')
                        +' P2SLOTSEQ=0'
                        +' and P2SCHAVE=0'+Qr_Loca01LC01_CHAVEPED.AsString);

      DM1.Query3.Open;
      Qr_Loca01LC01_CODCLI.AsFloat:=DM1.Query2.FieldbyName('P1CODCLI').AsFloat;
      DBE_CODCLIExit(self);
      Qr_Loca01LC01_VALOR.AsFloat:=DM1.Query2.FieldbyName('P1TOTALL').AsFloat;
      if not DM1.query2.IsEmpty then
         begin
         Qr_Loca02.First;
         While not Qr_Loca02.Eof do
            begin
            Qr_Loca02.Delete;
            Qr_Loca02.Next;
            end;
         While not DM1.Query3.eof do
            begin
            Qr_Loca02.Append;
            Qr_Loca02LC02_CODPRO.Value     :=DM1.Query3.FieldbyName('P2CODPRO').AsFloat;
            Qr_Loca02LC02_QUANT.Value      :=DM1.Query3.FieldbyName('P2QTD').AsFloat;
            if length(trim(DM1.Query3.FieldbyName('p2nompro_ori').AsString))>0 then
              Qr_Loca02LC02_NOME.Value       :=DM1.Query3.FieldbyName('p2nompro_ori').AsString
            else
              Qr_Loca02LC02_NOME.Value       :=DM1.Query3.FieldbyName('PDNOME').AsString;
            Qr_Loca02LC02_COMPLEMENTO.Value:=DM1.Query3.FieldbyName('P2COMPLEMENTO').AsString;
            Qr_Loca02LC02_PU.Value         :=DM1.Query3.FieldbyName('P2PRECO').AsFloat;
            Qr_Loca02.Post;
            DM1.Query3.Next;
            end;
         end;
      end;
   end;
end;

procedure TFrm_Cont_Locacao.FormShow(Sender: TObject);
begin
if Qr_Loca01.Active=False then
  bbAtualizarClick(self);
end;

procedure TFrm_Cont_Locacao.wp_texto1BeforePasteText(Sender: TObject;
  RTFData: TWPRTFDataCollection; par: TParagraph; Stream: TStream;
  Reader: TWPCustomTextReader; OnlyBodyText: Boolean;
  var LoadedText: TWPRTFDataBlock);
begin
wp_texto1.Header.LeftMargin:=500;
wp_texto1.Header.RightMargin:=500;
wp_texto1.Header.TopMargin:=500;
wp_texto1.Header.BottomMargin:=500;
end;

procedure TFrm_Cont_Locacao.wp_texto1WorkOnTextChanged(Sender: TObject);
begin
wp_texto1.Header.LeftMargin:=500;
wp_texto1.Header.RightMargin:=500;
wp_texto1.Header.TopMargin:=500;
wp_texto1.Header.BottomMargin:=500;
end;

procedure TFrm_Cont_Locacao.wp_texto2BeforePasteText(Sender: TObject;
  RTFData: TWPRTFDataCollection; par: TParagraph; Stream: TStream;
  Reader: TWPCustomTextReader; OnlyBodyText: Boolean;
  var LoadedText: TWPRTFDataBlock);
begin
wp_texto2.Header.LeftMargin:=500;
wp_texto2.Header.RightMargin:=500;
wp_texto2.Header.TopMargin:=500;
wp_texto2.Header.BottomMargin:=500;
end;

procedure TFrm_Cont_Locacao.wp_texto2WorkOnTextChanged(Sender: TObject);
begin
wp_texto2.Header.LeftMargin:=500;
wp_texto2.Header.RightMargin:=500;
wp_texto2.Header.TopMargin:=500;
wp_texto2.Header.BottomMargin:=500;
end;

procedure TFrm_Cont_Locacao.BitBtn2Click(Sender: TObject);
begin
if (ValInt(txt_pagini2.Text) > 0) and (ValInt(txt_pagfin2.Text) > 0) then
   begin
   if ValInt(txt_pagini2.Text) <= ValInt(txt_pagfin2.Text) then
      wp_texto2.PrintPages(ValInt(txt_pagini2.Text),ValInt(txt_pagfin2.Text))
   else
      begin
      fmensagem('Página Inicial maior que a Página Final!',0,['0'],0);
      txt_pagini2.SetFocus;
      Exit;
      end;
   end
else
   wp_texto2.Print;
end;

end.


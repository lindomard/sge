unit S_Editor_Word;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WPCTRRich, WPTbar, WPRTEDefs, WPCTRMemo, StdCtrls, Buttons,
  ExtCtrls, ComCtrls,db,dbtables;

type
  TFrm_Editor_Word = class(TForm)
    PageControl1: TPageControl;
    TsEditor: TTabSheet;
    TsLegendaOrcam: TTabSheet;
    wp_texto: TWPRichText;
    wp_bar: TWPToolBar;
    Panel_rodape: TPanel;
    bbFechar: TBitBtn;
    bbSalvarPadrao: TBitBtn;
    GB_LEGENDA_ORCAMENTO: TGroupBox;
    Qr_Grupo: TQuery;
    Qr_GrupoGRUPO: TStringField;
    Qr_GrupoQTD: TFloatField;
    CB_LEGENDA_PED: TComboBox;
    gb_grade: TGroupBox;
    Label1: TLabel;
    QTDCOL: TEdit;
    bbCriar: TBitBtn;
    Label2: TLabel;
    QTDLIN: TEdit;
    tsConfiguracao: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    CB_RELATORIO: TComboBox;
    procedure bbSalvarPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbFecharClick(Sender: TObject);
    procedure bbCriarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }

    wprt      : TWPRichText;
    wprt_novo : TWPRichText;

    procedure ReplaceTags(var Editor: TWPRichText; LocTexto,pSubstituir: String;pGrade,pAdicionar: Integer);


    procedure SubstituirTexto(var Editor: TWPRichText; LocTexto,pNomeArq: String);

    procedure FCarregaGrade(RowNr, ColNr: Integer; par: TParagraph);
    procedure FCarregaGrade_CabecalhoGrupo(RowNr, ColNr: Integer; par: TParagraph);

    Function fMontaRelatorio(pNomeRel: String;pVisualiza:Boolean): Boolean;

    procedure FCarregaGrade_TotaisColuna01(RowNr, ColNr: Integer; par: TParagraph);

    procedure FCarregaGrade_TotaisColuna02(RowNr, ColNr: Integer; par: TParagraph);

    procedure FCarregaGrade_TotaisColuna03(RowNr, ColNr: Integer; par: TParagraph);

    Function fTrocaNomePro: String;
    Function fTrocaNomePro_Dig: String;
    Function fTrocaNomePro_Sim: String;

  public
    { Public declarations }
  end;
Function fEmitirRelatorioWpTools(pNomeRel: String;pVisualiza:Boolean): Boolean;


var
  Frm_Editor_Word: TFrm_Editor_Word;
  meditor_word_origem:string='ORCAMENTO_AMBIENTE.rtf';
  pTitCol: Array of string;
  pNomCol: Array of string;
  pTamCol: Array of Integer;
  pFormato: Array of string;
  pColTotal01: Array of string;
  pColTotal02: Array of string;
  pColTotal03: Array of string;

  pDataSet: TDataSet;
  FCellNr : Integer;
  mpos_linha: Integer;
  pMudaDescricao: boolean=false;
  f: TextFile;
  mQtdGrupo: Integer;
  mGrupoLido: Integer;
  mPedido_Word_Descricao: Integer=0;

implementation

uses Func, S_DM1, S_DM2, lerarq;

{$R *.dfm}

procedure TFrm_Editor_Word.bbSalvarPadraoClick(Sender: TObject);
begin
if trim(banco_servidor)='' then
   banco_servidor:='C:\SGE';
if not dirExists(banco_servidor+'\PASTADOCS\'+Banco_usuario) then
   fcriarPastas(banco_servidor+'\PASTADOCS\'+Banco_usuario);
wp_texto.SaveToFile(Banco_servidor+'\PASTADOCS\'+Banco_usuario+'\'+meditor_word_origem);
//  meditor_word_origem:=string='ORCAMENTO_AMBIENTE';
end;


procedure TFrm_Editor_Word.ReplaceTags(var Editor: TWPRichText; LocTexto,pSubstituir: String;pGrade,pAdicionar: Integer);

{
pGrade=0-Nenhuma
       1-[wptblActivateBorders, wptblAllowNestedTables]
       2-[wptblActivateBorders]
       3-[wptblAllowNestedTables]

       a partir daqui é com grupo
       11-[wptblActivateBorders, wptblAllowNestedTables]
       12-[wptblActivateBorders]
       13-[wptblAllowNestedTables]


       a partir daqui é  de totatalizações
       21-[wptblActivateBorders, wptblAllowNestedTables]
       22-[wptblActivateBorders]
       23-[wptblAllowNestedTables]

pAdicionar: Quantidades de Linhas A serem Adicionadas no caso de Tabelas

}
var
  BlobStream: TStream;
  mQtdTot: Integer;
begin
with Editor.Finder do
   begin
   wildcard := '*';
   ToStart;
   try
      wp_texto.Finder.ToStart;
      while wp_texto.Finder.Next(LocTexto) do
         begin
         wp_texto.CPPosition       := wp_texto.Finder.FoundPosition;
         wp_texto.Finder.FoundText := '';
         if pgrade=0 then
            wp_texto.Finder.FoundText := pSubstituir
         else if pGrade=1 then
            wp_texto.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1+padicionar ,[wptblActivateBorders, wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade)
         else if pGrade=2 then
            wp_texto.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1+padicionar,[wptblActivateBorders],  nil,Frm_Editor_Word.FCarregaGrade)
         else if pGrade=3 then
            wp_texto.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1+padicionar,[wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade)
         else if ((pgrade>20) and (pgrade<30)) then
            begin
            mQtdTot:=1;
{
            if high(pColTotal03)=high(pNomcol) then
               mqtdtot:=mQtdTot+1;
            if high(pColTotal02)=high(pNomcol) then
               mqtdtot:=mQtdTot+1;
            if high(pColTotal01)=high(pNomcol) then
               mqtdtot:=mQtdTot+1;
}
            if mQtdTot>0 then
               begin
               if pGrade=21 then
                  begin
                  if pAdicionar=3 then
                     wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[wptblActivateBorders, wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_Totaiscoluna03)
                  else if pAdicionar=2 then
                     wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[wptblActivateBorders, wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_Totaiscoluna02)
                  else
                     wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[wptblActivateBorders, wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_Totaiscoluna01);
                  end
               else if pGrade=22 then
                  begin
                  if pAdicionar=3 then
                    wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[wptblActivateBorders],  nil,Frm_Editor_Word.FCarregaGrade_TotaisColuna03)
                  else if pAdicionar=2 then
                    wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[wptblActivateBorders],  nil,Frm_Editor_Word.FCarregaGrade_TotaisColuna02)
                  else
                    wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[wptblActivateBorders],  nil,Frm_Editor_Word.FCarregaGrade_TotaisColuna01);

                  end
               else if pGrade=23 then
                  begin
                  if pAdicionar=3 then
                     wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[ wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_TotaisColuna03)
                  else if pAdicionar=2 then
                     wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[ wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_TotaisColuna02)
                  else
                     wp_texto.TableAdd(high(pNomCol)+1,mQtdTot,[ wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_TotaisColuna01);
                  end;
               end;
            end
         else if (pGrade>30) and (pgrade<40) then
            begin
            if pGrade=31 then
               wp_texto.TableAdd(1,1,[wptblActivateBorders, wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_CabecalhoGrupo)
            else if pGrade=32 then
               wp_texto.TableAdd(1,1,[wptblActivateBorders],  nil,Frm_Editor_Word.FCarregaGrade_CabecalhoGrupo)
            else if pGrade=33 then
               wp_texto.TableAdd(1,1,[ wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade_CabecalhoGrupo);
            end
         else
            begin
            if pGrade=11 then
               wp_texto.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1+padicionar ,[wptblActivateBorders, wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade)
            else if pGrade=12 then
               wp_texto.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1+padicionar,[wptblActivateBorders],  nil,Frm_Editor_Word.FCarregaGrade)
             else if pGrade=13 then
               wp_texto.TableAdd(high(pNomCol)+1, pDataSet.RecordCount+1+padicionar,[wptblAllowNestedTables],  nil,Frm_Editor_Word.FCarregaGrade);
            end;
         end;
   wp_texto.DelayedReformat;
   finally;
      end;
   end;
   Editor.Refresh;
end;

procedure TFrm_Editor_Word.SubstituirTexto(var Editor: TWPRichText; LocTexto,pNomeArq: String);
var
  BlobStream: TStream;
  x: Integer;
  mNomePasta: String;
  mNomeArq: String;
begin
pNomeArq:=UpperCase(pNomeArq);
with Editor.Finder do
   begin
   wildcard := '*';
   ToStart;
   try
      wp_texto.Finder.ToStart;
      while wp_texto.Finder.Next(LocTexto) do
         begin
         wp_texto.CPPosition       := wp_texto.Finder.FoundPosition;
         wp_texto.Finder.FoundText := '';
         wp_texto.LoadFromFile(pNomeArq);
{
         mNomePasta:=Fnomearq_Pasta(1,pNomeArq);
         mNomeArq  :=Fnomearq_Pasta(0,pNomeArq);
         FOR x:=1 to length(mNomeArq) do
            begin
            if mNomeArq[x]='.' then
               break;
            Keybd_event(Integer(mNomeArq[x]),0,0,0); // Será enviado um 'A' para o
         end;
         keybd_event(VK_LMENU,0,0,0);
         keybd_event(65,0,0,0);

         try
            wp_texto.Insert(mNomePasta);
            keybd_event(VK_LMENU, $45, KEYEVENTF_KEYUP, 0);
         except
            keybd_event(VK_LMENU, $45, KEYEVENTF_KEYUP, 0);
            end;
}
         end;
      wp_texto.DelayedReformat;
      finally
      end;
   end;
   Editor.Refresh;
end;


procedure TFrm_Editor_Word.FCarregaGrade(RowNr, ColNr: Integer; par: TParagraph);
begin
wprt := TWPRichText.Create(Self);
try
  wprt.Clear;
  wprt.CheckHasBody;
  {---Adiciona Cabeçalho da Tabela---}
  par.ASet(WPAT_COLWIDTH_PC, pTamCol[ColNr-1]);
  if (RowNr > 2) and (ColNr=1) then
     begin
     pDataSet.Next;
     end;
  if RowNr = 1 then
     begin
     par.SetText(pTitCol[ColNr-1]);
//     par.ASetColor(WPAT_FGColor, $A0A0A0);
     par.ASet(WPAT_ParProtected, 1);
     par.ASet(WPAT_Alignment, Integer(paralCenter));
     end
  else if assigned(wprt) then
     begin
     if (RowNr and 1) = 0 then
        par.Style := wprt.ParStyles.GetID('evenstyle')
     else
        par.Style := wprt.ParStyles.GetID('oddstyle');
     if trim(PNomCol[ColNr-1])<>'' then
        begin
        if pFormato[ColNr-1]<>'' then
           begin
           par.ASet(WPAT_Alignment, Integer(paralRight));

           if pFormato[ColNr-1]=fdt2 then
              par.SetText(FormatFloat(pFormato[ColNr-1], pDataSet.fieldByName(PNomCol[ColNr-1]).AsDateTime))
           else
              par.SetText(FormatFloat(pFormato[ColNr-1], pDataSet.fieldByName(PNomCol[ColNr-1]).AsFloat));
           end
        else
           begin
           if (pNomCol[ColNr-1]='PDNOME') and (mPedido_Word_Descricao<>0) then
              begin
              if (mPedido_Word_Descricao=9) then
                 par.SetText(Frm_Editor_Word.fTrocaNomePro)
              else if (mPedido_Word_Descricao=1) then
                 par.SetText(Frm_Editor_Word.fTrocaNomePro_dig)
              else if (mPedido_Word_Descricao=2) then
                 par.SetText(Frm_Editor_Word.fTrocaNomePro_sim);
              end
           else
              par.SetText(pDataSet.fieldByName(PNomCol[ColNr-1]).AsString);
           end;
        end;
     inc(FCellNr);
     end;
   finally
     FreeAndNil(wprt);
   end;
end;



procedure TFrm_Editor_Word.FCarregaGrade_CabecalhoGrupo(RowNr, ColNr: Integer; par: TParagraph);
begin
wprt := TWPRichText.Create(Self);
try
  wprt.Clear;
  wprt.CheckHasBody;
  {---Adiciona Cabeçalho da Tabela---}
  par.ASet(WPAT_COLWIDTH_PC, 300);
  if RowNr = 1 then
     begin
     par.SetText(Qr_GrupoGRUPO.AsString);
//     par.ASetColor(WPAT_FGColor, $A0A0A0);
//     par.ASetColor(WPAT_FGColor, $00D6D6AB);
     par.ASet(WPAT_ParProtected, 1);
     par.ASet(WPAT_Alignment, Integer(paralCenter));
     end;
     inc(FCellNr);
   finally
     FreeAndNil(wprt);
   end;
end;


procedure TFrm_Editor_Word.FCarregaGrade_TotaisColuna01(RowNr, ColNr: Integer; par: TParagraph);
begin
wprt := TWPRichText.Create(Self);
try
  wprt.Clear;
  wprt.CheckHasBody;
  {---Adiciona Cabeçalho da Tabela---}
  par.ASet(WPAT_COLWIDTH_PC, pTamCol[ColNr-1]);
  if pFormato[ColNr-1]<>'' then
     par.ASet(WPAT_Alignment, Integer(paralRight));
   par.SetText(pColTotal01[ColNr-1]);
//  par.ASetColor(WPAT_FGColor, $00FFAEAE);
  par.ASet(WPAT_ParProtected, 1);
  inc(FCellNr);
   finally
     FreeAndNil(wprt);
   end;
end;

procedure TFrm_Editor_Word.FCarregaGrade_TotaisColuna02(RowNr, ColNr: Integer; par: TParagraph);
begin
wprt := TWPRichText.Create(Self);
try
  wprt.Clear;
  wprt.CheckHasBody;
  {---Adiciona Cabeçalho da Tabela---}
  par.ASet(WPAT_COLWIDTH_PC, pTamCol[ColNr-1]);
  if pFormato[ColNr-1]<>'' then
     par.ASet(WPAT_Alignment, Integer(paralRight));
  if RowNr=1 then
     par.SetText(pColTotal02[ColNr-1]);

//  par.ASetColor(WPAT_FGColor, $00FFAEAE);
  par.ASet(WPAT_ParProtected, 1);
  inc(FCellNr);
   finally
     FreeAndNil(wprt);
   end;
end;

procedure TFrm_Editor_Word.FCarregaGrade_TotaisColuna03(RowNr, ColNr: Integer; par: TParagraph);
begin
wprt := TWPRichText.Create(Self);
try
  wprt.Clear;
  wprt.CheckHasBody;
  {---Adiciona Cabeçalho da Tabela---}
  par.ASet(WPAT_COLWIDTH_PC, pTamCol[ColNr-1]);
  if pFormato[ColNr-1]<>'' then
     par.ASet(WPAT_Alignment, Integer(paralRight));
  if RowNr=1 then
     par.SetText(pColTotal03[ColNr-1]);

//  par.ASetColor(WPAT_FGColor, $00FFAEAE);
  par.ASet(WPAT_ParProtected, 1);
  inc(FCellNr);
   finally
     FreeAndNil(wprt);
   end;
end;

Function fEmitirRelatorioWpTools(pNomeRel: String;pVisualiza:Boolean): Boolean;
begin
if not FileExists(banco_servidor+'\PASTADOCS\'+Banco_usuario+'\'+pNomeRel+'.RTF') then
   begin
   fmensagem('Não Foi Encontrado o Arquivo: '+banco_servidor+'\PASTADOCS\'+Banco_usuario+'\'+pNomeRel+'.RTF',0,['0'],0);
   result:=false;
   exit;
   end;

if not Frm_Editor_Word.fMontaRelatorio(pNomeRel,pVisualiza) then
   result:=false;

result:=true;
end;
Function TFrm_Editor_Word.fTrocaNomePro: String;
var
mTabTemp: String;
mRetorno: String;
x: Integer;
begin
DM1.Query3.Close;
DM1.Query3.sql.clear;
DM1.Query3.SQL.Add('Select PDS_CODEMP,PDS_CODPRO,PDS_PAG,PDS_TEXTO FROM CADPRO_SOBRE where '
                   +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' PDS_CODEMP=0'+pDataSet.fieldbyName('P2CODEMP').AsString+' and ')
                     +' PDS_CODPRO=0'+pDataSet.fieldbyName('P2CODPRO').AsString
                     +' ORDER BY PDS_PAG ');
DM1.Query3.Open;

if DM1.Query3.Eof then
   mRetorno:=pDataSet.fieldbyName('PDNOME').AsString
else
   begin
   mTabTemp:=fproctemp(41)+'.rtf';
   While not DM1.Query3.Eof do
      begin
      assignfile(f,MtabTemp);
      rewrite(f);
      While not DM1.Query3.Eof do
         begin
         writeln(f,DM1.Query3.fieldbyName('PDS_TEXTO').AsString);
         DM1.Query3.Next;
         end;
      closefile(f);
      end;
   wprt_novo := TWPRichText.Create(Self);
   wprt_novo.Clear;

   wprt_novo.LoadFromFile(mTabTemp);
   DeleteFile(mTabTemp);
   mRetorno:='';
   for x:=0 to wprt_novo.Lines.Count-1 do
      begin
      mRetorno:=mRetorno+wprt_novo.Lines[x]+' ';
      end;
   FreeAndNil(wprt_novo);
   end;
result:=mRetorno;
end;


Function TFrm_Editor_Word.fTrocaNomePro_Dig: String;
var
mRetorno: String;
x: Integer;
begin
mRetorno:='';
DM1.Tb_Ped02D.Close;
DM1.Tb_Ped02d.SQL.Clear;
DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+pDataSet.fieldbyName('P2CODEMP').AsString
                     +' and P2DTIPO=0'
                     +' and P2DLOTSEQ=0'+pDataSet.fieldbyName('P2LOTSEQ').AsString
                     +' and P2DCHAVE=0'+pDataSet.fieldbyName('P2CHAVE').AsString
                     +' and P2DORDEM=0'+pDataSet.fieldbyName('P2ORDEM').AsString
                     +' and P2DCODPRO=0'+pDataSet.fieldbyName('P2CODPRO').AsString
                     +' and P2DITEM=0'+pDataSet.fieldbyName('P2ITEM').AsString
                     +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
DM1.Tb_Ped02d.Open;
if DM1.Tb_Ped02D.IsEmpty then
   mRetorno:=pDataSet.fieldbyName('PDNOME').AsString
else
   begin
   While not DM1.Tb_Ped02d.Eof do
      begin
      mRetorno:=mRetorno+DM1.Tb_Ped02DP2DESC.Value;
      DM1.Tb_Ped02D.Next;
      end;
   end;
result:=mRetorno;
end;


Function TFrm_Editor_Word.fTrocaNomePro_sim: String;
var
mRetorno: String;
x: Integer;
begin
mRetorno:='';
DM1.Tb_Ped02D.Close;
DM1.Tb_Ped02d.SQL.Clear;
DM1.Tb_Ped02d.SQL.Add('Select * from CADP02D where  P2DCODEMP=0'+pDataSet.fieldbyName('P2CODEMP').AsString
                     +' and P2DTIPO=0'
                     +' and P2DLOTSEQ=0'+pDataSet.fieldbyName('P2LOTSEQ').AsString
                     +' and P2DCHAVE=0'+pDataSet.fieldbyName('P2CHAVE').AsString
                     +' and P2DORDEM=0'+pDataSet.fieldbyName('P2ORDEM').AsString
                     +' and P2DCODPRO=0'+pDataSet.fieldbyName('P2CODPRO').AsString
                     +' and P2DITEM=0'+pDataSet.fieldbyName('P2ITEM').AsString
                     +' order by P2DCODEMP,P2DCHAVE,P2DORDEM,P2DLINHA');
DM1.Tb_Ped02d.Open;
if not DM1.Tb_Ped02D.IsEmpty then
   begin
   While not DM1.Tb_Ped02d.Eof do
      begin
      mRetorno:=mRetorno+DM1.Tb_Ped02DP2DESC.Value;
      DM1.Tb_Ped02D.Next;
      end;
   end
else
   begin
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('SELECT * FROM '
                     +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                     +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO','',pDataSet.fieldbyName('P2CODEMP').AsInteger
                     ,'PDSIM_CODEMP',' and '));
   DM1.Query2.SQL.Add(' PDSIM_CODPRO='+pDataSet.fieldbyName('P2CODPRO').AsString);
   DM1.Query2.SQL.Add(' AND PDSIM_CODIGO>='+mudavp(floattostr(DM2.Qr_Cabsubmod.AsFloat))
                     +' ORDER BY PDSIM_CODIGO ');
   DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
   DM1.Query2.Open;
   if DM1.Query2.IsEmpty then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('SELECT * FROM '
                        +' ( SELECT PDSIM_DESCRICAO FROM CADPRO_SIMILAR '
                        +' WHERE '+fla_EmpBaixaAlta(0,'CADPRO','',pDataSet.fieldbyName('P2CODEMP').AsInteger,
                        'PDSIM_CODEMP',' and '));
      DM1.Query2.SQL.Add(' PDSIM_CODPRO='+pDataSet.fieldbyName('P2CODPRO').AsString);
      DM1.Query2.SQL.Add(' AND PDSIM_CODIGO<='+mudavp(DM2.Qr_Cabsubmod.AsString)
                        +' ORDER BY PDSIM_CODIGO DESC ');
      DM1.Query2.SQL.Add(' ) WHERE ROWNUM<2 ');
      DM1.Query2.Open;
      end;
   if DM1.Query2.IsEmpty then
      mRetorno:=pDataSet.fieldbyName('PDNOME').AsString
   else
      mRetorno:=DM1.Query2.fieldbyName('PDSIM_DESCRICAO').AsString;
   end;
result:=mRetorno;
end;

Function TFrm_Editor_Word.fMontaRelatorio(pNomeRel: String;pVisualiza:Boolean): Boolean;
var
mNovoValor: String;
mTabTemp: String;
f: TextFile;
x: Integer;
begin
wp_texto.Clear;

if (pNomeRel='ORCAMENTO_AMBIENTE') OR (pNomeRel='ORCAMENTO_NORMAL') or
   (pNomeRel='LISTA_SEPARACAO') OR (pNomeRel='VALE_MERCADORIAS') or
   (pNomeRel='CONTRATO_VENDA') then
   begin
   wp_texto.LoadFromFile(banco_servidor+'\PASTADOCS\'+Banco_usuario+'\'+pNomeRel+'.RTF');

   mNovoValor := fPrimeiraMaiscula(DM1.Tb_EmpCIDADE.AsString)+', '+FormatDateTime('dd', date)
                 +' de '+fPrimeiraMaiscula(NMes(date))+' de '+FormatDateTime('yyyy',date)+'.';

   ReplaceTags(wp_texto,'[%DATA_ATUAL_EXT%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabnombco.AsString;
   ReplaceTags(wp_texto,'[%TIPO_COB%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabformpag.AsString;
   ReplaceTags(wp_texto,'[%FORMA_PAG%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabprazoent.AsString;
   ReplaceTags(wp_texto,'[%PRAZO_ENT%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabvalpro.AsString;
   ReplaceTags(wp_texto,'[%VALPRO%]',mNovoValor,0,0);

   mNovoValor := FormatDateTime(fdt2, date);

   ReplaceTags(wp_texto,'[%DATA_ATUAL%]',mNovoValor,0,0);

   mNovoValor := DM1.Tb_EmpCIDADE.AsString+', '+FormatDateTime('dd', DM2.Qr_CabP1DATAP.AsDateTime)
                 +' de '+NMes(DM2.Qr_CabP1DATAP.AsDateTime)+' de '+FormatDateTime('yyyy',DM2.Qr_CabP1DATAP.AsDateTime)+'.';
   ReplaceTags(wp_texto,'[%DATA_PED_EXT%]',mNovoValor,0,0);


   mNovoValor := FormatDateTime(fdt2, DM2.Qr_CabP1DATAP.AsDateTime);
   ReplaceTags(wp_texto,'[%DATA_PED%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabecf_razao.AsString;
   ReplaceTags(wp_texto,'[%RAZAO_SOC%]',mNovoValor,0,0);


   mNovoValor := DM2.Qr_Cabecf_fantasia.AsString;
   ReplaceTags(wp_texto,'[%DENOM%]',mNovoValor,0,0);


   mNovoValor := DM2.Qr_CabCNOMCON.AsString;
   ReplaceTags(wp_texto,'[%NOME_CONTATO%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCFONCON.AsString;
   ReplaceTags(wp_texto,'[%FONE_CONTATO%]',mNovoValor,0,0);


   mNovoValor := FormatFloat('000000', DM2.Qr_CabP1CHAVE.AsFloat);
   ReplaceTags(wp_texto,'[%CHAVE_PED%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabP1OBS1.AsString;
   ReplaceTags(wp_texto,'[%OBS01%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabP1OBS2.AsString;
   ReplaceTags(wp_texto,'[%OBS02%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabP1OBS3.AsString;
   ReplaceTags(wp_texto,'[%OBS03%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabprazos.AsString;
   ReplaceTags(wp_texto,'[%PRAZOS%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCLOG.AsString;
   ReplaceTags(wp_texto,'[%ENDERECO%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCBAIRRO.AsString;
   ReplaceTags(wp_texto,'[%BAIRRO%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCCIDADE.AsString;
   ReplaceTags(wp_texto,'[%CIDADE%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCUF.AsString;
   ReplaceTags(wp_texto,'[%UF%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCCEP.AsString;
   ReplaceTags(wp_texto,'[%CEP%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabcgccpf.AsString;
   ReplaceTags(wp_texto,'[%CNPJ%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCFONE01.AsString;
   ReplaceTags(wp_texto,'[%TELEFONE%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabCCELULAR.AsString;
   ReplaceTags(wp_texto,'[%CELULAR%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabRGIE.AsString;
   ReplaceTags(wp_texto,'[%IE%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_Cabnomven.AsString;
   ReplaceTags(wp_texto,'[%VENDEDOR%]',mNovoValor,0,0);

   mNovoValor := DM2.Qr_CabP1CODVEN.AsString;
   ReplaceTags(wp_texto,'[%COD_VENDEDOR%]',mNovoValor,0,0);

   mNovoValor := iif(DM2.Qr_CabP1FRETEPC.AsInteger=1,'CIF','FOB');
   ReplaceTags(wp_texto,'[%TIPO_FRETE%]',mNovoValor,0,0);
   mNovoValor:='';
   if DM2.Qr_Cabp1vlr01.AsFloat<>0 then
      mNovoValor:=mNovoValor+DM2.Qr_Cabdesd01.AsString+'-'+DM2.Qr_Cabdtvcto01.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr01.AsFloat),' ',10)+' ';
   if DM2.Qr_Cabp1vlr02.AsFloat<>0 then
      mNovoValor:=mNovoValor+DM2.Qr_Cabdesd02.AsString+'-'+DM2.Qr_Cabdtvcto02.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr02.AsFloat),' ',10)+' ';

   if DM2.Qr_Cabp1vlr03.AsFloat<>0 then
      mNovoValor:=mNovoValor+DM2.Qr_Cabdesd03.AsString+'-'+DM2.Qr_Cabdtvcto03.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr03.AsFloat),' ',10)+' ';

   if DM2.Qr_Cabp1vlr04.AsFloat<>0 then
      mNovoValor:=mNovoValor+DM2.Qr_Cabdesd04.AsString+'-'+DM2.Qr_Cabdtvcto04.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr04.AsFloat),' ',10)+' ';
   if DM2.Qr_Cabp1vlr05.AsFloat<>0 then
      mNovoValor:=mNovoValor+DM2.Qr_Cabdesd05.AsString+'-'+DM2.Qr_Cabdtvcto05.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr05.AsFloat),' ',10)+' ';

   if DM2.Qr_Cabp1vlr06.AsFloat<>0 then
      mNovoValor:=mNovoValor+DM2.Qr_Cabdesd06.AsString+'-'+DM2.Qr_Cabdtvcto06.AsString+insere(FormatFloat(mcasas, DM2.Qr_Cabp1vlr06.AsFloat),' ',10)+' ';

{
   if DM2.Qr_Cabp1vlr07.AsFloat<>0 then
      mNovoValor:=mNovoValor+'G'+'-'+DM2.Qr_Cabdtvcto07.AsString+insere2(FormatFloat(mcasas, DM2.Qr_Cabp1vlr07.AsFloat),' ',10)+' ';

   if DM2.Qr_Cabp1vlr08.AsFloat<>0 then
      mNovoValor:=mNovoValor+'H'+'-'+DM2.Qr_Cabdtvcto08.AsString+insere2(FormatFloat(mcasas, DM2.Qr_Cabp1vlr08.AsFloat),' ',10)+' ';

   if DM2.Qr_Cabp1vlr09.AsFloat<>0 then
      mNovoValor:=mNovoValor+'I'+'-'+DM2.Qr_Cabdtvcto09.AsString+insere2(FormatFloat(mcasas, DM2.Qr_Cabp1vlr09.AsFloat),' ',10)+' ';

   if DM2.Qr_Cabp1vlr10.AsFloat<>0 then
      mNovoValor:=mNovoValor+'J'+'-'+DM2.Qr_Cabdtvcto10.AsString+insere2(FormatFloat(mcasas, DM2.Qr_Cabp1vlr10.AsFloat),' ',10)+' ';
}
   ReplaceTags(wp_texto,'[%PRAZOS_COMP%]',mNovoValor,0,0);

//   if (pNomeRel='ORCAMENTO_AMBIENTE') then
//      begin
   Qr_Grupo.Close;
   Qr_Grupo.SQL.Clear;
   Qr_Grupo.sql.Add('Select P2AMBIENTE AS GRUPO, COUNT(*) AS QTD '
               +' from CADP02 where P2STATUS<>9 and '
               +fla_EmpBaixaAlta(0,'CADPED','',DM2.Qr_CorP2CODEMP.AsInteger,'P2CODEMP',' and ')
               +' P2LOTSEQ=0'+DM2.Qr_CorP2LOTSEQ.AsString
               +' and P2CHAVE=0'+DM2.Qr_CorP2CHAVE.AsString);
   qr_Grupo.SQL.Add(' GROUP BY P2AMBIENTE ');
   try
     Qr_Grupo.Open;
   except
     Qr_Grupo.SQL.savetofile('SQL.TXT');
     end;
   la_tabelas  :='';
   la_Join     :='';
   la_instrucao:='';
   fInnerJoin(1,'CADPRO','P2CODEMP','PDCODEMP','P2CODPRO','PDCODPRO');
   DM1.Query2.Close;
   DM1.Query2.SQL.Clear;
   DM1.Query2.SQL.Add('Select PDCODEMP,PDCODGRU  '
                    +' FROM CADP02'+iif(la_tabelas='','',',')+la_tabelas
              +'       '+la_Join
              +'       where '+la_instrucao+iif(la_instrucao='','',' and ')
              +fla_EmpBaixaAlta(0,'CADPRO','',DM2.Qr_CorP2CODEMP.AsInteger,'P2CODEMP',' and ')
              +' P2LOTSEQ=0'+DM2.Qr_CorP2LOTSEQ.AsString
              +' and P2CHAVE=0'+DM2.Qr_CorP2CHAVE.AsString
              +' and PDCODGRU<>0 ');
   DM1.Query2.Sql.add(' Group by PDCODEMP,PDCODGRU ');
   DM1.Query2.Open;

   mTabTemp:='';
   if not DM1.Query2.IsEmpty then
      begin
      While not DM1.Query2.eof do
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add(' Select GT_CODGRU,GT_PAG,GT_TEXTO '
                           +' from CADGRU_TEXTO where '
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' GT_CODEMP=0'+DM1.Query2.fieldbyName('PDCODEMP').AsString+' and ')
                           +' GT_CODGRU=0'+DM1.Query2.FieldbyName('PDCODGRU').asstring
                           +' order by GT_PAG ');
         try
            DM1.Query1.Open;
         except
            DM1.Query1.sql.savetofile('c:\sql.txt');
            end;
         if not DM1.Query1.IsEmpty then
            begin
            if trim(mTabTemp)='' then
               begin
               mTabTemp:=fProcTemp(40);
               AssignFile(f,mTabTemp);
               rewrite(f);
               end;
            While not DM1.Query1.Eof do
               begin
               writeln(f,DM1.Query1.fieldbyName('GT_TEXTO').AsString);
               DM1.Query1.Next;
               end;
            end;
         DM1.Query2.Next;
         end;
      if trim(mTabTemp)<>'' then
         begin
         CloseFile(f);
         SubstituirTexto(wp_texto,'[%TEXTO_GRUPO_PROD%]',mTabTemp);
         DeleteFile(mTabTemp);
         end;
      end;
   pDataSet:=dm2.Qr_Cor;
   pDataSet.First;
   setlength(pNomCol,7);
   pNomCol[00]:='P2CODPRO';
   pNomCol[01]:='PDNOME';
   pNomCol[02]:='P2COMPLEMENTO';
   pNomCol[03]:='PDUND';
   pNomCol[04]:='P2QTD';
   pNomCol[05]:='P2PRECO';
   pNomCol[06]:='total';
   setlength(pTamCol,7);
   pTamCol[00]:=70;
   pTamCol[01]:=200;
   pTamCol[02]:=100;
   pTamCol[03]:=050;
   pTamCol[04]:=080;
   pTamCol[05]:=95;
   pTamCol[06]:=95;
   setlength(pTitCol,7);
   pTitCol[00]:='Codigo';
   pTitCol[01]:='Descrição';
   pTitCol[02]:='Complemento';
   pTitCol[03]:='Und';
   pTitCol[04]:='Quant';
   pTitCol[05]:='Preco Unitario';
   pTitCol[06]:='Valor Total';
   setlength(pFormato,7);
   pFormato[00]:='000000';
   pFormato[01]:='';
   pFormato[02]:='';
   pFormato[03]:='';
   pFormato[04]:=mcasqtd;
   pFormato[05]:=mcasas;
   pFormato[06]:=mcasas;

   if DM2.Qr_CabP1TOTDES.AsFloat<>0 then
      begin
      setlength(pColtotal01,7);
      pColtotal01[00]:='';
      pColtotal01[01]:='Total Bruto';
      pColtotal01[02]:='';
      pColtotal01[03]:='';
      pColtotal01[04]:='';
      pColtotal01[05]:='';
      pColtotal01[06]:=FormatFloat(mcasas, DM2.Qr_CabP1TOTALB.AsFloat);
      end
   else
      setlength(pColtotal01,0);


   if DM2.Qr_CabP1TOTDES.AsFloat<>0 then
      begin
      setlength(pColtotal02,7);
      pColtotal02[00]:='';
      pColtotal02[01]:='Total dos Descontos';
      pColtotal02[02]:='';
      pColtotal02[03]:='';
      pColtotal02[04]:='';
      pColtotal02[05]:='';
      pColtotal02[06]:=FormatFloat(mcasas, DM2.Qr_CabP1TOTDES.AsFloat);
      end
   else
      setlength(pColtotal02,0);

   if DM2.Qr_CabP1TOTDES.AsFloat<>0 then
      begin
      setlength(pColtotal03,7);
      pColtotal03[00]:='';
      pColtotal03[01]:='Total Liquido';
      pColtotal03[02]:='';
      pColtotal03[03]:='';
      pColtotal03[04]:='';
      pColtotal03[05]:='';
      pColtotal03[06]:=FormatFloat(mcasas, DM2.Qr_CabP1TOTALL.AsFloat);
      end
   else
      begin
      setlength(pColtotal01,7);
      pColtotal01[00]:='';
      pColtotal01[01]:='Total Liquido';
      pColtotal01[02]:='';
      pColtotal01[03]:='';
      pColtotal01[04]:='';
      pColtotal01[05]:='';
      pColtotal01[06]:=FormatFloat(mcasas, DM2.Qr_CabP1TOTALL.AsFloat);
      end;
   if (pNomeRel='ORCAMENTO_AMBIENTE') then
      begin
      mQtdGrupo :=Qr_Grupo.RecordCount;
      if mQtdGrupo<1 then
         mQtdGrupo:=1;
      mGrupoLido:=0;
      Qr_Grupo.First;
      mNovoValor:='';
      for x:=1 to mQtdGrupo do
         begin
         mNovoValor:=mNovoValor+'[%CCCC'+IntToStr(x)+'%]'
                    +'[%GGGG'+IntToStr(x)+'%]';

         end;
      ReplaceTags(wp_texto,'[%ITENS_MODELO01%]',mNovoValor,0,0);
      wp_texto.Update;
      wp_texto.Refresh(true);
      x:=0;
      While not Qr_Grupo.Eof do
         begin
         x:=x+1;
         mNovoValor:='[%CCCC'+IntToStr(x)+'%]';
         ReplaceTags(wp_texto,mNovoValor,'',31,0);
         pDataSet.Filter:='GRUPO='+chr(39)+Qr_GrupoGRUPO.AsString+chr(39);
         pDataSet.Filtered:=true;
         pMudaDescricao:=true;

         While not pDataSet.Eof do
            begin
            mNovoValor:='[%GGGG'+IntToStr(x)+'%]';
            ReplaceTags(wp_texto,mNovoValor,'',11,0);
            pDataSet.Next;
            end;
         pDataSet.Filter  :='';
         pDataSet.Filtered:=false;

         pMudaDescricao:=false;

         Qr_Grupo.Next;
         end;
      end
   else
      ReplaceTags(wp_texto,'[%ITENS_MODELO01%]',mNovoValor,11,0);


   if DM2.Qr_CabP1TOTDES.AsFloat<>0 then
      begin
      mNovoValor:='';
      for x:=1 to 3 do
         begin
         mNovoValor:=mNovoValor+'[%TOT_ITENS_MODELO01_'+IntToStr(x)+'%]';
         end;
      ReplaceTags(wp_texto,'[%TOT_ITENS_MODELO01%]',mNovoValor,0,0);
      for x:=1 to 3 do
         begin
         ReplaceTags(wp_texto,'[%TOT_ITENS_MODELO01_'+IntToStr(x)+'%]','',21,x);
         end;
      end
   else
      ReplaceTags(wp_texto,'[%TOT_ITENS_MODELO01%]','',21,1);
   end;
if not pVisualiza then
   begin
   if wp_texto.PrinterSetup then
      wp_texto.Print();
   end;
close;
result:=true;
end;

procedure TFrm_Editor_Word.FormCreate(Sender: TObject);
begin
if TsLegendaOrcam.TabVisible=false then
   begin
   if codusr=1111 then
      TsLegendaOrcam.TabVisible:=true
   else
      TsLegendaOrcam.TabVisible:=false;
   end;
PageControl1.ActivePageIndex:=0;
end;

procedure TFrm_Editor_Word.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Editor_Word.bbCriarClick(Sender: TObject);
begin
wp_texto.TableAdd(valint(QTDCOL.Text),valint(QTDLIN.Text),[wptblAllowNestedTables],  nil,nil);

//wp_texto.Resizing:=valint(Edit1.Text);
//wp_texto.Update;
end;

procedure TFrm_Editor_Word.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//if (FormState<>[fsModal]) then
//   Action := CaFree;

end;

end.

unit S_Imp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, FileCtrl, ExtCtrls, Gauges, Db, DBTables, S_DM1, func;

type
  TFrm_Imp = class(TForm)
    Panel1: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NOMEARQ: TLabel;
    Gauge1: TGauge;
    Query1: TQuery;
    Query1NR_PRODUTO: TFloatField;
    Query1DIGITO: TStringField;
    Query1DESCRICAO: TStringField;
    Query1NR_LABOR: TFloatField;
    Query1NOMELAB: TStringField;
    Query1APRESENT: TStringField;
    Query1PRC_VENDA: TFloatField;
    Query1FRACAO: TFloatField;
    Query1QTD_FRAC: TSmallintField;
    Query1TABELA: TSmallintField;
    Query1PORTARIA: TStringField;
    Query1EDICAO: TSmallintField;
    Query1DATA_VIG: TDateField;
    Query1PRECO: TFloatField;
    Query1CODBAR: TFloatField;
    Label2: TLabel;
    Query1ALIQUOTA: TSmallintField;
    Query1TIPO: TSmallintField;
    procedure FileListBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PINCRKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Imp: TFrm_Imp;

implementation

{$R *.DFM}

procedure TFrm_Imp.FileListBox1Change(Sender: TObject);
begin
NOMEARQ.Caption:=FileListBox1.FileName;
end;

procedure TFrm_Imp.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TFrm_Imp.BitBtn1Click(Sender: TObject);
var
mnome, mdir, marq: String;
mtam,mcont,msep,a,b: Integer;
mcodpro:  Real;
mpreco, mdesc1, mvalor, micmsc, micmsd: Real;
mport: String;
begin
   if trim(NOMEARQ.Caption)='' then
   begin
      ShowMessage('Não ha arquivo Selecionado');
      exit;
   end;
   mtam:=length(NOMEARQ.Caption);
   for mcont:=mtam downto 1 do
   begin
      if Copy(NOMEARQ.caption,mcont,1)='\' then
         break;
   end;
   DM1.Tb_For.Close;
   DM1.Tb_for.ParambyName('EMPRESA').AsString:=IntToStr(codemp);
   DM1.Tb_For.ParamByName('CODFOR').AsString :='19';
   DM1.Tb_For.ParamByName('NOME').AsString   :='%';
   DM1.Tb_For.Open;


 {  mdir:=copy(nomearq.Caption,1,mcont-1);
   marq:=copy(nomearq.Caption,mcont+1,mtam);

   ShowMessage('diretorio: '+mdir+' arquivo: '+marq);}

   mdir:=copy(nomearq.Caption,1,mcont-1);
   marq:=copy(nomearq.Caption,mcont+1,mtam);
   Query1.DatabaseName:=mdir;
   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('Select * FROM '+marq);
   Query1.Open;
   mtam:=Query1.RecordCount;
   mcont:=0;
   Query1.First;
   Gauge1.Visible:=true;
   while not Query1.Eof do
   begin
      mport:='';
      b:=length(Query1PORTARIA.Value);
      for a:=1 to b do
         begin
         if copy(Query1PORTARIA.Value,a,1)<>'-' then
            mport:=mport+copy(Query1PORTARIA.Value,a,1);
         end;
      if copy(Query1DESCRICAO.Value,1,2)='**' then
         mnome:=copy(Query1DESCRICAO.Value,3,14)
      else
         mnome:=Query1DESCRICAO.Value;
      mcont:=mcont+1;
      Gauge1.Progress:=mcont*100 div mtam;
      if (Query1CODBAR.IsNull) or (Query1CODBAR.Value=0) THEN
         mcodpro:=Query1NR_PRODUTO.AsFloat
      else
         mcodpro:=Query1CODBAR.AsFloat;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select PFCODPRO from CODPFOR '
                        +' where PFCODEMP='+IntToStr(codemp)
                        +' and PFCODFOR=43'
                        +' and PFCODPFOR=0'+Query1NR_PRODUTO.AsString);
      DM1.Query1.Open;
      if not DM1.Query1.Eof then
         mcodpro:=DM1.Query1.fields[0].asfloat;

      DM1.Tb_Pro.Close;
      DM1.Tb_Pro.SQL.Clear;
      DM1.Tb_Pro.SQL.Add('Select * from CADPRO where PDCODEMP='+IntToStr(codemp)
                  +' and PDCODPRO=0'+FloatToStr(mcodpro)
                  +' order by PDCODEMP,PDCODPRO');
      DM1.Tb_Pro.Open;
      if DM1.Tb_Pro.Eof then
      begin
         DM1.Tb_Pro.Append;
         DM1.Tb_ProPDCODEMP.Value:=codemp;
         DM1.Tb_ProPDCODBAR.Value:=mcodpro;
         DM1.Tb_ProPDNOME.Value  :=mnome+' '+Query1APRESENT.Value;
         DM1.Tb_ProPDCODFOR.Value:=Query1NR_LABOR.Value;
{         DM1.Tb_ProPDNOMFOR.Value:=Query1NOMELAB.Value;
         mpreco:=Query1PRECO.Value;
         mvalor:=0; mdesc1:=0;
         micmsd:=0; micmsc:=0;
         micmsd:=mpreco+(mpreco*DM1.Tb_ForFIVAINA.Value/100);
         micmsd:=micmsd-(micmsd*DM1.Tb_ForFRBCIR.Value/100);
         micmsd:=micmsd*DM1.Tb_ForFICMSD.Value/100;
         mpreco:=mpreco-(mpreco*mdesc1/100);
         micmsc:=mpreco*DM1.Tb_ForFICMSC.Value/100;
         mvalor:=mpreco+(micmsd-micmsc);
         DM1.Tb_ProPDPRECO.Value    :=mvalor;
         DM1.Tb_ProPDPCOEMB.Value   :=mvalor;
         DM1.Tb_ProPDPCOF.Value     :=Query1PRECO.Value;
         DM1.Tb_ProPDLISTA.Value    :=Query1tipo.Value;
         DM1.Tb_ProPDFRACAO.Value   :=Query1QTD_FRAC.Value;
         DM1.Tb_ProPDPORTARIA.Value :=mport;
         DM1.Tb_ProPDDESC.Value     :=0;
         DM1.Tb_ProPDNSAL.Value     :=' ';
         DM1.Tb_ProPDSIT.Value      :='000';
         if Query1TABELA.Value=1 then
            DM1.Tb_ProPDPMC.Value      :=Query1PRECO.Value*1.4285
         else
            DM1.Tb_ProPDPMC.Value      :=Query1PRC_VENDA.Value;
         DM1.Tb_ProPDRAMO.Value     :=0;
         if Copy(Query1DESCRICAO.Value,1,2)='**' then
            DM1.Tb_ProPDESG.Value   :=1
         else
            DM1.Tb_ProPDESG.Value   :=0;
         DM1.Tb_Pro.Post;
            DM1.Tb_CPFor.Close;
         DM1.Tb_CPFor.ParamByName('EMPRESA').AsString:=IntToStr(codemp);
         DM1.Tb_CPFor.ParamByName('CODFOR').AsString:='43';
         DM1.Tb_CPFor.ParamByName('CODPRO').AsString:=FloatToStr(mcodpro);
         DM1.Tb_CPFor.Open;
         if DM1.Tb_CPFOR.Eof then
            begin
            DM1.Tb_CPFor.Append;
            DM1.Tb_CPForPFCODEMP.Value:=codemp;
            DM1.Tb_CPForPFCODFOR.Value:=43;
            DM1.Tb_CPForPFCODPRO.Value:=mcodpro;
            DM1.Tb_CPForPFCODPFOR.Value:=Query1NR_PRODUTO.Value;
            DM1.Tb_CPForPFSALDO.Value  :=0;
            DM1.Tb_CPFor.Post;
            end;
      end
      else
      begin
         DM1.Tb_Pro.Edit;
         DM1.Tb_ProPDCODEMP.Value:=codemp;
         DM1.Tb_ProPDCODFOR.Value:=Query1NR_LABOR.Value;
         DM1.Tb_ProPDNOMFOR.Value:=Query1NOMELAB.Value;
         DM1.Tb_ProPDFRACAO.Value   :=Query1QTD_FRAC.Value;
         DM1.Tb_ProPDPORTARIA.Value :=mport;
         DM1.Tb_ProPDLISTA.Value    :=Query1TIPO.Value;
         if Query1TABELA.Value=1 then
            DM1.Tb_ProPDPMC.Value      :=Query1PRECO.Value*1.4285
         else
            DM1.Tb_ProPDPMC.Value      :=Query1PRC_VENDA.Value;
         mpreco:=Query1PRECO.Value;
         mvalor:=0;;
         micmsd:=0; micmsc:=0;
         mdesc1:=DM1.Tb_ProPDDESC.Value;
         micmsd:=mpreco+(mpreco*DM1.Tb_ForFIVAINA.Value/100);
         micmsd:=micmsd-(micmsd*DM1.Tb_ForFRBCIR.Value/100);
         micmsd:=micmsd*DM1.Tb_ForFICMSD.Value/100;
         mpreco:=mpreco-(mpreco*mdesc1/100);
         micmsc:=mpreco*DM1.Tb_ForFICMSC.Value/100;
         mvalor:=mpreco+(micmsd-micmsc);
         DM1.Tb_ProPDPRECO.Value    :=mvalor;
         DM1.Tb_ProPDPCOEMB.Value   :=mvalor;
         DM1.Tb_ProPDPCOF.Value     :=Query1PRECO.Value;
         if Copy(Query1DESCRICAO.Value,1,2)='**' then
            DM1.Tb_ProPDESG.Value   :=1;

         DM1.Tb_Pro.Post;}
      end;
      Query1.Next;
   end;
   ShowMessage('Concluido...');
   Gauge1.Visible:=false;

end;

procedure TFrm_Imp.PINCRKeyPress(Sender: TObject; var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key in ['0'..'9']) and (key<>#8) then
   key:=#0;
end;

end.

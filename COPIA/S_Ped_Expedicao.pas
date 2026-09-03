unit S_Ped_Expedicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,func,lerarq, ExtCtrls, Grids, DBGrids, DB,
  DBTables;

type
  TFrm_Ped_Expedicao = class(TForm)
    GroupBox1: TGroupBox;
    CODTRA: TEdit;
    NOMTRA: TEdit;
    NOMENT: TEdit;
    CNPF: TEdit;
    RG: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    bbConferir: TBitBtn;
    bbSair: TBitBtn;
    dbg_leitura: TDBGrid;
    panel_rod: TPanel;
    bbApurar: TBitBtn;
    bbSair2: TBitBtn;
    Tb_CEleLei: TQuery;
    U_EleLei: TUpdateSQL;
    Src_EleLei: TDataSource;
    Tb_CEleLeiCEITEM: TFloatField;
    Tb_CEleLeiCECHAVE: TFloatField;
    Tb_CEleLeiCEVOLUME: TFloatField;
    Tb_CEleLeiCENOMECLI: TStringField;
    Tb_CEleLeiCECODBAR: TStringField;
    Tb_CEleLeiCEQTDVOL: TFloatField;
    Tb_CEleLeiCECIDADEUF: TStringField;
    Tb_CeleRes: TQuery;
    U_CeleRes: TUpdateSQL;
    Src_CeleRes: TDataSource;
    Tb_CeleResCERCHAVE: TFloatField;
    Tb_CeleResCERQTDVOL: TFloatField;
    Tb_CeleResCERQTDLID: TFloatField;
    Tb_CeleResCERNOMECLI: TStringField;
    Tb_CeleResCERCIDADEUF: TStringField;
    Tb_CEleLeiCECODMIN: TFloatField;
    Tb_CeleResCERDIFER: TFloatField;
    Tb_CeleResVOLUMES: TStringField;
    procedure CODTRAExit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure NOMENTExit(Sender: TObject);
    procedure CNPFExit(Sender: TObject);
    procedure RGExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbConferirClick(Sender: TObject);
    procedure dbg_leituraColEnter(Sender: TObject);
    procedure dbg_leituraColExit(Sender: TObject);
    procedure dbg_leituraExit(Sender: TObject);
    procedure Tb_CEleLeiAfterCancel(DataSet: TDataSet);
    procedure Tb_CEleLeiAfterDelete(DataSet: TDataSet);
    procedure Tb_CEleLeiAfterInsert(DataSet: TDataSet);
    procedure Tb_CEleLeiAfterPost(DataSet: TDataSet);
    procedure Tb_CEleLeiBeforeEdit(DataSet: TDataSet);
    procedure Tb_CEleLeiBeforeInsert(DataSet: TDataSet);
    procedure Tb_CEleLeiBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbApurarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bbSair2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Ped_Expedicao: TFrm_Ped_Expedicao;
  mItem_Volume: Integer=0;
  mqtdant: Real;
  mCodAnt: Real;
  mCodBarAnt: String;
  mChave_bkpEtivol: Real=0;
  mChave_ExpMinuta: Real=0;
  mTotal_Minuta: Real=0;
  mTamCodBar: Integer=7;
  mbkp02_Seq: Real=0;
implementation

uses S_DM1, S_Ped_Expedicao_Resumo;

{$R *.dfm}

procedure TFrm_Ped_Expedicao.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if ValFloat(CODTRA.Text)>0 then
   begin
   if not flcadtra(1,0,CODTRA.Text) then
      begin
      fMensagem('Transportadora não Cadastrada!',0,['0'],0);
      CODTRA.SetFocus;
      end
   else
      NOMTRA.Text:=DM1.Tb_TraTRRAZTRA.Value;
   end;

end;

procedure TFrm_Ped_Expedicao.CODTRAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_Min2',Key);
   if Trim(CODTRA.Text)<>'' then
      CODTRAExit(Self);
   key:=#0;
   end;

end;

procedure TFrm_Ped_Expedicao.NOMENTExit(Sender: TObject);
begin
if Length(NOMENT.Text)>40 then
   NOMENT.Text:=copy(NOMENT.Text,1,40);

end;

procedure TFrm_Ped_Expedicao.CNPFExit(Sender: TObject);
begin
if Length(CNPF.Text)>30 then
   CNPF.Text:=copy(CNPF.Text,1,30);

end;

procedure TFrm_Ped_Expedicao.RGExit(Sender: TObject);
begin
if Length(RG.Text)>30 then
   RG.Text:=copy(RG.Text,1,30);

end;

procedure TFrm_Ped_Expedicao.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Ped_Expedicao.bbConferirClick(Sender: TObject);
begin
if codemp>100 then
   begin
   AvisoSonoro(3);
   fmensagem('Não é uma empresa válida para este tipo de operação!',1,['0'],0);
   exit;
   end;
if Trim(CODTRA.Text)='' then
   begin
   fmensagemSom('Codigo doa Transportadora Campo Obrigatorio!',0,['0'],0);
   CODTRA.SetFocus;
   exit;
   end;


Tb_CEleLei.Close;
Tb_CEleLei.Open;

mItem_Volume:=0;

mitem:=0;
Tb_CElelei.Insert;
dbg_leitura.SetFocus;
Tb_CeleRes.close;
Tb_CeleRes.Open;
mbkp02_Seq:=0;
end;

procedure TFrm_Ped_Expedicao.dbg_leituraColEnter(Sender: TObject);
begin
If (dbg_leitura.SelectedField=Tb_CEleLeiCECHAVE) and (Tb_CEleLei.State in [dsInsert, dsEdit]) then
   begin
   if trim(Tb_CEleLeiCECODBAR.AsString)<>'' then
      begin
      dbg_leitura.SelectedField:=Tb_CEleLeiCECODBAR;
      Tb_CEleLei.Append;
      end
   else
      dbg_leitura.SelectedField:=Tb_CEleLeiCECODBAR;

   end;

end;

procedure TFrm_Ped_Expedicao.dbg_leituraColExit(Sender: TObject);
begin


if Tb_CEleLei.State in [dsEdit,dsInsert] then
   begin
   if (dbg_leitura.SelectedField=Tb_CEleLeiCECHAVE) and
       ( (trim(Tb_CEleLeiCECODBAR.AsString)='')
         or (Tb_CEleLeiCECODBAR.IsNull))  then
      dbg_leitura.SelectedField:=Tb_CEleLeiCECODBAR
   else if dbg_leitura.SelectedField=Tb_CEleLeiCECODBAR then
      begin
      if not Tb_CEleLeiCECODBAR.IsNull then
         begin
         if trim(Tb_CeleleiCECODBAR.asstring)='' then
            begin
            fmensagem_Barrar('Codigo Inexistente'+#13
                         +'Codigo lido: '+Tb_CEleLeiCECODBAR.AsString,0);
            if dbg_leitura.SelectedField=Tb_CEleLeiCECODBAR then
               begin
               Tb_Celelei.Cancel;
               Tb_Celelei.Append;
               abort;
               end;
            end
         else if ValFloat(copy(Tb_CEleLeiCECODBAR.AsString,mTamCodBar+1,4))<=0 then
            begin
            fmensagem_Barrar('Codigo Invalido'+#13
                         +'Codigo lido: '+Tb_CEleLeiCECODBAR.AsString,0);
            if dbg_leitura.SelectedField=Tb_CEleLeiCECODBAR then
               begin
               Tb_Celelei.Cancel;
               Tb_Celelei.Append;
               abort;
               end;
            end;
         Tb_CEleLeiCECHAVE.AsFloat :=valfloat(copy(Tb_CEleLeiCECODBAR.AsString,1,mTamCodBar));
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select CEV_CODIGO,CEV_NUM_MINUTA,CRAZAO,CCIDADE,CUF,CEV_QTDVOL '
                           +' from CADETIVOL,CADCLI '
                           +' where '+iif(DM1.Qr_TID.Locate('TINOME','CADPED',[])
                           ,'',' CEV_CODEMP=0'+IntTostr(codemp)+' and ')
                           +' CEV_CODIGO=0'+Tb_CEleLeiCECHAVE.AsString
                           +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' and CCODEMP=CEV_CODEMP ')
                           +' and CCODCLI=CEV_CODCLI '
                           );
         try
            DM1.Query1.Open;
         except
            DM1.Query1.sql.savetofile('c:\sql.txt');
            end;
         if not DM1.Query1.IsEmpty then
            begin
            if DM1.Query1.fieldbyName('CEV_NUM_MINUTA').AsFloat>0 then
               begin
               fmensagem_Barrar('Esta Volume ja se encontra na Minuta: '+DM1.Query1.fieldbyName('CEV_NUM_MINUTA').AsString+#13
                           +'Codigo lido: '+Tb_CEleLeiCECODBAR.AsString,0);
               if dbg_leitura.SelectedField=Tb_CEleLeiCECODBAR then
                  begin
                  Tb_Celelei.Cancel;
                  Tb_Celelei.Append;
                  abort;
                  end;
               end;

            if ValFloat(copy(Tb_CEleLeiCECODBAR.AsString,mTamCodBar+1,4))>DM1.Query1.fieldbyName('CEV_QTDVOL').AsFloat  then
               begin
               fmensagem_Barrar('Volume Invalido, Quantidade de volumes: '+DM1.Query1.fieldbyName('CEV_QTDVOL').AsString+#13
                           +'Codigo lido: '+Tb_CEleLeiCECODBAR.AsString,0);
               if dbg_leitura.SelectedField=Tb_CEleLeiCECODBAR then
                  begin
                  Tb_Celelei.Cancel;
                  Tb_Celelei.Append;
                  abort;
                  end;
               end;
            Tb_CEleLeiCEVOLUME.Value   := ValFloat(copy(Tb_CEleLeiCECODBAR.AsString,mTamCodBar+1,4));
            Tb_CEleLeiCENOMECLI.Value  := DM1.Query1.fieldbyName('CRAZAO').AsString;
            Tb_CEleLeiCEQTDVOL.Value   := DM1.Query1.fieldbyName('CEV_QTDVOL').AsFloat;
            Tb_CEleLeiCECIDADEUF.Value := DM1.Query1.fieldbyName('CCIDADE').AsString+'-'
                                       +DM1.Query1.fieldbyName('CUF').AsString;
            Tb_CEleLeiCECODMIN.Value   := DM1.Query1.fieldbyName('CEV_NUM_MINUTA').AsFloat;
            end;
         end;
      end;
   end;


end;

procedure TFrm_Ped_Expedicao.dbg_leituraExit(Sender: TObject);
begin
if Tb_CEleLei.State in [dsEdit,dsInsert] then
   Tb_CEleLei.Post;

end;

procedure TFrm_Ped_Expedicao.Tb_CEleLeiAfterCancel(DataSet: TDataSet);
begin
mqtdant:=0;
mCodAnt:=0;
mCodBarAnt:='';

end;

procedure TFrm_Ped_Expedicao.Tb_CEleLeiAfterDelete(DataSet: TDataSet);
begin
if not Tb_CeleRes.Active then
   Tb_CeleRes.Open;

if Tb_CeleRes.Locate('CECODBAR',Tb_CEleLeiCECODBAR.Value,[]) then
   begin
   Tb_CeleRes.Edit;
   Tb_CeleResCERQTDLID.Value:=Tb_CeleResCERQTDLID.Value-1;
   Tb_CeleResCERDIFER.Value:=Tb_CeleResCERDIFER.Value+1;
   Tb_CeleRes.Post;
   end;

end;

procedure TFrm_Ped_Expedicao.Tb_CEleLeiAfterInsert(DataSet: TDataSet);
begin
mItem_Volume:=mItem_Volume+1;
Tb_CEleLeiCEITEM.Value:=mItem_Volume;

end;

procedure TFrm_Ped_Expedicao.Tb_CEleLeiAfterPost(DataSet: TDataSet);
begin
mqtdant:=0;
mCodAnt:=0;
mCodBarAnt:='';

end;

procedure TFrm_Ped_Expedicao.Tb_CEleLeiBeforeEdit(DataSet: TDataSet);
begin
mqtdant:=1;
mCodAnt:=Tb_CEleLeiCECHAVE.Value;
mCodBarAnt:=Tb_CEleLeiCECODBAR.AsString;

end;

procedure TFrm_Ped_Expedicao.Tb_CEleLeiBeforeInsert(DataSet: TDataSet);
begin
mqtdant:=0;
mCodAnt:=0;
mCodBarAnt:='';

end;

procedure TFrm_Ped_Expedicao.Tb_CEleLeiBeforePost(DataSet: TDataSet);
begin

if Tb_CEleLeiCECODBAR.isnull then
   begin
   Tb_CELELEI.Cancel;
   abort;
   exit;
   end;

if Tb_CEleLeiCENOMECLI.AsString='' then
   begin
   fmensagem_Barrar('Pedido: '+Tb_CEleLeiCECHAVE.AsString+' Volume: '+Tb_CEleLeiCEVOLUME.AsString
                   +#13+'Nao encontrado!'
                   +#13
                   +'Codigo lido: '+Tb_CEleLeiCECODBAR.AsString,0);
   Tb_Celelei.Cancel;
   Tb_Celelei.Append;
   Abort;
   end
else
   begin
   if not Tb_CeleRes.Active then
      Tb_CeleRes.Open;


   if not Tb_CeleRes.Locate('CERCHAVE',Tb_CEleLeiCECHAVE.Value,[]) then
      begin
      Tb_CeleRes.Append;
      Tb_CeleResCERCHAVE.Value   :=Tb_CEleLeiCECHAVE.AsFloat;
      Tb_CeleResCERQTDVOL.Value  :=Tb_CEleLeiCEQTDVOL.AsFloat;
      Tb_CeleResCERQTDLID.Value  :=0;
      Tb_CeleResCERNOMECLI.Value :=Tb_CEleLeiCENOMECLI.AsString;
      Tb_CeleResCERCIDADEUF.Value:=Tb_CEleLeiCECIDADEUF.AsString;
      Tb_CeleResCERDIFER.Value   :=Tb_CEleLeiCEQTDVOL.AsFloat;
      Tb_CeleRes.Post;
      Tb_CeleRes.Locate('CERCHAVE',Tb_CEleLeiCECHAVE.Value,[]);
      end;
   if mCodAnt<>Tb_CEleLeiCECHAVE.AsFloat then
      begin
      if (Tb_CeleResCERQTDLID.AsFloat+1)>Tb_CeleResCERQTDVOL.AsFloat then
         begin
         fmensagem_Barrar('Chave: '+Tb_CEleLeiCECHAVE.AsString+#13
                        +'Cliente: '+Tb_CEleLeiCENOMECLI.AsString+'/'+Tb_CEleLeiCECIDADEUF.AsString+#13
                        +'Quantidade de Volumes: '+Tb_CEleLeiCEQTDVOL.AsString+#13
                        +'Quantidade ja Lidos.: '+Tb_CeleResCERQTDLID.AsString+#13
                        +'inválido!',0);
         Tb_Celelei.Cancel;
         Tb_Celelei.Append;
         Abort;
         exit;
         end
      end
   else
      begin
      if (Tb_CeleResCERQTDLID.AsFloat+1-mqtdant)>Tb_CeleResCERQTDVOL.AsFloat then
         begin

         fmensagem_Barrar('Chave: '+Tb_CEleLeiCECHAVE.AsString+#13
                        +'Cliente: '+Tb_CEleLeiCENOMECLI.AsString+'/'+Tb_CEleLeiCECIDADEUF.AsString+#13
                        +'Quantidade de Volumes: '+Tb_CEleLeiCEQTDVOL.AsString+#13
                        +'Quantidade ja Lidos.: '+Tb_CeleResCERQTDLID.AsString+#13
                        +'inválido!',0);
         Tb_Celelei.Cancel;
         Tb_Celelei.Append;
         Abort;
         exit;
         end;
      end;

   if mChave_bkpEtivol=0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Select max(BK01_CHAVE) from CADETIVOL_CELE_BKP01');
      try
         DM1.Query1.Open;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         end;
      mChave_bkpEtivol:=DM1.Query1.Fields[0].AsFloat+1;

      DM1.Query1.Close;
      DM1.query1.SQL.Clear;
      DM1.query1.Params.CreateParam(ftString,'BK01_DATHOR',ptInput);
      DM1.query1.Params.CreateParam(ftString,'BK01_TERMINAL',ptInput);
      DM1.query1.Params.CreateParam(ftString,'BK01_NOMEENT',ptInput);
      DM1.query1.Params.CreateParam(ftString,'BK01_CNPJ',ptInput);
      DM1.query1.Params.CreateParam(ftString,'BK01_RG',ptInput);

      DM1.Query1.sql.Add('Insert into CADETIVOL_CELE_BKP01 ('
                        +' BK01_CHAVE '
                        +',BK01_DATHOR'
                        +',BK01_TERMINAL'
                        +',BK01_CODTRA'
                        +',BK01_NOMEENT'
                        +',BK01_CNPJ'
                        +',BK01_RG'
                        +') values ('
                        +' '+FloatToStr(mChave_bkpEtivol)
                        +',:BK01_DATHOR'
                        +',:BK01_TERMINAL'
                        +',0'+trim(CODTRA.Text)
                        +',:BK01_NOMEENT'
                        +',:BK01_CNPJ'
                        +',:BK01_RG'
                        +')');
      DM1.query1.ParambyName('BK01_DATHOR').AsDateTime:=Now;
      DM1.query1.ParambyName('BK01_TERMINAL').AsString:=copy(NomeComputador,1,50);
      DM1.query1.ParambyName('BK01_NOMEENT').AsString :=copy(NOMENT.Text,1,40);
      DM1.query1.ParambyName('BK01_CNPJ').AsString    :=copy(CNPF.Text,1,30);
      DM1.query1.ParambyName('BK01_RG').AsString      :=copy(RG.Text,1,30);
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fmensagem('Erro ao criar backups da minuta',2,['0'],0);
         mChave_bkpEtivol:=0;
         Tb_CEleLei.Cancel;
         exit;
         end;
      end;
   if ((mCodBarAnt<>'') and (mCodBarAnt<>Tb_CEleLeiCECODBAR.AsString))
      or (mCodBarAnt='') then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Select count(*) from CADETIVOL_CELE_BKP02'
                        +' where BK02_CODBAR='+chr(39)+Tb_CEleLeiCECODBAR.AsString+chr(39));
      try
         DM1.Query1.Open;
      except
         DM1.Query1.sql.savetofile('c:\sql.txt');
         end;
      if DM1.Query1.Fields[0].asInteger>0 then
         begin
         fmensagem_Barrar('Chave: '+Tb_CEleLeiCECHAVE.AsString+#13
                      +'Cliente: '+Tb_CEleLeiCENOMECLI.AsString+'/'+Tb_CEleLeiCECIDADEUF.AsString+#13
                      +'Este Volume foi lido anteriormente inválido!',0);
         Tb_Celelei.Cancel;
         Tb_Celelei.Append;
         Abort;
         exit;
         end;
      end;
// inicio gravacao bkp

      DM1.Query1.Close;
      DM1.query1.SQL.Clear;
      DM1.query1.Params.CreateParam(ftString,'BK02_CHAVE',ptInput);
      DM1.query1.Params.CreateParam(ftString,'BK02_CHAVE_ETI',ptInput);
      DM1.query1.Params.CreateParam(ftString,'BK02_SEQ',ptInput);
      DM1.query1.Params.CreateParam(ftString,'BK02_CODBAR',ptInput);
      mbkp02_Seq:=mbkp02_Seq+1;

      DM1.Query1.sql.Add('Insert into CADETIVOL_CELE_BKP02 ('
                        +' BK02_CHAVE '
                        +',BK02_SEQ'
                        +',BK02_CODBAR'
                        +',BK02_CHAVE_ETI '
                        +') values ('
                        +' :BK02_CHAVE '
                        +',:BK02_SEQ'
                        +',:BK02_CODBAR'
                        +',:BK02_CHAVE_ETI '
                        +')');
      DM1.query1.ParambyName('BK02_CHAVE').AsFloat     :=mChave_bkpEtivol;
      DM1.query1.ParambyName('BK02_SEQ').AsFloat       :=mbkp02_Seq;
      DM1.query1.ParambyName('BK02_CODBAR').AsString   :=Tb_CEleLeiCECODBAR.AsString;
      DM1.query1.ParambyName('BK02_CHAVE_ETI').AsString:=Tb_CEleLeiCECHAVE.AsString;
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         fmensagem('Erro ao criar backups da minuta',2,['0'],0);
         Tb_CEleLei.Cancel;
         exit;
         end;

// termino gravacao bkp



   if (mcodant<>0) and (mCodAnt<>Tb_CEleLeiCECHAVE.Value) then
      begin
      if not Tb_CeleRes.Active then
         Tb_CeleRes.Open;
      Tb_CeleRes.Edit;
      Tb_CeleResCERQTDLID.Value :=Tb_CeleResCERQTDLID.Value+1;
      Tb_CeleResCERDIFER.Value  :=Tb_CeleResCERDIFER.Value-1;
      Tb_CeleRes.Post;
      if not Tb_CeleRes.Locate('CERCHAVE',mCodAnt,[]) then
         begin
         Tb_CeleRes.Edit;
         Tb_CeleResCERQTDLID.Value :=Tb_CeleResCERQTDLID.Value-mqtdant;
         Tb_CeleResCERDIFER.Value:=Tb_CeleResCERDIFER.Value+mqtdant;
         Tb_CeleRes.Post;
         end;
      end
   else
      begin
      if not Tb_CeleRes.Active then
         Tb_CeleRes.Open;
      Tb_CeleRes.Edit;
      Tb_CeleResCERQTDLID.Value :=Tb_CeleResCERQTDLID.Value+1-mqtdant;
      Tb_CeleResCERDIFER.Value  :=Tb_CeleResCERDIFER.Value-1+mqtdant;
      Tb_CeleRes.Post;
      end;
   end;
end;

procedure TFrm_Ped_Expedicao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if mChave_bkpEtivol<>0 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from CADETIVOL_CELE_BKP01 '
                     +' where BK01_CHAVE=0'+FloatTostr(mChave_bkpEtivol)
                      );
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Delete from CADETIVOL_CELE_BKP02 '
                     +' where BK02_CHAVE=0'+FloatTostr(mChave_bkpEtivol)
                      );
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;

   mChave_bkpEtivol:=0;
   end;
end;

procedure TFrm_Ped_Expedicao.bbApurarClick(Sender: TObject);
var
x: Integer;
mQtdVolumes: Real;
begin
if Tb_CEleLeiCECODBAR.IsNull then
   Tb_CEleLei.Cancel;
if Tb_CEleLei.IsEmpty then
   begin
   fmensagemSom('Favor Passar os produtos no Checkout!',0,['0'],0);
   dbg_leitura.SetFocus;
   exit;
   end;
Tb_CeleRes.Close;
Tb_CeleRes.Open;

Tb_CEleLei.First;
While not Tb_CEleLei.Eof do
   begin

   if Tb_CeleRes.Locate('CERCHAVE',Tb_CEleLeiCECHAVE.AsFloat,[]) then
      begin
      Tb_CeleRes.Edit;
      Tb_CeleResCERQTDLID.Value :=Tb_CeleResCERQTDLID.Value+1;
      Tb_CeleResCERDIFER.Value  :=Tb_CeleResCERDIFER.Value-1;
      end
   else
      begin
      Tb_CeleRes.Append;
      Tb_CeleResCERCHAVE.Value   :=Tb_CEleLeiCECHAVE.AsFloat;
      Tb_CeleResCERQTDVOL.Value  :=Tb_CEleLeiCEQTDVOL.AsFloat;
      Tb_CeleResCERQTDLID.Value  :=1;
      Tb_CeleResCERNOMECLI.Value :=Tb_CEleLeiCENOMECLI.AsString;
      Tb_CeleResCERCIDADEUF.Value:=Tb_CEleLeiCECIDADEUF.AsString;
      Tb_CeleResCERDIFER.Value   :=Tb_CEleLeiCEQTDVOL.AsFloat-1;
      end;
   Tb_CeleRes.Post;
   Tb_CEleLei.Next;
   end;
Tb_CEleLei.First;

Frm_Ped_Expedicao.Tb_CeleRes.Filter  :='CERDIFER<>0';
Frm_Ped_Expedicao.Tb_CeleRes.Filtered:=true;
if Frm_Ped_Expedicao.Tb_CeleRes.IsEmpty then
   begin
   Frm_Ped_Expedicao.Tb_CeleRes.Filter:='';
   Frm_Ped_Expedicao.Tb_CeleRes.Filtered:=false;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select Max(CM1CODMIN) from CADMIN1 '
                     +iif(DM1.Qr_Tid.Locate('TINOME','CADMIN',[]),'',' where CM1CODEMP='+IntToStr(codemp)));
   try
      DM1.Query1.Open;
   except
      DM1.Query1.sql.savetofile('c:\sql.txt');
      end;
   mChave_ExpMinuta:=DM1.Query1.Fields[0].AsFloat+1;

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Insert into CADMIN1 ('
                     +' CM1CODEMP, '
                     +' CM1CODMIN, '
                     +' CM1CODTRA, '
                     +' CM1LOTSEQ ) Values ('
                     +IntToStr(codemp)
                     +','+FloatToStr(mChave_ExpMinuta)
                     +','+fdeixanum(CODTRA.Text)
                     +',0)');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   if not flcadmin1(0,0,FloatToStr(mChave_ExpMinuta),pvazio) then
      begin
      fmensagem('Erro ao Tentar Gerar Minutas!',0,['2'],0);
      exit;
      end;
   mcinst2:='';

   DM1.Query1.Close;
   DM1.Query1.SQL.clear;
   DM1.Query1.SQL.Add('Select BK02_CHAVE_ETI from CADETIVOL_CELE_BKP02'
                     +' where BK02_CHAVE=0'+FloattosTr(mChave_bkpEtivol)
                     +' group by BK02_CHAVE_ETI ');
   try
      DM1.Query1.Open;
   except
      DM1.Query1.sql.savetofile('c:\sql.txt');
      end;
   if DM1.Query1.IsEmpty then
      begin
      fMensagem('Erro ao localizar backup da etiqueta!',0,['0'],0);
      exit;
      end;

   mQtdVolumes:=0;
   Tb_CeleRes.First;
   While not Tb_CeleRes.Eof do
      begin
      mQtdVolumes:=mQtdVolumes+Tb_CeleResCERQTDVOL.AsFloat;
      Tb_CeleRes.Next;
      end;

   While not DM1.Query1.Eof do
      begin
      if trim(mcinst2)='' then
         mcinst2:=mcinst2+DM1.Query1.Fields[0].AsString
      else
         mcinst2:=mcinst2+','+DM1.Query1.Fields[0].AsString;
      DM1.Query1.Next;
      end;


   DM1.Query5.Close;
   DM1.Query5.SQL.Clear;
   DM1.Query5.SQL.Add('Select CEV_CODIGO,CEV_SEQ,CEV_PED_CODEMP,CEV_PED_LOTSEQ'
                     +',CEV_PED_CHAVE,CEV_PED_ORDEM,CEV_NUM_MINUTA,CEV_CODCLI'
                     +',CEV_QTDVOL,CRAZAO from CADETIVOL,CADCLI where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' CEV_CODEMP=0'+IntTostr(codemp)+' and ')
                     +iif(DM1.Qr_TID.Locate('TINOME','CADCLI',[]),'',' CCODEMP=CEV_CODEMP and ')
                     +' CCODCLI=CEV_CODCLI ');
   if trim(mcinst2)<>'' then
      DM1.Query5.SQL.add(' and CEV_CODIGO in ('+mcinst2+')');
   DM1.Query5.SQL.add(' order by CRAZAO ');
   try
      DM1.Query5.Open;
   except
      DM1.Query5.sql.savetofile('c:\sql.txt');
      end;
   mItem_Volume:=1;
   flcadmin2(1,0,FloatTostr(mChave_ExpMinuta),IntToStr(mitem_volume));
   mTotal_Minuta:=0;
   While not DM1.Query5.Eof do
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('Select sum(P1TOTALL) AS P1TOTALL ,'
                        +' sum(P1QTDVOL) AS P1QTDVOL, '
                        +' sum(P1PESOB) AS P1PESOB, '
                        +' sum(P1PESOL) AS P1PESOL, '
                        +' sum(P1VALFRE) AS P1VALFRE, '
                        +' max(P1BANCO)  AS P1BANCO, '
                        +' max(P1DATANF) AS P1DATANF, '
                        +' max(P1CODCLI) AS P1CODCLI, '
                        +' max(P1TIPO)   AS P1TIPO, '
                        +' min(P1NUMNF) as P1NUMNF,'
                        +' min(P1NUMCF) as P1NUMCF,'
                        +' max(P1OBS1) as P1OBS01,'
                        +' max(P1OBS2) as P1OBS02,'
                        +' max(P1OBS3) as P1OBS03,'
                        +' max(P1ORDEM) AS QTDPAG, '
                        +' max(P1LOTSEQ) AS P1LOTSEQ, '
                        +' max(P1DATCON) AS P1DATCON, '
                        +' max(P1CODCON) AS P1CODCON, '
                        +' max(P1MINUTA) AS P1MINUTA, '
                        +' max(P1CHAVE) AS P1CHAVE, '
                        +' P1CODEMP'
                        +' from CADP01 where '
                        +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),''
                        ,' P1CODEMP=0'+DM1.Query5.fieldbyName('CEV_PED_CODEMP').AsString+' and ')
                        +' P1STATUS<'+mstatus_excluido+' '
                        +' and P1LOTSEQ=0'+DM1.Query5.fieldbyName('CEV_PED_LOTSEQ').AsString
                        +' and P1CHAVE=0'+DM1.Query5.fieldbyName('CEV_PED_CHAVE').AsString
                        +' group by P1CODEMP'

                        );
      try
         DM1.Query2.Open;
      except
         DM1.Query2.sql.savetofile('c:\sql.txt');
         end;
      While not DM1.Query2.Eof do
         begin
         mItem_Volume:=mItem_Volume+1;
         mTotal_Minuta:=mTotal_Minuta+DM1.Query2.fieldbyName('P1TOTALL').AsFloat;
         DM1.Tb_Min2.Append;
         DM1.Tb_Min2CM2CODEMP.Value:=codemp;
         DM1.Tb_Min2CM2LOTSEQ.Value     :=0;
         DM1.Tb_Min2CM2TIPO.Value       :='PD';
         DM1.Tb_Min2CM2CODMIN.Value     :=mChave_ExpMinuta;
         DM1.Tb_Min2CM2SEQ.Value        :=mItem_Volume;
         DM1.Tb_Min2CM2NUMERO.Value     :=DM1.Query2.fieldbyName('P1CHAVE').AsFloat;
         DM1.Tb_Min2CM2PED_CODEMP.Value :=DM1.Query2.fieldbyName('P1CODEMP').AsFloat;
         DM1.Tb_Min2CM2LOTSEQ_CP.Value  :=DM1.Query5.fieldbyName('CEV_PED_LOTSEQ').AsFloat;
         DM1.Tb_Min2CM2VALOR.Value      :=DM1.Query2.fieldbyName('P1TOTALL').AsFloat;
         DM1.Tb_Min2CM2DTCONF.Value     :=DM1.Query2.fieldbyName('P1DATCON').AsDateTime;
         DM1.Tb_Min2CM2USRCONF.Value    :=DM1.Query2.fieldbyName('P1CODCON').AsFloat;
         DM1.Tb_Min2CM2LOTSEQ_CP.Value  :=DM1.Query2.fieldbyName('P1LOTSEQ').AsFloat;
         DM1.Tb_Min2CM2CLIFOR.Value     :='CL';
         DM1.Tb_Min2CM2LOTSEQ_CP.Value  :=DM1.Query2.fieldbyName('P1LOTSEQ').AsFloat;
         DM1.Tb_Min2CM2CODIGO.Value     :=DM1.Query2.fieldbyName('P1CODCLI').AsFloat;
         DM1.Tb_Min2CM2CODCLI.Value     :=DM1.Query2.fieldbyName('P1CODCLI').AsFloat;
         DM1.Tb_Min2CM2TIPDOC.Value     :='NF';
         DM1.Tb_Min2CM2NUMDOC.Value     :=DM1.Query2.fieldbyName('P1NUMNF').AsFloat;
         DM1.Tb_Min2CM2QTDVOL.Value     :=DM1.Query2.fieldbyName('P1QTDVOL').AsFloat;
         DM1.Tb_Min2CM2PESOB.Value      :=DM1.Query2.fieldbyName('P1PESOB').AsFloat;
         DM1.Tb_Min2CM2PESOL.Value      :=DM1.Query2.fieldbyName('P1PESOL').AsFloat;
         DM1.Tb_Min2CM2OBS01.Value      :=DM1.Query2.fieldbyName('P1OBS01').AsString;
         DM1.Tb_Min2CM2OBS02.Value      :=DM1.Query2.fieldbyName('P1OBS02').AsString;
         DM1.Tb_Min2CM2OBS03.Value      :=DM1.Query2.fieldbyName('P1OBS03').AsString;
         DM1.Tb_Min2CM2TIPOPED.Value    :=DM1.Query2.fieldbyName('P1TIPO').AsFloat;
         DM1.Tb_Min2CM2VALFRE.Value     :=DM1.Query2.fieldbyName('P1VALFRE').AsFloat;
         DM1.Tb_Min2CM2QTDPAG.Value     :=DM1.Query2.fieldbyName('QTDPAG').AsFloat;

         DM1.Query3.Close;
         DM1.Query3.SQL.Clear;
         DM1.Query3.SQL.Add('Select count(*) as QTDTIT '
                           +'                 from caddar where ');
         DM1.Query3.SQL.Add('     crcodemp ='+DM1.Query2.FieldbyName('P1CODEMP').AsString);
         DM1.Query3.SQL.Add(' and crlotseq_cp ='+DM1.Query2.FieldbyName('P1LOTSEQ').AsString);
         DM1.Query3.SQL.Add(' and crnped  ='+DM1.Query2.FieldbyName('P1CHAVE').AsString);
         try
            DM1.Query3.Open;
         except
            DM1.Query3.sql.savetofile('c:\sql.txt');
            end;
         DM1.Tb_Min2CM2QTDTIT.Value     :=DM1.Query3.fieldbyName('QTDTIT').AsFloat;

         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Select sum(P2QTD) AS QTDUND,COUNT(*) AS QTDITENS '
                        +' from CADP02 where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+dm1.qUERY2.FieldbyName('P1CODEMP').AsString+' and ')
                        +' P2LOTSEQ=0'+DM1.Query2.FieldbyName('P1LOTSEQ').AsString
                        +' and P2CHAVE=0'+DM1.Query2.FieldbyName('P1CHAVE').AsString);
         try
            DM1.Query1.Open;
         except
            DM1.Query1.sql.savetofile('c:\sql.txt');
            end;

         DM1.Tb_Min2CM2QTDITENS.Value      :=DM1.Query1.fieldbyName('QTDITENS').AsFloat;
         DM1.Tb_Min2CM2QTDUND.Value        :=DM1.Query1.fieldbyName('QTDUND').AsFloat;
         DM1.Tb_Min2CM2CODBCO.Value        :=DM1.Query2.fieldbyName('P1BANCO').AsFloat;
         DM1.Tb_Min2CM2DATANF.AsDateTime   :=DM1.Query2.fieldbyName('P1DATANF').AsDateTime;


         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Update CADP01 set P1MINUTA=0'+FloatToStr(mChave_ExpMinuta)
                           +' ,P1CODTRA=0'+trim(CODTRA.Text) );
         if DM1.Tb_Min2CM2QTDVOL.AsInteger>0 then
            DM1.Query1.SQL.Add(',P1QTDVOL=0'+DM1.Tb_Min2CM2QTDVOL.AsString);
         DM1.Query1.SQL.Add(' where P1CODEMP=0'+DM1.Tb_Min2CM2PED_CODEMP.AsString
                           +' and   P1LOTSEQ=0'+DM1.Tb_Min2CM2LOTSEQ_CP.AsString
                           +' and   P1CHAVE=0'+DM1.Tb_Min2CM2NUMERO.AsString
                           +' and  (P1MINUTA is null or P1MINUTA<>0'+DM1.Tb_Min2CM2CODMIN.AsString+')'
                           );
         try
           DM1.Query1.ExecSQL;
           fdm1StartCommit;
         except
           end;

         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.Add('Update CADETIVOL set CEV_NUM_MINUTA=0'+FloatToStr(mChave_ExpMinuta));
         DM1.Query1.SQL.Add(' where CEV_CODEMP=0'+DM1.Tb_Min2CM2PED_CODEMP.AsString
                           +' and   CEV_LOTSEQ=0'+DM1.Tb_Min2CM2LOTSEQ_CP.AsString
                           +' and   CEV_CODIGO=0'+DM1.Tb_Min2CM2NUMERO.AsString
                           +' and   (CEV_NUM_MINUTA is null or CEV_NUM_MINUTA<>0'+FloatToStr(mChave_ExpMinuta)+')'
                           );
         try
           DM1.Query1.ExecSQL;
           fdm1StartCommit;
         except
           end;
         DM1.Tb_Min2.Post;
         mItem_Volume:=mItem_Volume+1;
         DM1.Query2.Next;
         end;
      DM1.Query5.Next;
      end;
   DM1.Tb_Min1.Edit;
   DM1.Tb_Min1CM1CODEMP.Value:=codemp;
   DM1.Tb_Min1CM1CODMIN.Value:=mChave_ExpMinuta;
   DM1.Tb_Min1CM1CODTRA.Value:=ValFloat(CODTRA.Text);
   DM1.Tb_Min1CM1LOTSEQ.Value:=0;
   DM1.Tb_Min1CM1DATA.Value  :=pdatasis;
   DM1.Tb_Min1M1NOMEENT.Value:=NOMENT.Text;
   DM1.Tb_Min1CM1CNPF.Value  :=CNPF.Text;
   DM1.Tb_Min1CM1RG.Value    :=RG.Text;
   DM1.Tb_Min1CM1TOTAL.Value :=mTotal_Minuta;
   DM1.Tb_Min1CM1USRINC.Value        :=codusr;
   DM1.Tb_Min1CM1INCDTHORA.AsString :=FormatDatetime('dd/mm/yyyy mm:hh:ss', now);
   DM1.Tb_Min1CM1USRINC.Value         :=codusr;
   DM1.Tb_MIN1.Post;
   if Frm_Ped_Expedicao_Resumo=nil then
      Application.createform(TFrm_Ped_Expedicao_Resumo, Frm_Ped_Expedicao_Resumo);
   Frm_Ped_Expedicao_Resumo.TsErro.TabVisible:=false;
   Frm_Ped_Expedicao_Resumo.tsOk.TabVisible  :=True;

   Frm_Ped_Expedicao_Resumo.NOMTRA.Text   :=CODTRA.Text+' - '+NOMTRA.Text;
   Frm_Ped_Expedicao_Resumo.CHAVE_MIN.Text:=FloatToStr(mChave_ExpMinuta);
   if mQtdVolumes=1 then
      Frm_Ped_Expedicao_Resumo.OBS_RESUMO.Caption:='Foi Lido 1 volume '
   else
      Frm_Ped_Expedicao_Resumo.OBS_RESUMO.Caption:='Foram lidos '+FloatToStr(mQtdVolumes)+' volumes ';
   if mChave_bkpEtivol<>0 then
      begin
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Delete from CADETIVOL_CELE_BKP01 '
                       +' where BK01_CHAVE=0'+FloatTostr(mChave_bkpEtivol)
                         );
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      DM1.Query1.Close;
      DM1.Query1.SQL.clear;
      DM1.Query1.SQL.Add('Delete from CADETIVOL_CELE_BKP02 '
                     +' where BK02_CHAVE=0'+FloatTostr(mChave_bkpEtivol)
                      );
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;

      mChave_bkpEtivol:=0;
      end;
   Frm_Ped_Expedicao_Resumo.Show;
   Frm_Ped_Expedicao.CODTRA.Text:='';
   Frm_Ped_Expedicao.NOMTRA.Text:='';
   Frm_Ped_Expedicao.NOMENT.Text:='';
   Frm_Ped_Expedicao.CNPF.Text  :='';
   Frm_Ped_Expedicao.RG.Text    :='';

   end
else
   begin
   // INICIO
   Tb_CeleRes.First;
   While not Tb_CeleRes.Eof do
      begin
      if Tb_CeleResCERQTDVOL.AsFloat<>Tb_CeleResCERQTDLID.AsFloat then
         begin
         mcinst:='';
         mcinst2:='';
         for x:=1 to Tb_CeleResCERQTDVOL.AsInteger do
            begin
             if not Tb_CEleLei.Locate('CECHAVE;CEVOLUME',vararrayof([Tb_CeleResCERCHAVE.AsFloat,x]),[]) then
               begin
               mcinst2:=mcinst2+mcinst+InttoStr(x);
               mcinst:='/';
               end;
            end;
         Tb_CeleRes.Edit;
         Tb_CeleResVOLUMES.Value:=mcinst2;
         Tb_CeleRes.Post;
         end;
      Tb_CeleRes.Next;
      end;




   // TERMINO

   if Frm_Ped_Expedicao_Resumo=nil then
      Application.createform(TFrm_Ped_Expedicao_Resumo, Frm_Ped_Expedicao_Resumo);
   Frm_Ped_Expedicao_Resumo.TsErro.TabVisible:=true;
   Frm_Ped_Expedicao_Resumo.tsOk.TabVisible  :=false;
   Frm_Ped_Expedicao_Resumo.Show;
   end;

{


CHAVE.Text:=Formatfloat('0000000',mchave);
fMensagem('Chave da Minuta...: '+Formatfloat('000000',mchave),0,['0'],0);



   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Clear;




criar a minuta e atualiza os cadetivol

   DM1.Query1.Params.CreateParam(ftString,'DATCON',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'HORCON',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'DATSEP',ptInput);
   DM1.Query1.Params.CreateParam(ftString,'HORSEP',ptInput);
   DM1.Query1.SQL.Add('Update CADP01 set P1CODCON='+fdeixanum(Frm_CEle.CODCON.Text)
                     +', P1CODSEP='+fdeixanum(Frm_CEle.CODSEP.Text)
                     +', P1CONF='+chr(39)+'S'+chr(39)
                     +',P1DATCON=:DATCON '
                     +',P1HORCON=:HORCON '
                     +',P1DATASEP=:DATSEP '
                     +',P1HORSEP=:HORSEP '
                     +'       where '+iif(la_Empresas='','',la_Empresas+' and ')
                     +'      '+        iif(la_instrucao='','',la_instrucao+' and '));
   DM1.Query1.Sql.Add('  P1LOTSEQ=0'+InttoStr(ls_numped));
   DM1.Query1.Sql.Add(' and P1CHAVE='+fdeixanum(Frm_CEle.CHAVE.Text));

   DM1.Query1.ParamByName('DATCON').AsDateTime:=Now;
   DM1.Query1.ParamByName('DATSEP').AsDateTime:=Now;
   DM1.Query1.ParamByName('HORSEP').AsString:=FormatDateTime(fhr, Now);
   DM1.Query1.ParamByName('HORCON').AsString:=FormatDateTime(fhr, Now);
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      fmensagem('Erro ao Atualizar Tabela de Pedidos!',0,['0'],0);
      end;
   if Frm_CeleOK=nil  then
      Application.CreateForm(TFrm_CeleOk, Frm_CeleOk)
   else
      begin
      Frm_celeOK.Free;
      Frm_celeOk:=nil;
      Application.CreateForm(TFrm_CeleOk, Frm_CeleOk)
      end;
   Frm_CEleOK.CHAVE.Text    :=CHAVE.Text;
   Frm_CEleOK.DATAP.Text    :=DATAP.Text;
   Frm_CEleOK.VALOR.Text    :=VALOR.Text;
   Frm_CEleOK.razsoc.Text   :=razsoc.Text;
   Frm_CEleOK.fantasia.Text :=fantasia.Text;
   Frm_CEleOK.endereco.Text :=endereco.Text;
   Frm_CEleOK.bairro.Text   :=bairro.Text;
   Frm_CeleOk.ShowModal;
   Frm_Cele.Tb_CeleRes.Filtered:=false;
   Tb_Celelei.close;
   razsoc.Text     :='';
   endereco.Text   :='';
   fantasia.Text   :='';
   bairro.Text     :='';
   CODCON.Text     :='';
   NOMCON.Text     :='';
   DATAP.Text      :='';
   DATAE.Text      :='';
   VALOR.Text      :='';
   CHAVE.Text      :='';
   Frm_CeleOk.Free;
   Frm_CeleOk:=nil;
   CHAVE.SetFocus;
   end
else
   begin
   if Frm_CeleR=nil  then
      Application.CreateForm(TFrm_CeleR, Frm_CeleR)
   else
      begin
      Frm_celer.Free;
      Frm_Celer:=nil;
      application.CreateForm(TFrm_CeleR, Frm_CeleR);
      end;

   Frm_CeleR.ShowModal;
   Frm_Cele.Tb_CeleRes.Filtered:=false;
   Tb_CEleLei.Last;
   Tb_CEleLei.Append;
   dbg_mercad.SetFocus;
   Frm_Celer.Free;
   Frm_Celer:=nil;
   end;

}
end;

procedure TFrm_Ped_Expedicao.FormActivate(Sender: TObject);
begin
if Frm_Ped_Expedicao_Resumo<>nil then
  Frm_Ped_Expedicao_Resumo.Show;
end;

procedure TFrm_Ped_Expedicao.bbSair2Click(Sender: TObject);
begin
close;
end;

{
Tb_CeleResvolumes.Value:='';
if Tb_CeleResCERQTDVOL.AsFloat<>Tb_CeleResCERQTDLID.AsFloat then
   begin
   mcinst:='';
   for x:=1 to Tb_CeleResCERQTDVOL.AsInteger do
      begin
      if not Tb_CEleLei.Locate('CECHAVE,CEVOLUME',vararrayof([Tb_CeleResCERCHAVE.AsFloat,x]),[]) then
         begin
         Tb_CeleResvolumes.Value:=Tb_CeleResvolumes.Value+mcinst+InttoStr(x);
         mcinst:='/';
         end;
      end;
   end;

}
procedure TFrm_Ped_Expedicao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

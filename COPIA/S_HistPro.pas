unit S_HistPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids,lerarq,S_DM5,func,S_DM1,
  DB, DBTables, Mask, DBCtrls;

type
  TFrm_HistPro = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CODPRO: TEdit;
    GRADE: TLabel;
    Edit1: TEdit;
    NOMPRO: TEdit;
    bbAtualizar: TBitBtn;
    bbSair: TBitBtn;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Label2: TLabel;
    CODEMP: TEdit;
    Tb_CadMonEst: TTable;
    Tb_CadMonEstMON_CODEMP: TFloatField;
    Tb_CadMonEstMON_DATAHORA: TDateTimeField;
    Tb_CadMonEstMON_TABELA: TStringField;
    Tb_CadMonEstMON_CHAVE: TFloatField;
    Tb_CadMonEstMON_ORDEM: TFloatField;
    Tb_CadMonEstMON_CODPRO: TFloatField;
    Tb_CadMonEstMON_LOTE: TStringField;
    Tb_CadMonEstMON_DTVCTO: TDateTimeField;
    Tb_CadMonEstMON_QTD: TFloatField;
    Tb_CadMonEstMON_ESTATU_NORMAL: TFloatField;
    Tb_CadMonEstMON_ESTATU_CONS: TFloatField;
    Tb_CadMonEstMON_ESTATU_REVENDA: TFloatField;
    Tb_CadMonEstMON_ESTATU_TERC: TFloatField;
    Tb_CadMonEstMON_ESTANT_NORMAL: TFloatField;
    Tb_CadMonEstMON_ESTANT_CONS: TFloatField;
    Tb_CadMonEstMON_ESTANT_REVENDA: TFloatField;
    Tb_CadMonEstMON_ESTANT_TERC: TFloatField;
    Tb_CadMonEstMON_TIPDOC: TFloatField;
    Tb_CadMonEstMON_STATUS: TFloatField;
    Tb_CadMonEstMON_LOG: TStringField;
    Tb_CadMonEstMON_DATADOC: TDateTimeField;
    Tb_CadMonEstMON_TIPOEVENTO: TFloatField;
    Tb_CadMonEstMON_CODPRO_ANT: TFloatField;
    Tb_CadMonEstMON_LOTE_ANT: TStringField;
    Tb_CadMonEstMON_DTVCTO_ANT: TDateTimeField;
    Tb_CadMonEstMON_QTD_ANT: TFloatField;
    Tb_CadMonEstMON_ESTOQUE: TFloatField;
    Tb_CadMonEstMON_MOVIMENTA: TFloatField;
    Src_CadMonEst: TDataSource;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_HistPro: TFrm_HistPro;
  mTabTemp: String;

implementation

{$R *.dfm}

procedure TFrm_HistPro.FormCreate(Sender: TObject);
begin
mTabTemp:=fProcTemp(12);
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Create Table '+mTabTemp+'(');
DM5.Query1.SQL.Add(' MON_CODEMP '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_DATAHORA '+pTmpcDataHora);
DM5.Query1.SQL.Add(',MON_TABELA '+pTmpcString+'(20)');
DM5.Query1.SQL.Add(',MON_CHAVE '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ORDEM '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_CODPRO '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_LOTE   '+pTmpcString+'(20)');
DM5.Query1.SQL.Add(',MON_DTVCTO '+pTmpcDataHora);
DM5.Query1.SQL.Add(',MON_QTD '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTATU_NORMAL '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTATU_CONS '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTATU_REVENDA '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTATU_TERC '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTANT_NORMAL '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTANT_CONS '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTANT_REVENDA '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTANT_TERC '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_TIPDOC '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_STATUS '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_LOG '+pTmpcString+'(60)');
DM5.Query1.SQL.Add(',MON_DATADOC '+pTmpcDataHora);
DM5.Query1.SQL.Add(',MON_TIPOEVENTO '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_CODPRO_ANT '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_LOTE_ANT   '+pTmpcString+'(20)');
DM5.Query1.SQL.Add(',MON_DTVCTO_ANT '+pTmpcDataHora);
DM5.Query1.SQL.Add(',MON_QTD_ANT '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_ESTOQUE '+pTmpcFloat);
DM5.Query1.SQL.Add(',MON_MOVIMENTA '+pTmpcFloat);
DM5.Query1.SQL.Add(')');
try
   DM5.Query1.ExecSQL;
except
  MessageDlg('Erro ao Criar a Tabela Temporaria!',mtError,[mbOk],0);
  end;
if Tb_CadMonEst.Active then
   Tb_CadMonEst.Close;
Tb_CadMonEst.TableName:=mTabTemp;
Tb_CadMonEst.CreateTable;

end;

procedure TFrm_HistPro.bbAtualizarClick(Sender: TObject);
var
mSaldo, mSaldoc, mSaldor, mSaldoT: Real;
begin
DM1.Query2.Close;
DM1.Query2.SQL.Clear;
DM1.Query2.SQL.Add('Select * from CADMONEST ');
mcinst:=' where ';
if trim(CODEMP.Text)<>'' then
   begin
   DM1.Query2.SQL.Add(mcinst+' MON_CODEMP=0'+trim(CODEMP.Text));
   mcinst:=' and ';
   end;
if trim(CODPRO.Text)<>'' then
   begin
   DM1.Query2.SQL.Add(mcinst+' MON_CODPRO=0'+trim(CODPRO.Text));
   mcinst:=' and ';
   end;
DM1.Query2.SQL.add(' Order by MON_DATAHORA ');
try
   DM1.Query2.Open;
except
   MessageDlg('Erro ao Abrir a tabela de lançamentos!',mtError,[mbOk],0);
   exit;
   end;
DM1.Query2.Open;
if Tb_CadMonEst.Active then
   Tb_CadMonEst.Close;
DM5.Query1.Close;
DM5.Query1.SQL.Clear;
DM5.Query1.SQL.Add('Delete from '+mTabTemp);
try
   DM5.Query1.ExecSQL;
except
   MessageDlg('Erro 148 ao delelar registros da tabela temporaria: '+mTabTemp,mtError,[mbOk],0);
   exit;
   end;
Tb_CadMonEst.Open;
mSaldo :=0;
mSaldoc:=0;
mSaldor:=0;
mSaldoT:=0;
While not DM1.Query2.Eof do
   begin
   if DM1.Query2.FieldByName('MON_TABELA').AsString='CADEST' then
      begin
      if (DM1.Query2.fieldbyName('MON_ESTATU_NORMAL').AsFloat=DM1.Query2.fieldbyName('MON_ESTANT_NORMAL').AsFloat) and
         (DM1.Query2.fieldbyName('MON_ESTATU_CONS').AsFloat=DM1.Query2.fieldbyName('MON_ESTANT_CONS').AsFloat) and
         (DM1.Query2.fieldbyName('MON_ESTATU_REVENDA').AsFloat=DM1.Query2.fieldbyName('MON_ESTANT_REVENDA').AsFloat) and
         (DM1.Query2.fieldbyName('MON_ESTATU_TERC').AsFloat=DM1.Query2.fieldbyName('MON_ESTANT_TERC').AsFloat) then
         begin
         DM1.Query2.Next;
         Continue;
         end;
      end;
   Tb_CadMonEst.Append;
   Tb_CadMonEstMON_CODEMP.Value        :=DM1.Query2.fieldbyName('MON_CODEMP').AsFloat;
   Tb_CadMonEstMON_DATAHORA.Value      :=DM1.Query2.fieldbyName('MON_DATAHORA').AsDateTime;
   Tb_CadMonEstMON_TABELA.Value        :=DM1.Query2.fieldbyName('MON_TABELA').AsString;
   Tb_CadMonEstMON_CHAVE.Value         :=DM1.Query2.fieldbyName('MON_CHAVE').AsFloat;
   Tb_CadMonEstMON_ORDEM.Value         :=DM1.Query2.fieldbyName('MON_ORDEM').AsFloat;
   Tb_CadMonEstMON_CODPRO.Value        :=DM1.Query2.fieldbyName('MON_CODPRO').AsFloat;
   Tb_CadMonEstMON_LOTE.Value          :=DM1.Query2.fieldbyName('MON_LOTE').AsString;
   Tb_CadMonEstMON_DTVCTO.Value        :=DM1.Query2.fieldbyName('MON_DTVCTO').AsDateTime;
   Tb_CadMonEstMON_QTD.Value           :=DM1.Query2.fieldbyName('MON_QTD').AsFloat;
   Tb_CadMonEstMON_ESTATU_NORMAL.Value :=DM1.Query2.fieldbyName('MON_ESTATU_NORMAL').AsFloat;
   Tb_CadMonEstMON_ESTATU_CONS.Value   :=DM1.Query2.fieldbyName('MON_ESTATU_CONS').AsFloat;
   Tb_CadMonEstMON_ESTATU_REVENDA.Value:=DM1.Query2.fieldbyName('MON_ESTATU_REVENDA').AsFloat;
   Tb_CadMonEstMON_ESTATU_TERC.Value   :=DM1.Query2.fieldbyName('MON_ESTATU_TERC').AsFloat;
   Tb_CadMonEstMON_ESTANT_NORMAL.Value :=DM1.Query2.fieldbyName('MON_ESTANT_NORMAL').AsFloat;
   Tb_CadMonEstMON_ESTANT_CONS.Value   :=DM1.Query2.fieldbyName('MON_ESTANT_CONS').AsFloat;
   Tb_CadMonEstMON_ESTANT_REVENDA.Value:=DM1.Query2.fieldbyName('MON_ESTANT_REVENDA').AsFloat;
   Tb_CadMonEstMON_ESTANT_TERC.Value   :=DM1.Query2.fieldbyName('MON_ESTANT_TERC').AsFloat;
   Tb_CadMonEstMON_TIPDOC.Value        :=DM1.Query2.fieldbyName('MON_TIPDOC').AsFloat;
   Tb_CadMonEstMON_STATUS.Value        :=DM1.Query2.fieldbyName('MON_STATUS').AsFloat;
   Tb_CadMonEstMON_LOG.Value           :=DM1.Query2.fieldbyName('MON_LOG').AsString;
   Tb_CadMonEstMON_DATADOC.Value       :=DM1.Query2.fieldbyName('MON_DATADOC').AsDateTime;
   Tb_CadMonEstMON_TIPOEVENTO.Value    :=DM1.Query2.fieldbyName('MON_TIPOEVENTO').AsFloat;
   Tb_CadMonEstMON_CODPRO_ANT.Value    :=DM1.Query2.fieldbyName('MON_CODPRO_ANT').AsFloat;
   Tb_CadMonEstMON_LOTE_ANT.Value      :=DM1.Query2.fieldbyName('MON_LOTE_ANT').AsString;
   Tb_CadMonEstMON_DTVCTO_ANT.Value    :=DM1.Query2.fieldbyName('MON_DTVCTO_ANT').AsDateTime;
   Tb_CadMonEstMON_QTD_ANT.Value       :=DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
   Tb_CadMonEstMON_ESTOQUE.Value       :=DM1.Query2.fieldbyName('MON_ESTOQUE').AsFloat;
   Tb_CadMonEstMON_MOVIMENTA.Value     :=0;
   if DM1.Query2.FieldByName('MON_TABELA').AsString='ESTINI' then
      begin
      mSaldo :=mSaldo+DM1.Query2.fieldbyName('MON_ESTATU_NORMAL').AsFloat;
      mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_ESTATU_CONS').AsFloat;
      mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_ESTATU_REVENDA').AsFloat;
      mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_ESTATU_TERC').AsFloat;
      Tb_CadMonEstMON_MOVIMENTA.Value     :=1;
      end
   else if DM1.Query2.FieldByName('MON_TABELA').AsString='CADAJU' then
      begin

         if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=0 then // se inclusao
            begin
            if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=0 then
               begin
               if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
                  mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
                  mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
                  mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else
                  mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
               end
            else // se saida
               begin
               if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
                  mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
                  mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
                  mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else
                  mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
               end
            end
         else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=1 then // se alteracao
            begin
            if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=0 then
               begin
               if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
                  mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                  -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
                  mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                  -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
                  mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                  -DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else
                  mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                  -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
               end
            else // se saida
               begin
               if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
                  mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                  +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
                  mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                  +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
               else
                  mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                  +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
               end
            end
         else  // se exclusao
            begin
            if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=0 then
               begin
               if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
                  mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
              else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
                  mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
                  mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else
                  mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
               end
            else // se saida
               begin
               if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
                  mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
                  mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
                  mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
               else
                  mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
               end;
            end;
         Tb_CadMonEstMON_ESTATU_NORMAL.AsFloat :=mSaldo;
         Tb_CadMonEstMON_ESTATU_CONS.AsFloat   :=mSaldoc;
         Tb_CadMonEstMON_ESTATU_REVENDA.AsFloat:=mSaldor;
         Tb_CadMonEstMON_ESTATU_TERC.AsFloat   :=mSaldoT;
         Tb_CadMonEstMON_MOVIMENTA.Value     :=1;
         end

   else if DM1.Query2.FieldByName('MON_TABELA').AsString='CADBAL02' then
      begin
      if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=0 then // se inclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=2 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
               mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
               mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
               mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end
      else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=1 then // se alteração
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=2 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
               mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
               mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
               mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
            end;
         end
      else // se exclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=2 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
               mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=3 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=2 then
               mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
               mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
            end;
         end;
      Tb_CadMonEstMON_ESTATU_NORMAL.AsFloat :=mSaldo;
      Tb_CadMonEstMON_ESTATU_CONS.AsFloat   :=mSaldoc;
      Tb_CadMonEstMON_ESTATU_REVENDA.AsFloat:=mSaldor;
      Tb_CadMonEstMON_ESTATU_TERC.AsFloat   :=mSaldoT;
      Tb_CadMonEstMON_MOVIMENTA.Value     :=1;
      end
   else if DM1.Query2.FieldByName('MON_TABELA').AsString='CADOP02' then
      begin
      if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=0 then // se inclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end
      else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=1 then // se alteracao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
            end;
         end
      else  // se exclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end;
      Tb_CadMonEstMON_ESTATU_NORMAL.AsFloat :=mSaldo;
      Tb_CadMonEstMON_ESTATU_CONS.AsFloat   :=mSaldoc;
      Tb_CadMonEstMON_ESTATU_REVENDA.AsFloat:=mSaldor;
      Tb_CadMonEstMON_ESTATU_TERC.AsFloat   :=mSaldoT;
      Tb_CadMonEstMON_MOVIMENTA.Value     :=1;
      end
   else if DM1.Query2.FieldByName('MON_TABELA').AsString='CADOP03' then
      begin
      if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=0 then // se inclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end
      else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=1 then // se alteraçao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end
      else  // se exclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1 then
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.FieldByName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end;
      Tb_CadMonEstMON_ESTATU_NORMAL.AsFloat :=mSaldo;
      Tb_CadMonEstMON_ESTATU_CONS.AsFloat   :=mSaldoc;
      Tb_CadMonEstMON_ESTATU_REVENDA.AsFloat:=mSaldor;
      Tb_CadMonEstMON_ESTATU_TERC.AsFloat   :=mSaldoT;
      Tb_CadMonEstMON_MOVIMENTA.Value     :=1;
      end
   else if DM1.Query2.FieldByName('MON_TABELA').AsString='CADP02' then
      begin
      if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=0 then // se inclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=0 then
            begin
            if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1)  // venda normal
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=2)  // simples remessa
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=3)  // devolução a fornecedor
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=4)  // remessa para troca
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=5)  // tranferencia de mercadorias
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=6)  // remessa para beneficiamento
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=9) // Emprestimo de Mercadorias
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=16)  // troca de mercadoria(Venda Normal)
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=20) // remessa p/incustrialização
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=21) // remessa p/brinde
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=22) // remessa de amostra gratis
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=23) // remessa p/demonstração
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=24) // remessa p/conserto
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=25) then // outras saidas
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=8)  // devolução de cliente
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=17)  // devolucao de cliente entrada (troca de mercadorias)
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=18) then // tranferencias de mercadorias (entrada)
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=7) then  // remessa p/ venda(venda fora do estabelecimento)
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=11) then  // remessa p/ consignação
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=12) then  // devolução de mercadorias consignadas
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=13) then  // devolução de remessa p/Venda(Venda Fora do Estabelecimento)
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=14) then  // venda de mercadorias consignadas
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=15) then  // venda de Remessa p/Venda Venda fora do estabelemento
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=19) then  // devolução de mercadorias de terceiros
              begin
              if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end;
         end
      else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=1 then // se alteração
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=0 then
            begin
            if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
               (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
               ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
               (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
               begin
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                            -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
               end
            else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
               begin
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
               end
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1)  // venda normal
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=2)  // simples remessa
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=3)  // devolução a fornecedor
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=4)  // remessa para troca
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=5)  // tranferencia de mercadorias
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=6)  // remessa para beneficiamento
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=9) // Emprestimo de Mercadorias
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=16)  // troca de mercadoria(Venda Normal)
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=20) // remessa p/incustrialização
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=21) // remessa p/brinde
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=22) // remessa de amostra gratis
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=23) // remessa p/demonstração
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=24) // remessa p/conserto
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=25) then // outras saidas
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                 +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                 end
              else
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=8)  // devolução de cliente
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=17)  // devolucao de cliente entrada (troca de mercadorias)
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=18) then // tranferencias de mercadorias (entrada)

              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                 -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat

                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                 end
              else
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end

         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=7) then  // remessa p/ venda(venda fora do estabelecimento)
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                 +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                 -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldo  :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor :=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor :=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end

         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=11) then  // remessa p/ consignação
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldo  :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc :=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc :=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=12) then  // devolução de mercadorias consignadas
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldo  :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc :=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc :=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=13) then  // devolução de remessa p/Venda(Venda Fora do Estabelecimento)
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldo  :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor :=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor :=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;

              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=14) then  // venda de mercadorias consignadas
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldoc :=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=15) then  // venda de Remessa p/Venda Venda fora do estabelemento
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldor :=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=19) then  // devolução de mercadorias de terceiros
              begin
              if ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat<>9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat<>9)) or
                 ((DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) and
                 (DM1.Query2.fieldbyName('MON_STATUS_ANT').AsFloat=9)) then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                              +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
                 end
              else if (DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9) then
                 begin
                 mSaldo  :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldot :=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo  :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldot :=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end;
         end
      else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=2 then // se exclusao
         begin
         if DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=0 then
            begin
            if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=1)  // venda normal
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=2)  // simples remessa
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=3)  // devolução a fornecedor
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=4)  // remessa para troca
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=5)  // tranferencia de mercadorias
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=6)  // remessa para beneficiamento
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=9) // Emprestimo de Mercadorias
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=16)  // troca de mercadoria(Venda Normal)
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=20) // remessa p/incustrialização
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=21) // remessa p/brinde
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=22) // remessa de amostra gratis
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=23) // remessa p/demonstração
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=24) // remessa p/conserto
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=25) then // outras saidas
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=8)  // devolução de cliente
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=17)  // devolucao de cliente entrada (troca de mercadorias)
              or (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=18) then // tranferencias de mercadorias (entrada)
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=7) then  // remessa p/ venda(venda fora do estabelecimento)
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=11) then  // remessa p/ consignação
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=12) then  // devolução de mercadorias consignadas
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=13) then  // devolução de remessa p/Venda(Venda Fora do Estabelecimento)
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=14) then  // venda de mercadorias consignadas
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 mSaldoc:=mSaldoc+DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldoc:=mSaldoc-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=15) then  // venda de Remessa p/Venda Venda fora do estabelemento
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 mSaldor:=mSaldor+DM1.Query2.fieldbyName('MON_QTD').AsFloat
              else
                 mSaldor:=mSaldor-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
              end
         else if (DM1.Query2.FieldByName('MON_TIPDOC').AsFloat=19) then  // devolução de mercadorias de terceiros
              begin
              if DM1.Query2.FieldByName('MON_STATUS').AsFloat=9 then
                 begin
                 mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end
              else
                 begin
                 mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat;
                 end;
              end;
         end;

      Tb_CadMonEstMON_ESTATU_NORMAL.AsFloat :=mSaldo;
      Tb_CadMonEstMON_ESTATU_CONS.AsFloat   :=mSaldoc;
      Tb_CadMonEstMON_ESTATU_REVENDA.AsFloat:=mSaldor;
      Tb_CadMonEstMON_ESTATU_TERC.AsFloat   :=mSaldoT;
      Tb_CadMonEstMON_MOVIMENTA.Value     :=1;
      end
   else if DM1.Query2.FieldByName('MON_TABELA').AsString='CADPF2' then
      begin
      if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=0 then // se inclusao
         begin
         if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
            begin
            if DM1.Query2.fieldbyName('MON_ESTOQUE').AsFloat=1 then
               mSaldot :=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo  :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.fieldbyName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end
      else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=1 then // se alteração
         begin
         if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
            begin
            if DM1.Query2.fieldbyName('MON_ESTOQUE').AsFloat=1 then
               mSaldot :=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo  :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat
                                +DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
            end
         else
            begin
            if DM1.Query2.fieldbyName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat
            else
               mSaldo :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat
                               -DM1.Query2.fieldbyName('MON_QTD_ANT').AsFloat;
            end;
         end
      else if DM1.Query2.FieldByName('MON_TIPOEVENTO').AsFloat=2 then // se EXCLUSAO
         begin
         if DM1.Query2.fieldbyName('MON_STATUS').AsFloat=9 then
            begin
            if DM1.Query2.fieldbyName('MON_ESTOQUE').AsFloat=1 then
               mSaldot :=mSaldot+DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo  :=mSaldo +DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end
         else
            begin
            if DM1.Query2.fieldbyName('MON_ESTOQUE').AsFloat=1 then
               mSaldot:=mSaldot-DM1.Query2.fieldbyName('MON_QTD').AsFloat
            else
               mSaldo :=mSaldo -DM1.Query2.fieldbyName('MON_QTD').AsFloat;
            end;
         end;
      Tb_CadMonEstMON_ESTATU_NORMAL.AsFloat :=mSaldo;
      Tb_CadMonEstMON_ESTATU_CONS.AsFloat   :=mSaldoc;
      Tb_CadMonEstMON_ESTATU_REVENDA.AsFloat:=mSaldor;
      Tb_CadMonEstMON_ESTATU_TERC.AsFloat   :=mSaldoT;
      Tb_CadMonEstMON_MOVIMENTA.Value     :=1;
      end;
   Tb_CadMonEst.Post;
   DM1.Query2.Next;
   end;

end;

procedure TFrm_HistPro.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_HistPro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if Tb_CadMonEst.Active then
   Tb_CadMonEst.Close;
Tb_CadMonEst.DeleteTable;
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_HistPro.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Tb_CadMonEstMON_MOVIMENTA.Value=1 then
   begin
   DBGrid1.Canvas.Brush.Color:=$00EBEBEB;
   DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
   end;

end;

end.

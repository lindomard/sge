unit s_CobEle_Remessa_Outras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Buttons;

type
  TFrm_CobEle_Remessa_Outras = class(TForm)
    Panel1: TPanel;
    lblTitulo: TLabel;
    GroupBox1: TGroupBox;
    src_remessas: TDataSource;
    DBGrid1: TDBGrid;
    qr_remessa: TQuery;
    Panel2: TPanel;
    BBSAIR: TBitBtn;
    qr_remessaRECHAVE: TFloatField;
    qr_remessaRECODBCO: TFloatField;
    qr_remessaREDATREM: TDateTimeField;
    qr_remessaRENOSNUM: TStringField;
    qr_remessaREDNOSNUM: TStringField;
    qr_remessaRECODBAR: TStringField;
    procedure BBSAIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function fLerdadosRemessa(pChave_Id,pChave_id_Ano, pCodEmp: Integer): Boolean;

  end;

var
  Frm_CobEle_Remessa_Outras: TFrm_CobEle_Remessa_Outras;

implementation

uses S_DM1, func_excecoes;

{$R *.dfm}

function TFrm_CobEle_Remessa_Outras.fLerdadosRemessa(pChave_Id,pChave_id_Ano, pCodEmp: Integer): Boolean;
begin
result:=true;
qr_remessa.Close;
qr_remessa.sql.clear;
qr_remessa.sql.Add('SELECT RECHAVE,RECODBCO,REDATREM,RENOSNUM,REDNOSNUM,RECODBAR '
                  +' FROM CADREMBCO '
                  +' where RETIT_CHAVE_ID=:CHAVE_ID '
                  +' and RETIT_CHAVE_ID_ANO=:CHAVE_ID_ANO '
                  +' and RECODEMP_DUP=:CODEMP_DUP ');

qr_remessa.ParamByName('CHAVE_ID').AsInteger:=pChave_Id;
qr_remessa.ParamByName('CHAVE_ID_ANO').AsInteger:=pChave_id_Ano;
qr_remessa.ParamByName('CODEMP_DUP').AsInteger:=pCodEmp;

try
   qr_remessa.Open;

except on e : exception do
   begin
   result:=false;
   ex_erroSql_Novo(qr_remessa,52,'SGE','CADBOL_REMESSA');
   end;
   end;


end;



procedure TFrm_CobEle_Remessa_Outras.BBSAIRClick(Sender: TObject);
begin
close;
end;

end.

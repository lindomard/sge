unit S_DevCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, S_SelEmp,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DB,S_DM1, DBTables,func,lerarq;

type
  TFrm_DevCli = class(TForm)
    panel_cab: TPanel;
    Label1: TLabel;
    CODCLI: TEdit;
    NOMCLI: TEdit;
    Label2: TLabel;
    CIDADE: TEdit;        
    Label3: TLabel;
    CNPJ: TEdit;
    gb_devpen: TGroupBox;
    gb_mercdev: TGroupBox;
    Panel1: TPanel;
    Src_MercDev: TDataSource;
    DBGrid_PedDev: TDBGrid;
    DBGrid_MercDev: TDBGrid;
    bbSair: TBitBtn;
    Qr_PedDev: TQuery;
    Qr_MercDev: TQuery;
    Src_PedDev: TDataSource;
    Qr_MercDevP2CODPRO: TFloatField;
    Qr_MercDevP2QTD: TFloatField;
    Qr_MercDevP2PRECO: TFloatField;
    Qr_MercDevP2TOTLIQ: TFloatField;
    Qr_MercDevPDUND: TStringField;
    Qr_PedDevCRCODEMP: TFloatField;
    Qr_PedDevCRNPED: TFloatField;
    Qr_PedDevCRORDEM: TFloatField;
    Qr_PedDevCRCODCLI: TFloatField;
    Qr_PedDevCRCODVEN: TFloatField;
    Qr_PedDevCRVALOR: TFloatField;
    Qr_PedDevCRVALPAG: TFloatField;
    Qr_PedDevCRDTEMIS: TDateTimeField;
    Qr_PedDevCRAZAO: TStringField;
    Qr_PedDevCCNPJ: TFloatField;
    Qr_PedDevCCPF: TFloatField;
    Qr_PedDevCCIDADE: TStringField;
    Qr_PedDevCUF: TStringField;
    Qr_PedDevCRNUMERO: TFloatField;
    Qr_PedDevCRDESD: TStringField;
    Qr_PedDevCRLOTSEQ_CP: TFloatField;
    Qr_MercDevP2CHAVE: TFloatField;
    Qr_MercDevP2TOTDES: TFloatField;
    Qr_MercDevPDNOME: TStringField;
    bbAtualizar: TBitBtn;
    procedure bbSairClick(Sender: TObject);
    procedure CODCLIExit(Sender: TObject);
    procedure Src_PedDevDataChange(Sender: TObject; Field: TField);
    procedure bbAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_DevCli: TFrm_DevCli;

implementation

{$R *.dfm}

procedure TFrm_DevCli.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_DevCli.CODCLIExit(Sender: TObject);
begin
CODCLI.Text:=fdeixanum2(CODCLI.Text);
end;

procedure TFrm_DevCli.Src_PedDevDataChange(Sender: TObject; Field: TField);
begin
if (not Qr_MercDev.Active) or (Qr_MercDevP2CHAVE.AsFloat<>Qr_PedDevCRNPED.AsFloat) then
   begin
   Qr_MercDev.Close;
   Qr_MercDev.SQL.Clear;
   Qr_MercDev.SQL.Add('Select P2CHAVE,P2CODPRO,P2QTD,P2PRECO,P2TOTLIQ,P2TOTDES '
                     +',PDNOME,PDUND FROM CADP02,CADPRO where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADPED',[]),'',' P2CODEMP=0'+Qr_PedDevCRCODEMP.AsString+' and ')
                     +' P2LOTSEQ=0'+Qr_PedDevCRLOTSEQ_CP.AsString
                     +' and P2CHAVE=0'+Qr_PedDevCRNPED.AsString
                     +' and P2ORDEM=0'+Qr_PedDevCRORDEM.AsString);
   Qr_MercDev.Open;
   end;

end;

procedure TFrm_DevCli.bbAtualizarClick(Sender: TObject);
begin
if trim(CODCLI.Text)<>'' then
   begin
   if DM1.Qr_Tid.Locate('TINOME','CADDAR',[]) then
      la_Empresas:=''
   else
      la_Empresas:=fla_sqlmp('CRCODEMP',Form_SelEmp.CLB_EMPRESAS);

   Qr_PedDev.Close;
   Qr_PedDev.Sql.Clear;
   Qr_PedDev.SQL.Add('Select CRCODEMP,CRNPED,CRORDEM,CRLOTSEQ_CP,CRCODCLI,CRCODVEN,CRVALOR,CRVALPAG, '
                    +'          CRDTEMIS,CRNUMERO,CRDESD, '
                    +'          CRAZAO,CCNPJ,CCPF,CCIDADE,CUF from CADDAR,CADCLI where '
                    +la_empresas
                    +iif(la_empresas='','',' and ')
                    +' CRSTATUS < 2 '
                    +' and CRDUP=5 '
                    +' AND CCODCLI=0'+CODCLI.Text);
   Qr_PedDev.Open;
   if Qr_PedDev.Eof then
   else
      begin
      NOMCLI.Text:=Qr_PedDevCRAZAO.Value;
      cidade.Text:=Qr_PedDevCCIDADE.Value+' - ' +Qr_PedDevCUF.Value;
      if Qr_PedDevCCPF.AsFloat=0 then
         CNPJ.Text:=Formatfloat(pDFCNPJ, Qr_PedDevCCNPJ.Value)
      else
         CNPJ.Text:=Formatfloat(pDFCNPF, Qr_PedDevCCPF.Value);
      end;
   end;

end;

procedure TFrm_DevCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form_SelEmp.free;
Form_SelEmp:=nil;
if (FormState<>[fsModal]) then
   Action := CaFree;
end;

procedure TFrm_DevCli.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);
end;

procedure TFrm_DevCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=113 then
   begin
   if Form_SelEmp.WindowState=wsMinimized then
      Form_SelEmp.WindowState:=wsNormal
   else
      Form_SelEmp.Show;
   end
else
   begin
   if pTcAtalho_me<>0 then
      begin
      if (Shift=pSfAtalho_me) and (pTcAtalho_me=key) then
         begin
         if Form_SelEmp.WindowState=wsMinimized then
            Form_SelEmp.WindowState:=wsNormal
         else
            Form_SelEmp.Show;
         end;
      end;
   end;



end;

end.

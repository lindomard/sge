unit S_RAni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,func,s_dm1,s_dm4,db,dbtables,
  Buttons, RDprint;

type
  TFrm_RAni = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DIAI: TEdit;
    Label3: TLabel;
    MESI: TEdit;
    Label4: TLabel;
    DIAF: TEdit;
    Label5: TLabel;
    MESF: TEdit;
    RG_ORDEM: TRadioGroup;
    RG_TIPO: TRadioGroup;
    bbImprimir: TBitBtn;
    bbSair: TBitBtn;
    RG_TPREL: TRadioGroup;
    RDprint1: TRDprint;
    procedure DIAIExit(Sender: TObject);
    procedure MESIExit(Sender: TObject);
    procedure DIAFExit(Sender: TObject);
    procedure MESFExit(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_RAni: TFrm_RAni;
  mlin,mpag: Integer;
implementation

{$R *.dfm}

procedure TFrm_RAni.DIAIExit(Sender: TObject);
begin
DIAI.Text:=IntToStr(ValInt(DIAI.Text));
if (valint(DIAI.Text)>31) or (ValInt(DIAI.Text)<0) then
   begin
   fmensagem('Dia inválido!',0,['0'],0);
   DIAI.SetFocus;
   end;
end;

procedure TFrm_RAni.MESIExit(Sender: TObject);
begin
MESI.Text:=IntToStr(ValInt(MESI.Text));
if (valint(MESI.Text)>31) or (ValInt(MESI.Text)<0) then
   begin
   fmensagem('Mês inválido!',0,['0'],0);
   MESI.SetFocus;
   end;

end;

procedure TFrm_RAni.DIAFExit(Sender: TObject);
begin
DIAF.Text:=IntToStr(ValInt(DIAF.Text));
if (valint(DIAF.Text)>31) or (ValInt(DIAF.Text)<0) then
   begin
   fmensagem('Dia inválido!',0,['0'],0);
   DIAF.SetFocus;
   end;

end;

procedure TFrm_RAni.MESFExit(Sender: TObject);
begin
MESF.Text:=IntToStr(ValInt(MESF.Text));
if (valint(MESF.Text)>31) or (ValInt(MESF.Text)<0) then
   begin
   fmensagem('Mês inválido!',0,['0'],0);
   MESF.SetFocus;
   end;

end;

procedure TFrm_RAni.bbImprimirClick(Sender: TObject);
var
mtipo_ant, mempresa_ant: String;
nome_aux               : string;
begin
DM4.Tb_Ani.Close;
DM4.Tb_Ani.SQL.Clear;
DM4.Tb_Ani.SQL.Add('Select * from CADANI ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
   begin
   DM4.Tb_Ani.SQL.add(mcinst+' CA_CODEMP=0'+IntToStr(codemp));
   mcinst:=' and ';
   end;
if RG_TIPO.ItemIndex=1 then
   begin
   DM4.Tb_Ani.SQL.Add(mcinst+' CA_TIPO='+chr(39)+'CL'+chr(39));
   mcinst:=' and ';
   end;
if RG_TIPO.ItemIndex=2 then
   begin
   DM4.Tb_Ani.SQL.Add(mcinst+' CA_TIPO='+chr(39)+'FR'+chr(39));
   mcinst:=' and ';
   end;
if RG_TIPO.ItemIndex=3 then
   begin
   DM4.Tb_Ani.SQL.Add(mcinst+' CA_TIPO='+chr(39)+'OU'+chr(39));
   mcinst:=' and ';
   end;
if ValInt(DIAI.Text)>0 then
   begin
   DM4.Tb_Ani.SQL.Add(mcinst+' CA_DIA>=0'+Trim(DIAI.Text));
   mcinst:=' and ';
   end;
if ValInt(MESI.Text)>0 then
   begin
   DM4.Tb_Ani.SQL.Add(mcinst+' CA_MES>=0'+Trim(MESI.Text));
   mcinst:=' and ';
   end;
if ValInt(DIAF.Text)>0 then
   begin
   DM4.Tb_Ani.SQL.Add(mcinst+' CA_DIA<=0'+Trim(DIAF.Text));
   mcinst:=' and ';
   end;
if ValInt(MESI.Text)>0 then
   begin
   DM4.Tb_Ani.SQL.Add(mcinst+' CA_MES<=0'+Trim(MESF.Text));
   mcinst:=' and ';
   end;


if RG_ORDEM.ItemIndex=0 then
   DM4.Tb_Ani.SQL.add(' order by CA_NOME ')
else
   DM4.Tb_Ani.SQL.add(' order by CA_MES,CA_DIA,CA_NOME ');
DM4.Tb_Ani.Open;
if DM4.Tb_Ani.Eof then
   begin
   fmensagem('Não ha nada a ser impresso!',0,['0'],0);
   exit;
   end;

RDprint1.FonteTamanhoPadrao:=S17cpp;
RDprint1.TamanhoQteColunas:=136;
RDprint1.TamanhoQteLinhas :=66;
RDprint1.TamanhoQteLPP  :=Seis;
RDprint1.OpcoesPreview.Preview:=False;
RDprint1.SetPrinterbyName(impressora_padrao(0));
RDprint1.Abrir;
if RG_TPREL.ItemIndex=0 then
   begin
   mpag:=0;
   mlin:=0;
   mtipo_ant   :='';
   mempresa_ant:='';

   While not DM4.Tb_Ani.Eof do
      begin
      if mlin=0 then
         begin
         mpag:=mpag+1;
         RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, date),mnormal);
         RDprint1.ImpF(02,01,insere2('RELATORIO DE ANIVERSARIANTES.',' ',60)+' Pagina: '+FormatFloat('0000', mpag),mnormal);
         RDprint1.ImpF(03,01,insere2('=','=',80),mnormal);
         RDprint1.ImpF(04,01,'+-------------+----------------------------------------+----------------------------------------+-----+---------------+-------------+',mreduz);
         RDprint1.ImpF(05,01,'|Codigo       |Empresa                                 |Nome da Pessoa                          |Data |Telefone       |Celular      |',mreduz);
         RDprint1.ImpF(06,01,'+-------------+----------------------------------------+----------------------------------------+-----+---------------+-------------+',mreduz);
         mlin:=6;
         end;
      mlin:=mlin+1;
      if (mtipo_ant<>DM4.Tb_AniCA_TIPO.Value) or (mempresa_ant<>DM4.Tb_Aninome.Value) then
         begin
         IF trim(DM4.Tb_Aninome.Value) = '' THEN
            nome_aux := 'Diversos'
            else nome_aux := DM4.Tb_Aninome.Value;
         RDprint1.ImpF(mlin,01,'|'
                              +insere2(DM4.Tb_AniCA_CODIGO.AsString,' ',13)+'|'
                              +insere2(nome_aux,' ',40)+'|'
                              +insere2(DM4.Tb_AniCA_NOME.Value,' ',40)+'|'
                              +FormatFloat('00',DM4.Tb_AniCA_DIA.Value)+'/'
                              +FormatFloat('00',DM4.Tb_AniCA_MES.Value)+'|'
                              +insere2(DM4.Tb_AniCA_FONE.Value,' ',15)+'|'
                              +Insere2(DM4.Tb_AniCA_CELULAR.Value,' ',13)+'|',mreduz);
         end
      else
         begin
         IF trim(DM4.Tb_Aninome.Value) = '' THEN
            nome_aux := 'Diversos'
            else nome_aux := DM4.Tb_Aninome.Value;
         RDprint1.ImpF(mlin,01,'|'
                              +insere2(' ',' ',13)+'|'
                              +insere2(nome_aux,' ',40)+'|'
                              +insere2(DM4.Tb_AniCA_NOME.Value,' ',40)+'|'
                              +FormatFloat('00',DM4.Tb_AniCA_DIA.Value)+'/'
                              +FormatFloat('00',DM4.Tb_AniCA_MES.Value)+'|'
                              +insere2(DM4.Tb_AniCA_FONE.Value,' ',15)+'|'
                              +Insere2(DM4.Tb_AniCA_CELULAR.Value,' ',13)+'|',mreduz);
         end;
      mtipo_ant   :=DM4.Tb_AniCA_TIPO.Value;
      mempresa_ant:=DM4.Tb_Aninome.Value;
      dm4.Tb_Ani.Next;
      if DM4.Tb_Ani.Eof then
         begin
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,'+-------------+----------------------------------------+----------------------------------------+-----+---------------+-------------+',mreduz);
         end
      else if mlin>58 then
         begin
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,'+-------------+----------------------------------------+----------------------------------------+-----+---------------+-------------+',mreduz);
         mlin:=0;
         RDprint1.Novapagina;
         end;
      end;
   end
else
   begin
   mpag:=0;
   mlin:=0;
   While not DM4.Tb_Ani.Eof do
      begin
      if mlin=0 then
         begin
         mpag:=mpag+1;
         RDprint1.ImpF(01,01,insere2(DM1.Tb_EmpRAZAO.Value,' ',60)+' Data: '+FormatDateTime(fdt2, date),mnormal);
         RDprint1.ImpF(02,01,insere2('RELATORIO DE ANIVERSARIANTES.',' ',60)+' Pagina: '+FormatFloat('0000', mpag),mnormal);
         RDprint1.ImpF(03,01,insere2('=','=',80),mnormal);
         mlin:=3;
         end;
      mlin:=mlin+2;
      RDprint1.ImpF(mlin,01,
                               insere2('Empresa.......: '+DM4.Tb_AniCA_CODIGO.AsString+'-'+DM4.Tb_Aninome.Value,' ',100)
                                      +'Aniversario: '+FormatFloat('00',DM4.Tb_AniCA_DIA.Value)+'/'+FormatFloat('00',DM4.Tb_AniCA_MES.Value),mreduz);
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'Nome da Pessoa: '+insere2(DM4.Tb_AniCA_NOME.Value,' ',49)
                                      +'Telefone: '+insere2(DM4.Tb_AniCA_FONE.Value,' ',28)
                                      +'Celular: '+DM4.Tb_AniCA_CELULAR.Value,mreduz);
      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'Endereco......: '+insere2(DM4.Tb_AniCA_ENDERECO.Value,' ',44)
                                      +'Bairro: '+insere2(DM4.Tb_AniCA_BAIRRO.Value,' ',35)
                                      +'CEP....: '+DM4.Tb_AniCA_CEP.Value,mreduz);

      mlin:=mlin+1;
      RDprint1.ImpF(mlin,01,'Cidade........: '+insere2(DM4.Tb_AniCA_CIDADE.Value,' ',44)
                                      +'UF....: '+insere2(DM4.Tb_AniCA_UF.Value,' ',07)
                                      +'EMail: '+DM4.Tb_AniCA_EMAIL.Value,mreduz);
      dm4.Tb_Ani.Next;
      if DM4.Tb_Ani.Eof then
         begin
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,insere('=','=',80),mnormal);
         end
      else if mlin>54 then
         begin
         mlin:=mlin+1;
         RDprint1.ImpF(mlin,01,insere('=','=',80),mnormal);
         mlin:=0;
         RDprint1.Novapagina;
         end;
      end;
   end;
if RDprint1.Setup then
  RDprint1.Fechar;
{
+-------------+----------------------------------------+----------------------------------------+-----+---------------+-------------+
|Codigo       |Empresa                                 |Nome da Pessoa                          |Data |Telefone       |Celular      |
:1234567890123:1234567890123456789012345678901234567890:1234567890123456789012345678901234567890:10/09:12345678901234:12345678901234:


+-------------+----------------------------------------+----------------------------------------+-----+---------------+-------------+
:Codigo       :Empresa                                 :Nome da Pessoa                          :Data :Telefone       :Celular      :
:1234567890123:1234567890123456789012345678901234567890:1234567890123456789012345678901234567890:10/09:12345678901234:12345678901234:
}
end;

procedure TFrm_RAni.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_RAni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

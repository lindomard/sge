unit S_Pro_Transf_DepPrat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Grids, Buttons,func, DBGrids,lerarq, S_SelEmp, s_lerarq_geral;

type
  TFrm_Pro_Transf_DepPrat = class(TForm)
    Panel1: TPanel;
    CODPRO: TEdit;
    LOTE: TEdit;
    MDTVCTO: TMaskEdit;
    OPER: TEdit;
    QTD: TEdit;
    UND: TEdit;
    NOMPRO: TEdit;
    Panel2: TPanel;
    st_Codpro: TStaticText;
    st_lote: TStaticText;
    st_dtvcto: TStaticText;
    st_oper: TStaticText;
    st_qtd: TStaticText;
    st_obs: TStaticText;
    OBSERVACOES: TEdit;
    st_und: TStaticText;
    st_descricao: TStaticText;
    STG1: TStringGrid;
    BBSAIR: TBitBtn;
    GB_LOTES: TGroupBox;
    DBGrid1: TDBGrid;
    GRAVAR: TBitBtn;
    bbImprimir: TBitBtn;
    Label1: TLabel;
    cb_leitor: TCheckBox;
    Label2: TLabel;
    edt_primchave: TEdit;
    Label3: TLabel;
    edt_ultchave: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BBSAIRClick(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure LOTEExit(Sender: TObject);
    procedure MDTVCTOExit(Sender: TObject);
    procedure QTDExit(Sender: TObject);
    procedure CODPROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CODPROKeyPress(Sender: TObject; var Key: Char);
    procedure LOTEKeyPress(Sender: TObject; var Key: Char);
    procedure QTDKeyPress(Sender: TObject; var Key: Char);
    procedure OPERExit(Sender: TObject);
    procedure GRAVARClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_primchaveExit(Sender: TObject);
    procedure edt_ultchaveExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }

      mcol_codpro: Integer;
      mcol_lote  : Integer;
      mcol_dtvcto: Integer;
      mCol_Qtd   : Integer;
      mCol_Oper  : Integer;
      mCol_Obs   : Integer;
      mCol_Und   : Integer;
      mCol_Nompro: Integer;
      mQtd:        Integer;
      mPrimChave : real;
      mUltChave  : real;
      mQtdAju    : Integer;
      mcasqtd_aju: String;
      mlocal_ini: integer;
      Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_Pro_Transf_DepPrat: TFrm_Pro_Transf_DepPrat;


implementation

uses S_DM1, S_Tab05, S_DM2, S_SQL, DB, S_DM4, Func2;

{$R *.dfm}

procedure TFrm_Pro_Transf_DepPrat.FormCreate(Sender: TObject);
var
mIncrem: Integer;
mLeft: Integer;
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

mQtd  :=0;


mcol_codpro:=0;
mcol_lote  :=1;
mcol_dtvcto:=2;
mCol_Qtd   :=3;
mCol_Oper  :=4;
mCol_Obs   :=5;
mCol_Und   :=6;
mCol_Nompro:=7;

mQtdAju    :=0;
mcasqtd_aju:='0.00';
mPrimChave :=-1;
mUltChave  :=-1;


if Log_TipoLote>0 then  //  lotes de mercadorias
   begin
   GB_LOTES.Caption:=Log_TitLote+' Existentes';
   GB_LOTES.Visible:=True;
   DBGrid1.Columns[0].Title.Caption:='Número '+Log_TitLote;
   DBGrid1.Columns[1].Visible:=True;
   end;



if Log_TipoLote=2 then
   begin
   st_lote.Caption  :='Grade';
   st_dtvcto.Visible:=false;
   st_lote.Visible  :=true;
   mQtdAju:=st_dtvcto.Width;
   mcol_dtvcto:=7;
   mCol_Qtd   :=2;
   mCol_Oper  :=3;
   mCol_Obs   :=4;
   mCol_Und   :=5;
   mCol_Nompro:=6;
   STG1.ColCount:=7;
   end
else if Log_TipoLote=1 then
   begin
   mcol_codpro  :=0;
   mcol_lote    :=1;
   mcol_dtvcto  :=2;
   mCol_Qtd     :=3;
   mCol_Oper    :=4;
   mCol_Obs     :=5;
   mCol_Und     :=6;
   mCol_Nompro  :=7;
   st_lote.Visible  :=true;
   st_dtvcto.Visible:=true;
   mQtdAju      :=0;
   STG1.ColCount:=8;
   end
else
   begin
   mcol_codpro      :=0;
   mCol_Qtd         :=1;
   mCol_Oper        :=2;
   mCol_Obs         :=3;
   mCol_Und         :=4;
   mCol_Nompro      :=5;
   mcol_lote        :=6;
   mcol_dtvcto      :=7;

   st_lote.Visible  :=false;
   st_dtvcto.Visible:=false;
   mQtdAju      :=st_lote.Width+st_dtvcto.Width;
   STG1.ColCount:=6
   end;

if not Log_UsaDtVcto then
   DBGrid1.Columns[1].Visible:=False;

if mQtdAju>0 then
   begin
   mIncrem:= mQtdAju div STG1.ColCount;
   if st_Codpro.Visible then
      st_Codpro.Width:=st_Codpro.Width+mIncrem;
   if st_lote.Visible then
      st_lote.Width:=st_lote.Width+mIncrem;
   if st_dtvcto.Visible then
      st_dtvcto.Width:=st_dtvcto.Width+mIncrem;
   if st_qtd.Visible then
      st_qtd.Width:=st_qtd.Width+mIncrem;
   if st_oper.Visible then
      st_oper.Width:=st_oper.Width+mIncrem;
   if st_obs.Visible then
      st_obs.Width:=st_obs.Width+mIncrem;
   if st_und.Visible then
      st_und.Width:=st_und.Width+mIncrem;
   if st_descricao.Visible then
      st_descricao.Width:=st_descricao.Width+mIncrem;
   mLeft:=0;
   if st_Codpro.Visible then
      begin
      st_Codpro.Left:=mLeft;
      mLeft:=mLeft+st_Codpro.Width-1;
      CODPRO.Left  :=st_Codpro.Left;
      CODPRO.Width :=st_Codpro.Width;
      STG1.ColWidths[mcol_codpro]:=st_Codpro.Width-2;
      end
   else
      CODPRO.Visible:=false;
   if st_lote.Visible then
      begin
      st_lote.Left :=mLeft;
      mLeft:=mLeft+st_lote.Width-1;
      LOTE.Left    :=st_lote.Left;
      LOTE.Width   :=st_lote.Width;
      STG1.ColWidths[mcol_lote]:=st_lote.Width-2;
      end
   else
      LOTE.Visible:=false;
   if st_dtvcto.Visible then
      begin
      st_dtvcto.Left:=mLeft;
      mLeft:=mLeft+st_dtvcto.Width-1;
      MDTVCTO.Left  :=st_dtvcto.Left;
      MDTVCTO.Width :=st_dtvcto.Width;
      STG1.ColWidths[mcol_dtvcto]:=st_dtvcto.Width-2;
      end
   else
      MDTVCTO.Visible:=false;
   if st_qtd.Visible then
      begin
      st_qtd.Left:=mLeft;
      mLeft:=mLeft+st_qtd.Width-1;
      QTD.Left   :=st_qtd.Left;
      QTD.Width  :=st_qtd.Width;
      STG1.ColWidths[mCol_Qtd]:=st_qtd.Width-2;
      end
   else
      QTD.Visible:=false;

   if st_oper.Visible then
      begin
      st_oper.Left:=mLeft;
      mLeft:=mLeft+st_oper.Width-1;
      OPER.Left   :=st_oper.Left;
      OPER.Width  :=st_oper.Width;

      STG1.ColWidths[mCol_Oper]:=st_oper.Width-2;
      end
   else
      OPER.Visible:=false;

   if st_obs.Visible then
      begin
      st_obs.Left:=mLeft;
      mLeft:=mLeft+st_obs.Width-1;
      OBSERVACOES.Left:=st_obs.Left;
      OBSERVACOES.Width       :=st_obs.Width;
      STG1.ColWidths[mCol_Obs]:=st_obs.Width-2;
      end
   else
      OBSERVACOES.Visible:=false;
   if st_und.Visible then
      begin
      st_und.Left:=mLeft;
      mLeft:=mLeft+st_und.Width-1;
      UND.Width     :=st_und.Width;
      UND.Left      :=st_und.Left;
      STG1.ColWidths[mCol_Und]:=st_und.Width-2;
      end
   else
      UND.Visible:=false;
   if st_descricao.Visible then
      begin
      st_descricao.Left:=mLeft;
      mLeft:=mLeft+st_descricao.Width-1;
      NOMPRO.Left :=st_descricao.Left;
      NOMPRO.Width:=st_descricao.Width;
      STG1.ColWidths[mCol_Nompro]:=st_descricao.Width-2;
      end
   else
      NOMPRO.Visible:=false;
   end;

if DM1.Tb_PargerPCASIND.Value>DM1.Tb_PargerPCASQTD.Value then
   mcasqtd_aju:=mcasind
else
   mcasqtd_aju:=mcasqtd;


end;

procedure TFrm_Pro_Transf_DepPrat.BBSAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Pro_Transf_DepPrat.CODPROExit(Sender: TObject);
begin



if fdeixanum2(CODPRO.Text)='' then
   exit;

if not flcadpro(1,0,0,fdeixanum(CODPRO.Text)) then
   begin
   CODPRO.Text:=FloatToStr(fAchaCodigoOri(CODPRO.Text));
   if ValFloat(QTD.Text)<=1 then
      Qtd.Text:=FormatFloat(mcasqtd, pRet_Qtd);
   if ValFloat(QTD.Text)=0 then
      Qtd.Text:=FormatFloat(mcasqtd, 1);
   LOTE.Text:=pRet_Lote;
   if pRet_DtVcto<=pdatanula then
      MDTVCTO.Text:='/  /'
   else
      MDTVCTO.Text:=FormatDatetime(fdt2, pRet_DtVcto);
   if trim(CODPRO.Text)='' then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;

   if not flcadpro(1,0,0,fdeixanum(CODPRO.Text)) then
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      exit;
      end;
   end;
CODPRO.Text:=DM1.Tb_ProPDCODPRO.AsString;

if not flcadpro(1,0,0,CODPRO.Text) then
   begin
   if not (LOTE.Focused) and not (QTD.Focused) then
      begin
      CODPRO.Text:='';
      exit;
      end
   else
      begin
      FMensagem('Produto não Cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end;
   end
else
   begin
   if GB_LOTES.Visible then
      flcadlgc(0,0,0,DM1.Tb_ProPDCODPRO.AsString,'','');
   NOMPRO.Text:=DM1.Tb_ProPDNOME.Value;
   UND.Text   :=DM1.Tb_ProPDUND.Value;
   end;


if (cb_leitor.Checked) and (trim(OPER.Text)<>'') then
   begin
   if Log_TipoLote=2 then  // grades de cores tamanhos
      begin
      if not flcadlgc(0,1,0,CODPRO.Text,LOTE.Text,'') then
         begin
         FMensagem('Grade nao cadastrada!',0,['0'],0);
         LOTE.SetFocus;
         end
      else
         GRAVAR.Click;
      end
   else if Log_TipoLote=0  then  //  sem lotes e grades
      GRAVAR.Click;
   end;

end;

procedure TFrm_Pro_Transf_DepPrat.LOTEExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);
if Log_TipoLote=2 then
   begin
   if not flcadlgc(0,1,0,CODPRO.Text,LOTE.Text,'') then
      begin
      FMensagem(Log_TitLote+' nao cadastrado!',0,['0'],0);
      CODPRO.SetFocus;
      end;
   end;

end;

procedure TFrm_Pro_Transf_DepPrat.MDTVCTOExit(Sender: TObject);
begin
if trim(MDTVCTO.Text)<>'/  /' then
   begin
   Try
     MDTVCTO.Text:=FormatDateTime(fdt2,StrtoDate(MDTVCTO.Text));
   except
     fMensagem('Data Invalida!. ',0,['0'],0);
     MDTVCTO.SetFocus;
     end;
   end;

end;

procedure TFrm_Pro_Transf_DepPrat.QTDExit(Sender: TObject);
begin
QTD.Text:=FormatFloat(mcasqtd_aju,ValFloat(QTD.Text));
if ValFloat(QTD.Text)<0 then
   begin
   FMensagem('Quantidade Invalida!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
if (DM1.Tb_ProPDFRACAO.Value<>1) then
   begin
   if Trunc(ValFloat(QTD.Text))<>ValFloat(QTD.Text) then
      begin
      FMensagem('Não é permitido fracionar este produto!',0,['0'],0);
      QTD.SetFocus;
      exit;
      end;
   end;

end;

procedure TFrm_Pro_Transf_DepPrat.CODPROKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=113 then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_Pfor01','');
   key:=0;
   end;


end;

procedure TFrm_Pro_Transf_DepPrat.CODPROKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODPRO.Text:=fChamaPro(0,'Frm_Aju',key);
   CODPROExit(self);
   key:=#0;
   end;

end;

procedure TFrm_Pro_Transf_DepPrat.LOTEKeyPress(Sender: TObject;
  var Key: Char);
begin
if Length(LOTE.Text)>20 then
   begin
   FMensagem('Número do lote não pode ter mas que 20 digitos!',0,['0'],0);
   key:=#0;
   end;

end;

procedure TFrm_Pro_Transf_DepPrat.QTDKeyPress(Sender: TObject;
  var Key: Char);
begin
if key in [',','.'] then
   key:=DecimalSeparator
else if not (key  in ['0'..'9']) and (key<>#8) then
   key:=#0;

end;

procedure TFrm_Pro_Transf_DepPrat.OPERExit(Sender: TObject);
begin
OPER.Text:=fdeixanum2(OPER.Text);
if mlocal_ini=4 then
  begin
  if oper.Text='0' then
    OBSERVACOES.Text:='Prateleira p/Reparo'
  else if oper.Text='1' then
    OBSERVACOES.Text:='Reparo p/Prateleira'
  else
    begin
    if GRAVAR.Focused then
      begin
      fmensagem('Favor escolher uma opcao valida!'+#13
               +'Opcoes Valida: 0-Prateleira p/Reparo 1-Reparo p/Prateleira ',0,['0'],0);
      OPER.SetFocus;
      exit;
      end;
    end;
  end
else if mlocal_ini=2 then
  begin
  if oper.Text='0' then
    OBSERVACOES.Text:='Prateleira p/Deposito'
  else if oper.Text='1' then
    OBSERVACOES.Text:='Deposito p/Prateleira'
  else
    begin
    if GRAVAR.Focused then
      begin
      fmensagem('Favor escolher uma opcao valida!'+#13
               +'Opcoes Valida: 0-Prateleira p/Deposito 1-Deposito p/Prateleira ',0,['0'],0);
      OPER.SetFocus;
      exit;
      end;
    end;
  end;
end;

procedure TFrm_Pro_Transf_DepPrat.GRAVARClick(Sender: TObject);
var
mLocalMov: Integer;
begin
if TRIM(CODPRO.Text)='' then
   begin
   CODPRO.SetFocus;
   exit;
   end;
if fsonumero(CODPRO.Text)<>DM1.Tb_ProPDCODPRO.AsFloat then
   begin
   FMensagem('Produto não Cadastrado!',0,['0'],0);
   CODPRO.SetFocus;
   exit;
   end;
flcadpar02(0,0,CodUsr,IntToStr(53));
if DM4.Tb_Par02PA2PDSN.Value = 'S' then
  begin
  if fValidaSenha(0,codusr,53,0,DM1.Tb_ProPDCODPRO.Value,0,0,0, 'Senha Transferir Mercadoridas Prat/Dep/Rep','') <> 0 then
    begin
    fMensagem('Alteração não Aceita!',0,['0'],0);
    CODPRO.SetFocus;
    exit;
    end;
  end;
if LOTE.Visible then
   begin
   if Log_TipoLote>0 then  //  lotes de mercadorias
      begin
      if not flcadlgc(0,1,0,codpro.Text,lote.Text,MDTVCTO.Text) then
         begin

          FMensagem(Log_TitLote+' nao cadastrado!',0,['0'],0);
         LOTE.SetFocus;
         exit;
         end;
       if (valint(OPER.Text)=1) then
          begin
          if DM1.Tb_LGCCLQTD_DEP.AsFloat<ValFloat(QTD.Text) then
             begin
             fmensagem('Não ha estoque no deposito suficiente para Transferir!'
                      +#13+'Estoque: '+FormatFloat(mcasqtd, DM1.Tb_LGCCLQTD_DEP.AsFloat),0,['0'],0);
             CODPRO.SetFocus;
             exit;
             end;

           end
       else
          begin
          if DM1.Tb_LGCCLQTD_PRAT.AsFloat<ValFloat(QTD.Text) then
             begin
             fmensagem('Não ha estoque na Prateleira suficiente para Transferir!'
                      +#13+'Estoque: '+FormatFloat(mcasqtd, DM1.Tb_LGCCLQTD_PRAT.AsFloat),0,['0'],0);
             CODPRO.SetFocus;
             exit;
             end;
          end;
       end;
   end
else
  begin
  if mlocal_ini = 2 then
    begin
    if (valint(OPER.Text)=1) then
      begin
      if DM1.Tb_Proestoque_dep.AsFloat<ValFloat(QTD.Text) then
        begin
        fmensagem('Não ha estoque no deposito suficiente para Transferir!'
                 +#13+'Estoque: '+FormatFloat(mcasqtd, DM1.Tb_Proestoque_dep.AsFloat),0,['0'],0);
        CODPRO.SetFocus;
        exit;
        end;
      end
    else
      begin
      if DM1.Tb_Proestoque_prat.AsFloat<ValFloat(QTD.Text) then
        begin
        fmensagem('Não ha estoque na Prateleira suficiente para Transferir!'
                 +#13+'Estoque: '+FormatFloat(mcasqtd, DM1.Tb_Proestoque_prat.AsFloat),0,['0'],0);
        CODPRO.SetFocus;
        exit;
        end;
      end;
    end
  else if mlocal_ini=4 then
    begin
    if (valint(OPER.Text)=1) then
      begin
      if DM1.Tb_Proestoque_rep.AsFloat<ValFloat(QTD.Text) then
        begin
        fmensagem('Não ha estoque no reparo suficiente para Transferir!'
                 +#13+'Estoque: '+FormatFloat(mcasqtd, DM1.Tb_Proestoque_rep.AsFloat),0,['0'],0);
        CODPRO.SetFocus;
        exit;
        end;
      end
    else
      begin
      if DM1.Tb_Proestoque_prat.AsFloat<ValFloat(QTD.Text) then
        begin
        fmensagem('Não ha estoque na Prateleira suficiente para Transferir!'
                 +#13+'Estoque: '+FormatFloat(mcasqtd, DM1.Tb_Proestoque_prat.AsFloat),0,['0'],0);
        CODPRO.SetFocus;
        exit;
        end;
      end;
    end;
  end;

if ValFloat(QTD.Text)=0 then
   begin
   fmensagem('Favor Digitar um Quantidade Valida!',0,['0'],0);
   QTD.SetFocus;
   exit;
   end;
if (oper.Text<>'0') and
   (oper.Text<>'1')  then
   begin
   fmensagem('Favor digitar uma operação Valida!',0,['0'],0);
   OPER.SetFocus;
   Exit;
   end;

if not DM1.Tb_Aju.Active then
   begin
   DM1.Tb_Aju.Close;
   DM1.Tb_Aju.Sql.Clear;
   DM1.Tb_Aju.Sql.add('Select * from CADAJU where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADAJU',[]),'',' AJCODEMP=0'+IntToStr(codemp)+' and ')
                 +' AJSEQ=999999');
   DM1.Tb_Aju.Open;
   end;
// ENTRADA
if oper.Text='0' then
   mLocalMov:=1+iif(mLocal_Ini=4,1,0)
else
   mLocalMov:=0;


DM1.Tb_Aju.Append;
DM1.Tb_AjuAJCODPRO.Value :=fsonumero(CODPRO.Text);
DM1.Tb_AjuAJDATA.Value   :=pdatasis;
DM1.Tb_AjuAJFILIAL.Value :=log_filial_padrao;
DM1.Tb_AjuAJQTD.Value    :=ValFloat(QTD.Text);
DM1.Tb_AjuAJCODUSR.Value :=codusr;
DM1.Tb_AjuAJMOTIVO.Value :=OBSERVACOES.Text;
DM1.Tb_AjuAJDATAREF.Value:=Date;
DM1.Tb_AjuAJLOTE.Value   :=LOTE.Text;
DM1.Tb_AjuAJESTMOV.Value :=0;
DM1.Tb_AjuAJUSREXC.Value :=0;
DM1.Tb_AjuAJHOREXC.Value :=' ';
DM1.Tb_AjuAJDATEXC.Value :=pdatanula;
DM1.Tb_AjuAJLOCAL.Value  :=mLocal_Ini+Valint(OPER.Text);
// 0 - entrada normal                  1-saida normal
// 2-transferencia Sai prateleira Entra Deposito
// 3-sTransferencias Entra prateleira Sai Deposito
// 4-transferencia Sai Prateleira Entra Reparo
// 5-transferencia Sai Reparo Entra Prateleira Prateleira



if Trim(MDTVCTO.Text)<>'/  /' then
   DM1.Tb_AjuAJDATAV.Value:=Strtodate(MDTVCTO.Text);
if OPER.Text='0' then
   DM1.Tb_AjuAJTIPOM.Value  :=0
else
   DM1.Tb_AjuAJTIPOM.Value  :=1;

DM1.Tb_Aju.Post;

if mPrimChave<0 then
   begin
   mPrimChave:=DM1.Tb_AjuAJSEQ.AsFloat;
   if fsonumero(edt_primchave.Text)=0 then
      edt_primchave.Text:=FloatToStr(mPrimChave);
   end;

flbaiest(0,mLocalMov,0,0,DM1.Tb_ProPDCODPRO.AsString,'frm_transf_depprat_444_',ValFloat(QTD.Text));

if StrToInt('0'+copy(mpseg,4,2))>0 then  // Grades cores tamanhos
   begin
   if Trim(MDTVCTO.Text)='/  /' then
      mdtv:=Trim(MDTVCTO.Text)
   else
      mdtv:=FormatDateTime(fdt, StrToDate(MDTVCTO.Text));
   flbailgc(0,mLocalMov,0,0,DM1.Tb_ProPDCODPRO.AsString,LOTE.Text,mdtv,'','',valfloat(QTD.Text));
   flcadpro(1,0,codemp,DM1.Tb_ProPDCODPRO.AsString);
   CMovPro(0,DM1.Tb_ProPDCODPRO.AsFloat,LOTE.Text,'S_Pro_Transf_DepPrat',0,DM1.Tb_ProPDSALDO.AsFloat,ValFloat(QTD.Text),'Transferencias de Estoque.: '+DateToStr(Now));
   end;
// saida

if oper.Text='0' then
   mLocalMov:=0
else
   mLocalMov:=1+iif(mLocal_Ini=4,1,0);

DM1.Tb_Aju.Append;
DM1.Tb_AjuAJCODPRO.Value :=fsonumero(CODPRO.Text);
DM1.Tb_AjuAJFILIAL.Value :=log_filial_padrao;
DM1.Tb_AjuAJDATA.Value   :=pdatasis;
DM1.Tb_AjuAJQTD.Value    :=ValFloat(QTD.Text);
DM1.Tb_AjuAJCODUSR.Value :=codusr;
DM1.Tb_AjuAJMOTIVO.Value :=OBSERVACOES.Text;
DM1.Tb_AjuAJDATAREF.Value:=Date;
DM1.Tb_AjuAJLOTE.Value   :=LOTE.Text;
DM1.Tb_AjuAJESTMOV.Value :=0;
DM1.Tb_AjuAJUSREXC.Value :=0;
DM1.Tb_AjuAJHOREXC.Value :=' ';
DM1.Tb_AjuAJDATEXC.Value :=pdatanula;
DM1.Tb_AjuAJLOCAL.Value  := mLocal_Ini+Valint(OPER.Text);
if Trim(MDTVCTO.Text)<>'/  /' then
   DM1.Tb_AjuAJDATAV.Value:=Strtodate(MDTVCTO.Text);
if OPER.Text='0' then
   DM1.Tb_AjuAJTIPOM.Value  :=1
else
   DM1.Tb_AjuAJTIPOM.Value  :=0;

DM1.Tb_Aju.Post;
if mUltChave<DM1.Tb_AjuAJSEQ.asfloat then
   begin
   if (fsonumero(edt_ultchave.Text)=0)
      or (fsonumero(edt_ultchave.Text)<DM1.Tb_AjuAJSEQ.AsFloat) then
      mUltChave:=DM1.Tb_AjuAJSEQ.AsFloat;
   end;

flbaiest(0,mLocalMov,1,0,DM1.Tb_ProPDCODPRO.AsString,'frm_transf_depprat_444_',ValFloat(QTD.Text));

if StrToInt('0'+copy(mpseg,4,2))>0 then  // Grades cores tamanhos
   begin
   if Trim(MDTVCTO.Text)='/  /' then
      mdtv:=Trim(MDTVCTO.Text)
   else
      mdtv:=FormatDateTime(fdt, StrToDate(MDTVCTO.Text));
   flbailgc(0,mLocalMov,1,0,DM1.Tb_ProPDCODPRO.AsString,LOTE.Text,mdtv,'','',valfloat(QTD.Text));
   flcadpro(1,0,codemp,DM1.Tb_ProPDCODPRO.AsString);
   CMovPro(0,DM1.Tb_ProPDCODPRO.AsFloat,LOTE.Text,'S_Pro_Transf_DepPrat',1,DM1.Tb_ProPDSALDO.AsFloat,ValFloat(QTD.Text),'Transferencias de Estoque.: '+DateToStr(Now));
   end;

mqtd:=mqtd+1;
STG1.rowcount:=mqtd+2;
STG1.Cells[mcol_codpro,mqtd]:=CODPRO.Text;
STG1.Cells[mCol_Nompro,mqtd]:=NOMPRO.Text;
STG1.Cells[mCol_Und,mqtd]   :=UND.Text;
STG1.Cells[mCol_Qtd,mqtd]   :=QTD.Text;
STG1.Cells[mcol_lote,mqtd]  :=LOTE.Text;
STG1.Cells[mcol_dtvcto,mqtd]:=MDTVCTO.Text;
STG1.Cells[mCol_Obs,mqtd]   :=OBSERVACOES.Text;
STG1.Cells[mCol_Oper,mqtd]  :=OPER.Text;
if mqtd>10 then
   STG1.TopRow:=mqtd-4;

CODPRO.Text      :='';
LOTE.Text        :='';
MDTVCTO.Text     :='';
QTD.Text         :='';
//OPER.Text        :='';
//OBSERVACOES.Text :='';
NOMPRO.Text      :='';
UND.Text         :='';

if DM1.Tb_LGC.Active then
   DM1.Tb_LGC.Close;
CODPRO.SetFocus;




end;

procedure TFrm_Pro_Transf_DepPrat.DBGrid1DblClick(Sender: TObject);
begin
LOTE.Text   :=DM1.Tb_LGCCLNUMERO.Value;
MDTVCTO.Text:=FormatDateTime(fdt2, DM1.Tb_LGCCLDTVCTO.Value);
MDTVCTO.SetFocus;
end;

procedure TFrm_Pro_Transf_DepPrat.bbImprimirClick(Sender: TObject);
begin
if not fltdvca(0,0,'CADAJU','Rel. Transferencias','CADTDV') then
   begin
   fmensagem('Não ha uma tabulacao Definida!',0,['0'],0);
   exit;
   end;

mpaggr:=DM1.Tb_TDVCATCMPAGGR.AsInteger=1;
mpagsg:=false;

rpqtdlp:=DM1.Tb_TDVCATCQTDLIN.AsInteger;
fnumcol:=DM1.Tb_TDVCATCNUMCOL.AsInteger;
fintcol:=DM1.Tb_TDVCATCINTCOL.AsInteger;
ftpcol :=DM1.Tb_TDVCATCTPCOL.AsInteger;


mcinst4:='';
mcinst:='';
if mPrimChave<>0 then
   begin
   mcinst4:=mcinst4+mcinst+' AJSEQ>=0'+fdeixanum(edt_primchave.Text);
   mcinst:=' and ';
   end;

if (mUltChave<>0) and (ValFloat(edt_ultchave.Text)>0) then
   begin
   mcinst4:=mcinst4+mcinst+' AJSEQ<=0'+fdeixanum(edt_ultchave.Text);
   mcinst:=' and ';
   end;
mreltab:='CADTDV';
DM2.Qr_ImpRel.Close;
DM2.Qr_ImpRel.SQl.Clear;
DM2.Qr_ImpRel.SQL.Add(frpersql('CADTDV',DM1.Tb_TDVCATCDOC.Value,DM1.Tb_TDVCATCNOME.Value,mcinst4,0));
DM2.Qr_ImpRel.Open;
if DM2.Qr_ImpRel.Eof then
   begin
   MessageDlg('Nada a ser impresso na condição Solicitada',mtWarning,[mbOk],0);
   exit;
   end;
pimpg  :=true;
pimpsg :=True;
pavptpi:=true;
pavpipf:=true;

plocori:='';
mnomrel:=DM1.Tb_TDVCATCNOME.Value;
mreltab:=DM1.Tb_TDVCATCDOC.Value;
ftab05irel('CADTDV','',1,0);

end;

procedure TFrm_Pro_Transf_DepPrat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Pro_Transf_DepPrat.edt_primchaveExit(Sender: TObject);
begin
edt_primchave.Text:=fdeixanum2(edt_primchave.Text);
end;

procedure TFrm_Pro_Transf_DepPrat.edt_ultchaveExit(Sender: TObject);
begin
edt_ultchave.Text:=fdeixanum2(edt_ultchave.Text);
end;

procedure TFrm_Pro_Transf_DepPrat.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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


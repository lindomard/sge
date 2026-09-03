unit S_Conh_MercCons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Buttons,func,S_Ven,S_Tra, Grids,
  DBGrids,lerarq,S_DM6, DB;

type
  TFrm_Conh_MercCons = class(TForm)
    Panel1: TPanel;
    CODCON01: TEdit;
    chavedopedido: TLabel;
    Label1: TLabel;
    CODCON02: TEdit;
    Label2: TLabel;
    MDT1: TMaskEdit;
    Label3: TLabel;
    MDT2: TMaskEdit;
    StaticText1: TStaticText;
    CODTRA: TEdit;
    OMITIR_TRA: TCheckBox;
    lbx_codtra: TListBox;
    RG_FILTRO: TRadioGroup;
    bbAtualizar: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    st_chave: TStaticText;
    st_razao: TStaticText;
    st_pesob: TStaticText;
    st_qtdm3: TStaticText;
    st_vlrtot: TStaticText;
    st_fretecalc: TStaticText;
    st_fretedig: TStaticText;
    st_tipoent: TStaticText;
    dbg_pedidos: TDBGrid;
    Panel3: TPanel;
    st_codpro: TStaticText;
    st_nompro: TStaticText;
    st_qtdent: TStaticText;
    st_qtdpen: TStaticText;
    st_valfre_calc: TStaticText;
    st_valfre_dig: TStaticText;
    st_und: TStaticText;
    dbg_prod: TDBGrid;
    Panel4: TPanel;
    bbImprmir: TBitBtn;
    bbSair: TBitBtn;
    dbg_conhec: TDBGrid;
    Src_Con01: TDataSource;
    Src_Con02: TDataSource;
    StaticText2: TStaticText;
    procedure CODCON01Exit(Sender: TObject);
    procedure CODCON02Exit(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure MDT2Exit(Sender: TObject);
    procedure CODTRAKeyPress(Sender: TObject; var Key: Char);
    procedure CODTRAExit(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure Src_Con01DataChange(Sender: TObject; Field: TField);
    procedure Src_Con02DataChange(Sender: TObject; Field: TField);
    procedure bbImprmirClick(Sender: TObject);
    procedure dbg_conhecDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbx_codtraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Conh_MercCons: TFrm_Conh_MercCons;

implementation

uses S_DM1, S_Conh_MercRelat;

{$R *.dfm}

procedure TFrm_Conh_MercCons.CODCON01Exit(Sender: TObject);
begin
CODCON01.Text:=fdeixanum2(CODCON01.Text);
end;

procedure TFrm_Conh_MercCons.CODCON02Exit(Sender: TObject);
begin
CODCON02.Text:=fdeixanum2(CODCON02.Text);
end;

procedure TFrm_Conh_MercCons.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   Try
      MDT1.Text:=FormatDateTime(fdt2, StrToDate(MDT1.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      end;
   end;

end;

procedure TFrm_Conh_MercCons.MDT2Exit(Sender: TObject);
begin
if Trim(MDT2.Text)<>'/  /' then
   begin
   Try
      MDT2.Text:=FormatDateTime(fdt2, StrToDate(MDT2.Text));
   except
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      MDT2.SetFocus;
      end;
   end;

end;

procedure TFrm_Conh_MercCons.CODTRAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin
   CODTRA.Text:=fChamaTra(0,'frm_Conh_MercCons',Key);
   if Trim(CODTRA.Text)<>'' then
      CODTRAExit(self);
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;


end;

procedure TFrm_Conh_MercCons.CODTRAExit(Sender: TObject);
begin
CODTRA.Text:=fdeixanum2(CODTRA.Text);
if Trim(CODTRA.Text)<>'' then
   begin
   if flqr1('TRRAZTRA','TR','CADTRA','N','TRCODTRA',CODTRA.Text) then
      begin
      lbx_codtra.Items.Add(FormatFloat('0000000',StrToFloat(CODTRA.TEXT))
                                    +' - '+DM1.Query1.Fields[0].AsString);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end
   else
      begin
      MessageDlg('Transportadora não Cadastrado!',mtWarning,[mbOk],0);
      CODTRA.text := '';
      CODTRA.SetFocus;
      end;
   end;


end;

procedure TFrm_Conh_MercCons.bbSairClick(Sender: TObject);
begin
if not DM6.Tb_Con01C01CODCON.IsNull then
   CODCON01.Text:=DM6.Tb_Con01C01CODCON.AsString;
close;
end;

procedure TFrm_Conh_MercCons.bbAtualizarClick(Sender: TObject);
begin
if (trim(CODCON01.Text)<>'') and (trim(CODCON02.Text)<>'') then
   begin
   if fsonumero(CODCON01.Text)>fsonumero(CODCON02.Text) then
      begin
      MessageDlg('conhecimento inicial maior que o final. Inválido!',mtWarning,[mbOk],0);
      CODCON01.SetFocus;
      exit;
      end;
   end;
if (trim(MDT1.Text)<>'/  /') and (trim(MDT2.Text)<>'/  /') then
   begin
   if StrToDate(MDT1.Text)>StrToDate(MDT2.Text) then
      begin
      MessageDlg('Data inicial maior que data final. Inválido!',mtWarning,[mbOk],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
DM6.Tb_Con03.Close;
DM6.Tb_Con02.Close;
DM6.Tb_Con01.Close;
DM6.Tb_Con01.SQL.Clear;
DM6.Tb_Con01.SQL.Add('Select C01CODEMP, ');
DM6.Tb_Con01.SQL.Add('    C01CODCON,');
DM6.Tb_Con01.SQL.Add('       C01DATCON,');
DM6.Tb_Con01.SQL.Add('       C01DATFEC,');
DM6.Tb_Con01.SQL.Add('       C01QTDITENS,');
DM6.Tb_Con01.SQL.Add('       C01CODTRA,');
DM6.Tb_Con01.SQL.Add('       C01PESOB,');
DM6.Tb_Con01.SQL.Add('       C01QTDM3,');
DM6.Tb_Con01.SQL.Add('       C01VLRTOT,');
DM6.Tb_Con01.SQL.Add('       C01VALFRE,');
DM6.Tb_Con01.SQL.Add('       C01VALFRE_DIG,');
DM6.Tb_Con01.SQL.Add('       C01CODUSR_INC,');
DM6.Tb_Con01.SQL.Add('       C01CODUSR_ALT,');
DM6.Tb_Con01.SQL.Add('       C01DTHR_ALT,');
DM6.Tb_Con01.SQL.Add('       C01ESTADO,');
DM6.Tb_Con01.SQL.Add('       C01QTDPED,');
DM6.Tb_Con01.SQL.Add('       C01QTDMAN,');
DM6.Tb_Con01.SQL.Add('       TRRAZTRA');
DM6.Tb_Con01.SQL.Add('       from CADCON01,CADTRA where ');
DM6.Tb_Con01.SQL.Add(iif(DM1.Qr_Tid.Locate('TINOME','CADTRA',[]),'',' TRCODEMP(+)=C01CODEMP and '));
DM6.Tb_Con01.SQL.Add(' TRCODTRA(+)=C01CODTRA ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   DM6.Tb_Con01.SQL.Add(' and C01CODEMP=0'+IntToStr(codemp));
if trim(CODCON01.Text)<>'' then
   DM6.Tb_Con01.SQL.Add(' and C01CODCON>=0'+CODCON01.Text);
if trim(CODCON02.Text)<>'' then
   DM6.Tb_Con01.SQL.Add(' and C01CODCON<=0'+CODCON02.Text);
if trim(MDT1.Text)<>'/  /' then
   DM6.Tb_Con01.SQL.Add(' and C01DATCON>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   DM6.Tb_Con01.SQL.Add(' and C01DATCON<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));
if RG_FILTRO.ItemIndex=0 then
   DM6.Tb_Con01.SQL.add(' and (C01DATFEC IS NULL OR C01DATFEC<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+' )')
else if RG_FILTRO.ItemIndex=1 then
   DM6.Tb_Con01.SQL.add(' and C01DATFEC>'+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39));

mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
if trim(mcinst2)<>'' then
   DM6.Tb_Con01.SQL.Add(' and TRCODTRA '+mcinst2);
try
   DM6.Tb_con01.Open;
except
   DM6.Tb_con01.SQL.sAVEtOFILE('C:\sql.txt');
   end;

end;

procedure TFrm_Conh_MercCons.Src_Con01DataChange(Sender: TObject;
  Field: TField);
begin
if DM6.Tb_Con01C01CODCON.AsFloat=0 then
   DM6.Tb_con02.close
else
   begin
   if (not DM6.Tb_Con02.Active) or
      (DM6.Tb_Con01C01CODEMP.AsFloat<>DM6.Tb_Con02C02CODEMP.AsFloat) or
      (DM6.Tb_Con01C01CODCON.AsFloat<>DM6.Tb_Con02C02CODCON.AsFloat) then
      begin
      flcadcon02(0,DM6.Tb_Con01C01CODEMP.AsInteger,
                DM6.Tb_Con01C01CODCON.Value,
                0,0,0);
      end;
   end;
end;

procedure TFrm_Conh_MercCons.Src_Con02DataChange(Sender: TObject;
  Field: TField);
begin
if DM6.Tb_Con02C02CODCON.AsFloat=0 then
   DM6.Tb_Con03.Close
else
   begin
   if (not DM6.Tb_Con03.Active) or
      (DM6.Tb_Con02C02CODEMP.AsFloat<>DM6.Tb_Con03C03CODEMP.AsFloat) or
      (DM6.Tb_Con02C02CODCON.AsFloat<>DM6.Tb_Con03C03CODCON.AsFloat) or
      (DM6.Tb_Con02C02CODEMP_PED.AsFloat<>DM6.Tb_Con03C03CODEMP_PED.AsFloat) or
      (DM6.Tb_Con02C02LOTSEQ_PED.AsFloat<>DM6.Tb_Con03C03LOTSEQ_PED.AsFloat) or
      (DM6.Tb_Con02C02CHAVE_PED.AsFloat<>DM6.Tb_Con03C03CHAVE_PED.AsFloat) then
      flcadcon03(0,DM6.Tb_Con02C02CODEMP.AsInteger,
                DM6.Tb_Con02C02CODCON.Value,
                DM6.Tb_Con02C02CODEMP_PED.Value,
                DM6.Tb_Con02C02LOTSEQ_PED.Value,
                DM6.Tb_Con02C02CHAVE_PED.Value);
   end;
end;

procedure TFrm_Conh_MercCons.bbImprmirClick(Sender: TObject);
begin
Application.CreateForm(TFrm_Conh_MercRelat,Frm_Conh_MercRelat);
Frm_Conh_MercRelat.Qr_Conhec.Close;
Frm_Conh_MercRelat.Qr_Conhec.SQL.Clear;
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('Select C01CODCON,C01DATCON, ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       CCODCLI,CRAZAO,CLOG,CBAIRRO,CCIDADE,CUF,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       CCEP,CFONE01,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02CODTRA,C02CODVEN,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02QTDM3,C02PESOB,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02TIPO_ENTREGA,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02CODEMP_PED,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02LOTSEQ_PED,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C02CHAVE_PED,C02OBSERVACAO,C02OBS_CONHEC,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       C03CODPRO,C03LOTE,C03QTDENT,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       PDNOME,PDUND,TRRAZTRA,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('       TO_CHAR(C02CHAVE_PED) AS GRUPO');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add('      , p1qtdvol,p1especie,p1pesol,p1pesob,p1numnf ');

Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' FROM CADCON01,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADCON02,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADCON03,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADPRO,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADCLI,');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' CADTRA,CADP01');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' where ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(iif(DM1.Qr_Tid.Locate('TINOME','CADTRA',[]),'',' TRCODEMP(+)=C01CODEMP and '));
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' TRCODTRA(+)=C01CODTRA ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C02CODEMP=C01CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C02CODCON=C01CODCON ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
  Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CODEMP=C02CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CODCON=C02CODCON ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CODEMP_PED=C02CODEMP_PED ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03LOTSEQ_PED=C02LOTSEQ_PED ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C03CHAVE_PED=C02CHAVE_PED ');
if not DM1.Qr_TID.Locate('TINOME','CADCLI',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and CCODEMP(+)=C02CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and CCODCLI(+)=C02CODCLI ');
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and PDCODEMP=C03CODEMP ');
Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and PDCODPRO=C03CODPRO ');
if not DM1.Qr_TID.Locate('TINOME','CADPED',[]) then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01CODEMP=0'+IntToStr(codemp));
if trim(CODCON01.Text)<>'' then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01CODCON>=0'+CODCON01.Text);
if trim(CODCON02.Text)<>'' then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01CODCON<=0'+CODCON02.Text);
if trim(MDT1.Text)<>'/  /' then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01DATCON>='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT1.Text))+chr(39));
if trim(MDT2.Text)<>'/  /' then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and C01DATCON<='+chr(39)+FormatDatetime(fdt, StrtoDate(MDT2.Text))+chr(39));

mcinst2:=fItensListBox(0,lbx_codtra,OMITIR_TRA);
if trim(mcinst2)<>'' then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and TRCODTRA '+mcinst2);

if RG_FILTRO.ItemIndex=0 then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.add(' and (C01DATFEC IS NULL OR C01DATFEC<='+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39)+' )')
else if RG_FILTRO.ItemIndex=1 then
   Frm_Conh_MercRelat.Qr_Conhec.SQL.add(' and C01DATFEC>'+chr(39)+FormatDatetime(fdt, pdatanula)+chr(39));


Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' and P1CODEMP=C02CODEMP_PED and P1CHAVE=C02CHAVE_PED and P1lotseq=C02LOTSEQ_PED   ');

Frm_Conh_MercRelat.Qr_Conhec.SQL.Add(' order by C01CODCON,C02CHAVE_PED ');
try
   Frm_Conh_MercRelat.Qr_Conhec.Open;
except
   Frm_Conh_MercRelat.Qr_Conhec.SQL.sAVEtOFILE('C:\sql.txt');
   end;
Frm_Conh_MercRelat.RLReport1.PreviewModal;
Frm_Conh_MercRelat.Free;
end;

procedure TFrm_Conh_MercCons.dbg_conhecDblClick(Sender: TObject);
begin
bbSair.Click;
end;

procedure TFrm_Conh_MercCons.FormCreate(Sender: TObject);
begin
Frm_Conh_MercCons.MDT1.Text:=FormatDatetime(fdt2,date);
end;

procedure TFrm_Conh_MercCons.lbx_codtraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=46 then
   if lbx_codtra.ItemIndex>=0 then
      lbx_codtra.Items.Delete(lbx_codtra.ItemIndex);

end;

procedure TFrm_Conh_MercCons.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

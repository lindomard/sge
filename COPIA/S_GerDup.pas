unit S_GerDup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,S_DM1,func,lerarq,func2, DB, DBTables,
  ComCtrls, Mask, ToolEdit;

type
  TFrm_GerDup = class(TForm)
    Query1: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tsNovo: TTabSheet;
    lbl_lotseq: TLabel;
    edt_lotseq: TEdit;
    Label1: TLabel;
    CHAVEPED: TEdit;
    Label3: TLabel;
    DATAP: TEdit;
    Label4: TLabel;
    VALOR: TEdit;
    Label5: TLabel;
    CLIENTE: TEdit;
    bbAjustar: TBitBtn;
    bbSair: TBitBtn;
    Label2: TLabel;
    edtnv_lotseq: TEdit;
    Label6: TLabel;
    edtnv_chave: TEdit;
    Label7: TLabel;
    edtnv_datped: TEdit;
    Label8: TLabel;
    edtnv_valor: TEdit;
    Label9: TLabel;
    edtnv_cliente: TEdit;
    bbnv_ajustar: TBitBtn;
    bbnv_sair: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtnv_arqcsv: TEdit;
    sbnbuscar: TSpeedButton;
    opd1: TOpenDialog;
    Label13: TLabel;
    edt_datini: TDateEdit;
    Label14: TLabel;
    edt_datfin: TDateEdit;
    tsAtuPed: TTabSheet;
    Label15: TLabel;
    atped_chave: TEdit;
    Label16: TLabel;
    atped_dtped: TEdit;
    Label17: TLabel;
    atped_valor: TEdit;
    Label18: TLabel;
    atped_nomcli: TEdit;
    Label19: TLabel;
    atped_tipo: TEdit;
    Label20: TLabel;
    atped_status: TEdit;
    Label21: TLabel;
    atped_serieecf: TEdit;
    atped_ajustar: TBitBtn;
    atped_sair: TBitBtn;
    Label22: TLabel;
    atped_datacf: TDateEdit;
    Label23: TLabel;
    atped_numcup: TEdit;
    CB_VERINEXISTENTES: TCheckBox;
    tsCompras: TTabSheet;
    Label24: TLabel;
    EdtChaveIniCpr: TEdit;
    Label25: TLabel;
    EdtLotSeqCpr: TEdit;
    Label26: TLabel;
    EdtChaveFimCpr: TEdit;
    bbAjuCompras: TBitBtn;
    Query2: TQuery;
    Label27: TLabel;
    Label28: TLabel;
    edtDtFimCpr: TDateEdit;
    edtDtIniCpr: TDateEdit;
    procedure CHAVEPEDExit(Sender: TObject);
    procedure CHAVEPEDEnter(Sender: TObject);
    procedure bbAjustarClick(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbnv_sairClick(Sender: TObject);
    procedure bbnv_ajustarClick(Sender: TObject);
    procedure edtnv_chaveExit(Sender: TObject);
    procedure edtnv_chaveEnter(Sender: TObject);
    procedure sbnbuscarClick(Sender: TObject);
    procedure edt_datiniExit(Sender: TObject);
    procedure edt_datfinExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure atped_sairClick(Sender: TObject);
    procedure atped_chaveEnter(Sender: TObject);
    procedure atped_chaveExit(Sender: TObject);
    procedure atped_ajustarClick(Sender: TObject);
    procedure bbAjuComprasClick(Sender: TObject);
  private
    { Private declarations }
    function fGerarTitulos(pTipo: Integer): Boolean;

    function fValidarCSV(pArq_String: tstrings): Boolean;

  public
    { Public declarations }
    mAceitaPergunta: Boolean;
    mOrigem: String;
  end;

var
  Frm_GerDup: TFrm_GerDup;


implementation

uses S_DM4, S_Agde, func_excecoes, func_bde, flerarq, s_lerarq_geral;


{$R *.dfm}

procedure TFrm_GerDup.CHAVEPEDExit(Sender: TObject);
begin
CHAVEPED.Text:=fdeixanum(CHAVEPED.Text);
fdeixanum(CHAVEPED.Text);
if ValInt(CHAVEPED.Text)=0 then
   CHAVEPED.Text:=''
else
   begin
   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('Select P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP,sum(P1TOTALL) as P1TOTALL from '
                     +' CADP01 where (P1CODEMP=0'+IntTostr(codemp)+' or P1CODEMP=0'
                     +iif(codemp>100,InttoStr(codemp-100),IntTostr(codemp+100))+')'
                     +' and P1LOTSEQ=0'+fdeixanum(edt_lotseq.Text)
                     +' and P1CHAVE=0'+fdeixanum(CHAVEPED.Text)
                     +' and P1STATUS<'+mstatus_excluido+' '
                     +' and ((P1NUMCF<>0) or ( P1NUMNF<>0) or ( P1NFCE_NUMERO<>0))  '
                     +' group by P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP ');
   Query1.Open;
   if not Query1.Eof then
      begin
      DATAP.Text  :=FormatDateTime(fdt2, Query1.fieldbyName('P1DATAP').AsDateTime);
      VALOR.Text  :=FormatFloat(mcasas, Query1.fieldbyName('P1TOTALL').AsFloat);
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',Query1.FieldbyName('P1CODCLI').AsString) then
         CLIENTE.Text:=DM1.Query1.fields[0].AsString;
      end;
   end;

end;

procedure TFrm_GerDup.CHAVEPEDEnter(Sender: TObject);
begin
CHAVEPED.Text:='';
DATAP.Text   :='/  /';
VALOR.Text   :='';
CLIENTE.Text :='';

end;

procedure TFrm_GerDup.bbAjustarClick(Sender: TObject);
var
mtotserv,mcodemp: real;
Emitiu: Boolean;
mcomp,mdupacum: String;
mGerarDuplicata:Boolean;
begin

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add('Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1CODCLI,P1DATAP,P1TOTSERLIQ from '
               +' CADP01 where (P1CODEMP=0'+IntTostr(codemp)+' or P1CODEMP=0'
               +iif(codemp>100,InttoStr(codemp-100),IntTostr(codemp+100))+')'
               +' and P1LOTSEQ=0'+fdeixanum(edt_lotseq.Text)
               +' and P1CHAVE=0'+fdeixanum(CHAVEPED.Text)
               +' and P1STATUS<'+mstatus_excluido+' '
               +' and ((P1NUMCF<>0) or ( P1NUMNF<>0) or ( P1NFCE_NUMERO<>0))  '
              +' order by P1CODEMP,P1ORDEM');
Query1.Open;
if Query1.Eof then
   begin
   if mAceitaPergunta then
      begin
      MessageDlg('Chave não Encontrada!',mtWarning,[mbOk],0);
      CHAVEPED.SetFocus;
      end;
   exit;
   end;

Emitiu:=true;
while not Query1.Eof do
   begin
   DM1.Tb_Ped01.Close;
   DM1.Tb_Ped01.Sql.Clear;
   DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+Query1.fieldbyName('P1CODEMP').AsString
                        +' and P1STATUS<'+mstatus_excluido+' '
                        +' and P1LOTSEQ=0'+Query1.fieldbyName('P1LOTSEQ').AsString
                        +' and P1CHAVE=0'+Query1.fieldbyName('P1CHAVE').AsString
                        +' and P1ORDEM=0'+Query1.fieldbyName('P1ORDEM').AsString
                        +' order by P1CODEMP,P1CHAVE,P1ORDEM');
   DM1.Tb_Ped01.Open;
   mcodemp:=DM1.Tb_Ped01P1CODEMP.AsInteger;

   While not DM1.Tb_Ped01.Eof do
      begin
      mGerarDuplicata := False;

      DM1.Query1.Close;
      DM1.Query1.Sql.Clear;
      DM1.Query1.Sql.Add(' SELECT max(CRNUMERO) as CRNUMERO, SUM(CRVALOR) AS VALOR FROM CADDAR '
                        +' WHERE CRNPED = '+DM1.Tb_Ped01P1CHAVE.AsString
                        +' and CRORDEM = '+DM1.Tb_Ped01P1ORDEM.AsString
                        +' and CRLOTSEQ_CP = '+DM1.Tb_Ped01P1LOTSEQ.AsString
                        +' and CRCODEMP = '+DM1.Tb_Ped01P1CODEMP.AsString);
      DM1.Query1.Open;

      if DM1.Query1.FieldByName('VALOR').Value < DM1.Tb_Ped01P1TOTALL.AsFloat then
         mGerarDuplicata := True;

      if (DM1.Tb_Ped01P1TIPO.Value=1) and (DM1.Tb_PargerPDUPTIP1.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=2) and (DM1.Tb_PargerPDUPTIP2.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=3) and (DM1.Tb_PargerPDUPTIP3.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=4) and (DM1.Tb_PargerPDUPTIP4.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=5) and (DM1.Tb_PargerPDUPTIP5.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=6) and (DM1.Tb_PargerPDUPTIP6.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=7) and (DM1.Tb_PargerPDUPTIP7.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=8) and (DM1.Tb_PargerPDUPTIP8.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=9) and (DM1.Tb_PargerPDUPTIP9.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=10) and (DM1.Tb_PargerPDUPTIP10.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=11) and (DM1.Tb_PargerPDUPTIP11.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=12) and (DM1.Tb_PargerPDUPTIP12.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=13) and (DM1.Tb_PargerPDUPTIP13.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=14) and (DM1.Tb_PargerPDUPTIP14.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=15) and (DM1.Tb_PargerPDUPTIP15.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=16) and (DM1.Tb_PargerPDUPTIP16.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=17) and (DM1.Tb_PargerPDUPTIP17.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=18) and (DM1.Tb_PargerPDUPTIP18.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=19) and (DM1.Tb_PargerPDUPTIP19.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=20) and (DM1.Tb_PargerPDUPTIP20.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=21) and (DM1.Tb_PargerPDUPTIP21.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=22) and (DM1.Tb_PargerPDUPTIP22.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=23) and (DM1.Tb_PargerPDUPTIP23.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=24) and (DM1.Tb_PargerPDUPTIP24.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=25) and (DM1.Tb_PargerPDUPTIP25.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=26) and (DM1.Tb_PargerPDUPTIP26.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=27) and (DM1.Tb_PargerPDUPTIP27.Value=1) then
         emitiu:=False
      else if (DM1.Tb_Ped01P1TIPO.Value=28) and (DM1.Tb_PargerPDUPTIP28.Value=1) then
         emitiu:=False;

      if (emitiu) or (DM1.Tb_Ped01P1TOTSERLIQ.AsFloat<>0)  then
         begin
         if ((DM1.Tb_Pargerpagrudup.Value=1) and (mcodemp=DM1.Tb_Ped01P1CODEMP.AsInteger)) or (DM1.Tb_Ped01P1NUMCF.AsFloat>0) then
            begin
            if DM1.Tb_Ped01P1NUMNF.Value=0 then
               mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMCF.AsFloat)
           else
              begin
              mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
              if ((DM1.Tb_PargerPCRDOC.Value = 1) and (DM1.Tb_Ped01P1CHAVE.AsString<>DM1.Query1.FieldByName('CRNUMERO').AsString))
              or ((DM1.Tb_PargerPCRDOC.Value=0) and (DM1.Tb_Ped01P1NUMNF.AsString<>DM1.Query1.FieldByName('CRNUMERO').AsString)) then
                begin
                mGerarDuplicata:=True;
                end;
              end;
            mcomp:='/'
            end
         else
            begin
            mdupacum:=FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
            mcomp:='';
            if mGerarDuplicata then
               begin
               flcadpar01(0,DM1.Tb_Ped01P1CODEMP.AsInteger,'1');
               if (DM4.Tb_Par01PONLINE_BOL.Value=1) then
                 begin
                 if mOrigem<>'Frm_Princ' then
                    Fgravardup(1,0,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger)
                 else
                    Fgravardup(1,0,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
                 end
               else
                 begin
                 if mOrigem<>'Frm_Princ' then
                    Fgravardup(1,1,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger)
                 else
                    Fgravardup(1,1,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
                 end;
               end;
            mTotServ:=0;
            mcodemp:=DM1.Tb_Ped01P1CODEMP.AsInteger;
            end;
         end;

      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select Count(*) from CADNS where '
                        +iif(DM1.Qr_Tid.Locate('TINOME','CADNS',[]),'',' NSCODEMP=0'+DM1.Tb_Ped01P1CODEMP.AsString+' and ')
                        +' NSCHAVEP=0'+DM1.Tb_Ped01P1CHAVE.AsString
                        +' and NSORDEMP=0'+DM1.Tb_Ped01P1ORDEM.AsString
                            +'  and NSTIPO<2 ' );
      try
         DM1.Query1.Open;
      except
         end;
      if DM1.Query1.fields[0].asinteger<1 then
         Fgravarnf(0);
      DM1.Tb_Ped01.Next;
      end;
   mTotServ:=mTotServ+Query1.fieldbyName('P1TOTSERLIQ').AsFloat;
   Query1.Next;
   if ((emitiu)
      and (DM1.Tb_Pargerpagrudup.Value=1)
      and (mcodemp<>Query1.fieldbyName('P1CODEMP').AsInteger))
      or ((mTotServ<>0) and (mcodemp<>Query1.fieldbyName('P1CODEMP').AsInteger) )
      then
      begin
      mcodemp:=Query1.fieldbyName('P1CODEMP').AsInteger;
      Query1.Prior;
      DM1.Tb_Ped01.Close;
      DM1.Tb_Ped01.Sql.Clear;
      DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+Query1.fieldbyName('P1CODEMP').AsString
                       +' and P1STATUS<'+mstatus_excluido+' '
                       +' and P1LOTSEQ=0'+Query1.fieldbyName('P1LOTSEQ').AsString
                       +' and P1CHAVE=0'+Query1.fieldbyName('P1CHAVE').AsString
                       +' and P1ORDEM=01'
                       +' order by P1CODEMP,P1CHAVE,P1ORDEM');
      DM1.Tb_Ped01.Open;
      if trim(mdupacum)='' then
         mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
      mcomp:='/';
{      if mGerarDuplicata then
      begin
        if not emitiu then
           Fgravardup(1,1,2,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger)
        else
           Fgravardup(1,1,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
      end;        }
            if mGerarDuplicata then
               begin
               flcadpar01(0,DM1.Tb_Ped01P1CODEMP.AsInteger,'1');
               if (DM4.Tb_Par01PONLINE_BOL.Value=1) then
                 begin
                 if mOrigem<>'Frm_Princ' then
                    Fgravardup(1,0,1,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger)
                 else
                    Fgravardup(1,0,1,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
                 end
               else
                 begin
                 if mOrigem<>'Frm_Princ' then
                    Fgravardup(1,1,1,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger)
                 else
                    Fgravardup(1,1,1,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
                 end;
               end;
      mTotServ:=0;
      mcomp:='';
      mdupacum:='';
      Query1.Next;
      end;
   end;
if ( (emitiu) or (mTotServ<>0)) and
   ( (DM1.Tb_Pargerpagrudup.Value=1)
    or (DM1.Tb_Ped01P1NUMCF.AsFloat>0)) then
   begin
   DM1.Tb_Ped01.Close;
   DM1.Tb_Ped01.Sql.Clear;
   DM1.Tb_Ped01.SQl.add('Select * from CADP01 where P1CODEMP=0'+Query1.fieldbyName('P1CODEMP').AsString
                       +' and P1STATUS<'+mstatus_excluido+' '
                       +' and P1LOTSEQ=0'+Query1.fieldbyName('P1LOTSEQ').AsString
                       +' and P1CHAVE=0'+Query1.fieldbyName('P1CHAVE').AsString
                       +' and P1ORDEM=01'
                       +' order by P1CODEMP,P1CHAVE,P1ORDEM');
   DM1.Tb_Ped01.Open;
   if trim(mdupacum)='' then
      begin
      mdupacum:=mdupacum+mcomp+FormatFloat('000000',DM1.Tb_Ped01P1NUMNF.Value);
      mcomp:='/'
      end;

   if mGerarDuplicata then
     begin
     flcadpar01(0,DM1.Tb_Ped01P1CODEMP.AsInteger,'1');
     if (DM4.Tb_Par01PONLINE_BOL.Value=1) then
       begin
       if mOrigem<>'Frm_Princ' then
          begin
          if (DM1.Tb_Ped01P1NUMCF.Asfloat>0) then
             Fgravardup(1,0,0,mdupacum,1,0,DM1.Tb_Ped01P1TIPO.Asinteger)
          else
             Fgravardup(1,0,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
          end
       else
          begin
          if (DM1.Tb_Ped01P1NUMCF.Asfloat>0) AND (DM1.Tb_Ped01P1TABPV.AsString<>'PO')  then
             Fgravardup(1,1,0,mdupacum,1,0,DM1.Tb_Ped01P1TIPO.Asinteger)
          else
             Fgravardup(1,1,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
          end;
       end
     else
       begin
       if mOrigem<>'Frm_Princ' then
          begin
          if (DM1.Tb_Ped01P1NUMCF.Asfloat>0) then
             Fgravardup(1,1,0,mdupacum,1,0,DM1.Tb_Ped01P1TIPO.Asinteger)
          else
             Fgravardup(1,1,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
          end
       else
          begin
          if (DM1.Tb_Ped01P1NUMCF.Asfloat>0) AND (DM1.Tb_Ped01P1TABPV.AsString<>'PO')  then
             Fgravardup(1,1,0,mdupacum,1,0,DM1.Tb_Ped01P1TIPO.Asinteger)
          else
             Fgravardup(1,1,0,mdupacum,0,0,DM1.Tb_Ped01P1TIPO.Asinteger);
          end;
       end
     end;
   end;
DM1.Tb_Ped01.Close;
if mAceitaPergunta then
   MessageDlg('Novos dados Gravados.',mtWarning,[mbOk],0);
end;

procedure TFrm_GerDup.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_GerDup.FormCreate(Sender: TObject);
begin
TabSheet1.TabVisible:=false;
tsAtuPed.TabVisible:=false;
flparldr(0,'CADDAR0');
if (DM1.Par_LDR.Eof) or (DM1.Par_LDRCODCC.IsNull) or (DM1.Par_LDRCODDEP.IsNull)
   or (Trim(DM1.Par_LDRCODCC.Value)='') or (Trim(DM1.Par_LDRCODDEP.Value)='') then
   begin
   MessageDlg('Esta Faltando o Parametro de devolução (CADDARD), '+#13
             +'Entre em parametros Sobre Caixa e Cadastre-o!',mtWarning,[mbok],0);
   exit;
   end
else
   begin
   pldr_descmov:=DM1.Par_LDRNOME.Value;
   pldr_codccu:=DM1.Par_LDRCODCC.Value;
   pldr_nombco:=DM1.Tb_bcoBCBANCO.Value;
   pldr_coddep:=DM1.Par_LDRCODDEP.Value;
   if flcaddep_ldr(1,0,DM1.Par_LDRCODDEP.Value) then
      pldr_nomdep:=DM1.Tb_Dep_LdrDNOME.Value;
   if flcadccu(1,0,DM1.Par_LDRCODCC.Value) then
      begin
      pldr_nomccu:=DM1.Tb_CCUCCNOME.Value;
      pldr_natdc :=DM1.Tb_CCUCCNAT.Value;
      end;
   end;


edt_lotseq.Text:=InttoStr(ls_numped);
mAceitaPergunta:=true;

end;

procedure TFrm_GerDup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_GerDup.bbnv_sairClick(Sender: TObject);
begin
close;
end;

function TFrm_GerDup.fGerarTitulos(pTipo: Integer): Boolean;
var
form_agde: TFrm_Agde;
x: Integer;
Query_Ped: tQuery;
Query_exe: tQuery;
begin
Query_Ped:=tQuery.Create(nil);
Query_Ped.DatabaseName:='SG_ASSOC';
Query_Ped.Close;
Query_Ped.SQL.Clear;
Query_Ped.SQL.Add('Select P1CHAVE,P1CODEMP,P1LOTSEQ,P1ORDEM,P1DATAP,P1TOTALL,P1CODCLI,CRAZAO FROM CADP01,CADCLI '
                 +' where CCODCLI=P1CODCLI '
                 +' and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) and P1EMIDOC=1 '
                 +' and ((P1NUMCF<>0) or ( P1NUMNF<>0) or ( P1NFCE_NUMERO<>0))  '
                 );
Query_Ped.ParamByName('CODEMP').AsInteger:=codemp;
if codemp>99 then
   Query_Ped.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
else
   Query_Ped.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;

if fsonumero(edtnv_chave.Text)<>0 then
   begin
   Query_Ped.SQL.Add(' and P1CHAVE=:CHAVE '
                   +' and P1LOTSEQ=:LOTSEQ ');
   Query_Ped.ParambyName('CHAVE').asfloat:=fsonumero(edtnv_chave.Text);
   Query_Ped.ParambyName('LOTSEQ').asfloat:=fsonumero(edtnv_lotseq.Text);
   end;
if fsonumero(edt_datini.Text)<>0 then
   begin
   Query_Ped.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(edt_datini.Text)));
   end;
if fsonumero(edt_datfin.Text)<>0 then
   begin
   Query_Ped.SQL.Add(fFormatdatetimeParaConsulta('P1DATAP',true,StrToDate(edt_datfin.Text)));
   end;
try
   Query_Ped.open;
except
   ex_erroSql_Novo(Query_Ped,539,'gerdup','CADP01');
   end;
if Query_Ped.IsEmpty then
   begin
   exit;
   end;


edtnv_datped.Text  :=FormatDateTime(fdt2, Query_Ped.fieldbyName('P1DATAP').AsDateTime);
edtnv_valor.Text  :=FormatFloat(mcasas, Query_Ped.fieldbyName('P1TOTALL').AsFloat);
edtnv_cliente.Text:=Query_Ped.fieldbyName('CRAZAO').AsString;


Application.CreateForm(TFrm_Agde,form_agde);
form_agde.gb_progres.Visible:=true;
form_agde.Label1.Caption:='Gerando Títulos Novos, aguarde...';
form_agde.gb_progres.Visible:=true;
x:=0;
Query_Exe:=tQuery.Create(nil);
Query_Exe.DatabaseName:='SG_ASSOC';
Query_Exe.Close;
Query_Exe.SQL.Clear;
Query_Exe.SQL.Add('Update CADP01 set P1EMIDOC=:EMIDOC where P1CODEMP=:CODEMP and P1CHAVE=:CHAVE and P1ORDEM=:ORDEM and P1LOTSEQ=:LOTSEQ ');

While not Query_Ped.Eof do
   begin
   x:=x+1;
   form_agde.Gauge1.Progress:=(x+1)*100 div (mpqtd+1);
   verteclado(0);
   Query_exe.Close;
   Query_exe.ParamByName('EMIDOC').AsInteger:=2;
   Query_exe.ParamByName('CODEMP').AsInteger:=Query_Ped.fieldbyName('P1CODEMP').AsInteger;
   Query_exe.ParamByName('CHAVE').AsFloat   :=Query_Ped.fieldbyName('P1CHAVE').AsFloat;
   Query_exe.ParamByName('ORDEM').AsInteger :=Query_Ped.fieldbyName('P1ORDEM').AsInteger;
   Query_exe.ParamByName('LOTSEQ').AsInteger :=Query_Ped.fieldbyName('P1LOTSEQ').AsInteger;
   Query_exe.ExecSQL;
   fdm1StartCommit;

   Query_exe.Close;
   Query_exe.ParamByName('EMIDOC').AsInteger:=1;
   Query_exe.ParamByName('CODEMP').AsInteger:=Query_Ped.fieldbyName('P1CODEMP').AsInteger;
   Query_exe.ParamByName('CHAVE').AsFloat   :=Query_Ped.fieldbyName('P1CHAVE').AsFloat;
   Query_exe.ParamByName('ORDEM').AsInteger :=Query_Ped.fieldbyName('P1ORDEM').AsInteger;
   Query_exe.ParamByName('LOTSEQ').AsInteger :=Query_Ped.fieldbyName('P1LOTSEQ').AsInteger;
   try
      Query_exe.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql_Novo(query_exe,547,'gerdup','CADP01');
      break;
      end;
   Query_Ped.Next;
   end;
FreeAndNil(Query_Ped);
FreeAndNil(Query_exe);
form_agde.Label1.Caption:='Concluido!';
result:=true;

end;


procedure TFrm_GerDup.bbnv_ajustarClick(Sender: TObject);
var
Query_Ped: TQuery;
//mPedidos: TStrings;
begin

if (fsonumero(edt_datfin.Text)<>0) and (fsonumero(edt_datini.Text)<>0) then
   begin
   if edt_datini.Date>edt_datfin.Date then
      begin
      MessageDlg('Data Inicial Maior que Final, Inválido!!!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      exit;
      end;
   end;

if (fsonumero(edtnv_chave.Text)=0) and (fsonumero(edt_datfin.Text)=0) and (fsonumero(edt_datini.Text)=0) then
   begin
   MessageDlg('Favor Selecionar um Período ou uma chave de Pedido!!!',mtWarning,[mbOk],0);
   edt_datini.SetFocus;
   exit;
   end;
if DM1.Tb_EmpCGC.asfloat=1596015000127 then
   begin
   if fsonumero(edt_datini.Text)=0 then
      edt_datini.Date:=date;
   if edt_datini.Date<date then
      edt_datini.Date:=date;
   if edt_datini.Date>edt_datfin.Date then
      edt_datfin.Date:=edt_datini.Date;


   end;
Query_Ped:=TQuery.Create(nil);
Query_Ped.DatabaseName:='SG_ASSOC';
Query_Ped.Close;
Query_Ped.SQL.Clear;
if not CB_VERINEXISTENTES.Checked then
   begin
   Query_Ped.SQL.Add('Select P1CHAVE,P1CODEMP,P1LOTSEQ,P1ORDEM,P1DATAP,P1TOTALL,P1CODCLI,CRAZAO FROM CADP01,CADCLI '
                 +' where CCODCLI=P1CODCLI '
                 +' and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL)  AND P1EMIDOC=1 '
                 +' and ((P1NUMCF<>0) or ( P1NUMNF<>0) or ( P1NFCE_NUMERO<>0))  '
                 );
   end
else
   begin
   Query_Ped.SQL.Add('Select P1CHAVE,P1CODEMP,P1LOTSEQ,P1ORDEM,P1DATAP,P1TOTALL,P1CODCLI,CRAZAO,NVL( SUM(CRVALOR), 0)  AS TOTDUP '
                    +' FROM CADP01,CADCLI,CADDAR '
                    +' where CCODCLI=P1CODCLI  and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                    +'  AND P1EMIDOC=1  '
                    +' and ((P1NUMCF<>0) or ( P1NUMNF<>0) or ( P1NFCE_NUMERO<>0))  '
                    +' AND CRNPED(+)=P1CHAVE AND CRORDEM(+)=P1ORDEM AND CRCODEMP(+)=P1CODEMP AND CRLOTSEQ_CP(+)=P1lotseq ')

   end;
Query_Ped.ParamByName('CODEMP').AsInteger:=codemp;
if codemp>99 then
   Query_Ped.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100
else
   Query_Ped.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100;

if fsonumero(edtnv_chave.Text)<>0 then
   begin
   Query_Ped.SQL.Add(' and P1CHAVE=:CHAVE '
                   +' and P1LOTSEQ=:LOTSEQ ');
   Query_Ped.ParambyName('CHAVE').asfloat:=fsonumero(edtnv_chave.Text);
   Query_Ped.ParambyName('LOTSEQ').asfloat:=fsonumero(edtnv_lotseq.Text);
   end;
if fsonumero(edt_datini.Text)<>0 then
   begin
   Query_Ped.SQL.Add(' and P1DATAP>=:DATINI ');
   Query_Ped.ParambyName('DATINI').AsDateTime:=edt_datini.Date;
   end;
if fsonumero(edt_datfin.Text)<>0 then
   begin
   Query_Ped.SQL.Add(' and P1DATAP<=:DATFIN ');
   Query_Ped.ParambyName('DATFIN').AsDateTime:=edt_datfin.Date;
   end;
if CB_VERINEXISTENTES.Checked=true then
  begin
  Query_Ped.SQL.Add('  GROUP BY P1CHAVE,P1CODEMP,P1LOTSEQ,P1ORDEM,P1DATAP,P1TOTALL,P1CODCLI,CRAZAO '
                   +' HAVING ROUND( NVL( SUM(CRVALOR), 0) ,2) <>ROUND(P1TOTALL,2) ORDER BY P1CHAVE ');
  end;                 


//Query_Ped.SQL.SaveToFile('c:\sqlped01.txt');

try
   Query_Ped.open;
except
  ex_erroSql_Novo(Query_Ped,689,'gerdup','CADP01');
  end;
if Query_Ped.IsEmpty then
   begin
   MessageDlg('Não foram encontrado registros nas condiçoes solicitadas! ',mtError,[mbOk],0);
   FreeAndNil(Query_Ped);
   edtnv_chave.SetFocus;
   exit;
   end;
edtnv_datped.Text  :=FormatDateTime(fdt2, Query_Ped.fieldbyName('P1DATAP').AsDateTime);
edtnv_valor.Text  :=FormatFloat(mcasas, Query_Ped.fieldbyName('P1TOTALL').AsFloat);
edtnv_cliente.Text:=Query_Ped.fieldbyName('CRAZAO').AsString;


FreeAndNil(Query_Ped);
if fGerarTitulos(0) then
   MessageDlg('Concluido!',mtInformation,[mbOk],0)
else
   MessageDlg('ERRO ao Gerar Títulos!',mtInformation,[mbOk],0);
//FreeAndNil(mPedidos);
end;




procedure TFrm_GerDup.edtnv_chaveExit(Sender: TObject);
var
Query_Ped: TQuery;
mPedidos: TStrings;
mChave: Real;
mOrdem: Integer;
mCodEmp: Integer;
mLotSeq: Integer;

begin
if fsonumero(edtnv_chave.Text)=0 then
   exit;
Query_Ped:=TQuery.Create(nil);
Query_Ped.DatabaseName:='SG_ASSOC';
Query_Ped.Close;
Query_Ped.SQL.Clear;
Query_Ped.SQL.Add('Select P1CHAVE,P1CODEMP,P1LOTSEQ,P1ORDEM,P1DATAP,P1TOTALL,P1CODCLI,CRAZAO FROM CADP01,CADCLI '
                 +' where CCODCLI=P1CODCLI '
                 +' and (P1CODEMP=:CODEMP or P1CODEMP=:CODEMP_FILIAL) '
                 +' and P1CHAVE=:CHAVE '
                 +' and P1LOTSEQ=:LOTSEQ ');
Query_Ped.ParamByName('CODEMP').AsInteger:=codemp;
if codemp>99 then
   Query_Ped.ParamByName('CODEMP_FILIAL').AsInteger:=codemp+100
else
   Query_Ped.ParamByName('CODEMP_FILIAL').AsInteger:=codemp-100;
Query_Ped.ParamByName('CHAVE').AsFloat             :=fsonumero(edtnv_chave.Text);
Query_Ped.ParamByName('LOTSEQ').AsFloat            :=fsonumero(edtnv_lotseq.Text);
try
   Query_Ped.open;
except
  ex_erroSql_Novo(Query_Ped,744,'gerdup','CADP01');

   end;

edtnv_datped.Text  :=FormatDateTime(fdt2, Query_Ped.fieldbyName('P1DATAP').AsDateTime);
edtnv_valor.Text  :=FormatFloat(mcasas, Query_Ped.fieldbyName('P1TOTALL').AsFloat);
edtnv_cliente.Text:=Query_Ped.fieldbyName('CRAZAO').AsString;
FreeAndNil(Query_Ped);

end;

procedure TFrm_GerDup.edtnv_chaveEnter(Sender: TObject);
begin
edtnv_chave.Text   :='';
edtnv_datped.Text  :='/  /';
edtnv_valor.Text   :='';
edtnv_cliente.Text :='';

end;

procedure TFrm_GerDup.sbnbuscarClick(Sender: TObject);
begin
if opd1.Execute then
   edtnv_arqcsv.Text:=opd1.FileName;
end;

function TFrm_GerDup.fValidarCSV(pArq_String: tstrings): Boolean;
var
mResEvento: String;
x, mqtdlin: Integer;
mQtdCampos: Integer;
mChave: Real;
mOrdem: Integer;
mCodEmp: Integer;
mLotSeq: Integer;

begin
result:=true;
mResEvento:='';
mqtdlin:=pArq_String.Count-1;
for x:=0 to mqtdlin do
   begin
   mQtdCampos:=fQtd_PV(pArq_String[x]);
   if mQtdCampos<>3 then
       mResEvento:=mResEvento+'Linha '+IntTostr(x)+' possui '+IntToStr(mQtdCampos+1)+' '+iif(mQtdCampos>0,' campos ',' campo ')+', é esperado 4!!!'
   else
      begin
      mCodEmp:=valint( fBuscarValor_Del_PV(0,pArq_String[x]));
      mLotSeq:=valint(fBuscarValor_Del_PV(1,pArq_String[x]));
      mChave:=valfloat(fBuscarValor_Del_PV(2,pArq_String[x]));
      mOrdem:=valint(fBuscarValor_Del_PV(3,pArq_String[x]));
      if mChave=0 then
         mResEvento:=mResEvento+'Linha '+IntTostr(x)+' o campo mchave é invalido!!!, valor do campo: '+ fBuscarValor_Del_PV(2,pArq_String[x])+', é invalido!!!'
      else if mcodemp=0 then
         mResEvento:=mResEvento+'Linha '+IntTostr(x)+' o campo  codemp é invalido!!!, valor do campo: '+ fBuscarValor_Del_PV(0,pArq_String[x])+', é invalido!!!'
      else if mordem=0 then
         mResEvento:=mResEvento+'Linha '+IntTostr(x)+' o campo  ordem é invalido!!!, valor do campo: '+ fBuscarValor_Del_PV(3,pArq_String[x])+', é invalido!!!';
      end;
   end;

end;

procedure TFrm_GerDup.edt_datiniExit(Sender: TObject);
begin
if fsonumero(edt_datini.Text)<>0 then
   begin
   try
      edt_datini.Text:=FormatDateTime(fdt2, StrToDateTime(edt_datini.Text));
      if fsonumero(edt_datfin.Text)=0 then
         edt_datfin.Text:=edt_datini.Text;
   except
      MessageDlg('Data Inválida!!!',mtWarning,[mbOk],0);
      edt_datini.SetFocus;
      end;
   end;

end;

procedure TFrm_GerDup.edt_datfinExit(Sender: TObject);
begin
if fsonumero(edt_datfin.Text)<>0 then
   begin
   try
      edt_datfin.Text:=FormatDateTime(fdt2, StrToDateTime(edt_datfin.Text));
   except
      MessageDlg('Data Inválida!!!',mtWarning,[mbOk],0);
      edt_datfin.SetFocus;
      end;
   end;

end;

procedure TFrm_GerDup.FormActivate(Sender: TObject);
begin
PageControl1.ActivePage:=Tsnovo;
end;

procedure TFrm_GerDup.atped_sairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_GerDup.atped_chaveEnter(Sender: TObject);
begin
atped_dtped.clear;
atped_valor.Clear;
atped_nomcli.Clear;
atped_tipo.Clear;
atped_status.Clear;
//atped_serieecf.Clear;
atped_datacf.Date:=date;
atped_numcup.Clear;


end;

procedure TFrm_GerDup.atped_chaveExit(Sender: TObject);
var
  query_cons: tQuery;
  moper_ne : Integer;
  mant_codfor, mant_numero, mant_cfop : Double;
  mant_serie, mant_subserie, mant_modelo : String;
  mant_dtent, mant_dtemis : TDateTime;
begin
atped_chave.Text:=fdeixanum(atped_chave.Text);
fdeixanum(atped_chave.Text);
if ValInt(atped_chave.Text)=0 then
   atped_chave.Text:=''
else
   begin
   query_cons:=tQuery.Create(nil);
   query_cons.DatabaseName:='SG_ASSOC';


   query_cons.Close;
   query_cons.SQL.Clear;
   query_cons.SQL.Add('Select P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP,P1NUMCF,P1DATACF,sum(P1TOTALL) as P1TOTALL '
                     +',max(P1STATUS) as P1STATUS '
                     +',max(P1TIPO) as P1TIPO '
                     +',max(P1ECF_SERIE) as  P1ECF_SERIE '
                     +'  from '
                     +' CADP01 where P1CODEMP=0'+IntTostr(codemp)
                     +' and P1LOTSEQ=0'
                     +' and P1CHAVE=0'+fdeixanum(atped_chave.Text)
                     +' group by P1LOTSEQ,P1CHAVE,P1CODCLI,P1DATAP,P1NUMCF,P1DATACF ');
   query_cons.Open;
   if not query_cons.Eof then
      begin
      atped_dtped.Text  :=FormatDateTime(fdt2, query_cons.fieldbyName('P1DATAP').AsDateTime);
      atped_valor.Text  :=FormatFloat(mcasas, query_cons.fieldbyName('P1TOTALL').AsFloat);
      if flqr1('CRAZAO','C','CADCLI','N','CCODCLI',query_cons.FieldbyName('P1CODCLI').AsString) then
         atped_nomcli.Text:=DM1.Query1.fields[0].AsString;
      atped_tipo.Text    :=query_cons.fieldbyName('P1TIPO').AsString;
      atped_status.Text  :=query_cons.fieldbyName('P1STATUS').AsString;
      atped_serieecf.Text:=query_cons.fieldbyName('P1ECF_SERIE').AsString;
      atped_datacf.Text  :=FormatDateTime(fdt2, query_cons.fieldbyName('P1DATACF').AsDateTime);
      atped_numcup.Text  :=query_cons.fieldbyName('P1NUMCF').AsString;
      end;
   FreeAndNil(query_cons);
   end;


end;

procedure TFrm_GerDup.atped_ajustarClick(Sender: TObject);
var
query_exe: TQuery;
begin
if fsonumero(atped_valor.Text)<>0 then
   begin
   query_exe:=tQuery.Create(nil);
   query_exe.DatabaseName:='SG_ASSOC';
   query_exe.Close;
   query_exe.SQL.Clear;
   query_exe.SQL.Add('Update CADP01 set P1TIPO=:TIPO,P1STATUS=:STATUS,P1ECF_SERIE=:SERIEECF '
                    +',P1DATACF=:DATACF,P1NUMCF=:NUMCF,P1EMIDOC=:EMIDOC ,P1CUPOM=:CUPOM'
                     +'  where P1CODEMP=0'+IntTostr(codemp)
                     +' and P1LOTSEQ=0'
                     +' and P1CHAVE=0'+fdeixanum(atped_chave.Text));
   query_exe.ParamByName('TIPO').Value:=valint(atped_tipo.Text);
   query_exe.ParamByName('STATUS').Value:=valint(atped_status.Text);
   if (valint(atped_status.Text)>0) or (fsonumero(atped_numcup.Text)>0) then
      query_exe.ParamByName('EMIDOC').Value:=1
   else
      query_exe.ParamByName('EMIDOC').Value:=0;
   if (fsonumero(atped_numcup.Text)>0) then
      query_exe.ParamByName('CUPOM').Value:=1
   else   
      query_exe.ParamByName('CUPOM').Value:=0;


   query_exe.ParamByName('SERIEECF').Value:=atped_serieecf.Text;
   query_exe.ParamByName('DATACF').Value  :=atped_datacf.Date;
   query_exe.ParamByName('NUMCF').Value   :=fsonumero(atped_numcup.Text);
   try
      query_exe.ExecSQL;
      fdm1StartCommit;
   except
      MessageDlg('Erro ao Atualizar o Pedido!',mtWarning,[mbOk],0);
      end;
   FreeAndNil(query_exe);      
   end;

end;

procedure TFrm_GerDup.bbAjuComprasClick(Sender: TObject);
var
  mDataDup : TDate;
  mQtdD : Integer;
//  Chave, ChaveIni, ChaveFim: Integer;
begin

Query1.Close;
Query1.SQL.Clear;
Query1.SQL.Add(' select * from CADPF1 ');
Query1.SQL.Add(' where PF1STATUS=1 and PF1GRAVDP=0 and PF1TIPO<>1 ');
if ValInt(EdtLotSeqCpr.Text)>0 then
  Query1.SQL.Add(' and PF1LOTSEQ>='+fdeixanum(EdtLotSeqCpr.Text));
Query1.SQL.Add(' and PF1CHAVE not in (select CACHAVEP from CADDAP where 1=1 ');
if ValInt(EdtChaveIniCpr.Text)>0 then
  Query1.SQL.Add(' and CACHAVEP>='+fdeixanum(EdtChaveIniCpr.Text));
if ValInt(EdtChaveFimCpr.Text)>0 then
  Query1.SQL.Add(' and CACHAVEP<='+fdeixanum(EdtChaveFimCpr.Text));
Query1.SQL.Add(' ) ');
if ValInt(EdtChaveIniCpr.Text)>0 then
  Query1.SQL.Add(' and PF1CHAVE>='+fdeixanum(EdtChaveIniCpr.Text));
if ValInt(EdtChaveFimCpr.Text)>0 then
  Query1.SQL.Add(' and PF1CHAVE<='+fdeixanum(EdtChaveFimCpr.Text));
if edtDtIniCpr.Date>StrToDate('01/01/1900') then
  Query1.SQL.Add(' and PF1DATANF>='+QuotedStr(edtDtIniCpr.Text));
if edtDtFimCpr.Date>StrToDate('01/01/1900') then
  Query1.SQL.Add(' and PF1DATANF<='+QuotedStr(edtDtFimCpr.Text));
try
  Query1.Open;
except
  ex_erroSql_Novo(Query1,975,'gerdup','CADPF1');
  Exit;
  end;
while not Query1.eof  do
  begin
  flcadfor(1,0,Query1.FieldByName('PF1CODFOR').AsString);
  if trim(DM1.Tb_ForFDESCMVD.AsString)='' then
    mdesc_mov:=pldr_descmov
  else
    mdesc_mov:=DM1.Tb_ForFDESCMVD.Value;
  if Trim(DM1.Tb_ForFCODCCD.AsString)='' then
    begin
    mcodccu :=pldr_codccu;
    mnomccu :=pldr_nomccu;
    mnatdc  :=pldr_natdc;
    end
  else
    begin
    mcodccu :=DM1.Tb_ForFCODCCD.Value;
    mnomccu :=DM1.Tb_ForFNOMCCD.Value;
    if (DM1.Tb_ForFNATDCD.AsString)='' then
      mnatdc:='D'
    else
      mnatdc:=DM1.Tb_ForFNATDCD.AsString;
    end;
  if trim(DM1.Tb_ForFCODDEPD.AsString)='' then
    begin
    mcoddep :=pldr_coddep;
    mnomdep :=pldr_nomdep;
    end
  else
    begin
    mcoddep:=DM1.Tb_ForFCODDEPD.Value;
    mnomdep:=DM1.Tb_ForFNOMDEPD.Value;
    end;
  Query2.Close;
  Query2.SQL.Clear;
  Query2.SQL.Add(' select * from CADPF1V where 1=1 ');
  Query2.SQL.Add(' and PF1VCODEMP='+Query1.FieldByName('PF1CODEMP').AsString);
  Query2.SQL.Add(' and PF1VCHAVE ='+Query1.FieldByName('PF1CHAVE').AsString);
  Query2.SQL.Add(' and PF1VLOTSEQ='+Query1.FieldByName('PF1LOTSEQ').AsString);
  try
    Query2.Open;
  except
    ex_erroSql_Novo(Query1,975,'gerdup','CADPF1');
    Exit;
    end;
  mDataDup:=Query1.fieldByName('PF1DATANF').AsDateTime;
  mQtdD:=0;
  while not Query2.Eof do
    begin
    if not flcaddap(6,codemp,0,Query1.fieldByName('PF1NUMDUP').AsString,chr(Integer(Query1.fieldByName('PF1DESD').AsString[1])+mQtdD),Query1.fieldByName('PF1CODFOR').AsString,FormatDateTime(fdt2,mDataDup),'0','') then
      begin
      DM1.Tb_CP.Append;
      if Query2.fieldByName('PF1VCODEMP').AsFloat>0 then
        DM1.Tb_CPCACODEMP.Value:=Query2.fieldByName('PF1VCODEMP').AsFloat
      else
        DM1.Tb_CPCACODEMP.Value:=codemp;
      DM1.Tb_CPCANUMERO.Value:=Query1.fieldByName('PF1NUMDUP').Value;
      if length(Query1.fieldByName('PF1DESD').AsString)>1 then
        DM1.Tb_CPCADESD.Value  :=Query1.fieldByName('PF1DESD').AsString[1]+chr(Integer(Query1.fieldByName('PF1DESD').Value[2])+mQtdD)
      else
        DM1.Tb_CPCADESD.Value  := chr(Integer(Query1.fieldByName('PF1DESD').AsString[1])+mQtdD);
      DM1.Tb_CPCANUMPARC.Value := mQtdD+1;
      DM1.Tb_CPCAQTDPARC.Value := Query2.RecordCount;
      DM1.Tb_CPCACODFOR.Value  :=Query1.fieldByName('PF1CODFOR').Value;
      DM1.Tb_CPCADTEMIS.Value  :=mDataDup;
      DM1.Tb_CPCAVALOR.Value   :=Query2.fieldByName('PF1VVALOR').Value;
      DM1.Tb_CPCADUP.Value     :=0;
      DM1.Tb_CPCADTVCTO.Value  :=Query2.fieldByName('PF1VDATAV').Value;
      DM1.Tb_CPCADTDESC.Value  :=iif(Query2.fieldByName('PF1VDTDESCF').IsNull,0,Query2.fieldByName('PF1VDTDESCF').Value);
      DM1.Tb_CPCADESC.Value    :=0;
      DM1.Tb_CPCASTATUS.Value  :=0;
      DM1.Tb_CPCAVALDES.Value  :=iif(Query2.fieldByName('PF1VDESCF').IsNull,0,Query2.fieldByName('PF1VDESCF').Value);
      DM1.Tb_CPCAJUROS.Value   :=0;
      DM1.Tb_CPCABANCO.Value   :=0;
      DM1.Tb_CPCATEMBOL.Value  :=0;
      DM1.Tb_CPCALOTE.Value    :=0;
      DM1.Tb_CPCADTALT.Value   :=now;
      DM1.Tb_CPCACODCTA.Value  :=codcai;
      DM1.Tb_CPCACODCC.Value   :=mcodccu;
      DM1.Tb_CPCACODDEP.Value  :=mcoddep;
      DM1.Tb_CPCADESCMV.Value  :=mdesc_mov;
      DM1.Tb_CPCANOMCTA.Value  :=pldr_nombco;
      DM1.Tb_CPCANOMCC.Value   :=mnomccu;
      DM1.Tb_CPCANOMDEP.Value  :=mnomdep;
      DM1.Tb_CPCANATDC.Value   :=mnatdc;
      if DM4.Tb_Par01PCXAUTO.Value=0 then
        begin
        if flcadldr(0,0,DM1.Tb_CPCALOTSEQ_FC.AsInteger,'0'+Trim(DM1.Tb_CPCACODLDR.AsString)) then
          begin
          DM1.Tb_LDR.Edit
          end
        else
          begin
          DM1.Tb_LDR.Append;
          DM1.Tb_LDRCODEMP.Value :=codemp;
          end;
        DM1.Tb_LDRDATADP.Value :=DM1.Tb_CPCADTVCTO.Value;
        DM1.Tb_LDRDATAREF.Value:=DM1.Tb_CPCADTEMIS.Value;
        DM1.Tb_LDRVALORP.Value :=DM1.Tb_CPCAVALOR.Value;
        DM1.Tb_LDRNUMDOC.Value:='PC-'+FormatFloat('0000000',DM1.Tb_CPCANUMERO.Value)+'-'+DM1.Tb_CPCADESD.Value;
        DM1.Tb_LDRSTATUS.Value:=0;
        DM1.Tb_LDRORIGEM.Value:=03;
        DM1.Tb_LDRTIPO.Value  :='FR';
        DM1.Tb_LDRCODIGO.Value:=DM1.Tb_CPCACODFOR.Value;
        DM1.Tb_LDRNOME.Value  :=DM1.Tb_ForFRAZAO.AsString;
        DM1.Tb_LDRLOCDEP.Value:=1;
        DM1.Tb_LDRDESCMV.Value:=mdesc_mov;
        DM1.Tb_LDRCODCC.Value :=mcodccu;
        DM1.Tb_LDRCODDEP.Value:=mcoddep;
        DM1.Tb_LDRNOMBCO.Value:=pldr_nombco;
        DM1.Tb_LDRNOMDEP.Value:=mnomdep;
        DM1.Tb_LDRNOMCCU.Value:=mnomccu;
        DM1.Tb_LDRNATDC.Value :=mnatdc;
        DM1.Tb_LDRCODBCO.Value:=codcai;
        if Trim(DM1.Tb_LDRNUMDOC.AsString)<>'' then
          DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value)+' No.'+DM1.Tb_LDRNUMDOC.Value
        else
          DM1.Tb_LDRDESCMV.Value:=trim(DM1.Tb_LDRDESCMV.Value);
        DM1.Tb_LDRDESCMV.Value:=Trim(DM1.Tb_LDRDESCMV.Value)+' '+DM1.Tb_LDRNOME.Value;
        if length(DM1.Tb_LDRDESCMV.Value)>50 then
          DM1.Tb_LDRDESCMV.Value:=copy(DM1.Tb_LDRDESCMV.Value,1,50);
        DM1.Tb_LDRDESCMV.Value  :=DM1.Tb_LDRDESCMV.Value;
        DM1.Tb_LDRLOTMOV.Value:=lotmov;
        DM1.Tb_LDR.Post;
        DM1.Tb_CPCACODLDR.Value   :=DM1.Tb_LDRCODLDR.Value;
        DM1.Tb_CPCALOTSEQ_FC.Value:=DM1.Tb_LDRLOTSEQ.Value;
        end
      else
        begin
        DM1.Tb_CPCACODLDR.Value:=0;
        DM1.Tb_CPCALOTSEQ_FC.Value:=0;
        end;
      DM1.Tb_CPCADTINC.Value :=now;
      DM1.Tb_CPCACHAVEP.Value:=Query1.FieldByName('PF1CHAVE').AsFloat;
      DM1.Tb_CPCALOTSEQ_CP.Value:=Query1.FieldByName('PF1LOTSEQ').AsFloat;
      DM1.Tb_CP.Post;
      mQtdD := mQtdD + 1;
      end;
    Query2.Next;      
    end;
  Query1.Next;
  end;
ShowMessage('Concluido!');
end;

end.

unit S_AjuEst_Ext;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,db,dbtables,func, StdCtrls, Buttons,lerarq,S_Agde,func2, S_SelEmp,
  ExtCtrls, Mask;

type
  TFrm_AjuEst_Ext = class(TForm)
    BitBtn1: TBitBtn;
    bbSair: TBitBtn;
    RG_ESTOQUE: TRadioGroup;
    cb_invant: TCheckBox;
    lbl_estant: TLabel;
    MDT1: TMaskEdit;
    Label1: TLabel;
    CODPRO: TEdit;
    Label2: TLabel;
    CODGRU: TEdit;
    lbl_dataini: TLabel;
    MDATAINI: TMaskEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbSairClick(Sender: TObject);
    procedure cb_invantClick(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure CODPROExit(Sender: TObject);
    procedure CODGRUExit(Sender: TObject);
    procedure MDATAINIExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Form_SelEmp: TFrm_SelEmp;
  end;

var
  Frm_AjuEst_Ext: TFrm_AjuEst_Ext;

implementation

uses S_DM1, S_DM2, func_excecoes;

{$R *.dfm}

procedure TFrm_AjuEst_Ext.BitBtn1Click(Sender: TObject);
var
msaldo: Real;
mestoque,mestoque_ant,mdif: Real;
mcodaju: Real;
mDataMov,mdataInv: TDatetime;
mqtdlote: Real;

begin

if cb_invant.Checked then
   begin
   if trim(MDT1.Text)='/  /' then
      begin
      FMensagem('Data do inventário anterior tem que ser digitada!',0,['0'],0);
      exit;
      end;
   mdataInv:=StrtoDate(MDT1.Text);
   if trim(MDATAINI.Text)<>'/  /' then
      mDataMov:=StrtoDate(MDATAINI.Text)
   else
      mDataMov:=pdatanula;

   end
else
   begin
   mdataInv:=pdatanula;
   mDataMov:=pdatanula;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Label1.Caption:='Ajustando o Estoque do Produto de Acordo com o Extrato';
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.label2.Visible:=True;
Frm_Agde.Show;
DM1.Query4.Close;
DM1.qUERY4.SQL.Clear;

if ValInt(copy(mpseg,4,2))=2 then
   begin
   DM1.Query4.Sql.Add('Select CLCODPRO AS CODIGO, CLNUMERO AS GRADE '
                     +' from CADLGC ');

   mcinst:=' where ';
   if not DM1.Qr_Tid.Locate('TINOME','CADEST',[]) then
      begin
      DM1.Query4.Sql.Add(' where CLCODEMP=0'+inttoStr(codemp));
      mcinst:=' and ';
      end;

   if trim(CODPRO.Text)<>'' then
      DM1.Query4.SQL.add(mcinst+' CLCODPRO=0'+Trim(CODPRO.Text));


   end
else
   begin
   DM1.Query4.Sql.Add('Select PDCODPRO AS CODIGO '
                     +' from CADPRO ');
   mcinst:=' where ';
   if not DM1.Qr_Tid.Locate('TINOME','CADPRO',[]) then
      begin
      DM1.Query4.Sql.Add(' where PDCODEMP=0'+inttoStr(codemp));
      mcinst:=' and ';
      end;

   if trim(CODPRO.Text)<>'' then
      DM1.Query4.SQL.add(mcinst+' PDCODPRO=0'+Trim(CODPRO.Text));
   if trim(CODGRU.Text)<>'' then
      DM1.Query4.SQL.add(mcinst+' PDCODGRU=0'+Trim(CODGRU.Text));
   end;
DM1.Query4.Open;

mpqtd:=DM1.Query4.RecordCount;
mplid:=0;


While not DM1.Query4.Eof do
   begin
   Frm_Agde.Label2.Caption:='Lendo Produto: '+DM1.Query4.FieldByName('CODIGO').AsString;
   if ValInt(copy(mpseg,4,2))=2 then
      Frm_Agde.Label2.Caption:=Frm_Agde.Label2.Caption+'/'+DM1.Query4.FieldByName('GRADE').AsString;
   mplid:=mplid+1;
   Frm_Agde.Gauge1.Progress:=mplid*100 div mpqtd;
   verteclado(0);


   if ValInt(copy(mpseg,4,2))=2 then
      begin
      msaldo:=fSaldoProduto(RG_ESTOQUE.ItemIndex,
                         DM1.Query4.FieldByName('CODIGO').Asfloat,
                         DM1.Query4.FieldByName('GRADE').AsString,
                         mDataMov,
                         pdatanula,
                         mdataInv,Form_SelEmp.CLB_EMPRESAS);
      end
   else
      begin
      msaldo:=fSaldoProduto(RG_ESTOQUE.ItemIndex,
                         DM1.Query4.FieldByName('CODIGO').Asfloat,
                         '',
                         mDataMov,
                         pdatanula,
                         mdataInv,Form_SelEmp.CLB_EMPRESAS);
      end;

   if ValInt(copy(mpseg,4,2))=2 then
      begin
      if not flcadlgc(0,1,0,DM1.Query4.FieldbyName('CODIGO').AsString,DM1.Query4.FieldByName('GRADE').AsString,'') then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      if RG_ESTOQUE.ItemIndex=3 then
         mestoque:=DM1.Tb_LGCCLQTDT.Value
      else if RG_ESTOQUE.ItemIndex=2 then
         mestoque:=DM1.Tb_LGCCLQTDR.Value
      else if RG_ESTOQUE.ItemIndex=1 then
         mestoque:=DM1.Tb_LGCCLQTDC.Value
      else
         mestoque:=DM1.Tb_LGCCLQTD.Value;
      end
   else
      begin
      if not flcadest(0,0,0,DM1.Query4.FieldByName('CODIGO').AsString) then
         begin
         DM1.Query4.Next;
         Continue;
         end;
      if RG_ESTOQUE.ItemIndex=3 then
         mestoque:=DM1.Tb_EstCESALDOT.Value
      else if RG_ESTOQUE.ItemIndex=2 then
         mestoque:=DM1.Tb_EstCESALDOR.Value
      else if RG_ESTOQUE.ItemIndex=1 then
         mestoque:=DM1.Tb_EstCESALDOC.Value
      else
         mestoque:=DM1.Tb_EstCESALDO.Value;
      end;
   mdif:=msaldo-mestoque;
   if mdif=0 then
      begin
      DM1.Query4.Next;
      Continue;
      end;
   if mdif>0 then
      begin
      if RG_ESTOQUE.ItemIndex=3 then
         begin
         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,30,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query4.fieldbyName('GRADE').AsString,'S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else if ValInt(copy(mpseg,4,2))>0 then
            begin
            flbailgc(0,0,30,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,' ','S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end;
         flbaiest(0,0,30,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_359_',mdif);
         end
      else if RG_ESTOQUE.ItemIndex=2 then
         begin
         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,22,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query4.fieldbyName('GRADE').AsString,'S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else if ValInt(copy(mpseg,4,2))>0 then
            begin
            flbailgc(0,0,22,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,' ','S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end;
         flbaiest(0,0,22,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_365_',mdif);
         end
      else if RG_ESTOQUE.ItemIndex=1 then
         begin
         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,12,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query4.fieldbyName('GRADE').AsString,'S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else if ValInt(copy(mpseg,4,2))>0 then
            begin
            flbailgc(0,0,12,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,' ','S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end;
         flbaiest(0,0,12,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_371_',mdif);
         end
      else
         begin
         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,0,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,' ','S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else if ValInt(copy(mpseg,4,2))>0 then
            begin
            flbailgc(0,0,0,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,' ','S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end;
         flbaiest(0,0,0,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_377_',mdif);
         end
      end
   else
      begin
      mdif:=mdif*-1;
      if RG_ESTOQUE.ItemIndex=3 then
         begin

         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,31,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query4.fieldbyName('GRADE').AsString,'S_AjuEst_Ext',0,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else
            begin
            flcadlgc(0,1,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','');
            While not DM1.Tb_LGC.Eof do
               begin
               if DM1.Tb_LGCCLQTDR.Value<=0 then
                  begin
                  DM1.Tb_LGC.Next;
                  Continue;
                  end;
               mqtdlote:=DM1.Tb_LGCCLQTDR.Value;
               if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.Value<=pdatanula) then
                  mcinst:=''
               else
                  mcinst:=FormatDatetime(fdt, DM1.Tb_LGCCLDTVCTO.Value);

               if mqtdlote<mdif then
                  begin
                  flbailgc(0,0,31,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mqtdlote);
                  flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mqtdlote,' Ajustado em.: '+DateToStr(Now));
                  mdif:=mdif-mqtdlote;
                  end
               else
                  begin
                  flbailgc(0,0,31,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mdif);
                  flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
                  mdif:=0;
                  end;
//              flcadpro(0,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
//              CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
              DM1.Tb_LGC.Next;
              end;
            if mdif<>0 then
               begin
               flbailgc(0,0,31,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
               flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
               CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,' ','S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
               end;
            end;
         flbaiest(0,0,31,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_388_',mdif);
         end
      else  if RG_ESTOQUE.ItemIndex=2 then
         begin
         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,23,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query4.fieldbyName('GRADE').AsString,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else
            begin
            flcadlgc(0,1,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','');
            While not DM1.Tb_LGC.Eof do
               begin
               if DM1.Tb_LGCCLQTDR.Value<=0 then
                  begin
                  DM1.Tb_LGC.Next;
                  Continue;
                  end;
               mqtdlote:=DM1.Tb_LGCCLQTDR.Value;
               if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.Value<=pdatanula) then
                  mcinst:=''
               else
                  mcinst:=FormatDatetime(fdt, DM1.Tb_LGCCLDTVCTO.Value);

               if mqtdlote<mdif then
                  begin
                  flbailgc(0,0,23,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mqtdlote);
                  flcadpro(1,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mqtdlote,' Ajustado em.: '+DateToStr(Now));
                  mdif:=mdif-mqtdlote;
                  end
               else
                  begin
                  flbailgc(0,0,23,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mdif);
                  flcadpro(1,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
                  mdif:=0;
                  end;
//               flcadpro(0,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
//               CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
               DM1.Tb_LGC.Next;
               end;
            if mdif<>0 then
               begin
               flbailgc(0,0,23,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
               flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
               CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,'','S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
               end;
            end;
         flbaiest(0,0,23,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_427_',mdif);
         end
      else if RG_ESTOQUE.ItemIndex=1 then
         begin

         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,13,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query4.fieldbyName('GRADE').AsString,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else
            begin
            flcadlgc(0,1,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','');
            While not DM1.Tb_LGC.Eof do
               begin
               if DM1.Tb_LGCCLQTDC.Value<=0 then
                  begin
                  DM1.Tb_LGC.Next;
                  Continue;
                  end;
               mqtdlote:=DM1.Tb_LGCCLQTDC.Value;
               if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.Value<=pdatanula) then
                  mcinst:=''
               else
                  mcinst:=FormatDatetime(fdt, DM1.Tb_LGCCLDTVCTO.Value);
               if mqtdlote<mdif then
                  begin
                  flbailgc(0,0,13,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mqtdlote);
                  flcadpro(1,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mqtdlote,' Ajustado em.: '+DateToStr(Now));
                  mdif:=mdif-mqtdlote;
                  end
               else
                  begin
                  flbailgc(0,0,13,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mdif);
                  flcadpro(1,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mqtdlote,' Ajustado em.: '+DateToStr(Now));
                  mdif:=0;
                  end;
               DM1.Tb_LGC.Next;
               end;
            if mdif<>0 then
               begin
               flbailgc(0,0,13,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
               flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
               CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,'','S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
               end;
            end;
         flbaiest(0,0,13,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_466_',mdif);
         end
      else
         begin

         if ValInt(copy(mpseg,4,2))=2 then
            begin
            flbailgc(0,0,1,0,DM1.Query4.fieldbyName('CODIGO').AsString,DM1.Query4.fieldbyName('GRADE').AsString,'','','',mdif);
            flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
            CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Query4.fieldbyName('GRADE').AsString,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
            end
         else
            begin
            flcadlgc(0,1,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','');
            While not DM1.Tb_LGC.Eof do
               begin
               if DM1.Tb_LGCCLQTD.Value<=0 then
                  begin
                  DM1.Tb_LGC.Next;
                  Continue;
                  end;
               mqtdlote:=DM1.Tb_LGCCLQTD.Value;
               if (DM1.Tb_LGCCLDTVCTO.IsNull) or (DM1.Tb_LGCCLDTVCTO.Value<=pdatanula) then
                  mcinst:=''
               else
                  mcinst:=FormatDatetime(fdt, DM1.Tb_LGCCLDTVCTO.Value);

               if mqtdlote<mdif then
                  begin
                  flbailgc(0,0,1,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mqtdlote);
                  flcadpro(1,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mqtdlote,' Ajustado em.: '+DateToStr(Now));
                  mdif:=mdif-mqtdlote;
                  end
               else
                  begin
                  flbailgc(0,0,1,0,DM1.Tb_LGCCLCODPRO.AsString,DM1.Tb_LGCCLNUMERO.Value,mcinst,'','',mdif);
                  flcadpro(1,0,codemp,DM1.Tb_LGCCLCODPRO.AsString);
                  CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,DM1.Tb_LGCCLNUMERO.Value,'S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
                  mdif:=0;
                  end;
               DM1.Tb_LGC.Next;
               end;
            if mdif<>0 then
               begin
               flbailgc(0,0,1,0,DM1.Query4.fieldbyName('CODIGO').AsString,'','','','',mdif);
               flcadpro(1,0,codemp,DM1.Query4.fieldbyName('CODIGO').AsString);
               CMovPro(0,DM1.Tb_ProPDCODPRO.AsInteger,'','S_AjuEst_Ext',1,DM1.Tb_ProPDSALDO.AsFloat,mdif,' Ajustado em.: '+DateToStr(Now));
               end;
            end;
         flbaiest(0,0,1,0,DM1.Query4.fieldbyName('CODIGO').AsString,'frm_ajuest_ext_505_',mdif);
         end;
      end;

   DM1.Query4.Next;
   end;
Frm_Agde.Label1.Caption:='Concluido!';
verteclado(0);
end;

procedure TFrm_AjuEst_Ext.FormCreate(Sender: TObject);
begin
Application.CreateForm(TFrm_SelEmp, Form_SelEmp);

DM1.Tb_Aju.Close;
DM1.Tb_Aju.Sql.Clear;
DM1.Tb_Aju.Sql.add('Select * from CADAJU where '
                 +iif(DM1.Qr_Tid.Locate('TINOME','CADAJU',[]),'',' AJCODEMP=0'+IntToStr(codemp)+' and ')
                 +' AJSEQ=999999');
DM1.Tb_Aju.Open;

end;

procedure TFrm_AjuEst_Ext.bbSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_AjuEst_Ext.cb_invantClick(Sender: TObject);
begin
if cb_invant.Checked then
   begin
   MDT1.Visible       :=true;
   lbl_estant.Visible :=true;
   lbl_dataini.Visible:=true;
   MDATAINI.Visible   :=true;
   end
else
   begin
   MDT1.Visible       :=false;
   lbl_estant.Visible :=false;
   lbl_dataini.Visible:=false;
   MDATAINI.Visible   :=false;
   end;

end;

procedure TFrm_AjuEst_Ext.MDT1Exit(Sender: TObject);
begin
if trim(MDT1.Text)='/  /' then
   exit;
try
   MDT1.Text:=FormatDatetime(fdt2, StrtoDate(MDT1.Text));
except
   FMensagem('Data inválida!',0,['0'],0);
   MDT1.SetFocus;
   exit;
   end;
if ValInt(copy(mpseg,4,2))=2 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEGD where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy',StrtoDate(MDT1.text))
                     +' and CED_MES=0'+FormatDateTime('mm',StrtoDate(MDT1.text)));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      FMensagem('Não ha inventario nesta data!',0,['0'],0);
      MDT1.SetFocus;
      end;
   end
else
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Select count(*) from '
                     +' CADEDIA where '
                     +iif(DM1.Qr_TID.Locate('TINOME','CADEST',[]),'',' CED_CODEMP=0'+IntTostr(codemp)+' and ')
                     +' CED_ANO=0'+FormatDateTime('yyyy',StrtoDate(MDT1.text))
                     +' and CED_MES=0'+FormatDateTime('mm',StrtoDate(MDT1.text)));
   DM1.Query1.Open;
   if DM1.Query1.Fields[0].AsInteger<=0 then
      begin
      FMensagem('Não ha inventario nesta data!',0,['0'],0);
      MDT1.SetFocus;
      exit;
      end;
   end;
MDATAINI.Text:=FormatDatetime(fdt2, StrToDate(MDT1.Text)+1);
end;

procedure TFrm_AjuEst_Ext.CODPROExit(Sender: TObject);
begin
CODPRO.Text:=fdeixanum2(CODPRO.Text);

end;

procedure TFrm_AjuEst_Ext.CODGRUExit(Sender: TObject);
begin
CODGRU.Text:=fdeixanum2(CODGRU.Text);

end;

procedure TFrm_AjuEst_Ext.MDATAINIExit(Sender: TObject);
begin
if trim(MDATAINI.Text)='/  /' then
   exit;
try
   MDATAINI.Text:=FormatDatetime(fdt2, StrtoDate(MDATAINI.Text));
except
   FMensagem('Data inválida!',0,['0'],0);
   MDATAINI.SetFocus;
   exit;
   end;

end;

procedure TFrm_AjuEst_Ext.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

Form_SelEmp.free;
Form_SelEmp:=nil;

if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_AjuEst_Ext.FormKeyDown(Sender: TObject; var Key: Word;
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

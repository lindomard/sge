unit S_ConProd1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, DBCtrls, Grids, DBGrids, Buttons,
  Mask, DB, DBTables;

type
  TFrm_ConProd1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    CB_Pesq: TComboBox;
    CAMPO: TMaskEdit;
    bbAtualizar: TBitBtn;
    PROTRO: TRadioGroup;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    ts_div: TTabSheet;
    DBEdit19: TDBEdit;
    StaticText18: TStaticText;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    StaticText12: TStaticText;
    StaticText11: TStaticText;
    StaticText10: TStaticText;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    StaticText9: TStaticText;
    StaticText8: TStaticText;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText7: TStaticText;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    StaticText6: TStaticText;
    StaticText5: TStaticText;
    ts_pren: TTabSheet;
    DBG_Pren: TDBGrid;
    ts_perdas: TTabSheet;
    DBG_Perdas: TDBGrid;
    ts_paradas: TTabSheet;
    DBG_Par: TDBGrid;
    GroupBox9: TGroupBox;
    bbIncCP02: TBitBtn;
    bbAltCP02: TBitBtn;
    bbGravCP02: TBitBtn;
    bbCancCP02: TBitBtn;
    dbnavCP02: TDBNavigator;
    bbExcCP02: TBitBtn;
    BitBtn8: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Qr_CP01: TQuery;
    Qr_CP01CP1CODEMP: TFloatField;
    Qr_CP01CP1LOTSEQ: TFloatField;
    Qr_CP01CP1CHAVE: TFloatField;
    Qr_CP01CP1DATA: TDateTimeField;
    Qr_CP01CP1TURNO: TStringField;
    Qr_CP01CP1REBARBAS: TStringField;
    Qr_CP01CP1DATAINC: TDateTimeField;
    Qr_CP01CP1USRINC: TFloatField;
    Qr_CP01CP1DATAALT: TDateTimeField;
    Qr_CP01CP1USRALT: TFloatField;
    Qr_CP01CP1CODENC: TFloatField;
    Qr_CP01CP1PROTRO: TFloatField;
    U_CP01: TUpdateSQL;
    Src_CP01: TDataSource;
    Qr_CP02: TQuery;
    Qr_CP02nommaq: TStringField;
    Qr_CP02percPerda: TFloatField;
    Qr_CP02perda: TFloatField;
    Qr_CP02totperdas: TFloatField;
    U_CP02: TUpdateSQL;
    Src_CP02: TDataSource;
    Qr_CP02_PREN: TQuery;
    Qr_CP02_PRENnompren: TStringField;
    Src_CP02_PREN: TDataSource;
    Qr_CP02_MPER: TQuery;
    Qr_CP02_MPERmotivo: TStringField;
    U_CP02_MPER: TUpdateSQL;
    Src_CP02_MPER: TDataSource;
    Qr_CP02_MPAR: TQuery;
    Qr_CP02_MPARmotivo: TStringField;
    U_CP02_MPAR: TUpdateSQL;
    Src_CP02_MPAR: TDataSource;
    Panel1: TPanel;
    dbGridCP02: TDBGrid;
    Qr_CP01nomenc: TStringField;
    bit_inclui_pren: TBitBtn;
    Bit_grava_pren: TBitBtn;
    Bit_cancela_pren: TBitBtn;
    Bit_exclui_pren: TBitBtn;
    Bit_inclui_mper: TBitBtn;
    Bit_grava_mper: TBitBtn;
    Bit_cancela_mper: TBitBtn;
    Bit_exclui_mper: TBitBtn;
    Bit_inclui_mpar: TBitBtn;
    Bit_grava_mpar: TBitBtn;
    Bit_cancela_mpar: TBitBtn;
    Bit_exclui_mpar: TBitBtn;
    TEMP: TQuery;
    TEMP1: TQuery;
    U_CP02_PREN: TUpdateSQL;
    DBEdit1: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Qr_CP02_PRENNOMMAQ: TStringField;
    Qr_CP02_MPERNOMMAQ: TStringField;
    Qr_CP02_MPARNOMMAQ: TStringField;
    ComboBox2: TComboBox;
    Bit_Altera_mpar: TBitBtn;
    Qr_CP02CP2CODEMP: TFloatField;
    Qr_CP02CP2LOTSEQ: TFloatField;
    Qr_CP02CP2CHAVE: TFloatField;
    Qr_CP02CP2ITEM: TFloatField;
    Qr_CP02CP2CODMAQ: TFloatField;
    Qr_CP02CP2FRASCO: TStringField;
    Qr_CP02CP2COR: TStringField;
    Qr_CP02CP2CICLO: TFloatField;
    Qr_CP02CP2CAVIDADE: TFloatField;
    Qr_CP02CP2PRODUCAO: TFloatField;
    Qr_CP02CP2PERDA: TFloatField;
    Qr_CP02CP2DTHRIPAR: TDateTimeField;
    Qr_CP02CP2DTHRTPAR: TDateTimeField;
    Qr_CP02CP2HORTRAB: TFloatField;
    Qr_CP02CP2PROTRO: TFloatField;
    Qr_CP02CP2CODFRASCO: TFloatField;
    Qr_CP02_PRENCP2PRENCODEMP: TFloatField;
    Qr_CP02_PRENCP2PRENLOTSEQ: TFloatField;
    Qr_CP02_PRENCP2PRENCHAVE: TFloatField;
    Qr_CP02_PRENCP2PRENSEQ: TFloatField;
    Qr_CP02_PRENCP2PRENCODMPREN: TFloatField;
    Qr_CP02_PRENCP2PRENCODMAQ: TFloatField;
    Qr_CP02_PRENCP2PRENNOMPREN: TStringField;
    Qr_CP02_PRENCP2PRENPROTRO: TFloatField;
    Qr_CP02_PRENCP2PRENCHAVESEQ: TFloatField;
    Qr_CP02_MPERCP2MPERCODEMP: TFloatField;
    Qr_CP02_MPERCP2MPERLOTSEQ: TFloatField;
    Qr_CP02_MPERCP2MPERSEQ: TFloatField;
    Qr_CP02_MPERCP2MPERCODMPER: TFloatField;
    Qr_CP02_MPERCP2MPERNOMPER: TStringField;
    Qr_CP02_MPERCP2MPERCHAVE: TFloatField;
    Qr_CP02_MPERCP2MPERCODMAQ: TFloatField;
    Qr_CP02_MPERCP2MPERPROTRO: TFloatField;
    Qr_CP02_MPERCP2MPERCHAVESEQ: TFloatField;
    Qr_CP02_MPARCP2MPARCODEMP: TFloatField;
    Qr_CP02_MPARCP2MPARLOTSEQ: TFloatField;
    Qr_CP02_MPARCP2MPARSEQ: TFloatField;
    Qr_CP02_MPARCP2MPARCODMPAR: TFloatField;
    Qr_CP02_MPARCP2MPARNOMPAR: TStringField;
    Qr_CP02_MPARCP2MPARDTHRTPAR: TDateTimeField;
    Qr_CP02_MPARCP2MPARCHAVE: TFloatField;
    Qr_CP02_MPARCP2MPARCODMAQ: TFloatField;
    Qr_CP02_MPARCP2MPARDTHRIPAR: TDateTimeField;
    Qr_CP02_MPARCP2MPARPROTRO: TFloatField;
    Qr_CP02_MPARCP2MPARCHAVESEQ: TFloatField;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    dataini: TMaskEdit;
    datafin: TMaskEdit;
    horaini: TMaskEdit;
    horafin: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBNavigator4: TDBNavigator;
    Panel2: TPanel;
    StaticText3: TStaticText;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    StaticText4: TStaticText;
    DBEdit6: TDBEdit;
    StaticText1: TStaticText;
    DBEdit2: TDBEdit;
    StaticText2: TStaticText;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    INCLUIR: TBitBtn;
    ALTERAR: TBitBtn;
    GRAVAR: TBitBtn;
    CANCELAR: TBitBtn;
    EXCLUIR: TBitBtn;
    IMPRIMIR: TBitBtn;
    procedure BitBtn8Click(Sender: TObject);
    procedure INCLUIRClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure GRAVARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbAtualizarClick(Sender: TObject);
    procedure PROTROClick(Sender: TObject);
    procedure limpa_campos;
    procedure ALTERARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure EXCLUIRClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBEdit5Exit(Sender: TObject);
    procedure bbIncCP02Click(Sender: TObject);
    procedure bbAltCP02Click(Sender: TObject);
    procedure bbCancCP02Click(Sender: TObject);
    procedure bbExcCP02Click(Sender: TObject);
    procedure calculo_horas;
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure bbGravCP02Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure grava_CP02;    
    procedure grava_pren;
    procedure grava_mper;
    procedure grava_mpar;
    procedure bit_inclui_prenClick(Sender: TObject);
    procedure Bit_inclui_mperClick(Sender: TObject);
    procedure Bit_inclui_mparClick(Sender: TObject);
    procedure Bit_cancela_prenClick(Sender: TObject);
    procedure Bit_cancela_mperClick(Sender: TObject);
    procedure Bit_cancela_mparClick(Sender: TObject);
    procedure Bit_exclui_prenClick(Sender: TObject);
    procedure Bit_exclui_mperClick(Sender: TObject);
    procedure Bit_exclui_mparClick(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure le_tabelas;
    procedure le_CP01;
    procedure le_CP02;
    procedure Bit_grava_prenClick(Sender: TObject);
    procedure Bit_grava_mperClick(Sender: TObject);
    procedure Bit_grava_mparClick(Sender: TObject);
    procedure db_cbTurnoClick(Sender: TObject);
    procedure db_cbTurnoExit(Sender: TObject);
    procedure dbGridCP02CellClick(Column: TColumn);
    procedure dbnavCP02Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure IMPRIMIRClick(Sender: TObject);
    procedure MONTA_RELATORIO;
    procedure le_codprencista;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Qr_CP02_PRENCalcFields(DataSet: TDataSet);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure Qr_CP02_MPERCalcFields(DataSet: TDataSet);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure Qr_CP02_MPARCalcFields(DataSet: TDataSet);
    procedure DBEdit17Exit(Sender: TObject);
    procedure Qr_CP02CalcFields(DataSet: TDataSet);
    procedure Qr_CP01CalcFields(DataSet: TDataSet);
    procedure StaticText6Click(Sender: TObject);
    procedure monta_frasco;
    procedure CB_PesqExit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure Bit_Altera_mparClick(Sender: TObject);
    procedure deleta_cp01;
    procedure deleta_cp02;
    procedure deleta_cp02_pren;
    procedure deleta_cp02_mper;
    procedure deleta_cp02_mpar;
    procedure DBEdit2Exit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ts_prenEnter(Sender: TObject);
    procedure ts_perdasEnter(Sender: TObject);
    procedure ts_paradasEnter(Sender: TObject);
    procedure existe_chave;
    procedure DBG_ParCellClick(Column: TColumn);
    procedure horainiExit(Sender: TObject);
    procedure datainiExit(Sender: TObject);
    procedure datafinExit(Sender: TObject);
    procedure horafinExit(Sender: TObject);
    procedure busca_data_hora;
    procedure DBNavigator4Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit6Exit(Sender: TObject);
    procedure busca_max(maximo:integer);
  private
    { Private declarations }
  public
    { Public declarations }
  mcodigo   : real;
  mitem     : integer;
  mitemaux  : integer;
  chaves    : string;
  STATUS_PT : STRING;
  campo_aux : string;
  end;

var
  Frm_ConProd1: TFrm_ConProd1;

implementation

uses S_DM2, S_DM1, Func, lerarq, S_Fun, S_Agde, S_DM4, S_SI, Func2, S_Imo,
  S_MPer, S_MPar, Sr_ConProd, S_CadFrasco;

{$R *.dfm}

procedure TFrm_ConProd1.BitBtn8Click(Sender: TObject);
begin
close;
end;

procedure TFrm_ConProd1.INCLUIRClick(Sender: TObject);
begin
    INCLUIR.Enabled       :=False;
    ALTERAR.Enabled       :=False;
    EXCLUIR.Enabled       :=False;
    GRAVAR.Enabled        :=True;
    IMPRIMIR.Enabled      :=False;
    DBNavigator1.Enabled  :=False;
    DBGrid1.Enabled       :=False;
    bbAtualizar.Enabled   :=False;
    bbIncCP02.Enabled     :=true;
    bbAltCP02.Enabled     :=true;
    bbExcCP02.Enabled     :=true;
    bbGravCP02.Enabled    :=False;
    bbCancCP02.Enabled    :=true;

    ts_div.Enabled      :=true;
    DBG_Perdas.ReadOnly :=false;
    DBG_Par.ReadOnly    :=false;
    DBG_Pren.ReadOnly   :=false;

    Qr_CP01.CLOSE;
    Qr_CP02.CLOSE;
    Qr_CP02_PREN.CLOSE;
    Qr_CP02_MPAR.CLOSE;
    Qr_CP02_MPER.CLOSE;

    Qr_CP01.OPEN;
    Qr_CP02.OPEN;
    Qr_CP02_PREN.OPEN;
    Qr_CP02_MPAR.OPEN;
    Qr_CP02_MPER.OPEN;

//    Qr_CP02.Close;
//    Qr_CP02.SQL.Clear;
//    Qr_CP02.SQL.add('Select * from CADCP02 where '
//                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
//                  +' CP2LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
//                  +' and CP2CHAVE  =0'
//                  +' and CP2PROTRO =99999999999' //+INTTOSTR(PROTRO.ITEMINDEX)
//                  +' ORDER BY CP2ITEM ');
//    Qr_CP02.Open;

    if PROTRO.ITEMINDEX = 0 then
       campo.text :=''
       else campo_aux := campo.text;
    limpa_campos;
//    bbIncCP02Click(SELF);
    dbedit2.Text        := datetostr(now);
    combobox1.ItemIndex := 0;

    CAMPO.ENABLED := FALSE;
    CAMPO.CLEAR;
    CAMPO.Update;
    bbAtualizar.Click;
    le_CP01;
    LE_CP02;
    existe_chave;
    IF TRIM(CAMPO.TEXT) = '99999999999' THEN
    BEGIN
       CAMPO.CLEAR;
       CAMPO.Update;
    END;
    if PROTRO.ITEMINDEX = 1 then
       campo.text :=campo_aux;

    qr_cp01.Insert;
    DBEdit3.SetFocus;
end;

procedure TFrm_ConProd1.DBEdit3Exit(Sender: TObject);
begin
if Qr_CP01.State in [dsEdit,dsInsert] then
   begin
   if (Qr_CP01CP1CODENC.Value<>0) and  not (Qr_CP01CP1CODENC.IsNull) then
      begin
      if not flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_CP01CP1CODENC.AsString) then
         begin
         MessageDlg('Funcionário não Cadastrado!',mtWarning,[mbOk],0);
         DBEdit3.SetFocus;
         exit;
         end;
         DBEdit4.text := dm1.query1.fieldbyname('CFNOMFUN').asstring;
      end;
   end

end;

procedure TFrm_ConProd1.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
   begin

   if frm_fun=nil then
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
   else
      begin
      Frm_Fun.free;
      Frm_Fun:=nil;
      Application.CreateForm(Tfrm_Fun, Frm_Fun)
      end;

   Frm_Fun.Edit1.Text:=key;
   Frm_Fun.Edit1.SelStart:=1;
   Frm_Fun.Edit1.SelLength:=1;
   Frm_Fun.PC1.ActivePage:=Frm_Fun.tsTab;
   Frm_Fun.fun_ori:='Frm_ConProd1';
   if Frm_Fun.ShowModal=mrok then
      begin
      Qr_CP01CP1CODENC.Value:=DM2.Tb_FunCFCODFUN.Value;
      DBEdit3Exit(self);
      end;
   Frm_Fun.Free;
   Frm_Fun:=nil;
   key:=#0;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ConProd1.GRAVARClick(Sender: TObject);
begin

   if dbedit3.text = '' then
   begin
       showmessage('Informe Codigo do Encarregado!!!!!');
       dbedit3.SetFocus;
       exit;
   end;

   if dbedit2.text = '  /  /    ' then
   begin
       showmessage('Informe a Data !!!!!');
       dbedit2.SetFocus;
       exit;
   end;

   if combobox1.itemindex < 0 then
   begin
       showmessage('Informe o Truno !!!!!');
       combobox1.SetFocus;
       exit;
   end;

   if Qr_CP01.State in [dsinsert] then
   BEGIN
   if protro.ItemIndex = 0 then
      begin
         DM1.Query2.Close;
         DM1.Query2.SQL.Clear;
         DM1.Query2.SQL.add('Select max(CP1CHAVE) from CADCP01'
                           +iif(DM1.Qr_TID.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+Qr_CP01CP1CODEMP.AsString));

         DM1.Query2.Open;
         mcodigo := DM1.Query2.Fields[0].AsFloat+1;
      end else
          begin
             mcodigo := StrToFloat(trim(CAMPO.text));
          end;
    END ELSE mcodigo := StrToFloat(trim(CAMPO.text));

    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('Insert into CADCP01 ('
              +'CP1CODEMP'
              +',CP1LOTSEQ'
              +',CP1CHAVE'
              +',CP1DATA'
              +',CP1TURNO'
              +',CP1REBARBAS'
              +',CP1DATAINC'
              +',CP1USRINC'
              +',CP1DATAALT'
              +',CP1USRALT'
              +',CP1CODENC'
              +',CP1PROTRO'
              +') Values  ('
              +':CP1CODEMP'
              +',:CP1LOTSEQ'
              +',:CP1CHAVE'
              +',:CP1DATA'
              +',:CP1TURNO'
              +',:CP1REBARBAS'
              +',:CP1DATAINC'
              +',:CP1USRINC'
              +',:CP1DATAALT'
              +',:CP1USRALT'
              +',:CP1CODENC'
              +',:CP1PROTRO'
              +')'
              );

    DM1.Query2.ParambyName('CP1CODEMP').AsFloat        :=codemp;
    DM1.Query2.ParambyName('CP1LOTSEQ').AsFloat        :=0;
    DM1.Query2.ParambyName('CP1CHAVE').AsFloat         :=mcodigo;
    DM1.Query2.ParambyName('CP1DATA').AsString         :=FORMATDATETIME('DD/MM/YYYY',Qr_CP01CP1DATA.AsDateTime);
    DM1.Query2.ParambyName('CP1TURNO').AsString        :=combobox1.text;
    DM1.Query2.ParambyName('CP1REBARBAS').AsString     :=Qr_CP01CP1REBARBAS.AsString;
    DM1.Query2.ParambyName('CP1PROTRO').AsFloat        :=PROTRO.ItemIndex;

    if Qr_CP01CP1DATAINC.IsNull then
       begin
       DM1.Query2.ParambyName('CP1DATAINC').AsDateTime :=date;
       DM1.Query2.ParambyName('CP1USRINC').AsFloat     :=codusr;
       end
    else
       begin
       DM1.Query2.ParambyName('CP1DATAINC').AsDateTime :=Qr_CP01CP1DATAINC.Value;
       DM1.Query2.ParambyName('CP1USRINC').AsFloat     :=Qr_CP01CP1USRINC.Value;
       end;

    DM1.Query2.ParambyName('CP1DATAALT').AsDateTime    :=Date;
    DM1.Query2.ParambyName('CP1USRALT').AsFloat        :=codusr;
    DM1.Query2.ParambyName('CP1CODENC').AsFloat        :=Qr_CP01CP1CODENC.Value;
    try
       DM1.Query2.ExecSQL;
       fdm1StartCommit;
    except
    if Qr_CP01.State in [dsEdit] then
    BEGIN
        DM1.Query2.Close;
        DM1.Query2.SQL.Clear;
        DM1.Query2.SQL.Add('UPDATE CADCP01 SET  '
                +' CP1CODEMP     = :CP1CODEMP'
                +',CP1LOTSEQ     = :CP1LOTSEQ'
                +',CP1CHAVE      = :CP1CHAVE'
                +',CP1DATA       = :CP1DATA'
                +',CP1TURNO      = :CP1TURNO'
                +',CP1REBARBAS   = :CP1REBARBAS'
                +',CP1DATAINC    = :CP1DATAINC'
                +',CP1USRINC     = :CP1USRINC'
                +',CP1DATAALT    = :CP1DATAALT'
                +',CP1USRALT     = :CP1USRALT'
                +',CP1CODENC     = :CP1CODENC'
                +',CP1PROTRO     = :CP1PROTRO');

        DM1.Query2.ParambyName('CP1CODEMP').AsFloat        :=codemp;
        DM1.Query2.ParambyName('CP1LOTSEQ').AsFloat        :=0;
        DM1.Query2.ParambyName('CP1CHAVE').AsFloat         :=mcodigo;
        DM1.Query2.ParambyName('CP1DATA').AsDateTime       :=Qr_CP01CP1DATA.Value;
        DM1.Query2.ParambyName('CP1TURNO').AsString        :=combobox1.text;
        DM1.Query2.ParambyName('CP1REBARBAS').AsString     :=Qr_CP01CP1REBARBAS.AsString;
        DM1.Query2.ParambyName('CP1PROTRO').AsFloat        :=PROTRO.ItemIndex;

        if Qr_CP01CP1DATAINC.IsNull then
           begin
           DM1.Query2.ParambyName('CP1DATAINC').AsDateTime :=date;
           DM1.Query2.ParambyName('CP1USRINC').AsFloat     :=codusr;
           end
        else
           begin
           DM1.Query2.ParambyName('CP1DATAINC').AsDateTime :=Qr_CP01CP1DATAINC.Value;
           DM1.Query2.ParambyName('CP1USRINC').AsFloat     :=Qr_CP01CP1USRINC.Value;
           end;

        DM1.Query2.ParambyName('CP1DATAALT').AsDateTime    :=Date;
        DM1.Query2.ParambyName('CP1USRALT').AsFloat        :=codusr;
        DM1.Query2.ParambyName('CP1CODENC').AsFloat        :=Qr_CP01CP1CODENC.Value;

        DM1.Query2.SQL.ADD(' WHERE ');
        DM1.Query2.SQL.ADD('     CP1CODEMP =  '+INTTOSTR(codemp) );
        DM1.Query2.SQL.ADD(' AND CP1LOTSEQ = 0'                 );
        DM1.Query2.SQL.ADD(' AND CP1CHAVE  =  '+FloatToStr(MCODIGO));
        DM1.Query2.SQL.ADD(' AND CP1PROTRO = 0'+INTTOSTR(PROTRO.ItemIndex));
        DM1.Query2.ExecSQL;
        fdm1StartCommit;
    END;
    end;

//    grava_cp02;
//    grava_pren;
//    grava_mper;
//    grava_mpar;


    CANCELAR.Click;
    campo.text := floattostr(mcodigo);
//    Qr_CP01.Locate('CP1CHAVE',mcodigo,[]);
    LE_CP01;
    LE_CP02;
    BBATUALIZAR.Enabled := TRUE;
    PageControl1.ActivePage:=ts_div;
    campo.text := floattostr(mcodigo);
    bbAtualizarClick(self);
    IMPRIMIR.Enabled    :=TRUE;
    CAMPO.ENABLED := TRUE;
    campo_aux := '';

end;

procedure TFrm_ConProd1.DBEdit11Exit(Sender: TObject);
begin
   calculo_horas;
   bbGravCP02.Click;
   bbAltCP02.Click;
   
end;

procedure TFrm_ConProd1.grava_mpar;
begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('Insert into CADCP02_MPAR ('
              +'CP2MPARCODEMP'
              +',CP2MPARLOTSEQ'
              +',CP2MPARSEQ'
              +',CP2MPARCODMPAR'
              +',CP2MPARNOMPAR'
              +',CP2MPARDTHRTPAR'
              +',CP2MPARCHAVE'
              +',CP2MPARDTHRIPAR'
              +',CP2MPARCODMAQ'
              +',CP2MPARPROTRO'
              +') Values  ('
              +':CP2MPARCODEMP'
              +',:CP2MPARLOTSEQ'
              +',:CP2MPARSEQ'
              +',:CP2MPARCODMPAR'
              +',:CP2MPARNOMPAR'
              +',:CP2MPARDTHRTPAR'
              +',:CP2MPARCHAVE'
              +',:CP2MPARDTHRIPAR'
              +',:CP2MPARCODMAQ'
              +',:CP2MPARPROTRO'
              +')'
              );
    Qr_CP02_MPAR.First;

    QR_CP02_MPAR.RecordCount;
    While not Qr_CP02_MPAR.Eof do
       begin

       TEMP.Close;
       TEMP.SQL.Clear;
       TEMP.SQL.add('Select * from CADCP02_MPAR where ');
       TEMP.SQL.add(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+IntToStr(codemp)+' and '));
       TEMP.SQL.add('     CP2MPARCODEMP   =0'+Qr_CP02_MPARCP2MPARCODEMP.AsString);
       TEMP.SQL.add(' and CP2MPARLOTSEQ   =0'+Qr_CP02_MPARCP2MPARLOTSEQ.AsString);
       TEMP.SQL.add(' and CP2MPARCHAVE    =0'+Qr_CP01CP1CHAVE.AsString);
       TEMP.SQL.add(' and CP2MPARPROTRO   =0'+INTTOSTR(PROTRO.ITEMINDEX));
       TEMP.SQL.add(' and CP2MPARCODMPAR  =0'+Qr_CP02_MPARCP2MPARCODMPAR.AsString);
       TEMP.SQL.add(' and CP2MPARCODMAQ   =0'+Qr_CP02_MPARCP2MPARCODMAQ.AsString);
       TEMP.SQL.add(' and CP2MPARSEQ      =0'+Qr_CP02_MPARCP2MPARSEQ.AsString);
       TEMP.Open;

       IF TEMP.IsEmpty THEN
       BEGIN
           DM1.Query2.ParambyName('CP2MPARCODEMP').AsFloat      :=codemp;
           DM1.Query2.ParambyName('CP2MPARLOTSEQ').AsFloat      :=0;
           DM1.Query2.ParambyName('CP2MPARSEQ').AsFloat         :=Qr_CP02_MPARCP2MPARSEQ.Value;
           DM1.Query2.ParambyName('CP2MPARCODMPAR').AsFloat     :=Qr_CP02_MPARCP2MPARCODMPAR.Value;
           DM1.Query2.ParambyName('CP2MPARNOMPAR').AsString     :=Qr_CP02_MPARmotivo.Value;

           if dataini.text <> '  /  /    ' then
              DM1.Query2.ParambyName('CP2MPARDTHRTPAR').AsDateTime :=StrToDateTime(dataini.text+horaini.text) //Qr_CP02_MPARCP2MPARDTHRTPAR.Value;
              else DM1.Query2.ParambyName('CP2MPARDTHRTPAR').AsString := '';

           if datafin.text <> '  /  /    ' then
              DM1.Query2.ParambyName('CP2MPARDTHRIPAR').AsDateTime :=StrToDateTime(datafin.text+horafin.text) //Qr_CP02_MPARCP2MPARDTHRIPAR.Value;
              else DM1.Query2.ParambyName('CP2MPARDTHRIPAR').AsString := '';

           DM1.Query2.ParambyName('CP2MPARCHAVE').AsFloat       :=Qr_CP01CP1CHAVE.AsFloat;
           DM1.Query2.ParambyName('CP2MPARCODMAQ').AsFloat      :=Qr_CP02_MPARCP2MPARCODMAQ.Value;
           DM1.Query2.ParambyName('CP2MPARPROTRO').AsFloat      :=PROTRO.ItemIndex;
           DM1.Query2.ExecSQL;
           fdm1StartCommit;
       END ELSE
       BEGIN
{
           DM1.Query2.Close;
           DM1.Query2.SQL.Clear;
           DM1.Query2.SQL.Add('UPDATE CADCP02_MPAR SET '
                    +' CP2MPARCODEMP     =  :CP2MPARCODEMP'
                    +',CP2MPARLOTSEQ     =  :CP2MPARLOTSEQ'
                    +',CP2MPARSEQ        =  :CP2MPARSEQ'
                    +',CP2MPARCODMPAR    =  :CP2MPARCODMPAR'
                    +',CP2MPARNOMPAR     =  :CP2MPARNOMPAR'
                    +',CP2MPARDTHRTPAR   =  :CP2MPARDTHRTPAR'
                    +',CP2MPARCHAVE      =  :CP2MPARCHAVE'
                    +',CP2MPARDTHRIPAR   =  :CP2MPARDTHRIPAR'
                    +',CP2MPARCODMAQ     =  :CP2MPARCODMAQ'
                    +',CP2MPARPROTRO     =  :CP2MPARPROTRO');
           DM1.Query2.ParambyName('CP2MPARCODEMP').AsFloat      :=codemp;
           DM1.Query2.ParambyName('CP2MPARLOTSEQ').AsFloat      :=0;
           DM1.Query2.ParambyName('CP2MPARSEQ').AsFloat         :=Qr_CP02_MPARCP2MPARSEQ.AsFloat;
           DM1.Query2.ParambyName('CP2MPARCODMPAR').AsFloat     :=Qr_CP02_MPARCP2MPARCODMPAR.Value;
           DM1.Query2.ParambyName('CP2MPARNOMPAR').AsString     :=Qr_CP02_MPARmotivo.Value;
           DM1.Query2.ParambyName('CP2MPARDTHRTPAR').AsDateTime :=Qr_CP02_MPARCP2MPARDTHRTPAR.Value;
           DM1.Query2.ParambyName('CP2MPARCHAVE').AsFloat       :=Qr_CP01CP1CHAVE.AsFloat;
           DM1.Query2.ParambyName('CP2MPARDTHRIPAR').AsDateTime :=Qr_CP02_MPARCP2MPARDTHRIPAR.Value;
           DM1.Query2.ParambyName('CP2MPARCODMAQ').AsFloat      :=Qr_CP02_MPARCP2MPARCODMAQ.Value;
           DM1.Query2.ParambyName('CP2MPARPROTRO').AsFloat      :=PROTRO.ItemIndex;

           DM1.Query2.SQL.ADD(' WHERE ');
           DM1.Query2.SQL.ADD(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+IntToStr(codemp)+' and '));
           DM1.Query2.SQL.ADD('     CP2MPARCODEMP   =0'+Qr_CP02_MPARCP2MPARCODEMP.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPARLOTSEQ   =0'+Qr_CP02_MPARCP2MPARLOTSEQ.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPARCHAVE    =0'+Qr_CP01CP1CHAVE.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPARPROTRO   =0'+INTTOSTR(PROTRO.ITEMINDEX));
           DM1.Query2.SQL.ADD(' and CP2MPARCODMPAR  =0'+Qr_CP02_MPARCP2MPARCODMPAR.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPARCODMAQ   =0'+Qr_CP02_MPARCP2MPARCODMAQ.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPARSEQ      =0'+Qr_CP02_MPARCP2MPARSEQ.AsString);

           DM1.Query2.ExecSQL;
           fdm1StartCommit;
}           
       END;
       Qr_CP02_MPAR.Next;
       end;

end;

procedure TFrm_ConProd1.grava_mper;
begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('Insert into CADCP02_MPER ('
              +'CP2MPERCODEMP'
              +',CP2MPERLOTSEQ'
              +',CP2MPERSEQ'
              +',CP2MPERCODMPER'
              +',CP2MPERNOMPER'
              +',CP2MPERCHAVE'
              +',CP2MPERCODMAQ'
              +',CP2MPERPROTRO'
              +') Values  ('
              +':CP2MPERCODEMP'
              +',:CP2MPERLOTSEQ'
              +',:CP2MPERSEQ'
              +',:CP2MPERCODMPER'
              +',:CP2MPERNOMPER'
              +',:CP2MPERCHAVE'
              +',:CP2MPERCODMAQ'
              +',:CP2MPERPROTRO'
              +')'
              );

    Qr_CP02_MPER.First;


    While not Qr_CP02_MPER.Eof do
       begin

       TEMP.Close;
       TEMP.SQL.Clear;
       TEMP.SQL.add('Select * from CADCP02_MPER where ');
       TEMP.SQL.add(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+IntToStr(codemp)+' and '));
       TEMP.SQL.add('     CP2MPERCODEMP   =0'+Qr_CP02_MPERCP2MPERCODEMP.AsString);
       TEMP.SQL.add(' and CP2MPERLOTSEQ   =0'+Qr_CP02_MPERCP2MPERLOTSEQ.AsString);
       TEMP.SQL.add(' and CP2MPERCHAVE    =0'+Qr_CP01CP1CHAVE.AsString);
       TEMP.SQL.add(' and CP2MPERPROTRO   =0'+INTTOSTR(PROTRO.ITEMINDEX));
       TEMP.SQL.add(' and CP2MPERCODMPER  =0'+Qr_CP02_MPERCP2MPERCODMPER.AsString);
       TEMP.SQL.add(' and CP2MPERCODMAQ   =0'+Qr_CP02_MPERCP2MPERCODMAQ.AsString);
       TEMP.SQL.add(' and CP2MPERSEQ      =0'+Qr_CP02_MPERCP2MPERSEQ.AsString);
       TEMP.Open;

       IF TEMP.IsEmpty THEN
       BEGIN
           DM1.Query2.ParambyName('CP2MPERCODEMP').AsFloat  :=codemp;
           DM1.Query2.ParambyName('CP2MPERLOTSEQ').AsFloat  :=0;
           DM1.Query2.ParambyName('CP2MPERSEQ').AsFloat     :=Qr_CP02_MPERCP2MPERSEQ.Value;
           DM1.Query2.ParambyName('CP2MPERCODMPER').AsFloat :=Qr_CP02_MPERCP2MPERCODMPER.Value;
           DM1.Query2.ParambyName('CP2MPERNOMPER').AsString :=Qr_CP02_MPERmotivo.Value;
           DM1.Query2.ParambyName('CP2MPERCHAVE').AsFloat   :=Qr_CP01CP1CHAVE.AsFloat;
           DM1.Query2.ParambyName('CP2MPERCODMAQ').AsFloat  :=Qr_CP02_MPERCP2MPERCODMAQ.Value;
           DM1.Query2.ParambyName('CP2MPERPROTRO').AsFloat  :=PROTRO.ItemIndex;
           DM1.Query2.ExecSQL;
           fdm1StartCommit;
       END ELSE
       BEGIN
{
           DM1.Query2.Close;
           DM1.Query2.SQL.Clear;
           DM1.Query2.SQL.Add('UPDATE CADCP02_MPER  SET '
                    +' CP2MPERCODEMP   = :CP2MPERCODEMP'
                    +',CP2MPERLOTSEQ   = :CP2MPERLOTSEQ'
                    +',CP2MPERSEQ      = :CP2MPERSEQ'
                    +',CP2MPERCODMPER  = :CP2MPERCODMPER'
                    +',CP2MPERNOMPER   = :CP2MPERNOMPER'
                    +',CP2MPERCHAVE    = :CP2MPERCHAVE'
                    +',CP2MPERCODMAQ   = :CP2MPERCODMAQ'
                    +',CP2MPERPROTRO   = :CP2MPERPROTRO');

           DM1.Query2.ParambyName('CP2MPERCODEMP').AsFloat  :=codemp;
           DM1.Query2.ParambyName('CP2MPERLOTSEQ').AsFloat  :=0;
           DM1.Query2.ParambyName('CP2MPERSEQ').AsFloat     :=Qr_CP02_MPERCP2MPERSEQ.AsFloat;
           DM1.Query2.ParambyName('CP2MPERCODMPER').AsFloat :=Qr_CP02_MPERCP2MPERCODMPER.Value;
           DM1.Query2.ParambyName('CP2MPERNOMPER').AsString :=Qr_CP02_MPERmotivo.Value;
           DM1.Query2.ParambyName('CP2MPERCHAVE').AsFloat   :=Qr_CP01CP1CHAVE.AsFloat;
           DM1.Query2.ParambyName('CP2MPERCODMAQ').AsFloat  :=Qr_CP02_MPERCP2MPERCODMAQ.Value;
           DM1.Query2.ParambyName('CP2MPERPROTRO').AsFloat  :=PROTRO.ItemIndex;
           DM1.Query2.SQL.ADD(' WHERE ');
           DM1.Query2.SQL.ADD(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+IntToStr(codemp)+' and '));
           DM1.Query2.SQL.ADD('     CP2MPERCODEMP   =0'+Qr_CP02_MPERCP2MPERCODEMP.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPERLOTSEQ   =0'+Qr_CP02_MPERCP2MPERLOTSEQ.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPERCHAVE    =0'+Qr_CP01CP1CHAVE.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPERPROTRO   =0'+INTTOSTR(PROTRO.ITEMINDEX));
           DM1.Query2.SQL.ADD(' and CP2MPERCODMPER  =0'+Qr_CP02_MPERCP2MPERCODMPER.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPERCODMAQ   =0'+Qr_CP02_MPERCP2MPERCODMAQ.AsString);
           DM1.Query2.SQL.ADD(' and CP2MPERSEQ      =0'+Qr_CP02_MPERCP2MPERSEQ.AsString);
           DM1.Query2.ExecSQL;
           fdm1StartCommit;
}
       END;
       Qr_CP02_MPER.Next;
       end;

end;

procedure TFrm_ConProd1.grava_pren;
begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('Insert into CADCP02_PREN ('
              +'CP2PRENCODEMP'
              +',CP2PRENLOTSEQ'
              +',CP2PRENCHAVE'
              +',CP2PRENSEQ'
              +',CP2PRENCODMPREN'
              +',CP2PRENNOMPREN'
              +',CP2PRENCODMAQ'
              +',CP2PRENPROTRO'
              +') Values  ('
              +':CP2PRENCODEMP'
              +',:CP2PRENLOTSEQ'
              +',:CP2PRENCHAVE'
              +',:CP2PRENSEQ'
              +',:CP2PRENCODMPREN'
              +',:CP2PRENNOMPREN'
              +',:CP2PRENCODMAQ'
              +',:CP2PRENPROTRO'
              +')'
              );

    Qr_CP02_PREN.First;
    While not Qr_CP02_PREN.Eof do
       begin

       TEMP.Close;
       TEMP.SQL.Clear;
       TEMP.SQL.add('Select * from CADCP02_PREN where ');
       TEMP.SQL.add(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+IntToStr(codemp)+' and '));
       TEMP.SQL.add('     CP2PRENCODEMP   =0'+Qr_CP02_PRENCP2PRENCODEMP.AsString);
       TEMP.SQL.add(' and CP2PRENLOTSEQ   =0'+Qr_CP02_PRENCP2PRENLOTSEQ.AsString);
       TEMP.SQL.add(' and CP2PRENCHAVE    =0'+Qr_CP01CP1CHAVE.AsString);
       TEMP.SQL.add(' and CP2PRENPROTRO   =0'+INTTOSTR(PROTRO.ITEMINDEX));
       TEMP.SQL.add(' and CP2PRENCODMPREN =0'+Qr_CP02_PRENCP2PRENCODMPREN.AsString);
       TEMP.SQL.add(' and CP2PRENCODMAQ   =0'+Qr_CP02_PRENCP2PRENCODMAQ.AsString);
       TEMP.SQL.add(' and CP2PRENSEQ      =0'+Qr_CP02_PRENCP2PRENSEQ.AsString);
       TEMP.Open;

       IF temp.IsEmpty THEN
       BEGIN
           DM1.Query2.ParambyName('CP2PRENCODEMP').AsFloat   :=codemp;
           DM1.Query2.ParambyName('CP2PRENLOTSEQ').AsFloat   :=0;
           DM1.Query2.ParambyName('CP2PRENCHAVE').AsFloat    :=Qr_CP01CP1CHAVE.AsFloat;
           DM1.Query2.ParambyName('CP2PRENSEQ').AsFloat      :=Qr_CP02_PRENCP2PRENSEQ.Value;
           DM1.Query2.ParambyName('CP2PRENCODMPREN').AsFloat :=Qr_CP02_PRENCP2PRENCODMPREN.Value;
           DM1.Query2.ParambyName('CP2PRENNOMPREN').AsString :=Qr_CP02_PRENnompren.Value;
           DM1.Query2.ParambyName('CP2PRENCODMAQ').AsFloat   :=Qr_CP02_PRENCP2PRENCODMAQ.Value;
           DM1.Query2.ParambyName('CP2PRENPROTRO').AsFloat   :=PROTRO.ItemIndex;
           DM1.Query2.ExecSQL;
           fdm1StartCommit;
       END ELSE
       BEGIN
{
           DM1.Query2.Close;
           DM1.Query2.SQL.Clear;
           DM1.Query2.SQL.Add('update CADCP02_PREN set '
                    +'CP2PRENCODEMP      = :CP2PRENCODEMP'
                    +',CP2PRENLOTSEQ     = :CP2PRENLOTSEQ'
                    +',CP2PRENCHAVE      = :CP2PRENCHAVE'
                    +',CP2PRENSEQ        = :CP2PRENSEQ'
                    +',CP2PRENCODMPREN   = :CP2PRENCODMPREN'
                    +',CP2PRENNOMPREN    = :CP2PRENNOMPREN'
                    +',CP2PRENCODMAQ     = :CP2PRENCODMAQ'
                    +',CP2PRENPROTRO     = :CP2PRENPROTRO');
           DM1.Query2.ParambyName('CP2PRENCODEMP').AsFloat   :=codemp;
           DM1.Query2.ParambyName('CP2PRENLOTSEQ').AsFloat   :=0;
           DM1.Query2.ParambyName('CP2PRENCHAVE').AsFloat    :=Qr_CP01CP1CHAVE.AsFloat;
           DM1.Query2.ParambyName('CP2PRENSEQ').AsFloat      :=Qr_CP02_PRENCP2PRENSEQ.Value;
           DM1.Query2.ParambyName('CP2PRENCODMPREN').AsFloat :=Qr_CP02_PRENCP2PRENCODMPREN.Value;
           DM1.Query2.ParambyName('CP2PRENNOMPREN').AsString :=Qr_CP02_PRENnompren.Value;
           DM1.Query2.ParambyName('CP2PRENCODMAQ').AsFloat   :=Qr_CP02_PRENCP2PRENCODMAQ.Value;
           DM1.Query2.ParambyName('CP2PRENPROTRO').AsFloat   :=PROTRO.ItemIndex;

           DM1.Query2.SQL.ADD(' WHERE ');
           DM1.Query2.SQL.ADD(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+IntToStr(codemp)+' and '));
           DM1.Query2.SQL.ADD('     CP2PRENCODEMP   =0'+Qr_CP02_PRENCP2PRENCODEMP.AsString);
           DM1.Query2.SQL.ADD(' and CP2PRENLOTSEQ   =0'+Qr_CP02_PRENCP2PRENLOTSEQ.AsString);
           DM1.Query2.SQL.ADD(' and CP2PRENCHAVE    =0'+Qr_CP01CP1CHAVE.AsString);
           DM1.Query2.SQL.ADD(' and CP2PRENPROTRO   =0'+INTTOSTR(PROTRO.ITEMINDEX));
           DM1.Query2.SQL.ADD(' and CP2PRENCODMPREN =0'+Qr_CP02_PRENCP2PRENCODMPREN.AsString);
           DM1.Query2.SQL.ADD(' and CP2PRENCODMAQ   =0'+Qr_CP02_PRENCP2PRENCODMAQ.AsString);
           DM1.Query2.SQL.ADD(' and CP2PRENSEQ      =0'+Qr_CP02_PRENCP2PRENSEQ.AsString);
           DM1.Query2.ExecSQL;
           fdm1StartCommit;
}
       end;
       Qr_CP02_PREN.Next;
    end;
end;

procedure TFrm_ConProd1.FormCreate(Sender: TObject);
begin

Qr_CP01.CLOSE;
Qr_CP02.CLOSE;
Qr_CP02_PREN.CLOSE;
Qr_CP02_MPAR.CLOSE;
Qr_CP02_MPER.CLOSE;

Qr_CP01.OPEN;
Qr_CP02.OPEN;
Qr_CP02_PREN.OPEN;
Qr_CP02_MPAR.OPEN;
Qr_CP02_MPER.OPEN;

Qr_CP01CP1DATA.DisplayFormat        :=fdt2;
Qr_CP01CP1DATA.EditMask             :=pEditMascData;
Qr_CP02CP2PERDA.DisplayFormat       :='#,##0';
Qr_CP02CP2HORTRAB.DisplayFormat     :='#,##0.000';
Qr_CP02perda.DisplayFormat          :='#,##0';
Qr_CP02percPerda.DisplayFormat      :='#,##0.00';
Qr_CP02totperdas.DisplayFormat      :='#,##0';


DM4.Tb_CP01CP1DATA.DisplayFormat    :=fdt2;
DM4.Tb_CP01CP1DATA.EditMask         :=pEditMascData;
DM4.Tb_CP02CP2PERDA.DisplayFormat   :='#,##0';
DM4.Tb_CP02CP2HORTRAB.DisplayFormat :='#,##0.000';
DM4.Tb_CP02perda.DisplayFormat      :='#,##0';
DM4.Tb_CP02percPerda.DisplayFormat  :='#,##0.00';
DM4.Tb_CP02totperdas.DisplayFormat  :='#,##0';
DBG_Par.ReadOnly:=false;
MONTA_FRASCO;
CB_Pesq.ItemIndex                   :=0;
PROTRO.ItemIndex                    :=0;
INCLUIR.Visible                     := true;
//bbAtualizarClick(SELF);
INCLUIR.Enabled       :=True;
ALTERAR.Enabled       :=FALSE;
EXCLUIR.Enabled       :=FALSE;
GRAVAR.Enabled        :=False;
CANCELAR.Enabled      :=True;
IMPRIMIR.Enabled      :=FALSE;

PageControl1.ActivePage:=ts_div;
end;

procedure TFrm_ConProd1.bbAtualizarClick(Sender: TObject);
begin
IF TRIM(CAMPO.TEXT) = '' THEN CAMPO.TEXT := '99999999999';
Qr_CP01.close;
Qr_CP01.SQL.Clear;
Qr_CP01.SQL.Add('Select * from CADCP01 ');
mcinst:=' where ';
if not DM1.Qr_TID.Locate('TINOME','CADPRO',[]) then
   begin
   Qr_CP01.SQL.Add(mcinst+' CP1CODEMP=0'+IntTostr((codemp)));
   mcinst:=' and ';
   end;
if not (Trim(CAMPO.Text)='') and not (Trim(CAMPO.Text)='/  /') then
   begin
   if CB_Pesq.ItemIndex=0 then
      begin
      CAMPO.Text:=fdeixanum2(CAMPO.Text);
      Qr_CP01.SQL.add(mcinst+' CP1LOTSEQ=0 and CP1CHAVE=0'+Trim(CAMPO.Text));
      mcinst:=' and ';
      end
   else if CB_Pesq.ItemIndex=1 then
      begin
      mcinst:=' where ';
      Qr_CP01.SQL.Add(mcinst+' CP1DATA='+chr(39)+FormatDateTime(fdt, StrToDate(CAMPO.Text))+chr(39));
      mcinst:=' and ';
      end;
   end;
      Qr_CP01.SQL.add(mcinst+' CP1PROTRO = '+INTTOSTR(PROTRO.ITEMINDEX));
Qr_CP01.Open;
IF QR_CP01.IsEmpty THEN
BEGIN
    IF TRIM(CAMPO.TEXT) <> '99999999999' THEN
       SHOWMESSAGE('Nenhum Registro Foi Encontrado!!!');
    exit;
END;


CB_Pesq.ItemIndex := 0;
CAMPO.EditMask:='##############;1; ';
LE_CP01;
campo.text := Qr_CP01CP1CHAVE.asstring;
le_tabelas;
INCLUIR.Enabled       :=True;
ALTERAR.Enabled       :=True;
EXCLUIR.Enabled       :=True;
GRAVAR.Enabled        :=False;
CANCELAR.Enabled      :=True;
IMPRIMIR.Enabled      :=True;
end;

procedure TFrm_ConProd1.PROTROClick(Sender: TObject);
begin

    if not qr_cp02.IsEmpty then campo.text := Qr_CP02CP2CHAVE.AsString;

    IF (trim(CAMPO.TEXT) <> '')and(CAMPO.TEXT <> '99999999999') THEN
    BEGIN
     bbAtualizarClick(SELF);
     if Qr_CP01.State in [dsEdit,dsInsert] then DBEdit6.SetFocus;
    END;

end;

procedure TFrm_ConProd1.limpa_campos;
var
n : LongInt ;
begin

  for n := 0 to ( ComponentCount - 1 ) do
  begin
    if ( components[n].ClassType = TDBEdit ) then
       TDBEdit (components[n]).clear;
    if ( components[n].ClassType = TEdit )   then
       TEdit (components[n]).clear;

  end ;

end;

procedure TFrm_ConProd1.ALTERARClick(Sender: TObject);
begin
if Qr_CP01CP1CODEMP.IsNull then
   begin
   MessageDlg('Não ha registro selecionado!',mtWarning,[mbOk],0);
   exit;
   end;
INCLUIR.Enabled      :=False;
ALTERAR.Enabled      :=False;
EXCLUIR.Enabled      :=False;
GRAVAR.Enabled       :=True;
IMPRIMIR.Enabled     :=False;
DBNavigator1.Enabled :=False;
DBGrid1.Enabled      :=False;
bbAtualizar.Enabled  :=False;
bbIncCP02.Enabled    :=true;
bbAltCP02.Enabled    :=FALSE;
bbExcCP02.Enabled    :=true;
bbGravCP02.Enabled   :=False;
bbCancCP02.Enabled   :=true;
ts_div.Enabled       :=true;
dbGridCP02.Enabled   :=TRUE;
DBG_Perdas.ReadOnly  :=false;
DBG_Par.ReadOnly     :=false;
DBG_Pren.ReadOnly    :=false;
Qr_CP01.Edit;
//Qr_CP02.Edit;
campo.text := Qr_CP01CP1CHAVE.asstring;
bbAltCP02.Enabled    :=TRUE;
DBEdit3.SetFocus;
CAMPO.ENABLED := FALSE;

end;

procedure TFrm_ConProd1.CANCELARClick(Sender: TObject);
begin
Qr_CP01.Cancel;
INCLUIR.Enabled     :=True;
ALTERAR.Enabled     :=FALSE;
EXCLUIR.Enabled     :=FALSE;
GRAVAR.Enabled      :=False;
IMPRIMIR.Enabled    :=FALSE;
ts_div.Enabled      :=false;
DBG_Perdas.ReadOnly :=true;
DBG_Par.ReadOnly    :=true;
DBG_Pren.ReadOnly   :=true;

bbIncCP02.Enabled   :=False;
bbAltCP02.Enabled   :=False;
bbExcCP02.Enabled   :=False;
bbGravCP02.Enabled  :=False;
bbCancCP02.Enabled  :=False;


DBNavigator1.Enabled:=True;
DBGrid1.Enabled     :=True;
bbAtualizar.Enabled :=True;
limpa_campos;

CAMPO.ENABLED := TRUE;
CAMPO.CLEAR;
CAMPO.Update;
bbAtualizar.Click;
le_CP01;
LE_CP02;
existe_chave;
IF TRIM(CAMPO.TEXT) = '99999999999' THEN
BEGIN
   CAMPO.CLEAR;
   CAMPO.Update;
END;
campo_aux := '';
PROTRO.ITEMINDEX := 0;
end;

procedure TFrm_ConProd1.EXCLUIRClick(Sender: TObject);
begin
if Qr_CP01CP1CHAVE.IsNull then
   begin
   MessageDlg('Não ha Registro Selecionado para Exclusão!',mtWarning,[],0);
   exit;
   end;

if fmensagem('Confirma a Exclusão!',0,['1','2'],2)<>mrYes then
   exit;
mValidarSenha.pTipo:=0;
mValidarSenha.pCodusr:=codusr;
mValidarSenha.pCodSen:=30;
mValidarSenha.pCodEmp:=0;
mValidarSenha.pCodCli:=0;
mValidarSenha.pLotSeq:=0;
mValidarSenha.pChave :=0;
mValidarSenha.pOrdem :=0;
mValidarSenha.pTexto :='Senha para autorizar a exclusão';
mValidarSenha.pChave_St:='';
mValidarSenha.pDesc_requisitado :=0;

if fValidaSenha(mValidarSenha)<>0 then
   exit;

    try
        deleta_cp02_mpar;
        deleta_cp02_mper;
        deleta_cp02_pren;
        deleta_cp02;
        deleta_cp01;
        Qr_CP01.Delete;
    except
        SHOWMESSAGE('Ocorreu Um Erro Na Deleção... Tente Novamente!!!');
        DM1.SG_ASSOC.Rollback;
    end;

CANCELAR.Click;

end;

procedure TFrm_ConProd1.DBGrid1CellClick(Column: TColumn);
begin
//    LE_CP01;
//    le_tabelas;

    campo.text := Qr_CP01CP1CHAVE.asstring;
    bbAtualizarClick(SELF);
      
end;

procedure TFrm_ConProd1.DBEdit5Exit(Sender: TObject);
begin
if Qr_CP02.State in [dsInsert] then
   begin
   if (Qr_CP02CP2CODMAQ.Value<>0) and not  (Qr_CP02CP2CODMAQ.IsNull) then
      begin
      if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Qr_CP02CP2CODMAQ.AsString) then
         Qr_CP02nommaq.Value:=DM1.Query1.Fields[0].AsString
      else
          BEGIN
             showmessage('ITEM NAO CADASTRADA');
             DBEDIT5.SetFocus;
             EXIT;
          END;
      end;
   end;

end;

procedure TFrm_ConProd1.bbIncCP02Click(Sender: TObject);
begin
    bbIncCP02.Enabled   :=False;
    bbAltCP02.Enabled   :=False;
    bbExcCP02.Enabled   :=False;
    bbGravCP02.Enabled  :=True;
    dbnavCP02.Enabled   :=False;
    dbGridCP02.Enabled  :=False;

    bit_inclui_pren.Enabled   :=true;
    Bit_exclui_pren.Enabled   :=true;

    bit_inclui_mpar.Enabled   :=true;
    Bit_exclui_mpar.Enabled   :=true;

    bit_inclui_mper.Enabled   :=true;
    Bit_exclui_mper.Enabled   :=true;

    PageControl1.ActivePage:=ts_div;

//    existe_chave;
//    LE_CP02;

    Qr_CP02.Insert;

    existe_chave;
    ComboBox2.ItemIndex := -1;
    DBEDIT5.Enabled := true;
    DBEdit5.SetFocus;

end;

procedure TFrm_ConProd1.bbAltCP02Click(Sender: TObject);
begin
    if Qr_CP02CP2CODMAQ.IsNull then
       begin
       MessageDlg('Não ha registro selecionado!',mtWarning,[mbOk],0);
       exit;
       end;
    bbIncCP02.Enabled     :=False;
    bbAltCP02.Enabled     :=False;
    bbExcCP02.Enabled     :=False;
    bbGravCP02.Enabled    :=True;
    dbnavCP02.Enabled     :=False;
    dbGridCP02.Enabled    :=False;

    bit_inclui_pren.Enabled   :=true;
    Bit_exclui_pren.Enabled   :=true;

    bit_inclui_mpar.Enabled   :=true;
    Bit_exclui_mpar.Enabled   :=true;
    Bit_Altera_mpar.Enabled   :=true;    

    bit_inclui_mper.Enabled   :=true;
    Bit_exclui_mper.Enabled   :=true;

    Qr_CP02.Edit;

//    existe_chave;

    PageControl1.ActivePage:=ts_div;
    busca_data_hora;
    ComboBox2.SetFocus;    
    DBEDIT5.Enabled := FALSE;

end;

procedure TFrm_ConProd1.bbCancCP02Click(Sender: TObject);
begin
Qr_CP02.Cancel;
bbIncCP02.Enabled     :=True;
bbAltCP02.Enabled     :=True;
bbExcCP02.Enabled     :=True;
bbGravCP02.Enabled    :=False;
dbnavCP02.Enabled     :=True;
dbGridCP02.Enabled    :=true;
bbAltCP02.Enabled    :=TRUE;
PageControl1.ActivePage:=ts_div;
Qr_CP02.First;

DBEDIT5.Enabled := TRUE;
end;

procedure TFrm_ConProd1.bbExcCP02Click(Sender: TObject);
begin
    if Qr_CP02CP2CHAVE.IsNull then
       begin
       MessageDlg('Não ha Registro Selecionado para Exclusão!',mtWarning,[],0);
       exit;
       end;
    if fmensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
       exit;

    try
        deleta_cp02_mpar;
        deleta_cp02_mper;
        deleta_cp02_pren;
        deleta_cp02;
        Qr_CP02.Delete;
    except
        SHOWMESSAGE('Ocorreu Um Erro Na Deleção... Tente Novamente!!!');
        DM1.SG_ASSOC.Rollback;
    end;

//    CANCELAR.Click;
    le_tabelas;
end;

procedure TFrm_ConProd1.calculo_horas;
begin
// formula = 3600 / (ciclo*cavidade*horas trab)
if (Qr_CP02CP2CICLO.AsFloat+Qr_CP02CP2CAVIDADE.AsFloat+Qr_CP02CP2HORTRAB.Asfloat)<>0 then
   begin
   try
      Qr_CP02perda.Value:=(3600/Qr_CP02CP2CICLO.Asfloat)*Qr_CP02CP2CAVIDADE.Asfloat*Qr_CP02CP2HORTRAB.Asfloat;
   except
      Qr_CP02perda.Value:=0;
      end;
   end;
if (Qr_CP02perda.AsFloat+Qr_CP02CP2PRODUCAO.AsFloat)>0 then
    Qr_CP02totperdas.Value:=Qr_CP02perda.AsFloat-Qr_CP02CP2PRODUCAO.AsFloat;
Qr_CP02percPerda.Value:=0;
if (Qr_CP02perda.AsFloat<>0) and (Qr_CP02CP2PRODUCAO.AsFloat<>0) then
   begin
   try
      Qr_CP02percPerda.Value:=((Qr_CP02CP2PRODUCAO.Value*100)/Qr_CP02perda.Value)-100;
   except
      Qr_CP02percPerda.Value:=0;
      end;
   end;

end;

procedure TFrm_ConProd1.DBEdit19Exit(Sender: TObject);
begin
   calculo_horas;
end;

procedure TFrm_ConProd1.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
if Qr_CP02.State in [dsedit,dsinsert] then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Application.CreateForm(Tfrm_Imo, Frm_Imo);
      Frm_Imo.Edit1.Text:=key;
      Frm_Imo.Edit1.SelStart:=1;
      Frm_Imo.Edit1.SelLength:=1;
      Frm_Imo.PC1.ActivePageIndex:=1;
      imo_ori:='Frm_ConProd1';
      if Frm_Imo.ShowModal=mrok then
         begin
         Qr_CP02CP2CODMAQ.Value:=DM2.Tb_Imo01IM1CODIMO.Value;
         end;
      Frm_Imo.Free;
      key:=#0;
      end;
   end
else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;

end;

procedure TFrm_ConProd1.bbGravCP02Click(Sender: TObject);
begin
    if Qr_CP02.State in [dsInsert] then
    begin
//       Qr_CP02CP2ITEM.AsFloat       := qr_cp02.RecordCount+1;
       busca_max(qr_cp02.recordcount);
       Qr_CP02CP2ITEM.AsFloat       := temp.Fields[0].AsFloat+1;
       Qr_CP02CP2CODFRASCO.AsString := copy(ComboBox2.Text,1,3);
       Qr_CP02CP2FRASCO.AsString    := copy(ComboBox2.Text,7,40);
       Qr_CP02CP2CHAVE.AsFloat      := STRTOFLOAT(CAMPO.TEXT);
    end;

//    Qr_CP02.Post;
    grava_cp02;

    bit_inclui_pren.Enabled   :=true;
    Bit_exclui_pren.Enabled   :=true;

    bit_inclui_mpar.Enabled   :=true;
    Bit_exclui_mpar.Enabled   :=true;

    bit_inclui_mper.Enabled   :=true;
    Bit_exclui_mper.Enabled   :=true;

    bbCancCP02.Click;
    bbAltCP02.Enabled    :=TRUE;
    PageControl1.ActivePage:=ts_div;
    bbIncCP02.SetFocus;
    DBEDIT5.Enabled := false;
    ComboBox2.SetFocus;

    Qr_CP02.Close;
    Qr_CP02.SQL.Clear;
    Qr_CP02.SQL.add('Select * from CADCP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                  +' and CP2CHAVE  ='+''''+TRIM(CAMPO.TEXT)+''''
                  +' and CP2PROTRO ='+INTTOSTR(PROTRO.ITEMINDEX)
                  +' ORDER BY CP2ITEM ');
    Qr_CP02.Open;

    Qr_CP02.Last;
end;


procedure TFrm_ConProd1.bit_inclui_prenClick(Sender: TObject);
begin
   bit_inclui_pren.Enabled   :=False;
   Bit_exclui_pren.Enabled   :=False;
   Bit_grava_pren.Enabled    :=True;
   DBG_Pren.Enabled          :=TRUE;
   Qr_CP02_PREN.insert;

   DBEdit1.SetFocus;

end;

procedure TFrm_ConProd1.Bit_inclui_mperClick(Sender: TObject);
begin
    Bit_inclui_mper.Enabled   :=False;
    Bit_exclui_mper.Enabled   :=False;
    Bit_grava_mper.Enabled    :=True;
    DBG_Perdas.Enabled        :=TRUE;
    Qr_CP02_MPER.insert;
    DBEdit15.SetFocus;

end;

procedure TFrm_ConProd1.Bit_inclui_mparClick(Sender: TObject);
begin
    bit_inclui_mpar.Enabled   :=False;
    Bit_exclui_mpar.Enabled   :=False;
    Bit_grava_mpar.Enabled    :=True;
    Bit_Altera_mpar.Enabled   :=True;
    DBG_Par.Enabled           :=TRUE;
    Qr_CP02_MPAR.edit;
    Qr_CP02_MPAR.insert;

    dataini.clear;
    horaini.clear;
    datafin.clear;
    horafin.clear;
    dbEdit17.SetFocus;

end;

procedure TFrm_ConProd1.Bit_cancela_prenClick(Sender: TObject);
begin
Qr_CP02_PREN.Cancel;
bit_inclui_pren.Enabled     :=True;
Bit_exclui_pren.Enabled     :=True;
Bit_grava_pren.Enabled      :=False;

end;

procedure TFrm_ConProd1.Bit_cancela_mperClick(Sender: TObject);
begin
Qr_CP02_MPER.Cancel;
bit_inclui_mper.Enabled     :=True;
Bit_exclui_mper.Enabled     :=True;
Bit_grava_mper.Enabled      :=False;

end;

procedure TFrm_ConProd1.Bit_cancela_mparClick(Sender: TObject);
begin
    Qr_CP02_MPAR.Cancel;
    bit_inclui_mpar.Enabled     :=True;
    Bit_exclui_mpar.Enabled     :=True;
    Bit_grava_mpar.Enabled      :=False;
    dataini.clear;
    horaini.clear;
    datafin.clear;
    horafin.clear;

end;

procedure TFrm_ConProd1.Bit_exclui_prenClick(Sender: TObject);
begin
    if fmensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
       exit;

    deleta_cp02_pren;
    QR_CP02_PREN.Delete;
    Bit_cancela_pren.Click;

end;

procedure TFrm_ConProd1.Bit_exclui_mperClick(Sender: TObject);
begin
    if fmensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
       exit;

    deleta_cp02_mper;

    Qr_CP02_mper.Delete;
    Bit_cancela_mper.Click;

end;

procedure TFrm_ConProd1.Bit_exclui_mparClick(Sender: TObject);
begin
    if fmensagem('Confirma a Exclusão?',0,['1','2'],2)<>mrYes then
       exit;

    deleta_cp02_mpar;

    Qr_CP02_MPAR.Delete;
    Bit_cancela_mpar.Click;
    dataini.clear;
    horaini.clear;
    datafin.clear;
    horafin.clear;

end;

procedure TFrm_ConProd1.Edit5Exit(Sender: TObject);
begin
if Qr_CP02_MPAR.State in [dsEdit,dsInsert] then
   begin
//   if Qr_CP02_MPARmotivo.IsNull then
//      Qr_CP02_MPAR.Cancel
//   else
//      Qr_CP02_MPAR.Post;
      bit_grava_mpar.SetFocus;
   end;

end;

procedure TFrm_ConProd1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if Qr_CP02_MPAR.State in [dsInsert,dsEdit]  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Application.CreateForm(Tfrm_mPar, Frm_mPar);
      Frm_mPar.Edit1.Text:=key;
      Frm_mPar.Edit1.SelStart:=1;
      Frm_mPar.Edit1.SelLength:=1;
      Frm_mPar.PC1.ActivePageIndex:=1;
      mpar_ori:='Frm_ConProd1';
      if Frm_mPar.ShowModal=mrok then
         begin
         Qr_CP02_mParCP2MPARCODMPAR.Value:=DM4.Tb_MParMPARCODIGO.Value;
         end;
      Frm_mPar.Free;
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_ConProd1.le_tabelas;
begin
   LE_CP01;
   LE_CP02;
end;

procedure TFrm_ConProd1.Bit_grava_prenClick(Sender: TObject);
begin
//    Qr_CP02_PRENCP2PRENCODMPREN.AsString := edit1.text;
//    Qr_CP02_PRENnompren.AsString         := edit2.text;

    Qr_CP02_PRENCP2PRENCODMPREN.AsString := dbedit1.text;
    Qr_CP02_PRENCP2PRENCODMAQ.AsString   := dbedit5.text;
    Qr_CP02_PRENNOMMAQ.AsString          := dbedit7.text;
    Qr_CP02_PRENCP2PRENSEQ.AsFloat       := Qr_CP02CP2ITEM.AsFloat;
    Qr_CP02_PRENCP2PRENCHAVE.AsFloat     := Qr_CP01CP1CHAVE.AsFloat;
    Qr_CP02_PRENCP2PRENLOTSEQ.ASFLOAT    := Qr_CP02CP2LOTSEQ.AsFloat;
    Qr_CP02_PRENCP2PRENPROTRO.AsString   := INTTOSTR(PROTRO.ItemIndex);
    Qr_CP02_PRENCP2PRENCODEMP.AsString   := IntToStr(codemp);

//    Qr_CP02_PREN.Post;
    grava_pren;

    bit_inclui_pren.Enabled     :=True;
    Bit_exclui_pren.Enabled     :=True;
    Bit_grava_pren.Enabled      :=False;
    bit_inclui_pren.SetFocus;
//    dbEDIT1.CLEAR;
//    EDIT2.CLEAR;

end;

procedure TFrm_ConProd1.Bit_grava_mperClick(Sender: TObject);
begin

    Qr_CP02_MPERCP2MPERCODMAQ.asstring   := dbedit5.text;
    Qr_CP02_MPERNOMMAQ.asstring          := dbedit7.text;
    Qr_CP02_MPERCP2MPERSEQ.AsFloat       := Qr_CP02CP2ITEM.AsFloat;
    Qr_CP02_MPERCP2MPERCHAVE.AsFloat     := Qr_CP02CP2CHAVE.AsFloat;
    Qr_CP02_MPERCP2MPERLOTSEQ.ASFLOAT    := Qr_CP02CP2LOTSEQ.AsFloat;
    Qr_CP02_MPERCP2MPERPROTRO.AsString   := INTTOSTR(PROTRO.ItemIndex);
    Qr_CP02_MPERCP2MPERCODEMP.AsString   := IntToStr(codemp);

//    Qr_CP02_MPER.Post;
    grava_mper;

    bit_inclui_mper.Enabled     :=True;
    Bit_exclui_mper.Enabled     :=True;
    Bit_grava_mper.Enabled      :=False;
//    EDIT3.CLEAR;
//    EDIT4.Clear;
    Bit_inclui_mper.SetFocus;

end;

procedure TFrm_ConProd1.Bit_grava_mparClick(Sender: TObject);
begin

    IF TRIM(horaini.text) = ':' THEN HORAINI.TEXT := '00:00';
    IF TRIM(horafin.text) = ':' THEN HORAFIN.TEXT := '00:00';    

    if dataini.text <> '  /  /    ' then
       Qr_CP02_MPARCP2MPARDTHRTPAR.AsDateTime := StrToDateTime(dataini.text+horaini.text);
    if datafin.text <> '  /  /    ' then
       Qr_CP02_MPARCP2MPARDTHRIPAR.AsDateTime := StrToDateTime(datafin.text+horafin.text);
    Qr_CP02_MPARCP2MPARCODMAQ.asstring     := dbedit5.text;
    Qr_CP02_MPARCP2MPARSEQ.AsFloat         := Qr_CP02CP2ITEM.AsFloat;
    Qr_CP02_MPARCP2MPARCHAVE.AsFloat       := Qr_CP02CP2CHAVE.AsFloat;
    Qr_CP02_MPARCP2MPARLOTSEQ.ASFLOAT      := Qr_CP02CP2LOTSEQ.AsFloat;
    Qr_CP02_MPARCP2MPARPROTRO.AsString     := INTTOSTR(PROTRO.ItemIndex);
    Qr_CP02_MPARCP2MPARCODEMP.AsString     := IntToStr(codemp);

//    Qr_CP02_MPAR.Post;
    grava_mpar;

    bit_inclui_mpar.Enabled     :=True;
    Bit_exclui_mpar.Enabled     :=True;
    Bit_grava_mpar.Enabled      :=False;
//    EDIT5.CLEAR;
//    EDIT6.CLEAR;
    dbedit17.Enabled := true;
    dbedit18.Enabled := true;
    Bit_inclui_mpar.SetFocus;

    dataini.clear;
    horaini.clear;
    datafin.clear;
    horafin.clear;


end;
procedure TFrm_ConProd1.db_cbTurnoClick(Sender: TObject);
begin
   dbedit5.SetFocus;
end;

procedure TFrm_ConProd1.db_cbTurnoExit(Sender: TObject);
begin
   dbedit5.SetFocus;
end;

procedure TFrm_ConProd1.dbGridCP02CellClick(Column: TColumn);
begin
    LE_CP02;

//    IF Qr_CP02_PREN.locate('CP2PRENCHAVE;CP2PRENSEQ;CP2PRENCODMAQ',VarArrayOf([Qr_CP01CP1CHAVE.AsString,Qr_CP02CP2ITEM.AsString,Qr_CP02CP2CODMAQ.AsString]),[]) THEN

    ComboBox2.itemindex  := ComboBox2.Items.IndexOf(FormatFloat('000',Qr_CP02CP2CODFRASCO.AsFloat)+' - '+Qr_CP02CP2FRASCO.AsString);
    bbAltCP02.Enabled    :=TRUE;
    bbAltCP02Click(self);
    bbExcCP02.enabled    :=true;
    busca_data_hora;
end;

procedure TFrm_ConProd1.dbnavCP02Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  LE_CP02;
end;

procedure TFrm_ConProd1.le_CP02;
begin

   Qr_CP02_PREN.Close;
   Qr_CP02_PREN.SQL.Clear;
   Qr_CP02_PREN.SQL.add('Select * from CADCP02_PREN where ');
   Qr_CP02_PREN.SQL.add(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+IntToStr(codemp)+' and '));
   Qr_CP02_PREN.SQL.add('     CP2PRENLOTSEQ    =0'+Qr_CP02CP2LOTSEQ.AsString);
   Qr_CP02_PREN.SQL.add(' and CP2PRENCHAVE     =0'+Qr_CP01CP1CHAVE.AsString);
   Qr_CP02_PREN.SQL.add(' and CP2PRENPROTRO    =0'+INTTOSTR(PROTRO.ItemIndex));
   Qr_CP02_PREN.SQL.add(' and CP2PRENSEQ       =0'+Qr_CP02CP2ITEM.AsString);
   Qr_CP02_PREN.SQL.add(' and CP2PRENCODMAQ    =0'+Qr_CP02CP2CODMAQ.AsString);
   Qr_CP02_PREN.SQL.add(' order by CP2PRENSEQ ');
   Qr_CP02_PREN.Open;

   Qr_CP02_MPER.Close;
   Qr_CP02_MPER.SQL.Clear;
   Qr_CP02_MPER.SQL.add('Select * from CADCP02_MPER where ');
   Qr_CP02_MPER.SQL.add(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+IntToStr(codemp)+' and '));
   Qr_CP02_MPER.SQL.add('     CP2MPERLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString);
   Qr_CP02_MPER.SQL.add(' and CP2MPERCHAVE =0'+Qr_CP01CP1CHAVE.AsString);
   Qr_CP02_MPER.SQL.add(' and CP2MPERPROTRO=0'+INTTOSTR(PROTRO.ItemIndex));
   Qr_CP02_MPER.SQL.add(' and CP2MPERSEQ   =0'+Qr_CP02CP2ITEM.AsString);
   Qr_CP02_MPER.SQL.add(' and CP2MPERCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString);
   Qr_CP02_MPER.SQL.add(' order by CP2MPERSEQ ');
   Qr_CP02_MPER.Open;

   Qr_CP02_MPAR.Close;
   Qr_CP02_MPAR.SQL.Clear;
   Qr_CP02_MPAR.SQL.add('Select * from CADCP02_MPAR where ');
   Qr_CP02_MPAR.SQL.add(iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+IntToStr(codemp)+' and '));
   Qr_CP02_MPAR.SQL.add('     CP2MPARLOTSEQ=0'+Qr_CP02CP2LOTSEQ.AsString);
   Qr_CP02_MPAR.SQL.add(' and CP2MPARCHAVE =0'+Qr_CP01CP1CHAVE.AsString);
   Qr_CP02_MPAR.SQL.add(' and CP2MPARPROTRO=0'+INTTOSTR(PROTRO.ItemIndex));
   Qr_CP02_MPAR.SQL.add(' and CP2MPARSEQ   =0'+Qr_CP02CP2ITEM.AsString);
   Qr_CP02_MPAR.SQL.add(' and CP2MPARCODMAQ=0'+Qr_CP02CP2CODMAQ.AsString);
   Qr_CP02_MPAR.SQL.add(' order by CP2MPARSEQ ');
   Qr_CP02_MPAR.Open;

end;

procedure TFrm_ConProd1.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
    LE_CP01;
end;

procedure TFrm_ConProd1.le_CP01;
begin

    IF NOT CANCELAR.Focused THEN
       CAMPO.TEXT := Qr_CP01CP1CHAVE.AsString;
    Qr_CP02.Close;
    Qr_CP02.SQL.Clear;
    Qr_CP02.SQL.add('Select * from CADCP02 where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                  +' and CP2CHAVE  ='+''''+TRIM(CAMPO.TEXT)+''''
                  +' and CP2PROTRO ='+INTTOSTR(PROTRO.ITEMINDEX)
                  +' ORDER BY CP2ITEM ');
    Qr_CP02.Open;

    DM1.Query1.close;
    dm1.Query1.sql.clear;
    DM1.Query1.sql.add('select * from cadfrasco where frcodfrasco = 0'+Qr_CP02CP2CODFRASCO.AsString);
    DM1.QUERY1.OPEN;

    ComboBox1.itemindex  := ComboBox1.Items.IndexOf(Qr_CP01CP1TURNO.Asstring);
    ComboBox2.itemindex  := ComboBox2.Items.IndexOf(FormatFloat('000',Qr_CP02CP2CODFRASCO.AsFloat)+' - '+DM1.Query1.FIELDBYNAME('FRDESCFRASCO').AsString);
    LE_CP02;

end;

procedure TFrm_ConProd1.IMPRIMIRClick(Sender: TObject);
begin
campo.text := floattostr(mcodigo);
imprimir.Enabled := false;
Application.CreateForm(TQr_ConProd, Qr_ConProd);
STATUS_PT := '0';
Qr_ConProd.qr_titrel.Caption := 'RELATÓRIO DE PRODUÇÃO';
MONTA_RELATORIO;
Qr_ConProd.PreviewModal;
Qr_ConProd.Free;

Application.CreateForm(TQr_ConProd, Qr_ConProd);
STATUS_PT := '1';
Qr_ConProd.qr_titrel.Caption := 'RELATÓRIO TROCA DE MOLDE';
MONTA_RELATORIO;
IF NOT Qr_ConProd.Tb_ConProd.IsEmpty THEN
BEGIN
   Qr_ConProd.PreviewModal;
   Qr_ConProd.Free;
END ELSE Qr_ConProd.Free;
imprimir.Enabled := true;

//le_cp01;
//le_cp02;
end;

procedure TFrm_ConProd1.MONTA_RELATORIO;
begin

Qr_ConProd.Tb_ConProdCP1DATA.DisplayFormat   :=fdt2;
Qr_ConProd.Tb_ConProdCP1DATA.EditMask        :=pEditMascData;
Qr_ConProd.Tb_ConProdCP2PERDA.DisplayFormat  :='#,##0';
Qr_ConProd.Tb_ConProdCP2HORTRAB.DisplayFormat:='#,##0.000';
Qr_ConProd.Tb_ConProdperda.DisplayFormat     :='#,##0';
Qr_ConProd.Tb_ConProdpercPerda.DisplayFormat :='#,##0.00';
Qr_ConProd.Tb_ConProdtotperdas.DisplayFormat :='#,##0';

Qr_ConProd.lbl_fantasia_emp.Caption:=DM1.Tb_EmpFANTASIA.Value;
Qr_ConProd.lbl_razao_emp.Caption:=DM1.Tb_EmpRAZAO.Value;
Qr_ConProd.Tb_ConProd.Close;
Qr_ConProd.Tb_ConProd.Sql.Clear;
Qr_ConProd.Tb_ConProd.Sql.Add('Select CP1CODEMP, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1LOTSEQ, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1CHAVE, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1TURNO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1REBARBAS, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATAINC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1USRINC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1DATAALT, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1USRALT, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1CODENC, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2ITEM, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CODMAQ, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2FRASCO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2COR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CICLO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CAVIDADE, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PRODUCAO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PERDA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2HORTRAB, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2DTHRIPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PROTRO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CODMPER, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2CODMPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PRENSISTA, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2NOMPER, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2PROTRO, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2NOMPAR, ');
Qr_ConProd.Tb_ConProd.Sql.Add('       CP2DTHRTPAR from CADCP01,CADCP02 where '
                             +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+IntToStr(codemp)+' and '));
Qr_ConProd.Tb_ConProd.Sql.Add('       CP1LOTSEQ=0'+Qr_CP01CP1LOTSEQ.AsString
                             +'       and CP1CHAVE=0'+Qr_CP01CP1CHAVE.AsString
                             +'       and CP1PROTRO='+''''+STATUS_PT+'''');

Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2CODEMP=CP1CODEMP ');
Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2LOTSEQ=CP1LOTSEQ ');
Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2CHAVE =CP1CHAVE  ');
Qr_ConProd.Tb_ConProd.Sql.Add(' and CP2PROTRO=CP1PROTRO ');
Qr_ConProd.Tb_ConProd.Sql.Add(' order by CP2LOTSEQ,CP2CHAVE,CP2ITEM  ');
try
   Qr_ConProd.Tb_ConProd.Open;
except
   Qr_ConProd.Tb_ConProd.sql.SaveToFile(SALVA_NOME('c:\sge\errosql\','ex'));
   end;


cp_chaveant:=Qr_ConProd.Tb_ConProdCP1CHAVE.Value;
sr_codmper:=0;
sr_codmpar:=0;

end;

procedure TFrm_ConProd1.le_codprencista;
begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_CP02_PRENCP2PRENCODMPREN.AsString) then
      Qr_CP02_PRENnompren.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_ConProd1.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin

   if Qr_CP02_PREN.State in [dsInsert,dsEdit]  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin

      if frm_fun=nil then
         Application.CreateForm(Tfrm_Fun, Frm_Fun)
      else
         begin
         Frm_Fun.free;
         Frm_Fun:=nil;
         Application.CreateForm(Tfrm_Fun, Frm_Fun)
         end;
      Frm_Fun.Edit1.Text:=key;
      Frm_Fun.Edit1.SelStart:=1;
      Frm_Fun.Edit1.SelLength:=1;
      Frm_Fun.PC1.ActivePage:=Frm_Fun.tsCad;
      Frm_Fun.fun_ori:='Frm_ConProd1';
      if Frm_Fun.ShowModal=mrok then
         begin
         Qr_CP02_PRENCP2PRENCODMPREN.Value:=DM2.Tb_FunCFCODFUN.Value;
         DBEdit1Exit(self);
         end;
      Frm_Fun.Free;
      Frm_Fun:=nil;
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_ConProd1.Qr_CP02_PRENCalcFields(DataSet: TDataSet);
begin
if (Qr_CP02_PRENCP2PRENCODMPREN.Value<>0) and not  (Qr_CP02_PRENCP2PRENCODMPREN.IsNull) then
   begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_CP02_PRENCP2PRENCODMPREN.AsString) then
      Qr_CP02_PRENnompren.Value:=DM1.Query1.Fields[0].AsString;
   end;

   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Qr_CP02CP2CODMAQ.AsString) then
      Qr_CP02_PRENNOMMAQ.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_ConProd1.DBEdit1Exit(Sender: TObject);
begin
if Qr_CP02_PREN.State in [dsEdit,dsInsert] then
   begin
   if Qr_CP02_PRENnompren.IsNull then
   BEGIN
      showmessage('Codigo Invalido...');
      Qr_CP02_PREN.Cancel;
      bit_inclui_pren.Enabled     :=True;
      Bit_exclui_pren.Enabled     :=True;
      Bit_grava_pren.Enabled      :=False;
//      dbedit1.SetFocus;
      bit_inclui_pren.SetFocus;
      exit;
   END;
   end;

//    Bit_grava_pren.Click;
    Bit_grava_pren.SetFocus;
//    bit_inclui_pren.SetFocus;
end;

procedure TFrm_ConProd1.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
IF Qr_CP02_MPER.State in [dsInsert,dsEdit]  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Application.CreateForm(Tfrm_mPer, Frm_mPer);
      Frm_mPer.Edit1.Text:=key;
      Frm_mPer.Edit1.SelStart:=1;
      Frm_mPer.Edit1.SelLength:=1;
      Frm_mPer.PC1.ActivePageIndex:=1;
      mper_ori:='Frm_ConProd1';
      if Frm_mPer.ShowModal=mrok then
         begin
         Qr_CP02_MPERCP2MPERCODMPER.Value:=DM4.Tb_MPerCMPCODIGO.Value;
         end;
      Frm_mPer.Free;
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_ConProd1.DBEdit15Exit(Sender: TObject);
begin
if Qr_CP02_MPER.State in [dsEdit,dsInsert] then
   begin
      if Qr_CP02_MPERmotivo.IsNull then
      BEGIN
          showmessage('Codigo Invalido...');
          Qr_CP02_MPER.Cancel;
          bit_inclui_mper.Enabled     :=True;
          Bit_exclui_mper.Enabled     :=True;
          Bit_grava_mper.Enabled      :=False;
//          dbedit15.SetFocus;
          bit_inclui_mper.SetFocus;
          exit;
      END;
   end;

    Bit_grava_mper.SetFocus;
//    Bit_inclui_mper.SetFocus;
    DBEDIT16.Enabled := TRUE;
end;

procedure TFrm_ConProd1.Qr_CP02_MPERCalcFields(DataSet: TDataSet);
begin
if (Qr_CP02_MPERCP2MPERCODMPER.Value<>0) and not  (Qr_CP02_MPERCP2MPERCODMPER.IsNull) then
   begin
   if flqr1('CMPMOTIVO','CMP','CADMPER','N','CMPCODIGO',Qr_CP02_MPERCP2MPERCODMPER.AsString) then
      Qr_CP02_MPERmotivo.Value:=DM1.Query1.Fields[0].AsString;
   end;
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Qr_CP02CP2CODMAQ.AsString) then
      Qr_CP02_MPERNOMMAQ.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_ConProd1.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
   IF Qr_CP02_MPAR.State in [dsInsert,dsEdit]  then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key = '%') then
      begin
      Application.CreateForm(Tfrm_mPar, Frm_mPar);
      Frm_mPar.Edit1.Text:=key;
      Frm_mPar.Edit1.SelStart:=1;
      Frm_mPar.Edit1.SelLength:=1;
      Frm_mPar.PC1.ActivePageIndex:=1;
      mpar_ori:='Frm_ConProd1';
      if Frm_mPar.ShowModal=mrok then
         begin
         Qr_CP02_mParCP2MPARCODMPAR.Value:=DM4.Tb_MParMPARCODIGO.Value;
         end;
      Frm_mPar.Free;
      key:=#0;
      end
   else  if not (key in ['0'..'9']) and (key<>#8) then key:=#0;
   end;

end;

procedure TFrm_ConProd1.Qr_CP02_MPARCalcFields(DataSet: TDataSet);
begin
if (Qr_CP02_MPARCP2MPARCODMPAR.Value<>0) and not  (Qr_CP02_MPARCP2MPARCODMPAR.IsNull) then
   begin
   if flqr1('MPARMOTIVO','MPAR','CADMPAR','N','MPARCODIGO',Qr_CP02_MPARCP2MPARCODMPAR.AsString) then
      Qr_CP02_MPARmotivo.Value:=DM1.Query1.Fields[0].AsString;
   end;
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Qr_CP02CP2CODMAQ.AsString) then
      Qr_CP02_MPARNOMMAQ.Value:=DM1.Query1.Fields[0].AsString;

end;

procedure TFrm_ConProd1.DBEdit17Exit(Sender: TObject);
begin
if Qr_CP02_MPAR.State in [dsEdit,dsInsert] then
   begin
      if Qr_CP02_MPARmotivo.IsNull then
      BEGIN
          showmessage('Codigo Invalido...');
          Qr_CP02_MPAR.Cancel;
          bit_inclui_mpar.Enabled     :=True;
          Bit_exclui_mpar.Enabled     :=True;
          Bit_grava_mpar.Enabled      :=False;
//          dbedit17.SetFocus;
          bit_inclui_mpar.SetFocus;
          exit;
      END;
   end;

end;

procedure TFrm_ConProd1.Qr_CP02CalcFields(DataSet: TDataSet);
begin
if (Qr_CP02CP2CODMAQ.Value=0) or (Qr_CP02CP2CODMAQ.IsNull) then
   Qr_CP02nommaq.Value:='não cadastrado'
else
   begin
   if flqr1('IM1NOME','IM1','CADIMO01','N','IM1CODIMO',Qr_CP02CP2CODMAQ.AsString) then
   begin
      Qr_CP02nommaq.Value     :=DM1.Query1.Fields[0].AsString;
   end else
      Qr_CP02nommaq.Value:='não cadastrado';
   end;


// formula = 3600 / (ciclo*cavidade*horas trab)
if (Qr_CP02CP2CICLO.AsFloat+Qr_CP02CP2CAVIDADE.AsFloat+Qr_CP02CP2HORTRAB.Asfloat)<>0 then
   begin
   try
      Qr_CP02perda.Value:=(3600/Qr_CP02CP2CICLO.Asfloat)*Qr_CP02CP2CAVIDADE.Asfloat*Qr_CP02CP2HORTRAB.Asfloat;
   except
      Qr_CP02perda.Value:=0;
      end;
   end;
if (Qr_CP02perda.AsFloat+Qr_CP02CP2PRODUCAO.AsFloat)>0 then
    Qr_CP02totperdas.Value:=Qr_CP02perda.AsFloat-Qr_CP02CP2PRODUCAO.AsFloat;
Qr_CP02percPerda.Value:=0;
if (Qr_CP02perda.AsFloat<>0) and (Qr_CP02CP2PRODUCAO.AsFloat<>0) then
   begin
   try
      Qr_CP02percPerda.Value:=((Qr_CP02CP2PRODUCAO.Value*100)/Qr_CP02perda.Value)-100;
   except
      Qr_CP02percPerda.Value:=0;
      end;
   end;

end;

procedure TFrm_ConProd1.Qr_CP01CalcFields(DataSet: TDataSet);
begin
//if (Qr_CP01CP1CODENC.Value=0) or (Qr_CP01CP1CODENC.IsNull) then
//   Qr_CP01nomenc.Value:='não cadastrado'
//else
//   begin
   if flqr1('CFNOMFUN','CF','CADFUN','N','CFCODFUN',Qr_CP01CP1CODENC.AsString) then
      Qr_CP01nomenc.Value:=DM1.Query1.Fields[0].AsString
   else
      Qr_CP01nomenc.Value:='não cadastrado';
//   end;

end;

procedure TFrm_ConProd1.StaticText6Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_CadFrasco, Frm_CadFrasco);
  Frm_CadFrasco.ShowModal;
  Frm_CadFrasco.Free;
  MONTA_FRASCO;
end;

procedure TFrm_ConProd1.monta_frasco;
begin
  combobox2.clear;
  DM1.Query1.close;
  dm1.Query1.sql.clear;
  DM1.Query1.sql.add('select * from cadfrasco');
  DM1.QUERY1.OPEN;
  while NOT DM1.Query1.Eof do
  begin
      ComboBox2.Items.Add(FormatFloat('000',DM1.query1.fieldbyname('FRCODFRASCO').AsFloat)+' - '+DM1.Query1.FIELDBYNAME('FRDESCFRASCO').AsString);
      DM1.Query1.Next;
  end;

end;

procedure TFrm_ConProd1.CB_PesqExit(Sender: TObject);
begin
CAMPO.Clear;
if CB_Pesq.ItemIndex = 1 then
   CAMPO.EditMask:='!99/99/9999;1; '
else
   CAMPO.EditMask:='##############;1; ';

end;

procedure TFrm_ConProd1.DBEdit21Exit(Sender: TObject);
begin
    Bit_grava_mpar.SetFocus;
//    Bit_inclui_mpar.SetFocus

end;

procedure TFrm_ConProd1.Bit_Altera_mparClick(Sender: TObject);
begin
    dbedit17.Enabled := false;
    dbedit18.Enabled := false;
    busca_data_hora;
    dataini.SetFocus;
    qr_cp02_mpar.edit;
    Bit_grava_mpar.enabled := true;
end;

procedure TFrm_ConProd1.deleta_cp02_pren;
begin
    TEMP.CLOSE;
    TEMP.SQL.CLEAR;
    TEMP.SQL.ADD('DELETE CADCP02_PREN WHERE '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+IntToStr(codemp)+' and ')
              +'     CP2PRENCODEMP   ='+INTTOSTR(CODEMP)
              +' and CP2PRENLOTSEQ   =0'+Qr_CP02CP2LOTSEQ.AsString
              +' and CP2PRENCODMPREN =0'+Qr_CP02_PRENCP2PRENCODMPREN.AsString
              +' and CP2PRENCHAVE    =0'+CAMPO.TEXT
              +' and CP2PRENCODMAQ   =0'+DBEDIT5.TEXT
              +' and CP2PRENSEQ      =0'+Qr_CP02CP2ITEM.AsString
              +' and CP2PRENPROTRO   = '+INTTOSTR(PROTRO.ItemIndex));
    TEMP.ExecSQL;
    fdm1StartCommit;

end;

procedure TFrm_ConProd1.deleta_cp01;
begin
    TEMP.CLOSE;
    TEMP.SQL.CLEAR;
    TEMP.SQL.ADD('DELETE CADCP01 WHERE '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP1CODEMP=0'+IntToStr(codemp)+' and ')
              +'     CP1CODEMP   ='+INTTOSTR(CODEMP)
              +' and CP1LOTSEQ   =0'+Qr_CP02CP2LOTSEQ.AsString
              +' and CP1CHAVE    =0'+CAMPO.TEXT
              +' and CP1PROTRO   = '+INTTOSTR(PROTRO.ItemIndex));
    TEMP.ExecSQL;
    fdm1StartCommit;

end;

procedure TFrm_ConProd1.deleta_cp02;
begin
    TEMP.CLOSE;
    TEMP.SQL.CLEAR;
    TEMP.SQL.ADD('DELETE CADCP02 WHERE '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
              +'     CP2CODEMP   ='+INTTOSTR(CODEMP)
              +' and CP2LOTSEQ   =0'+Qr_CP02CP2LOTSEQ.AsString
              +' and CP2CHAVE    =0'+CAMPO.TEXT
              +' and CP2CODMAQ   =0'+DBEDIT5.TEXT
              +' and CP2ITEM     =0'+Qr_CP02CP2ITEM.AsString
              +' and CP2PROTRO   = '+INTTOSTR(PROTRO.ItemIndex));
    TEMP.ExecSQL;
    fdm1StartCommit;

end;

procedure TFrm_ConProd1.deleta_cp02_mpar;
begin
    TEMP.CLOSE;
    TEMP.SQL.CLEAR;
    TEMP.SQL.ADD('DELETE CADCP02_MPAR WHERE '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+IntToStr(codemp)+' and ')
              +'     CP2MPARCODEMP   ='+INTTOSTR(CODEMP)
              +' and CP2MPARLOTSEQ   =0'+Qr_CP02CP2LOTSEQ.AsString
              +' and CP2MPARCODMPAR  =0'+Qr_CP02_MPARCP2MPARCODMPAR.AsString
              +' and CP2MPARCHAVE    =0'+CAMPO.TEXT
              +' and CP2MPARCODMAQ   =0'+DBEDIT5.TEXT
              +' and CP2MPARSEQ      =0'+Qr_CP02CP2ITEM.AsString
              +' and CP2MPARPROTRO   = '+INTTOSTR(PROTRO.ItemIndex));
    TEMP.ExecSQL;
    fdm1StartCommit;

end;

procedure TFrm_ConProd1.deleta_cp02_mper;
begin
    TEMP.CLOSE;
    TEMP.SQL.CLEAR;
    TEMP.SQL.ADD('DELETE CADCP02_MPER WHERE '
              +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+IntToStr(codemp)+' and ')
              +'     CP2MPERCODEMP   ='+INTTOSTR(CODEMP)
              +' and CP2MPERLOTSEQ   =0'+Qr_CP02CP2LOTSEQ.AsString
              +' and CP2MPERCODMPER =0'+Qr_CP02_MPERCP2MPERCODMPER.AsString
              +' and CP2MPERCHAVE    =0'+CAMPO.TEXT
              +' and CP2MPERCODMAQ   =0'+DBEDIT5.TEXT
              +' and CP2MPERSEQ      =0'+Qr_CP02CP2ITEM.AsString
              +' and CP2MPERPROTRO   = '+INTTOSTR(PROTRO.ItemIndex));
    TEMP.ExecSQL;
    fdm1StartCommit;

end;

procedure TFrm_ConProd1.DBEdit2Exit(Sender: TObject);
begin
      try
        dbedit2.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(dbedit2.Text));
      except
        ShowMessage('Data Invalida!');
        dbedit2.SetFocus;
        exit;
      end;
      ComboBox1.SetFocus;
end;

procedure TFrm_ConProd1.ComboBox1Exit(Sender: TObject);
begin

//  dbedit5.SetFocus;
//    gravar.SetFocus;
    gravarClick(self);
    ALTERARClick(self);
    if qr_cp02.RecordCount = 0 then
    begin
        bbIncCP02Click(self);
        dbedit5.SetFocus;
    end;
       
end;

procedure TFrm_ConProd1.ComboBox1Click(Sender: TObject);
begin
//  dbedit5.SetFocus;
end;

procedure TFrm_ConProd1.ts_prenEnter(Sender: TObject);
begin
    if Qr_CP02.State in [dsEdit,dsInsert] then
    begin
        
    end else
    begin
        showmessage('Por Favor Selecione Incluir ou Altera!!!');
        PageControl1.ActivePage:=ts_div;
        dbedit5.SetFocus;
    end;
end;

procedure TFrm_ConProd1.ts_perdasEnter(Sender: TObject);
begin
    if Qr_CP02.State in [dsEdit,dsInsert] then
    begin

    end else
    begin
        showmessage('Por Favor Selecione Incluir ou Altera!!!');
        PageControl1.ActivePage:=ts_div;
        dbedit5.SetFocus;
    end;

end;

procedure TFrm_ConProd1.ts_paradasEnter(Sender: TObject);
begin
    if Qr_CP02.State in [dsEdit,dsInsert] then
    begin

    end else
    begin
        showmessage('Por Favor Selecione Incluir ou Altera!!!');
        PageControl1.ActivePage:=ts_div;
        dbedit5.SetFocus;        
    end;

end;

procedure TFrm_ConProd1.existe_chave;
begin
    Qr_CP02_PREN.Close;
    Qr_CP02_PREN.SQL.Clear;
    Qr_CP02_PREN.SQL.add('Select * from CADCP02_PREN where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2PRENCODEMP=0'+IntToStr(codemp)+' and ')
                  +' CP2PRENLOTSEQ       =0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2PRENCHAVE    =0'+CAMPO.TEXT
                  +' and CP2PRENCODMAQ   =0'+DBEDIT5.TEXT
                  +' and CP2PRENPROTRO   =0'+INTTOSTR(PROTRO.ItemIndex)
                  +' and CP2PRENSEQ      =0'
                  +' order by CP2PRENSEQ ');
    Qr_CP02_PREN.Open;

    Qr_CP02_MPAR.Close;
    Qr_CP02_MPAR.SQL.Clear;
    Qr_CP02_MPAR.SQL.add('Select * from CADCP02_MPAR where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPARCODEMP=0'+IntToStr(codemp)+' and ')
                  +'     CP2MPARLOTSEQ =0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2MPARCHAVE  =0'+CAMPO.TEXT
                  +' and CP2MPARCODMAQ =0'+DBEDIT5.TEXT
                  +' and CP2MPARPROTRO =0'+INTTOSTR(PROTRO.ItemIndex)
                  +' and CP2MPARSEQ    =0'
                  +' order by CP2MPARSEQ ');
    Qr_CP02_MPAR.Open;

    Qr_CP02_MPER.Close;
    Qr_CP02_MPER.SQL.Clear;
    Qr_CP02_MPER.SQL.add('Select * from CADCP02_MPER where '
                  +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2MPERCODEMP=0'+IntToStr(codemp)+' and ')
                  +'     CP2MPERLOTSEQ =0'+Qr_CP02CP2LOTSEQ.AsString
                  +' and CP2MPERCHAVE  =0'+CAMPO.TEXT
                  +' and CP2MPERCODMAQ =0'+DBEDIT5.TEXT
                  +' and CP2MPERPROTRO =0'+INTTOSTR(PROTRO.ItemIndex)
                  +' and CP2MPERSEQ    =0'
                  +' order by CP2MPERSEQ ');
    Qr_CP02_MPER.Open;

end;

procedure TFrm_ConProd1.grava_CP02;
begin

    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('Insert into CADCP02 ('
              +'CP2CODEMP'
              +',CP2LOTSEQ'
              +',CP2CHAVE'
              +',CP2ITEM'
              +',CP2CODMAQ'
              +',CP2FRASCO'
              +',CP2COR'
              +',CP2CICLO'
              +',CP2CAVIDADE'
              +',CP2PRODUCAO'
              +',CP2PERDA'
              +',CP2HORTRAB'
              +',CP2DTHRIPAR'
              +',CP2DTHRTPAR'
              +',CP2PROTRO'
              +',CP2CODFRASCO'
              +') Values  ('
              +':CP2CODEMP'
              +',:CP2LOTSEQ'
              +',:CP2CHAVE'
              +',:CP2ITEM'
              +',:CP2CODMAQ'
              +',:CP2FRASCO'
              +',:CP2COR'
              +',:CP2CICLO'
              +',:CP2CAVIDADE'
              +',:CP2PRODUCAO'
              +',:CP2PERDA'
              +',:CP2HORTRAB'
              +',:CP2DTHRIPAR'
              +',:CP2DTHRTPAR'
              +',:CP2PROTRO'
              +',:CP2CODFRASCO'
              +')'
              );

//    Qr_CP02.First;
//    Qr_CP02.Last;

//    While not Qr_CP02.Eof do
//       begin

       TEMP.Close;
       TEMP.SQL.Clear;
       TEMP.SQL.add('Select * from CADCP02 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
                      +'     CP2CODEMP =0'+INTTOSTR(codemp)
                      +' and CP2LOTSEQ =0'+Qr_CP01CP1LOTSEQ.AsString
                      +' and CP2CHAVE  =0'+trim(campo.text)
                      +' and CP2PROTRO =0'+INTTOSTR(PROTRO.ITEMINDEX)
                      +' and CP2CODMAQ =0' +Qr_CP02CP2CODMAQ.AsString
                      +' and CP2ITEM   =0'+Qr_CP02CP2ITEM.AsString);
       TEMP.Open;
       IF TEMP.IsEmpty THEN
       BEGIN
           DM1.Query2.ParambyName('CP2CODEMP').AsFloat     :=codemp;
           DM1.Query2.ParambyName('CP2LOTSEQ').AsFloat     :=0;
           DM1.Query2.ParambyName('CP2CHAVE').Asstring     :=trim(campo.text);
           DM1.Query2.ParambyName('CP2ITEM').AsFloat       :=Qr_CP02CP2ITEM.AsFloat;
           DM1.Query2.ParambyName('CP2CODMAQ').AsFloat     :=Qr_CP02CP2CODMAQ.Value;
           DM1.Query2.ParambyName('CP2CODFRASCO').AsString :=Qr_CP02CP2CODFRASCO.AsString; //copy(ComboBox2.Text,1,3);
           DM1.Query2.ParambyName('CP2FRASCO').AsString    :=Qr_CP02CP2FRASCO.AsString;    //copy(ComboBox2.Text,7,40);
           DM1.Query2.ParambyName('CP2COR').AsString       :=Qr_CP02CP2COR.AsString;
           DM1.Query2.ParambyName('CP2CICLO').AsFloat      :=Qr_CP02CP2CICLO.Value;
           DM1.Query2.ParambyName('CP2CAVIDADE').AsFloat   :=Qr_CP02CP2CAVIDADE.Value;
           DM1.Query2.ParambyName('CP2PRODUCAO').AsFloat   :=Qr_CP02CP2PRODUCAO.Value;
           DM1.Query2.ParambyName('CP2PERDA').AsFloat      :=Qr_CP02CP2PERDA.Value;
           DM1.Query2.ParambyName('CP2HORTRAB').AsFloat    :=Qr_CP02CP2HORTRAB.Value;
           DM1.Query2.ParambyName('CP2DTHRIPAR').AsDateTime:=Qr_CP02CP2DTHRIPAR.Value;
           DM1.Query2.ParambyName('CP2DTHRTPAR').AsDateTime:=Qr_CP02CP2DTHRTPAR.Value;
           DM1.Query2.ParambyName('CP2PROTRO').AsFloat     :=PROTRO.ItemIndex;
           DM1.Query2.ExecSQL;
           fdm1StartCommit;
       END ELSE
       BEGIN
//         if Qr_CP02.State in [dsEdit] then
//         BEGIN
            DM1.Query2.Close;
            DM1.Query2.SQL.Clear;
            DM1.Query2.SQL.Add('UPDATE CADCP02 SET '
                      +' CP2CODEMP    = :CP2CODEMP'
                      +',CP2LOTSEQ    =  :CP2LOTSEQ'
                      +',CP2CHAVE     =  :CP2CHAVE'
                      +',CP2ITEM      =  :CP2ITEM'
                      +',CP2CODMAQ    =  :CP2CODMAQ'
                      +',CP2CODFRASCO =  :CP2CODFRASCO'
                      +',CP2FRASCO    =  :CP2FRASCO'
                      +',CP2COR       =  :CP2COR'
                      +',CP2CICLO     =  :CP2CICLO'
                      +',CP2CAVIDADE  =  :CP2CAVIDADE'
                      +',CP2PRODUCAO  =  :CP2PRODUCAO'
                      +',CP2PERDA     =  :CP2PERDA'
                      +',CP2HORTRAB   =  :CP2HORTRAB'
                      +',CP2DTHRIPAR  =  :CP2DTHRIPAR'
                      +',CP2DTHRTPAR  =  :CP2DTHRTPAR'
                      +',CP2PROTRO    =  :CP2PROTRO');
             DM1.Query2.ParambyName('CP2CODEMP').AsFloat     :=codemp;
             DM1.Query2.ParambyName('CP2LOTSEQ').AsFloat     :=0;
             DM1.Query2.ParambyName('CP2CHAVE').AsString     :=trim(campo.text);
             DM1.Query2.ParambyName('CP2ITEM').AsFloat       :=Qr_CP02CP2ITEM.AsFloat;
             DM1.Query2.ParambyName('CP2CODMAQ').AsFloat     :=Qr_CP02CP2CODMAQ.Value;
             DM1.Query2.ParambyName('CP2CODFRASCO').AsString :=Qr_CP02CP2CODFRASCO.ASSTRING; //copy(ComboBox2.Text,1,3);
             DM1.Query2.ParambyName('CP2FRASCO').AsString    :=Qr_CP02CP2FRASCO.ASSTRING;    //copy(ComboBox2.Text,7,40);
             DM1.Query2.ParambyName('CP2COR').AsString       :=Qr_CP02CP2COR.AsString;
             DM1.Query2.ParambyName('CP2CICLO').AsFloat      :=Qr_CP02CP2CICLO.Value;
             DM1.Query2.ParambyName('CP2CAVIDADE').AsFloat   :=Qr_CP02CP2CAVIDADE.Value;
             DM1.Query2.ParambyName('CP2PRODUCAO').AsFloat   :=Qr_CP02CP2PRODUCAO.Value;
             DM1.Query2.ParambyName('CP2PERDA').AsFloat      :=Qr_CP02CP2PERDA.Value;
             DM1.Query2.ParambyName('CP2HORTRAB').AsFloat    :=Qr_CP02CP2HORTRAB.Value;
             DM1.Query2.ParambyName('CP2DTHRIPAR').AsDateTime:=Qr_CP02CP2DTHRIPAR.Value;
             DM1.Query2.ParambyName('CP2DTHRTPAR').AsDateTime:=Qr_CP02CP2DTHRTPAR.Value;
             DM1.Query2.ParambyName('CP2PROTRO').AsFloat     :=PROTRO.ItemIndex;

             DM1.Query2.SQL.ADD(' WHERE ');
             DM1.Query2.SQL.ADD('     CP2CODEMP =0'+INTTOSTR(codemp)          );
             DM1.Query2.SQL.ADD(' AND CP2LOTSEQ =0'+Qr_CP01CP1LOTSEQ.AsString );
             DM1.Query2.SQL.ADD(' AND CP2CHAVE  =0'+campo.text                );
             DM1.Query2.SQL.ADD(' AND CP2PROTRO =0'+INTTOSTR(PROTRO.ITEMINDEX));
             DM1.Query2.SQL.ADD(' AND CP2CODMAQ =0'+Qr_CP02CP2CODMAQ.AsString );
             DM1.Query2.SQL.ADD(' AND CP2ITEM   =0'+Qr_CP02CP2ITEM.AsString   );

             DM1.Query2.ExecSQL;
             fdm1StartCommit;
//           END;

//       END;
//       Qr_CP02.Next;
       end;

end;

procedure TFrm_ConProd1.DBG_ParCellClick(Column: TColumn);
begin
    dbedit17.Enabled := false;
    dbedit18.Enabled := false;
    busca_data_hora;
    dataini.SetFocus;
    qr_cp02_mpar.edit;
    Bit_grava_mpar.enabled := true;

//    Bit_grava_mpar.enabled  := true;
//    Bit_Altera_mpar.enabled := false;
end;

procedure TFrm_ConProd1.horainiExit(Sender: TObject);
var
   dataini1 : TDateTime;
begin
if Trim(horaini.Text)<>':' then
   begin
   Try
      dataini1:=StrToDateTime(horaini.text);
   except
      verteclado(0);
      MessageDlg('Hora Inicial Invalida!',mtWarning,[mbOk],0);
      horaini.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_ConProd1.datainiExit(Sender: TObject);
begin
if Trim(dataini.Text)<>'/  /' then
   begin
   Try
      dataini.Text:=FormatDatetime(fdt2,StrtoDate(dataini.Text));
   except
      verteclado(0);
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      dataini.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_ConProd1.datafinExit(Sender: TObject);
begin
if Trim(datafin.Text)<>'/  /' then
   begin
   Try
      datafin.Text:=FormatDatetime(fdt2,StrtoDate(datafin.Text));
   except
      verteclado(0);
      MessageDlg('Data Invalida!',mtWarning,[mbOk],0);
      datafin.SetFocus;
      exit;
      end
   end;

end;

procedure TFrm_ConProd1.horafinExit(Sender: TObject);
var
   dataini2 : tdatetime;
begin
if Trim(horafin.Text)<>':' then
   begin
   Try
      dataini2:=StrToDateTime(horafin.text);
   except
      verteclado(0);
      MessageDlg('Hora Final Invalida!',mtWarning,[mbOk],0);
      horafin.SetFocus;
      exit;
      end
   end;
end;

procedure TFrm_ConProd1.busca_data_hora;
begin

    dataini.text := FormatDateTime('dd/mm/yyyy',Qr_CP02_MPARCP2MPARDTHRTPAR.Value);
    horaini.text := FormatDateTime('hh:mm',Qr_CP02_MPARCP2MPARDTHRTPAR.Value);

    datafin.text := FormatDateTime('dd/mm/yyyy',Qr_CP02_MPARCP2MPARDTHRIPAR.Value);
    horafin.text := FormatDateTime('hh:mm',Qr_CP02_MPARCP2MPARDTHRIPAR.Value);

end;

procedure TFrm_ConProd1.DBNavigator4Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   busca_data_hora;
end;

procedure TFrm_ConProd1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_ConProd1.DBEdit6Exit(Sender: TObject);
begin
//    dbedit2.Text        := datetostr(now);
end;

procedure TFrm_ConProd1.busca_max(maximo: integer);
begin
       TEMP.Close;
       TEMP.SQL.Clear;
       TEMP.SQL.add('Select max(cp2item) from CADCP02 where '
                      +iif(DM1.Qr_Tid.Locate('TINOME','CADPRO',[]),'',' CP2CODEMP=0'+IntToStr(codemp)+' and ')
                      +'     CP2CODEMP =0'+INTTOSTR(codemp)
                      +' and CP2LOTSEQ =0'+Qr_CP01CP1LOTSEQ.AsString
                      +' and CP2CHAVE  =0'+trim(CAMPO.text)
                      +' and CP2PROTRO =0'+INTTOSTR(PROTRO.ITEMINDEX));
       TEMP.Open;
end;

end.

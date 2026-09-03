unit S_RTroMol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, DBTables, Grids, DBGrids, Gauges, Buttons,S_Impres,
  ExtCtrls;

type
  TFrm_RTroMol = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    regua: TGauge;
    z: TDBGrid;
    DSTEMP: TDataSource;
    TEMP: TQuery;
    empresa: TEdit;
    Label1: TLabel;
    dataini: TMaskEdit;
    datafin: TMaskEdit;
    fecha_aberto: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    nome_emp: TEdit;
    cod_gerente: TEdit;
    Label6: TLabel;
    nome_gerente: TEdit;
    Label7: TLabel;
    cod_encarregado: TEdit;
    nome_encarregado: TEdit;
    tmolentrada: TEdit;
    Label8: TLabel;
    tmolsaida: TEdit;
    Label9: TLabel;
    nome_molentrada: TEdit;
    nome_molsaida: TEdit;
    BUT_GERENTE: TBitBtn;
    BUT_ENCARREGADO: TBitBtn;
    BUT_MOLENTRADA: TBitBtn;
    BUT_MOLSAIDA: TBitBtn;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    TROMOL: TQuery;
    SITUACAO: TQuery;
    SITUACAOSCODSITMAQ: TFloatField;
    SITUACAOSNOMSITMAQ: TStringField;
    DataSource1: TDataSource;
    TROMOLTCODEMP: TFloatField;
    TROMOLTCODTROMOL: TFloatField;
    TROMOLTOBSESTSAI: TStringField;
    TROMOLTDATAENT: TDateTimeField;
    TROMOLTHORAENTINI: TStringField;
    TROMOLTMINUENTTOFIN: TStringField;
    TROMOLTDATASAI: TDateTimeField;
    TROMOLTHORASAIINI: TStringField;
    TROMOLTMINUSAIFIN: TStringField;
    TROMOLTCODSIT1: TStringField;
    TROMOLTCODSIT2: TStringField;
    TROMOLTCODSIT3: TStringField;
    TROMOLTCODSIT4: TStringField;
    TROMOLTCODSIT5: TStringField;
    TROMOLTCODSIT6: TStringField;
    TROMOLTCODSIT7: TStringField;
    TROMOLTCODSIT8: TStringField;
    TROMOLTCODSIT9: TStringField;
    TROMOLTCODSIT10: TStringField;
    TROMOLTCODMOLDE: TFloatField;
    TROMOLTCODIMO: TFloatField;
    TROMOLTCODMOLSAI: TFloatField;
    TROMOLTCODENCAR: TFloatField;
    TROMOLTCODGEREN: TFloatField;
    TROMOLOK: TStringField;
    UpdateSQL1: TUpdateSQL;
    Label10: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure imp_cabeca;
    procedure datafinExit(Sender: TObject);
    procedure datainiExit(Sender: TObject);
    procedure BUT_MOLENTRADAClick(Sender: TObject);
    procedure BUT_MOLSAIDAClick(Sender: TObject);
    procedure BUT_ENCARREGADOClick(Sender: TObject);
    procedure BUT_GERENTEClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure zCellClick(Column: TColumn);
    procedure zDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure fecha_abertoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    BBGERENTE     : Boolean;
    BBENCARREGADO : Boolean;
    BBMOLENTRADA  : Boolean;
    BBMOLSAIDA    : Boolean;
//    mpag          : integer;
//    mlin          : integer;
    form_impres_RtroMol: TFrm_Impres;
  end;

var
  Frm_RTroMol: TFrm_RTroMol;

implementation

uses  S_DM1, S_DM2, Func, lerarq;

{$R *.dfm}

procedure TFrm_RTroMol.BitBtn1Click(Sender: TObject);
begin
  Panel1.Visible := false;
  IF TROMOL.IsEmpty THEN
  BEGIN
      SHOWMESSAGE('Favor Visualizar os Parametros...');
      BitBtn3.SetFocus;
      exit;
  END;
  imp_cabeca;
end;

procedure TFrm_RTroMol.imp_cabeca;
var
   contador : integer;
begin

contador := 0;
testeform := TFrm_RTroMol(FindGlobalComponent('form_impres_RtroMol'));
if (testeform=nil)  then
   Application.CreateForm(Tfrm_Impres, form_impres_RtroMol);

form_impres_RtroMol.fimpresajustaimp(3,136,66,6); // 1-10CPP,80-QTD_COL, 66-QTD.LIN_PAG, 6_SEIS LINHA_PPTb_min3.First;
TroMol.First;
While not TroMol.Eof do
   begin
      if TROMOLOK.AsString = 'X' then
      begin
          form_impres_RtroMol.mpag:=form_impres_RtroMol.mpag+1;
          for contador := 1 to 1 do
          begin
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,001,insere2('_','_',136),mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,001,'ORDEM DE SERVICO PARA TROCA DE MOLDE ',mneg);
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,067,'Data......: '+FormatDateTime(fdt2,date),mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,001,'Empresa...: '+DM1.Tb_EmpRAZAO.Value,mreduz);
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,067,'Pagina....: '+Formatfloat('0000',form_impres_RtroMol.mpag),mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
              IF TROMOLTDATASAI.IsNull THEN
                 form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,036,'A B E R T O ',mneg)
                 ELSE form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,036,'F E C H A D O',mneg);
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,001,'Chave.....: '+Formatfloat('0000',TROMOLTCODTROMOL.AsFloat),mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+2;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,001,insere2('_','_',136),mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+2;

              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'Data da Entrada HH/MM...: '+TROMOLTDATAENT.AsString  +' - '+TROMOLTHORAENTINI.AsString+':'+TROMOLTMINUENTTOFIN.AsString,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;

              dm2.Tb_Molde.Close;
              dm2.Tb_Molde.SQL.Clear;
              dm2.Tb_Molde.SQL.Add('select * from cadmolde where ');
              dm2.Tb_Molde.SQL.Add('     mcodemp   = '+inttostr(codemp));
              dm2.Tb_Molde.SQL.Add(' and mcodmolde = '+TroMolTCODMOLDE.AsString);
              dm2.Tb_Molde.Open;

              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'Entrada do Molde........: '+TROMOLTCODMOLDE.AsString +' - '+DM2.Tb_MoldeMNOMMOLDE.AsString,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;

              dm2.Tb_Molde.Close;
              dm2.Tb_Molde.SQL.Clear;
              dm2.Tb_Molde.SQL.Add('select * from cadmolde where ');
              dm2.Tb_Molde.SQL.Add('     mcodemp   = '+inttostr(codemp));
              dm2.Tb_Molde.SQL.Add(' and mcodmolde = '+TROMOLTCODMOLSAI.AsString);
              dm2.Tb_Molde.Open;

              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'Saida   do Molde........: '+TROMOLTCODMOLSAI.AsString+' - '+DM2.Tb_MoldeMNOMMOLDE.AsString,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;

              dm2.Tb_Imo01.Close;
              dm2.Tb_Imo01.SQL.Clear;
              dm2.Tb_Imo01.SQL.Add('select * from cadimo01 where ');
              dm2.Tb_Imo01.SQL.Add('     im1codemp = '+inttostr(codemp));
              dm2.Tb_Imo01.SQL.Add(' and im1codimo = '+TroMolTCODIMO.AsString);
              dm2.Tb_Imo01.Open;

              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'M a q u i n a ..........: '+TROMOLTCODIMO.AsString+' - '+DM2.Tb_Imo01IM1NOME.Value,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'Estado de Conservacao ..: '+TROMOLTOBSESTSAI.AsString,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+2;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'V e r i f i c a r         ',mneg);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;

              SITUACAO.Open;
              SITUACAO.First;
              while NOT SITUACAO.Eof do
              begin

                  IF SITUACAOSCODSITMAQ.AsString = TROMOLTCODSIT1.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT2.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT3.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT4.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT5.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT6.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT7.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT8.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT9.AsString  THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  IF SITUACAOSCODSITMAQ.AsString = TroMolTCODSIT10.AsString THEN
                  begin
                     form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
                     form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'!    X    ! '+SITUACAOSNOMSITMAQ.AsString,mreduz);
                  end;
                  SITUACAO.Next;
              end;
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,001,insere2('_','_',136),mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+2;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'Data da Saida   HH/MM...: '+TROMOLTDATASAI.AsString  +' - '+TROMOLTHORASAIINI.AsString+':'+TROMOLTMINUSAIFIN.AsString,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;

              dm2.Tb_Fun.Close;
              dm2.Tb_Fun.SQL.Clear;
              dm2.Tb_Fun.SQL.Add('select * from cadfun where ');
              dm2.Tb_Fun.SQL.Add('     cfcodemp = '+inttostr(codemp));
              dm2.Tb_Fun.SQL.Add(' and cfcodfun = '+TroMolTCODENCAR.AsString);
              dm2.Tb_Fun.Open;

              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'Encarregado.............: '+TROMOLTCODENCAR.AsString+' - '+DM2.Tb_FunCFNOMFUN.Value,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+1;

              dm2.Tb_Fun.Close;
              dm2.Tb_Fun.SQL.Clear;
              dm2.Tb_Fun.SQL.Add('select * from cadfun where ');
              dm2.Tb_Fun.SQL.Add('     cfcodemp = '+inttostr(codemp));
              dm2.Tb_Fun.SQL.Add(' and cfcodfun = '+TROMOLTCODGEREN.AsString);
              dm2.Tb_Fun.Open;

              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,0001,'Geranete................: '+TROMOLTCODGEREN.AsString+' - '+DM2.Tb_FunCFNOMFUN.Value,mreduz);
              form_impres_RtroMol.mlin:=form_impres_RtroMol.mlin+3;
              form_impres_RtroMol.Rdprint1.Impf(form_impres_RtroMol.mlin,001,insere2('=','=',136),mreduz);
          end;
          form_impres_RtroMol.Rdprint1.Novapagina;
          form_impres_RtroMol.mlin:=0;
       end;
       TROMOL.Next;
   end;
   if form_impres_RtroMol.RDprint1.setup then form_impres_RtroMol.Rdprint1.Fechar;
   form_impres_RtroMol.free;
   form_impres_RtroMol:=nil;

end;

procedure TFrm_RTroMol.datafinExit(Sender: TObject);
begin
  IF DATAFIN.Text <> '  /  /    ' THEN
  BEGIN
      IF StrToDate(DATAINI.Text) > strtodate(DATAFIN.Text) THEN
      BEGIN
          SHOWMESSAGE('Data da Entrada Nao Pode Ser Mairo Que Data da Saida...');
          DATAFIN.SetFocus;
          EXIT;
      END;

      try
        DATAFIN.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(DATAFIN.Text));
      except
        ShowMessage('Data Invalida!');
        DATAFIN.SetFocus;
      end;
  END;

end;

procedure TFrm_RTroMol.datainiExit(Sender: TObject);
begin
  IF DATAINI.Text <> '  /  /    ' THEN
  BEGIN
      try
        DATAINI.Text:=FormatDatetime('dd/mm/yyyy',StrtoDate(DATAINI.Text));
      except
        ShowMessage('Data Invalida!');
        DATAINI.SetFocus;
      end;
  END;

end;

procedure TFrm_RTroMol.BUT_MOLENTRADAClick(Sender: TObject);
begin
    Panel1.Visible := TRUE;
    TEMP.CLOSE;
    TEMP.SQL.Clear;
    TEMP.SQL.Add('SELECT MCODMOLDE,MNOMMOLDE FROM CADMOLDE ');
    TEMP.OPEN;
    BBMOLENTRADA := TRUE;

end;

procedure TFrm_RTroMol.BUT_MOLSAIDAClick(Sender: TObject);
begin
    Panel1.Visible := TRUE;
    TEMP.CLOSE;
    TEMP.SQL.Clear;
    TEMP.SQL.Add('SELECT MCODMOLDE,MNOMMOLDE FROM CADMOLDE ');
    TEMP.OPEN;
    BBMOLSAIDA := TRUE;

end;

procedure TFrm_RTroMol.BUT_ENCARREGADOClick(Sender: TObject);
begin
    Panel1.Visible := TRUE;
    TEMP.CLOSE;
    TEMP.SQL.Clear;
    TEMP.SQL.Add('SELECT CFCODFUN,CFNOMFUN FROM CADFUN ');
    TEMP.OPEN;
    BBENCARREGADO := TRUE;

end;

procedure TFrm_RTroMol.BUT_GERENTEClick(Sender: TObject);
begin

    Panel1.Visible := TRUE;
    TEMP.CLOSE;
    TEMP.SQL.Clear;
    TEMP.SQL.Add('SELECT CFCODFUN,CFNOMFUN FROM CADFUN '
                +iif(DM1.Qr_Tid.Locate('TINOME','CADFUN',[]),'',' where CFCODEMP=0'+IntToStr(codemp)));
    TEMP.OPEN;
    BBGERENTE := TRUE;

end;

procedure TFrm_RTroMol.DBGrid1CellClick(Column: TColumn);
begin

    IF BBGERENTE THEN
    BEGIN
        cod_gerente.Text      := TEMP.Fields[0].AsString;
        nome_gerente.Text     := TEMP.Fields[1].AsString;
    END;

    IF BBENCARREGADO THEN
    BEGIN
        cod_encarregado.Text  := TEMP.Fields[0].AsString;
        nome_encarregado.Text := TEMP.Fields[1].AsString;
    END;

    IF BBMOLENTRADA THEN
    BEGIN
        tmolentrada.Text      := TEMP.Fields[0].AsString;
        nome_molentrada.Text  := TEMP.Fields[1].AsString;
    END;

    IF BBMOLSAIDA THEN
    BEGIN
        tmolsaida.TexT        := TEMP.Fields[0].AsString;
        nome_molsaida.Text    := TEMP.Fields[1].AsString;
    END;

    BBGERENTE     := FALSE;
    BBENCARREGADO := FALSE;
    BBMOLENTRADA  := FALSE;
    BBMOLSAIDA    := FALSE;

    Panel1.Visible := FALSE;
end;

procedure TFrm_RTroMol.FormCreate(Sender: TObject);
var
    conthora : integer;
begin

    EMPRESA.Text  := DM1.Tb_EmpCODEMP.AsString;
    NOME_EMP.Text := DM1.Tb_EmpRAZAO.AsString;
    BBGERENTE     := FALSE;
    BBENCARREGADO := FALSE;
    BBMOLENTRADA  := FALSE;
    BBMOLSAIDA    := FALSE;
    fecha_aberto.Checked := TRUE;
    label10.Caption := 'ABERTO';
    
end;

procedure TFrm_RTroMol.BitBtn3Click(Sender: TObject);
begin
    Panel1.Visible := false;

    TROMOL.close;
    TROMOL.SQL.CLEAR;
    TROMOL.SQL.ADD('select TCODEMP,TCODTROMOL,TOBSESTSAI,TDATAENT,THORAENTINI,TMINUENTTOFIN ');
    TROMOL.SQL.ADD(',TDATASAI,THORASAIINI,TMINUSAIFIN,TCODSIT1,TCODSIT2,TCODSIT3,TCODSIT4 ');
    TROMOL.SQL.ADD(',TCODSIT5,TCODSIT6,TCODSIT7,TCODSIT8,TCODSIT9,TCODSIT10,TCODMOLDE ');
    TROMOL.SQL.ADD(',TCODIMO,TCODMOLSAI,TCODENCAR,TCODGEREN,'' '' OK ');
    TROMOL.SQL.ADD(' from cadtromol where tcodemp is not null ');

    if empresa.Text         <> '' then TROMOL.SQL.ADD(' and tcodemp    = '+inttostr(codemp));
    if cod_gerente.Text     <> '' then TROMOL.SQL.ADD(' and tcodgeren  = '+cod_gerente.Text);
    if cod_encarregado.Text <> '' then TROMOL.SQL.ADD(' and tcodencar  = '+cod_encarregado.Text);
    if tmolentrada.Text     <> '' then TROMOL.SQL.ADD(' and tcodmolde  = '+tmolentrada.Text);
    if tmolsaida.Text       <> '' then TROMOL.SQL.ADD(' and tcodmolsai = '+tmolsaida.Text);

    if dataini.Text <> '  /  /    ' then
    begin
        TROMOL.SQL.ADD(' and tdataent    >= '+''''+dataini.Text+'''');
        if datafin.Text <> '  /  /    ' then
           TROMOL.SQL.ADD(' and tdatasai <= '+''''+datafin.Text+'''');
    end;

    if fecha_aberto.Checked then
       TROMOL.SQL.ADD(' and (thorasaiini is null )and( tminusaifin is null ) ');

    if not fecha_aberto.Checked then
       TROMOL.SQL.ADD(' and (thorasaiini is not null )and( tminusaifin is not null ) ');


    TROMOL.Open

end;

procedure TFrm_RTroMol.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure TFrm_RTroMol.zCellClick(Column: TColumn);
begin
   TROMOL.Edit;
   IF TROMOLOK.AsString <> 'X' THEN
      TROMOLOK.ASSTRING := 'X'
      ELSE TROMOLOK.ASSTRING := '';

end;

procedure TFrm_RTroMol.zDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     If TROMOLOK.AsString = 'X' then
     begin
         DBGrid1.Canvas.Brush.Color := clRed;
         DBGrid1.Canvas.Font.Color  := clInfoBk;
     end;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFrm_RTroMol.fecha_abertoClick(Sender: TObject);
begin
    if fecha_aberto.Checked then
    begin
       label10.Caption := 'ABERTO';
       datafin.clear;
    end else label10.Caption := 'FECHADO';
end;

procedure TFrm_RTroMol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;

end;

end.

unit S_Justif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons,func, Mask, DB, DBTables,lerarq,S_EBol,
  ExtCtrls;

type
  TFrm_Justif = class(TForm)
    GB_TITULOS: TGroupBox;
    STG_TIT: TStringGrid;
    GB_OBSERVACOES: TGroupBox;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    bbFechar: TBitBtn;
    bbEmiteRel: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    MDT1: TMaskEdit;
    lbl_titsel: TLabel;
    SEL_TOTTIT: TStaticText;
    Label4: TLabel;
    SEL_VLRPAG: TStaticText;
    Label5: TLabel;
    SEL_VALDES: TStaticText;
    Label6: TLabel;
    SEL_JUROS: TStaticText;
    SEL_VLRAPAGAR: TStaticText;
    Label7: TLabel;
    lbl_titab: TLabel;
    AB_TOTTIT: TStaticText;
    Label8: TLabel;
    AB_VLRPAG: TStaticText;
    Label9: TLabel;
    AB_VALDES: TStaticText;
    Label10: TLabel;
    AB_JUROS: TStaticText;
    Label11: TLabel;
    AB_VLRAPAGAR: TStaticText;
    Label12: TLabel;
    Label13: TLabel;
    OBS01: TMemo;
    Qr_Tempor: TQuery;
    bbEmibol: TBitBtn;
    Qr_Logotipo: TQuery;
    Qr_LogotipoTPLOGBAN: TMemoField;
    procedure bbFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MDT1Exit(Sender: TObject);
    procedure STG_TITClick(Sender: TObject);
    procedure STG_TITDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bbEmibolClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function fcalcular(pTipo: Integer): boolean;
  public
    { Public declarations }
  end;

var
  Frm_Justif: TFrm_Justif;
  mArqRec: String;
  mjust_Origem: String;
implementation

uses S_DM1;

{$R *.dfm}

procedure TFrm_Justif.bbFecharClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Justif.FormCreate(Sender: TObject);
var
f: Textfile;
mLinha: String;
mlin: Integer;
dia,mes,ano: word;
mdata_lib: TDateTime;

begin
Qr_Tempor.Close;
Qr_Tempor.DatabaseName:=Banco_Servidor+'\NOVAVER';
Qr_Tempor.SQL.Clear;
Qr_Tempor.SQL.Add('Select * from '+mArqRec);
Qr_Tempor.Open;

MDT1.Text:=FormatDateTime(fdt2, date);
STG_TIT.RowCount:=2;

STG_TIT.ColWidths[00]:=010; // 'Sel';
STG_TIT.ColWidths[01]:=070; //'Titulo';
STG_TIT.ColWidths[02]:=065; //'Dt.Emissão';
STG_TIT.ColWidths[03]:=070; //'Valor';
STG_TIT.ColWidths[04]:=065; //'Dt.Vcto';
STG_TIT.ColWidths[05]:=070; //'Vlr.ja Pago';
STG_TIT.ColWidths[06]:=070; //'Vlr.Restante';
STG_TIT.ColWidths[07]:=070; //'Juros p/dia';
STG_TIT.ColWidths[08]:=030; //'Atraso';
STG_TIT.ColWidths[09]:=070; //'Valor do Juros;
STG_TIT.ColWidths[10]:=070; //'Valor do Desconto;
STG_TIT.ColWidths[11]:=070; //'Valor p/Pgto';
STG_TIT.ColWidths[12]:=150; //'Tipo Cobranca';
STG_TIT.ColWidths[13]:=200; //'Observações';
STG_TIT.ColWidths[14]:=150; //'Tipo do Documento';
STG_TIT.ColWidths[15]:=30; //' Desdobramento


STG_TIT.Cells[00,00]:='Sel';
STG_TIT.Cells[01,00]:='Titulo';
STG_TIT.Cells[02,00]:='Dt.Emissão';
STG_TIT.Cells[03,00]:='Valor';
STG_TIT.Cells[04,00]:='Dt.Vcto';
STG_TIT.Cells[05,00]:='Vlr.ja Pago';
STG_TIT.Cells[06,00]:='Vlr.Restante';
STG_TIT.Cells[07,00]:='Juros p/dia';
STG_TIT.Cells[08,00]:='Atraso';
STG_TIT.Cells[09,00]:='Valor do Juro';
STG_TIT.Cells[10,00]:='Valor Desconto';
STG_TIT.Cells[11,00]:='Valor p/Pgto';
STG_TIT.Cells[12,00]:='Tipo Cobranca';
STG_TIT.Cells[13,00]:='Observações';
STG_TIT.Cells[14,00]:='Tipo do Documento';
STG_TIT.Cells[15,00]:='Desd';

STG_TIT.Rows[01].Clear;
OBS01.Lines.Clear;
if FileExists(Banco_Servidor+'\NOVAVER\'+mArqRec+'.RES') then
   begin
   AssignFile(f,Banco_Servidor+'\NOVAVER\'+mArqRec+'.RES');
   reset(f);
   ReadLn(f,mlinha);
   While mlinha<>'' do
      begin
      if copy(mlinha,01,03)='005' then
         begin
         OBS01.Lines.Add(copy(mlinha,04,184));
         end;
      ReadLn(f,mlinha);
      end;
   closefile(f);
   DeleteFile(Banco_Servidor+'\NOVAVER\'+mArqRec+'.RES');
   end;
if mjust_Origem='89' then
   begin
   flparger(0,0,'1');
   mcinst:=PalNum_Sis(DM1.Tb_PargerPA001.Value);
   dia:=StrToInt('0'+Copy(mcinst,1,2));
   mes:=StrToInt('0'+Copy(mcinst,3,2));
   ano:=StrToInt('0'+Copy(mcinst,5,4));
   If (dia in [1..31]) and (mes in [1..12]) and (ano>=2000) then
       mdata_lib:=EncodeDate(ano,mes,dia)
   else mdata_lib:=Date-60;
   OBS01.Lines.Add('O Seu Sistema esta Liberado até: '+FormatDateTime(fdt2, mdata_lib));
   end;

While not Qr_Tempor.Eof do
   begin
   mlin:=STG_TIT.RowCount;
   STG_TIT.RowCount:=mlin+1;
   STG_TIT.Rows[mlin].Clear;
   mlin:=mlin-1;
   STG_TIT.Cells[00,mlin]:='X';
   STG_TIT.Cells[01,mlin]:=Qr_Tempor.fieldbyName('TPNUMERO').AsString;
   if (Qr_Tempor.fieldbyName('TPDTEMIS').isnull) or (Qr_Tempor.fieldbyName('TPDTEMIS').asDatetime<=pdatanula) then
      STG_TIT.Cells[02,mlin]:='/  /'
   else
      STG_TIT.Cells[02,mlin]:=FormatDatetime(fdt2, Qr_Tempor.fieldbyName('TPDTEMIS').AsDateTime);
   STG_TIT.Cells[03,mlin]   :=FormatFloat(mcasas, Qr_Tempor.FieldByName('TPVALOR').AsFloat);
   if (Qr_Tempor.fieldbyName('TPDTVCTO').isnull) or (Qr_Tempor.fieldbyName('TPDTVCTO').asDatetime<=pdatanula) then
      STG_TIT.Cells[04,mlin]:='/  /'
   else
      STG_TIT.Cells[04,mlin]:=FormatDatetime(fdt2, Qr_Tempor.fieldbyName('TPDTVCTO').AsDateTime);
   STG_TIT.Cells[05,mlin]   :=FormatFloat(mcasas, Qr_Tempor.FieldByName('TPVALPAG').AsFloat);
   STG_TIT.Cells[06,mlin]:=FormatFloat(mcasas, valfloat(STG_TIT.Cells[03,mlin])-valfloat(STG_TIT.Cells[05,mlin]));
   STG_TIT.Cells[07,mlin]   :=FormatFloat(mcasas, Qr_Tempor.FieldByName('TPJURD').AsFloat);
   STG_TIT.Cells[08,mlin]:=FloattoStr(StrToDate(MDT1.Text)-StrtoDate(STG_TIT.Cells[04,mlin]));
   STG_TIT.Cells[09,mlin]:=FormatFloat(mcasas,  valfloat(STG_TIT.Cells[07,mlin])
                                                    * valfloat(STG_TIT.Cells[08,mlin])  );
   STG_TIT.Cells[10,mlin]   :=FormatFloat(mcasas, Qr_Tempor.FieldByName('TPDESCF').AsFloat);
   STG_TIT.Cells[11,mlin]:=FormatFloat(mcasas, valfloat(STG_TIT.Cells[06,mlin])
                                            +  valfloat(STG_TIT.Cells[09,mlin])
                                            -  valfloat(STG_TIT.Cells[10,mlin]) );
   STG_TIT.Cells[12,mlin]:=Qr_Tempor.FieldByName('TPTIPOCOB').AsString;
   STG_TIT.Cells[13,mlin]:=Qr_Tempor.FieldByName('TPOBS').AsString;
   STG_TIT.Cells[14,mlin]:=Qr_Tempor.FieldByName('TPNOMDOC').AsString;
   STG_TIT.Cells[15,mlin]:=Qr_Tempor.FieldByName('TPDESD').AsString;

   Qr_Tempor.Next;
   end;

fcalcular(0);



{                                 4
layout do arquivo de recebimento
Tipo de Registro 001
Nome             Tipo Campo Tamanho  Pos.Ini   Pos.Fim Conteudo
Identificador    Numerico     003      001       003   Fixo=001
Numero           Numerico     006      004       009   Número do titulo
Parcela          Caractere    002      010       011   Desdobramento do Parcela
Dt.Emissao       Data         008      012       019   Data de Vencimento do Titulo Formato yyyymmdd
Valor            Numerico     014      020       033   Valor do Titulo com 2 Decimais e Sem ponto
Dt.Vcto          Data         008      034       041   Data de Vencimento do Titulo Formato yyyymmdd
Juros por dia    Numerico     014      042       055   Juros por diade Atraso com 2 decimais e sem ponto
Multa por Atraso Numerico     014      056       069   Multa por Atraso com 2 decimais e sem ponto
Desc.p/Antecip   Numerico     014      070       083   Desconto por dia Atecipaçao com 2 decimais e sem ponto
Valor ja Pago    Numerico     014      084       097   Valor ja Pago com 2 decimais e sem ponto
Tipo Cobranca    Caractere    030      098       127   Tipo da Cobranca do Titulo
Observaçoes      Caractere    040      128       167   Observações
Tipo Documento   Caractere    020      168       187   Tipo do Documento
Descfin          Numerico     014      188       201   Valor do desconto financeiro com 2 decimais e sem ponto
p/Pgto ate       Data         008      202       209   Data limete para desconto financeiro Formato yyyymmdd
Linha Digitavel  Caractere    030      210       239   Linha digitavel para paragamento on-line


layout do arquivo de recebimento
Tipo de Registro 005
Nome             Tipo Campo Tamanho  Pos.Ini   Pos.Fim Conteudo
Identificador    Numerico     003      001       003   Fixo=005
Observações      Caractere    206      004       209   Observações


}



end;


function TFrm_Justif.fcalcular(pTipo: Integer): boolean;
var
mqtdtit,x: Integer;
mtottit, mtotpag, mtotdes,mtotjur: Real;

begin
mtottit:=0;
mtotpag:=0;
mtotdes:=0;
mtotjur:=0;
mqtdtit:=0;
for x:=1 to STG_TIT.RowCount do
   begin
   if trim(STG_TIT.Cells[01,x])='' then
      Continue;
   mqtdtit:=mqtdtit+1;
   STG_TIT.Cells[08,x]:=FloattoStr(StrToDate(MDT1.Text)-StrtoDate(STG_TIT.Cells[04,x]));
   STG_TIT.Cells[09,x]:=FormatFloat(mcasas, valfloat(STG_TIT.Cells[07,x])
                                            *  valfloat(STG_TIT.Cells[08,x]) );
   STG_TIT.Cells[11,x]:=FormatFloat(mcasas, valfloat(STG_TIT.Cells[06,x])
                                            +  valfloat(STG_TIT.Cells[09,x])
                                            -  valfloat(STG_TIT.Cells[10,x]) );
   mtottit:=mtottit+ValFloat(STG_TIT.Cells[03,x]);
   mtotpag:=mtotpag+ValFloat(STG_TIT.Cells[05,x]);
   mtotdes:=mtotdes+ValFloat(STG_TIT.Cells[10,x]);
   mtotjur:=mtotjur+ValFloat(STG_TIT.Cells[09,x]);
   end;


if mqtdtit>1 then
   lbl_titab.Caption :=IntToStr(mqtdtit)+' títulos em abertos: '
else
   lbl_titab.Caption :=IntToStr(mqtdtit)+' título em aberto: ';
AB_TOTTIT.Caption    :=Formatfloat(mcasas, mtottit);
AB_VLRPAG.Caption    :=Formatfloat(mcasas, mtotpag);
AB_VALDES.Caption    :=Formatfloat(mcasas, mtotdes);
AB_JUROS.Caption     :=Formatfloat(mcasas, mtotjur);
AB_VLRAPAGAR.Caption :=Formatfloat(mcasas, (mtottit-mtotpag-mtotdes+mtotjur));



mtottit:=0;
mtotpag:=0;
mtotdes:=0;
mtotjur:=0;
mqtdtit:=0;
for x:=1 to STG_TIT.RowCount do
   begin
   if trim(STG_TIT.Cells[01,x])='' then
      Continue;
   if trim(STG_TIT.Cells[00,x])<>'X' then
      Continue;

   mqtdtit:=mqtdtit+1;
   STG_TIT.Cells[08,x]:=FloattoStr(StrToDate(MDT1.Text)-StrtoDate(STG_TIT.Cells[04,x]));
   STG_TIT.Cells[09,x]:=FormatFloat(mcasas, valfloat(STG_TIT.Cells[07,x])
                                            *  valfloat(STG_TIT.Cells[08,x]) );
   STG_TIT.Cells[11,x]:=FormatFloat(mcasas, valfloat(STG_TIT.Cells[06,x])
                                            +  valfloat(STG_TIT.Cells[09,x])
                                            -  valfloat(STG_TIT.Cells[10,x]) );
   mtottit:=mtottit+ValFloat(STG_TIT.Cells[03,x]);
   mtotpag:=mtotpag+ValFloat(STG_TIT.Cells[05,x]);
   mtotdes:=mtotdes+ValFloat(STG_TIT.Cells[10,x]);
   mtotjur:=mtotjur+ValFloat(STG_TIT.Cells[09,x]);
   end;
if mqtdtit>1 then
   lbl_titsel.Caption :=IntToStr(mqtdtit)+' títulos Selecionados: '
else
   lbl_titsel.Caption :=IntToStr(mqtdtit)+' título Selecionado: ';
SEL_TOTTIT.Caption    :=Formatfloat(mcasas, mtottit);
SEL_VLRPAG.Caption    :=Formatfloat(mcasas, mtotpag);
SEL_VALDES.Caption    :=Formatfloat(mcasas, mtotdes);
SEL_JUROS.Caption     :=Formatfloat(mcasas, mtotjur);
SEL_VLRAPAGAR.Caption :=Formatfloat(mcasas, (mtottit-mtotpag-mtotdes+mtotjur));
result:=true;

end;
procedure TFrm_Justif.MDT1Exit(Sender: TObject);
begin
if Trim(MDT1.Text)<>'/  /' then
   begin
   try
      MDT1.Text:=FormatDatetime(fdt2, StrtoDate(MDT1.Text));
   except
      MessageDlg('data inválida!',mtWarning,[mbOk],0);
      MDT1.Text:=formatDateTime(fdt2, date);
      end;
   end
else
   MDT1.Text:=formatDateTime(fdt2, date);
fcalcular(0);

end;

procedure TFrm_Justif.STG_TITClick(Sender: TObject);
begin
if (STG_TIT.Row>0) and (trim(STG_TIT.Cells[01,STG_TIT.ROW])<>'') then
   begin
   if STG_TIT.Cells[00,STG_TIT.Row]='X' then
      STG_TIT.Cells[00,STG_TIT.Row]:=''
   else
      STG_TIT.Cells[00,STG_TIT.Row]:='X';
   fcalcular(0);
   end;
end;

procedure TFrm_Justif.STG_TITDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  LarguraTexto, AlturaTexto, X, Y: integer;
  Texto: string;
begin
if (arow>0) and ((aCol=3) or (acol=5) or (acol=6) or (acol=7) or (acol=8)
                  or (acol=9) or (acol=10) or (acol=11)) then
//Pega o texto da célula
  begin

  Texto := STG_TIT.Cells[ACol, ARow];

//Calcura largura e altura (em pontos) do texto
  LarguraTexto := STG_TIT.Canvas.TextWidth(Texto);
  AlturaTexto := STG_TIT.Canvas.TextHeight(Texto);

// Direita
   X := Rect.Right - LarguraTexto - 2;

// Calcula a posição vertical do início do texto para
//    que seja impresso no centro (verticalmente) da célula
  Y := Rect.Top + (Rect.Bottom - Rect.Top) div 2 -
    AlturaTexto div 2;
//   Pinta o texto
  STG_TIT.Canvas.TextRect(Rect, X, Y, Texto);
  end;


end;

procedure TFrm_Justif.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Qr_Tempor.Close;
DeleteFile(Banco_Servidor+'\NOVAVER\'+mArqRec+'.DB');
DeleteFile(Banco_Servidor+'\NOVAVER\'+mArqRec+'.MB');

end;

procedure TFrm_Justif.bbEmibolClick(Sender: TObject);
begin
if  ValFloat(STG_TIT.Cells[01,STG_TIT.Row])=0 then
    begin
    MessageDlg('Favor selecionar um titulo para ser Impresso!',mtWarning,[mbOk],0);
    exit;
    end;

if not Qr_Tempor.Locate('TPNUMERO;TPDESD;TPVALOR',
                   vararrayof([
                   valfloat(STG_TIT.Cells[01,STG_TIT.Row]),
                   STG_TIT.Cells[15,STG_TIT.Row],
                   valfloat(STG_TIT.Cells[03,STG_TIT.Row])]),[]) then

   begin
   MessageDlg('Título não Encontrado!',mtWarning,[mbOk],0);
   exit;
   end;
if trim(Qr_Tempor.FieldByName('TPCODBAR').AsString)='' then
   begin
   MessageDlg('Não é uma cobrança bancária válida!',mtWarning,[mbOk],0);
   exit;
   end;
Application.CreateForm(TFrm_Ebol, Frm_Ebol);
ebol_ori:='frm_justif';
Frm_Ebol.Tb_Dup.Close;
Frm_Ebol.Tb_Dup.DatabaseName:=Banco_Servidor+'\NOVAVER';

Frm_Ebol.Tb_Dup.Sql.Clear;
Frm_Ebol.Tb_Dup.SQl.Add('Select '+IntToStr(codemp)+' as CRCODEMP, ');
Frm_Ebol.Tb_Dup.SQl.Add('       TPDTVCTO as CRDTVCTO,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPDTEMIS as CRDTEMIS,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPNUMERO as CRNUMERO,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPDESD   as CRDESD,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPDUP    as CRDUP,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPNOSNUM as CRNOSNUM,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPDNOSNUM as CRDNOSNUM,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPCODDIG as CRCODDIG,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPCODBAR as CRCODBAR,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPACEITE_CLI as CRACEITE,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPESPECIE_CLI as CRESPECIE,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPINST01 as CRINST01,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPINST02 as CRINST02,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPINST03 as CRINST03,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPINST04 as CRINST04,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPVALOR  as CRVALOR,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPDESCF  as CRDESCF,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPDTDESCF as CRDTDESCF,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPJURD   as CRJURD,');
Frm_Ebol.Tb_Dup.SQl.Add('       (TPJURD-TPJURD)   as CRMULTA,');
Frm_Ebol.Tb_Dup.SQl.Add('       (TPJURD-TPJURD)   as CRQTDDM,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPCODCLI  as CRCODCLI,');
Frm_Ebol.Tb_Dup.SQl.Add('       TPCODVEN  as CRCODVEN,');
Frm_Ebol.Tb_Dup.SQl.Add('       (TPJURD-TPJURD)  as CRCODPV,');
Frm_Ebol.Tb_Dup.SQl.Add('       '+chr(39)+'  '+chr(39)+' as CRTABPV,');
Frm_Ebol.Tb_Dup.SQl.Add('       '+chr(39)+insere2(' ',' ',20)+chr(39)+' as CRNFACUM');
Frm_Ebol.Tb_Dup.SQl.Add('       ,0 as CRMULTA,0 as CRQTDDM, 0 as CRCODFPGTO '
                       +' ,CRQTDPARC,CRNUMPARC,CRCOMPETENCIA_DTINICIO ');

Frm_Ebol.Tb_Dup.SQl.Add(' from '+mArqRec
                       +' where TPNUMERO=0'+Qr_Tempor.fieldbyName('TPNUMERO').AsString
                       +' and   TPDESD='+chr(39)+Qr_Tempor.fieldbyName('TPDESD').asstring+chr(39)
                       +' and   TPVALOR='+mudavp(Qr_Tempor.fieldbyName('TPVALOR').AsString));
Frm_Ebol.Tb_Dup.Open;
if Frm_Ebol.Tb_Dup.Eof then
   begin
   MessageDlg('Não Foi possível ler a duplicata de origem!',mtWarning,[mbOk],0);
   exit;
   end;
if not (Qr_Tempor.FieldByName('TPLOGBAN').IsNull) and (Qr_Tempor.FieldByName('TPLOGBAN').Value<>'') then
   begin
   Qr_Logotipo.Close;
   Qr_Logotipo.SQL.Clear;
   Qr_Logotipo.SQL.Add('Select TPLOGBAN '
                      +' from '+mArqRec
                      +' where TPNUMERO=0'+Qr_Tempor.fieldbyName('TPNUMERO').AsString
                      +' and   TPDESD='+chr(39)+Qr_Tempor.fieldbyName('TPDESD').asstring+chr(39)
                      +' and   TPVALOR='+mudavp(Qr_Tempor.fieldbyName('TPVALOR').AsString));
   Qr_Logotipo.Open;
   if not Qr_Logotipo.Eof then
      begin
      Qr_LogotipoTPLOGBAN.SaveToFile('C:\SGE\LOGBAN.JPG');
      Frm_EBol.rlLogo01.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
      Frm_EBol.rlLogo02.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
      Frm_EBol.rlLogo03.Picture.LoadFromFile('\SGE\LOGBAN.JPG');
      end;
   end;
verteclado(0);
Frm_EBol.RL_BOLETAS.PreviewModal;
Frm_EBol.Free;
Frm_EBol:=nil;

end;

procedure TFrm_Justif.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

unit S_HLic;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, S_DM1, S_DM3, Func, Buttons, Spin, S_Agde,
  ShellApi;

type
  TFrm_HLic = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    FONFAN: TLabel;
    BBnFFan: TBitBtn;
    BBnFRaz: TBitBtn;
    FONRAZ: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    BBnFCab: TBitBtn;
    FONCAB: TLabel;
    Bevel3: TBevel;
    BBnFCor: TBitBtn;
    FONCOR: TLabel;
    Bevel4: TBevel;
    BBnFRod: TBitBtn;
    FONROD: TLabel;
    Bevel5: TBevel;
    FONDEC: TLabel;
    BBnFDec: TBitBtn;
    Bevel6: TBevel;
    FONDE2: TLabel;
    BBnFDe2: TBitBtn;
    BBnUFan: TBitBtn;
    BBnUCor: TBitBtn;
    SUFan: TShape;
    SUCor: TShape;
    BBnU2Cor: TBitBtn;
    SU2Cor: TShape;
    Borda: TSpinEdit;
    Label1: TLabel;
    Bevel7: TBevel;
    Label2: TLabel;
    NARQ: TEdit;
    BBnArquivo: TBitBtn;
    FD1: TFontDialog;
    CD1: TColorDialog;
    OD1: TOpenDialog;
    BBnGerar: TBitBtn;
    BBnFechar: TBitBtn;
    Bevel8: TBevel;
    BBnFCo2: TBitBtn;
    FONCO2: TLabel;
    procedure BBnArquivoClick(Sender: TObject);
    procedure BBnFFanClick(Sender: TObject);
    procedure BBnFRazClick(Sender: TObject);
    procedure BBnFCabClick(Sender: TObject);
    procedure BBnFCorClick(Sender: TObject);
    procedure BBnFRodClick(Sender: TObject);
    procedure BBnFDecClick(Sender: TObject);
    procedure BBnFDe2Click(Sender: TObject);
    procedure BBnUFanClick(Sender: TObject);
    procedure BBnUCorClick(Sender: TObject);
    procedure BBnU2CorClick(Sender: TObject);
    procedure BBnFecharClick(Sender: TObject);
    procedure BBnGerarClick(Sender: TObject);
    procedure BBnFCo2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_HLic: TFrm_HLic;
  mQtdCasa: Integer;

implementation

{$R *.DFM}

procedure TFrm_HLic.BBnArquivoClick(Sender: TObject);
begin
If OD1.Execute then
   NARQ.Text:=OD1.FileName;
end;

procedure TFrm_HLic.BBnFFanClick(Sender: TObject);
begin
If FD1.Execute then
   FONFAN.Font:=FD1.Font;
end;

procedure TFrm_HLic.BBnFRazClick(Sender: TObject);
begin
If FD1.Execute then
   FONRAZ.Font:=FD1.Font;
end;

procedure TFrm_HLic.BBnFCabClick(Sender: TObject);
begin
If FD1.Execute then
   FONCAB.Font:=FD1.Font;
end;

procedure TFrm_HLic.BBnFCorClick(Sender: TObject);
begin
If FD1.Execute then
   FONCOR.Font:=FD1.Font;
end;

procedure TFrm_HLic.BBnFRodClick(Sender: TObject);
begin
If FD1.Execute then
   FONROD.Font:=FD1.Font;
end;

procedure TFrm_HLic.BBnFDecClick(Sender: TObject);
begin
If FD1.Execute then
   FONDEC.Font:=FD1.Font;
end;

procedure TFrm_HLic.BBnFDe2Click(Sender: TObject);
begin
If FD1.Execute then
   FONDE2.Font:=FD1.Font;
end;

procedure TFrm_HLic.BBnUFanClick(Sender: TObject);
begin
If CD1.Execute then
   SUFan.Brush.Color:=CD1.Color;
end;

procedure TFrm_HLic.BBnUCorClick(Sender: TObject);
begin
If CD1.Execute then
   SUCor.Brush.Color:=CD1.Color;
end;

procedure TFrm_HLic.BBnU2CorClick(Sender: TObject);
begin
If CD1.Execute then
   SU2Cor.Brush.Color:=CD1.Color;
end;

procedure TFrm_HLic.BBnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_HLic.BBnGerarClick(Sender: TObject);
var
  F: TextFile;
  mfonfan, mfonraz, mfoncab, mfoncor, mfonrod, mfondec, mfonde2, mborda: string;
  mfonco2, mfunfan, mfuncor1, mfuncor2, mnome, maux: string;
  bfan, ifan, braz, iraz, bcab, icab, bcor, icor: string;
  brod, irod, bdec, idec, bde2, ide2, bco2, ico2: string;
  bfanf, ifanf, brazf, irazf, bcabf, icabf, bcorf, icorf: string;
  brodf, irodf, bdecf, idecf, bde2f, ide2f, bco2f, ico2f: string;
  malterna: boolean;
  mtot, mreg, mcol: integer;
  mcomando: PCHAR;
  mtotgv, mtotgp: real;
begin

mnome:=NARQ.Text;
If (copy(mnome,Length(mnome)-3,4)<>'.htm') and (copy(mnome,Length(mnome)-4,5)<>'.html') then
   begin
   fMensagem('O Arquivo deve ter a extensão .htm ou .html',0,['1','2'],2);
   NARQ.SetFocus;
   Exit;
   end;
If FileExists(mnome) then
   begin
   If fMensagem('Já existe um arquivo com este nome!'+#13
                +'Deseja sobrescrevê-lo?',2,['1','2'],0)<>mrYes then
      begin
      NARQ.SetFocus;
      Exit;
      end;
   end;
Application.CreateForm(TFrm_Agde, Frm_Agde);
Frm_Agde.Panel1.Caption:='Gerando código HTML...';
Frm_Agde.gb_progres.Visible:=True;
Frm_Agde.Show;
Frm_Agde.Update;
//Bordas da Tabela
mborda:='BORDER="'+IntToStr(Borda.Value)+'"';
//Cor de Fundo
mfunfan:='"#'+IntToHex(GetRValue(SUFan.Brush.Color),2)
             +IntToHex(GetGValue(SUFan.Brush.Color),2)
             +IntToHex(GetBValue(SUFan.Brush.Color),2)+'"';
//Cor de Fundo dos itens
mfuncor1:='"#'+IntToHex(GetRValue(SUCor.Brush.Color),2)
              +IntToHex(GetGValue(SUCor.Brush.Color),2)
              +IntToHex(GetBValue(SUCor.Brush.Color),2)+'"';
//Cor de Fundo dos itens
mfuncor2:='"#'+IntToHex(GetRValue(SU2Cor.Brush.Color),2)
              +IntToHex(GetGValue(SU2Cor.Brush.Color),2)
              +IntToHex(GetBValue(SU2Cor.Brush.Color),2)+'"';
//Fonte Fantasia
mfonfan:='<FONT FACE="'+FONFAN.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONFAN.Font.Color),2)
        +IntToHex(GetGValue(FONFAN.Font.Color),2)
        +IntToHex(GetBValue(FONFAN.Font.Color),2)+'" SIZE="';
If (FONFAN.Font.Size<=08) then mfonfan:=mfonfan+'1'                                 // 08 1
else If (FONFAN.Font.Size>=09) and (FONFAN.Font.Size<=10) then mfonfan:=mfonfan+'2' // 10 2
else If (FONFAN.Font.Size>=11) and (FONFAN.Font.Size<=12) then mfonfan:=mfonfan+'3' // 12 3
else If (FONFAN.Font.Size>=13) and (FONFAN.Font.Size<=14) then mfonfan:=mfonfan+'4' // 14 4
else If (FONFAN.Font.Size>=15) and (FONFAN.Font.Size<=18) then mfonfan:=mfonfan+'5' // 18 5
else If (FONFAN.Font.Size>=19) and (FONFAN.Font.Size<=24) then mfonfan:=mfonfan+'6' // 24 6
else If (FONFAN.Font.Size>=25) then mfonfan:=mfonfan+'7';                           // 36 7
mfonfan:=mfonfan+'">';
bfan:=''; ifan:=''; bfanf:=''; ifanf:='';
If fsBold   in FONFAN.Font.Style then
   begin
   bfan :='<B>';
   bfanf:='</B>';
   end;
If fsItalic in FONFAN.Font.Style then
   begin
   ifan :='<I>';
   ifanf:='</I>';
   end;
//Fonte Razao
mfonraz:='<FONT FACE="'+FONRAZ.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONRAZ.Font.Color),2)
        +IntToHex(GetGValue(FONRAZ.Font.Color),2)
        +IntToHex(GetBValue(FONRAZ.Font.Color),2)+'" SIZE="';
If (FONRAZ.Font.Size<=08) then mfonraz:=mfonraz+'1'                                 // 08 1
else If (FONRAZ.Font.Size>=09) and (FONRAZ.Font.Size<=10) then mfonraz:=mfonraz+'2' // 10 2
else If (FONRAZ.Font.Size>=11) and (FONRAZ.Font.Size<=12) then mfonraz:=mfonraz+'3' // 12 3
else If (FONRAZ.Font.Size>=13) and (FONRAZ.Font.Size<=14) then mfonraz:=mfonraz+'4' // 14 4
else If (FONRAZ.Font.Size>=15) and (FONRAZ.Font.Size<=18) then mfonraz:=mfonraz+'5' // 18 5
else If (FONRAZ.Font.Size>=19) and (FONRAZ.Font.Size<=24) then mfonraz:=mfonraz+'6' // 24 6
else If (FONRAZ.Font.Size>=25) then mfonraz:=mfonraz+'7';                           // 36 7
mfonraz:=mfonraz+'">';
braz:=''; iraz:=''; brazf:=''; irazf:='';
If fsBold   in FONRAZ.Font.Style then
   begin
   braz :='<B>';
   brazf:='</B>';
   end;
If fsItalic in FONRAZ.Font.Style then
   begin
   iraz :='<I>';
   irazf:='</I>';
   end;
//Fonte Cabecalho
mfoncab:='<FONT FACE="'+FONCAB.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONCAB.Font.Color),2)
        +IntToHex(GetGValue(FONCAB.Font.Color),2)
        +IntToHex(GetBValue(FONCAB.Font.Color),2)+'" SIZE="';
If (FONCAB.Font.Size<=08) then mfoncab:=mfoncab+'1'                                 // 08 1
else If (FONCAB.Font.Size>=09) and (FONCAB.Font.Size<=10) then mfoncab:=mfoncab+'2' // 10 2
else If (FONCAB.Font.Size>=11) and (FONCAB.Font.Size<=12) then mfoncab:=mfoncab+'3' // 12 3
else If (FONCAB.Font.Size>=13) and (FONCAB.Font.Size<=14) then mfoncab:=mfoncab+'4' // 14 4
else If (FONCAB.Font.Size>=15) and (FONCAB.Font.Size<=18) then mfoncab:=mfoncab+'5' // 18 5
else If (FONCAB.Font.Size>=19) and (FONCAB.Font.Size<=24) then mfoncab:=mfoncab+'6' // 24 6
else If (FONCAB.Font.Size>=25) then mfoncab:=mfoncab+'7';                           // 36 7
mfoncab:=mfoncab+'">';
bcab:=''; icab:=''; bcabf:=''; icabf:='';
If fsBold   in FONCAB.Font.Style then
   begin
   bcab :='<B>';
   bcabf:='</B>';
   end;
If fsItalic in FONCAB.Font.Style then
   begin
   icab :='<I>';
   icabf:='</I>';
   end;
//Fonte Corpo
mfoncor:='<FONT FACE="'+FONCOR.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONCOR.Font.Color),2)
        +IntToHex(GetGValue(FONCOR.Font.Color),2)
        +IntToHex(GetBValue(FONCOR.Font.Color),2)+'" SIZE="';
If (FONCOR.Font.Size<=08) then mfoncor:=mfoncor+'1'                                 // 08 1
else If (FONCOR.Font.Size>=09) and (FONCOR.Font.Size<=10) then mfoncor:=mfoncor+'2' // 10 2
else If (FONCOR.Font.Size>=11) and (FONCOR.Font.Size<=12) then mfoncor:=mfoncor+'3' // 12 3
else If (FONCOR.Font.Size>=13) and (FONCOR.Font.Size<=14) then mfoncor:=mfoncor+'4' // 14 4
else If (FONCOR.Font.Size>=15) and (FONCOR.Font.Size<=18) then mfoncor:=mfoncor+'5' // 18 5
else If (FONCOR.Font.Size>=19) and (FONCOR.Font.Size<=24) then mfoncor:=mfoncor+'6' // 24 6
else If (FONCOR.Font.Size>=25) then mfoncor:=mfoncor+'7';                           // 36 7
mfoncor:=mfoncor+'">';
bcor:=''; icor:=''; bcorf:=''; icorf:='';
If fsBold   in FONCOR.Font.Style then
   begin
   bcor :='<B>';
   bcorf:='</B>';
   end;
If fsItalic in FONCOR.Font.Style then
   begin
   icor :='<I>';
   icorf:='</I>';
   end;
//Fonte Titulos do Corpo
mfonco2:='<FONT FACE="'+FONCO2.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONCO2.Font.Color),2)
        +IntToHex(GetGValue(FONCO2.Font.Color),2)
        +IntToHex(GetBValue(FONCO2.Font.Color),2)+'" SIZE="';
If (FONco2.Font.Size<=08) then mfonco2:=mfonco2+'1'                                 // 08 1
else If (FONCO2.Font.Size>=09) and (FONCO2.Font.Size<=10) then mfonco2:=mfonco2+'2' // 10 2
else If (FONCO2.Font.Size>=11) and (FONCO2.Font.Size<=12) then mfonco2:=mfonco2+'3' // 12 3
else If (FONCO2.Font.Size>=13) and (FONCO2.Font.Size<=14) then mfonco2:=mfonco2+'4' // 14 4
else If (FONCO2.Font.Size>=15) and (FONCO2.Font.Size<=18) then mfonco2:=mfonco2+'5' // 18 5
else If (FONCO2.Font.Size>=19) and (FONCO2.Font.Size<=24) then mfonco2:=mfonco2+'6' // 24 6
else If (FONCO2.Font.Size>=25) then mfonco2:=mfonco2+'7';                           // 36 7
mfonco2:=mfonco2+'">';
bco2:=''; ico2:=''; bco2f:=''; ico2f:='';
If fsBold   in FONCO2.Font.Style then
   begin
   bco2 :='<B>';
   bco2f:='</B>';
   end;
If fsItalic in FONCO2.Font.Style then
   begin
   ico2 :='<I>';
   ico2f:='</I>';
   end;
//Fonte Rodape
mfonrod:='<FONT FACE="'+FONROD.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONROD.Font.Color),2)
        +IntToHex(GetGValue(FONROD.Font.Color),2)
        +IntToHex(GetBValue(FONROD.Font.Color),2)+'" SIZE="';
If (FONROD.Font.Size<=08) then mfonrod:=mfonrod+'1'                                 // 08 1
else If (FONROD.Font.Size>=09) and (FONROD.Font.Size<=10) then mfonrod:=mfonrod+'2' // 10 2
else If (FONROD.Font.Size>=11) and (FONROD.Font.Size<=12) then mfonrod:=mfonrod+'3' // 12 3
else If (FONROD.Font.Size>=13) and (FONROD.Font.Size<=14) then mfonrod:=mfonrod+'4' // 14 4
else If (FONROD.Font.Size>=15) and (FONROD.Font.Size<=18) then mfonrod:=mfonrod+'5' // 18 5
else If (FONROD.Font.Size>=19) and (FONROD.Font.Size<=24) then mfonrod:=mfonrod+'6' // 24 6
else If (FONROD.Font.Size>=25) then mfonrod:=mfonrod+'7';                           // 36 7
mfonrod:=mfonrod+'">';
brod:=''; irod:=''; brodf:=''; irodf:='';
If fsBold   in FONROD.Font.Style then
   begin
   brod :='<B>';
   brodf:='</B>';
   end;
If fsItalic in FONROD.Font.Style then
   begin
   irod :='<I>';
   irodf:='</I>';
   end;
//Fonte Declaracoes
mfondec:='<FONT FACE="'+FONDEC.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONDEC.Font.Color),2)
        +IntToHex(GetGValue(FONDEC.Font.Color),2)
        +IntToHex(GetBValue(FONDEC.Font.Color),2)+'" SIZE="';
If (FONDEC.Font.Size<=08) then mfondec:=mfondec+'1'                                 // 08 1
else If (FONDEC.Font.Size>=09) and (FONDEC.Font.Size<=10) then mfondec:=mfondec+'2' // 10 2
else If (FONDEC.Font.Size>=11) and (FONDEC.Font.Size<=12) then mfondec:=mfondec+'3' // 12 3
else If (FONDEC.Font.Size>=13) and (FONDEC.Font.Size<=14) then mfondec:=mfondec+'4' // 14 4
else If (FONDEC.Font.Size>=15) and (FONDEC.Font.Size<=18) then mfondec:=mfondec+'5' // 18 5
else If (FONDEC.Font.Size>=19) and (FONDEC.Font.Size<=24) then mfondec:=mfondec+'6' // 24 6
else If (FONDEC.Font.Size>=25) then mfondec:=mfondec+'7';                           // 36 7
mfondec:=mfondec+'">';
bdec:=''; idec:=''; bdecf:=''; idecf:='';
If fsBold   in FONDEC.Font.Style then
   begin
   bdec :='<B>';
   bdecf:='</B>';
   end;
If fsItalic in FONDEC.Font.Style then
   begin
   idec :='<I>';
   idecf:='</I>';
   end;
//Fonte Declaracoes 2
mfonde2:='<FONT FACE="'+FONDE2.Font.Name+'" COLOR="#'
        +IntToHex(GetRValue(FONDE2.Font.Color),2)
        +IntToHex(GetGValue(FONDE2.Font.Color),2)
        +IntToHex(GetBValue(FONDE2.Font.Color),2)+'" SIZE="';
If (FONDE2.Font.Size<=08) then mfonde2:=mfonde2+'1'                                 // 08 1
else If (FONDE2.Font.Size>=09) and (FONDE2.Font.Size<=10) then mfonde2:=mfonde2+'2' // 10 2
else If (FONDE2.Font.Size>=11) and (FONDE2.Font.Size<=12) then mfonde2:=mfonde2+'3' // 12 3
else If (FONDE2.Font.Size>=13) and (FONDE2.Font.Size<=14) then mfonde2:=mfonde2+'4' // 14 4
else If (FONDE2.Font.Size>=15) and (FONDE2.Font.Size<=18) then mfonde2:=mfonde2+'5' // 18 5
else If (FONDE2.Font.Size>=19) and (FONDE2.Font.Size<=24) then mfonde2:=mfonde2+'6' // 24 6
else If (FONDE2.Font.Size>=25) then mfonde2:=mfonde2+'7';                           // 36 7
mfonde2:=mfonde2+'">';
bde2:=''; ide2:=''; bde2f:=''; ide2f:='';
If fsBold   in FONDE2.Font.Style then
   begin
   bde2 :='<B>';
   bde2f:='</B>';
   end;
If fsItalic in FONDE2.Font.Style then
   begin
   ide2 :='<I>';
   ide2f:='</I>';
   end;
//Montagem da Página

if DM1.Tb_LC1LC1_CASASDEC.AsInteger=0 then
  begin
  mQtdcasa:=DM1.Tb_PargerPCASASPU.AsInteger;
  end
else
  begin
  mQtdCasa:=DM1.Tb_LC1LC1_CASASDEC.AsInteger+1;
  end;

AssignFile(F,mnome);
ReWrite(F);
Writeln(F,'<HTML>');
Writeln(F,'<HEAD><TITLE>Intersys Sistemas e Perifericos Ltda. - Licitação</TITLE></HEAD>');
Writeln(F,'<BODY BGCOLOR='+mfunfan+'>');
Writeln(F,'<CENTER>');
Writeln(F,mfonfan+bfan+ifan+DM1.Tb_EMPFANTASIA.Value+ifanf+bfanf+'</FONT><BR>');
Writeln(F,mfonraz+braz+iraz+DM1.Tb_EmpRAZAO.Value+irazf+brazf+'</FONT><BR>');
Writeln(F,mfonraz+braz+iraz+DM1.Tb_EmpENDER.Value+'     '+DM1.Tb_EmpBAIRRO.Value+irazf+brazf+'</FONT><BR>');
Writeln(F,mfonraz+braz+iraz+'Fone: '+DM1.Tb_EmpFONE.Value
      +IIF(DM1.Tb_EmpTELEVENDAS.IsNull,'','     Televendas: '+DM1.Tb_EmpTELEVENDAS.Value)+irazf+brazf+'</FONT><BR>');

Writeln(F,mfonraz+braz+iraz+DM1.Tb_LC1LC1_EMAIL.Value+irazf+brazf+'</FONT><BR>');
Writeln(F,'</CENTER>');

Writeln(F,'<P ALIGN="right">Chave nº:'+mfonraz+braz+iraz+DM1.Tb_LC1LC1_CHAVE.AsString+irazf+brazf+'</FONT></P>');
//Cabeçalho
Writeln(F,'<P>');

Writeln(F,mfoncab+bcab+icab+DM1.Tb_LC1LC1_NOMCLI.Value+icabf+bcabf+'</FONT><BR>');

Writeln(F,mfoncab+bcab+icab+DM1.Tb_LC1LC1_nomloc.Value+icabf+bcabf+'</FONT><BR>');

Writeln(F,mfoncab+bcab+icab+'CGC..: '+MaskCPFCNPJ2(DM1.Tb_LC1LC1_cnpj.AsString)+icabf+bcabf+'</FONT><BR>');

Writeln(F,mfoncab+bcab+icab+'Orgao: '+DM1.Tb_LC1LC1_AOSCUI.Value+icabf+bcabf+'</FONT><BR>');

Writeln(F,mfoncab+bcab+icab+'Modalidade: '+DM1.Tb_LC1LC1_OBJETO.Value+icabf+bcabf+'</FONT><BR>');

Writeln(F,mfonraz+bcab+icab+'Carta Convite: '+DM1.Tb_LC1LC1_CARCON.Value+irazf+brazf+'</FONT><BR>');

Writeln(F,mfoncab+bcab+icab+'Data: '+Insere2(DM1.Tb_LC1LC1_DATCON.AsString,' ',20)
         +'Hora: '+formatdatetime(fdt2,  DM1.Tb_LC1LC1_DATCON.AsDateTime)+icabf+bcabf+'</FONT><BR>');
//Itens
Writeln(F,'<P>');
Writeln(F,'<TABLE '+mborda+' BGCOLOR='+mfuncor1+'>');
Writeln(F,'<TR>');
Writeln(F,'<TD>'+mfonco2+bco2+ico2+'Item'     +ico2f+bco2f+'</FONT></TD>');
Writeln(F,'<TD>'+mfonco2+bco2+ico2+'Quant.'   +ico2f+bco2f+'</FONT></TD>');
Writeln(F,'<TD>'+mfonco2+bco2+ico2+'Und.'     +ico2f+bco2f+'</FONT></TD>');
Writeln(F,'<TD WIDTH="42%">'+mfonco2+bco2+ico2+'Descrição'+ico2f+bco2f+'</FONT></TD>');
Writeln(F,'<TD WIDTH="13%">'+mfonco2+bco2+ico2+'Marca'    +ico2f+bco2f+'</FONT></TD>');
mcol:=6;


If DM1.Tb_LC1LC1_DIGRMS.Value=0 then
   begin
   Writeln(F,'<TD>'+mfonco2+bco2+ico2+'Reg.M.S.'+ico2f+bco2f+'</FONT></TD>');
   mcol:=mcol+1;
   end;

If DM1.Tb_LC1LC1_PCOAVI.Value=0 then
   begin
   Writeln(F,'<TD ALIGN="center">'+mfonco2+bco2+ico2+'Preço Unitário'+ico2f+bco2f+'</FONT></TD>');
   mcol:=mcol+1;
   end;

If DM1.Tb_LC1LC1_PCOPRZ.Value=0 then
   begin
      Writeln(F,'<TD ALIGN="center">'+mfonco2+bco2+ico2+'Preço à Prazo'+ico2f+bco2f+'</FONT></TD>');
   mcol:=mcol+1;
   end;
{
If DM1.Tb_LC1LC1_EXTUAV.Value=0 then
   begin
   Writeln(F,'<TD>'+mfonco2+bco2+ico2+'Preço Unitário'+ico2f+bco2f+'</FONT></TD>');
   mcol:=mcol+1;
   end;
}
Writeln(F,'<TD ALIGN="center">'+mfonco2+bco2+ico2+'Valor Total'+ico2f+bco2f+'</FONT></TD>');
Writeln(F,'</TR>');
malterna:=True;
mtot:=DM1.Tb_LC2.RecordCount;
mreg:=0;
mtotgv:=0; mtotgp:=0;
DM1.Tb_LC2.First;
while not DM1.Tb_LC2.Eof do
   begin
   mreg:=mreg+1;
   Frm_Agde.Gauge1.Progress:=mreg*100 div mtot;
   Frm_Agde.Update;
   mtotgv:=mtotgv+DM1.Tb_LC2LC2_PCOAV.Value*DM1.Tb_LC2LC2_QTD.Value;
   mtotgp:=mtotgp+DM1.Tb_LC2LC2_PCOPZ.Value*DM1.Tb_LC2LC2_QTD.Value;
   If malterna then maux:=mfuncor2
   else maux:=mfuncor1;
   maux:=maux+'> ';
   malterna:=not malterna;
   Writeln(F,'<TR>');



   Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+'<P ALIGN="right">'+DM1.Tb_LC2LC2_ITEM.AsString+'</P>'+icorf+bcorf+'</FONT></TD>');
   Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+'<P ALIGN="right">'+DM1.Tb_LC2LC2_QTD.AsString+'</P>'+icorf+bcorf+'</FONT></TD>');
   Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+DM1.Tb_LC2LC2_UND.Value+icorf+bcorf+'</FONT></TD>');
   Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+DM1.Tb_LC2LC2_NOM01.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM02.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM02.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM03.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM03.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM04.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM04.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM05.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM05.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM06.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM06.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM07.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM07.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM08.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM08.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM09.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM09.Value);
   If length(trim(DM1.Tb_LC2LC2_NOM10.AsString))>2 then Writeln(F,'<BR>'+DM1.Tb_LC2LC2_NOM10.Value);
   Writeln(F,icorf+bcorf+'</FONT></TD>');
   Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+DM1.Tb_LC2LC2_MARCA.Value+icorf+bcorf+'</FONT></TD>');

   If DM1.Tb_LC1LC1_DIGRMS.Value=0 then
      begin
      if trim(DM1.Tb_Lc2LC2_RMS.AsString)='' then
         mcinst2:='.'
      else
         mcinst2:=DM1.Tb_Lc2LC2_RMS.Value;
      Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+mcinst2+icorf+bcorf+'</FONT></TD>');
      end;
   If DM1.Tb_LC1LC1_PCOAVI.Value=0 then

      Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+'<P ALIGN="right">'
            +FormatFloat('#,##0.'+COMPLETA_COM('','0',mQtdCasa,1),DM1.Tb_LC2LC2_PCOAV.Value)+'</P>'+icorf+bcorf+'</FONT></TD>');
   If DM1.Tb_LC1LC1_PCOAVI.Value=0 then
      Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+'<P ALIGN="right">'
            +FormatFloat('#,##0.00',DM1.Tb_LC2totav.Value)+'</P>'+icorf+bcorf+'</FONT></TD>');

   if DM1.Tb_LC1LC1_PCOPRZ.Value=0 then
      begin
      Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+'<P ALIGN="right">'
            +FormatFloat('#,##0.'+COMPLETA_COM('','0',mQtdCasa,1),DM1.Tb_LC2LC2_PCOPZ.Value)+'</P>'+icorf+bcorf+'</FONT></TD>');
      Writeln(F,'<TD BGCOLOR='+maux+mfoncor+bcor+icor+'<P ALIGN="right">'
         +FormatFloat('#,##0.00',DM1.Tb_LC2totpz.Value)+'</P>'+icorf+bcorf+'</FONT></TD>');
      end;
   Writeln(F,'</TR>');
   //Extensos Unitários           &nbsp;



   If DM1.Tb_LC1LC1_EXTUAV.Value=0 then
      begin
      Writeln(F,'<TR><TD COLSPAN="'+IntToStr(mcol)+'" BGCOLOR='+maux+mfoncor+bcor+icor);
      Writeln(F,'Preço Unitário: '+Extenso(DM1.Tb_LC2LC2_PCOAV.Value));
      Writeln(F,icorf+bcorf+'</FONT></TD></TR>');
      end;
   If DM1.Tb_LC1LC1_EXTUAP.Value=0 then
      begin
      Writeln(F,'<TR><TD COLSPAN="'+IntToStr(mcol)+'" BGCOLOR='+maux+mfoncor+bcor+icor);
      Writeln(F,'Pç. Un. à Prazo: '+Extenso(DM1.Tb_LC2LC2_PCOPZ.Value));
      Writeln(F,icorf+bcorf+'</FONT></TD></TR>');
      end;

{DM1.Tb_LC1LC1_EXTUAP
DM1.Tb_LC1LC1_EXTUAP
DM1.Tb_LC2LC2_PCOAV
DM1.Tb_LC1LC1_EXTUAV

DM1.Tb_LC2LC2_PCOPZ
DM3.Tb_Lic2PcoP
}



   //Extensos Totais
   If DM1.Tb_LC1LC1_EXTPAV.Value=0 then
      begin
      Writeln(F,'<TR><TD COLSPAN="'+IntToStr(mcol)+'" BGCOLOR='+maux+mfoncor+bcor+icor);
      Writeln(F,'Total do Item: '+Extenso(DM1.Tb_LC2totav.Value));
      Writeln(F,icorf+bcorf+'</FONT></TD></TR>');
      end;
   If DM1.Tb_LC1LC1_EXTPAP.Value=0 then
      begin

      Writeln(F,'<TR><TD COLSPAN="'+IntToStr(mcol)+'" BGCOLOR='+maux+mfoncor+bcor+icor);
      Writeln(F,'Total à Prazo: '+Extenso(DM1.Tb_LC2totpz.Value));
      Writeln(F,icorf+bcorf+'</FONT></TD></TR>');
      end;
   DM1.Tb_Lc2.Next;
   end;
Writeln(F,'</TABLE><P>');
Writeln(F,mfoncor+bcor+icor);
//Extensos Totais Gerais

If (dm1.Tb_LC1LC1_EXTTAV.Value>0) and (mtotgv>0) then
   begin
   Writeln(F,'Total Geral: '
            +Insere(FormatFloat('#,##0.00',mtotgv),' ',15)+'<BR>');
   Writeln(F,Extenso(mtotgv)+'<BR>');
   end
else
   begin
   if (mtotgp>0) then
      begin
      Writeln(F,'Total Geral: '
            +Insere(FormatFloat('#,##0.00',mtotgp),' ',15)+'<BR>');
      Writeln(F,Extenso(mtotgp)+'<BR>');

      end
   else if (mtotgv>0) then
      begin
      Writeln(F,'Total Geral: '
            +Insere(FormatFloat('#,##0.00',mtotgv),' ',15)+'<BR>');
      Writeln(F,Extenso(mtotgv)+'<BR>');
      end;
   end;


{
If dm1.Tb_LC1LC1_EXTTAP.Value=0 then
   begin
   Writeln(F,'Total Geral à Prazo: '
            +Insere(FormatFloat('#,##0.00',mtotgp),' ',15)+'<BR>');
   Writeln(F,Extenso(mtotgp)+'<BR>');
   end;

If dm1.Tb_LC1LC1_EXTTAV.Value=0 then
   begin
   Writeln(F,'Total Geral: '
            +Insere(FormatFloat('#,##0.00',mtotgp),' ',15)+'<BR>');
   Writeln(F,Extenso(mtotgp)+'<BR>');
   end;
}
Writeln(F,icorf+bcorf+'</FONT>');
Writeln(F,mfonrod+brod+irod+'<P>');

Writeln(F,'Validade da Proposta: '+dm1.Tb_LC1LC1_VALPRO.AsString+' dias<BR>');

Writeln(F,'Condições de Pagamento: '+dm1.Tb_LC1LC1_CONDPAG.Value+'<BR>');


Writeln(F,'Prazo de Entrega: '+dm1.Tb_LC1LC1_PRZENT1.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_PRZENT2.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_PRZENT3.Value+'<BR>');

Writeln(F,'Observações: '+dm1.Tb_LC1LC1_OBS1.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_OBS2.Value+'<BR>');
Writeln(F,irodf+brodf+'</FONT>');
Writeln(F,'<CENTER>');
Writeln(F,mfondec+bdec+idec+'<P>');
Writeln(F,'D E C L A R A Ç Õ E S<P>');
Writeln(F,idecf+bdecf+'</FONT>');
Writeln(F,mfonde2+bde2+ide2+'<P>');

Writeln(F,dm1.Tb_LC1LC1_DEC01.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC02.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC03.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC04.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC05.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC06.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC07.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC08.Value+'<BR>');
Writeln(F,dm1.Tb_LC1LC1_DEC09.Value+'<BR>');
Writeln(F,ide2+bde2+'</FONT>');
Writeln(F,'</CENTER>');
Writeln(F,mfoncab+bcab+icab+'<BR><BR><BR>');


Writeln(F,DM1.Tb_EmpCIDADE.Value+'-'+DM1.Tb_EmpUF.AsString+', '+FormatDateTime('dd "de" mmmm "de" yyyy.',
   DM1.Tb_LC1LC1_DTEMIS.Value)+'<BR><BR>');
Writeln(F,DM1.Tb_EmpRAZAO.Value);
Writeln(F,icabf+bcabf+'</FONT>');
Writeln(F,'</BODY>');
Writeln(F,'</HTML>');
CloseFile(F);
Frm_Agde.Free;
mcomando:=PCHAR(mnome);
ShellExecute(handle, 'open', mcomando, nil, nil, SW_SHOWNORMAL);
end;

procedure TFrm_HLic.BBnFCo2Click(Sender: TObject);
begin
If FD1.Execute then
   FONCO2.Font:=FD1.Font;
end;

procedure TFrm_HLic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

end.

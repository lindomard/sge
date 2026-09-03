unit func_ppal;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ComCtrls, ExtCtrls,ToolWin,Shellapi,
   StdCtrls, Buttons,func;

function grava_treeview:Boolean;
function fInsertBusiness(
pModulo, pCargo, pNivel,pTexto,pFormul,pStatus,pType,pCodUser,pEmpresa,pFilial,
pSPasta1,pSPasta2,pSPasta3,pSPasta4,pSPasta5,pSPasta6,pSPasta7,pSPasta8,pSPasta9,pSPasta10,
pOk,pEstacao,pPrograma,pName,pTFonte,pColor,pEstacaoReplica,pProgramaReplica,
pBloquetado,pFundo_Btree: String;
pItem,pImagei,pImages: Real;
pTimeUpd,pTimeUpdReplica: TDateTime;
seg ,seg_enabled: Boolean): boolean;
function ATUALIZAMENU(MODULOAUX : STRING): boolean;

implementation

function fInsertBusiness(
pModulo, pCargo, pNivel,pTexto,pFormul,pStatus,pType,pCodUser,pEmpresa,pFilial,
pSPasta1,pSPasta2,pSPasta3,pSPasta4,pSPasta5,pSPasta6,pSPasta7,pSPasta8,pSPasta9,pSPasta10,
pOk,pEstacao,pPrograma,pName,pTFonte,pColor,pEstacaoReplica,pProgramaReplica,
pBloquetado,pFundo_Btree: String;
pItem,pImagei,pImages: Real;
pTimeUpd,pTimeUpdReplica: TDateTime;
seg ,seg_enabled: Boolean): boolean;
var
mTexto: string;
x: Integer;
begin
if length(pTexto)<2 then
   begin
   result:=false;
   exit;
   end;

mTexto:=copy(pModulo,1,20);
pModulo:='';
for x:=1 to length(mTexto) do
   begin
   if mTexto[x]<>'&' then
      pModulo:=pModulo+mtexto[x];
   end;
if pmodulo = cmodulo then
   begin
   if (seg) and (seg_enabled) then
      begin
      mTexto:=copy(pTexto,1,100);
      pTexto:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            ptexto:=ptexto+mtexto[x];
         end;
      mTexto:=copy(pSPasta1,1,100);
      pSPasta1:='';
      for x:=1 to length(mTexto) do
         begin
        if mTexto[x]<>'&' then
            pSPasta1:=psPasta1+mtexto[x];
         end;
      mTexto:=copy(pSPasta2,1,100);
      pSPasta2:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta2:=psPasta2+mtexto[x];
         end;
      mTexto:=copy(pSPasta3,1,100);
      pSPasta3:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta3:=psPasta3+mtexto[x];
         end;
      mTexto:=copy(pSPasta4,1,100);
      pSPasta4:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta4:=psPasta4+mtexto[x];
         end;
      mTexto:=copy(pSPasta5,1,100);
      pSPasta5:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta5:=psPasta5+mtexto[x];
         end;
      mTexto:=copy(pSPasta6,1,100);
      pSPasta6:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta6:=psPasta6+mtexto[x];
         end;
      mTexto:=copy(pSPasta7,1,100);
      pSPasta7:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta7:=psPasta7+mtexto[x];
         end;
      mTexto:=copy(pSPasta8,1,100);
      pSPasta8:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta8:=psPasta8+mtexto[x];
         end;
      mTexto:=copy(pSPasta9,1,100);
      pSPasta9:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta9:=psPasta9+mtexto[x];
         end;
      mTexto:=copy(pSPasta10,1,100);
      pSPasta10:='';
      for x:=1 to length(mTexto) do
         begin
         if mTexto[x]<>'&' then
            pSPasta10:=psPasta10+mtexto[x];
         end;
      if pSPasta1='-' then
         pSPasta1:=' ';
      if pSPasta2='-' then
         pSPasta2:=' ';
      if pSPasta3='-' then
         pSPasta3:=' ';
      if pSPasta4='-' then
         pSPasta4:=' ';
      if pSPasta5='-' then
         pSPasta5:=' ';
      if pSPasta6='-' then
         pSPasta6:=' ';
      if pSPasta7='-' then
         pSPasta7:=' ';
      if pSPasta8='-' then
         pSPasta8:=' ';
      if pSPasta9='-' then
         pSPasta9:=' ';
      if pSPasta10='-' then
         pSPasta10:=' ';
      if Trim(pSPasta1)='' then
         pSPasta1:=' ';
      if Trim(pSPasta2)='' then
         pSPasta2:=' ';
      if Trim(pSPasta3)='' then
         pSPasta3:=' ';
      if Trim(pSPasta4)='' then
         pSPasta4:=' ';
      if Trim(pSPasta5)='' then
         pSPasta5:=' ';
      if Trim(pSPasta6)='' then
         pSPasta6:=' ';
      if Trim(pSPasta7)='' then
         pSPasta7:=' ';
      if Trim(pSPasta8)='' then
         pSPasta8:=' ';
      if Trim(pSPasta9)='' then
         pSPasta9:=' ';
      if Trim(pSPasta10)='' then
         pSPasta10:=' ';

      IF (trim(pSPasta1) <> SPASTA1)and(trim(pSPasta1) <> '')THEN
         BEGIN
         SPASTA1 := trim(pSPasta1);
         T := 1;
         aNode1  := Frm_PPal.btree.Items.AddChild(aNode,pSPasta1);
         aNode11 := Frm_PPal.btree_prog.Items.AddChild(aNode00,pSPasta1);
   //   aNode1.ImageIndex     := 0;
         aNode1.SelectedIndex  := 0;
         END;

      IF (trim(pSPasta2) <> SPASTA2)and(trim(pSPasta2) <> '')THEN
         BEGIN
         SPASTA2 := trim(pSPasta2);
         T := 2;
         anode2  := Frm_PPal.btree.Items.AddChild(anode1,pSPasta2);
         anode22 := Frm_PPal.btree_prog.Items.AddChild(anode11,pSPasta2);
      //   aNode2.ImageIndex     := t;
         aNode2.SelectedIndex  := 1;
         END;
      IF (trim(pSPasta3) <> SPASTA3)and(trim(pSPasta3) <> '') THEN
         BEGIN
         SPASTA3 := trim(pSPasta3);
         T := 3;
         anode3  := Frm_PPal.btree.Items.AddChild(anode2,pSPasta3);
         anode33  := Frm_PPal.btree_prog.Items.AddChild(anode22,pSPasta3);
   //   aNode3.ImageIndex     := t;
         aNode3.SelectedIndex  := 1;
         END;
      IF (trim(pSPasta4) <> SPASTA4)and(trim(pSPasta4) <> '') THEN
         BEGIN
         SPASTA4 := trim(pSPasta4);
         T := 4;
         anode4  := Frm_PPal.btree.Items.AddChild(anode3,pSPasta4);
         anode44 := Frm_PPal.btree_prog.Items.AddChild(anode33,pSPasta4);
   //   aNode4.ImageIndex     := t;
         aNode4.SelectedIndex  := 1;
         END;
      IF (trim(pSPasta5) <> SPASTA5)and(trim(pSPasta5) <> '')THEN
         BEGIN
         SPASTA5 := trim(pSPasta5);
         T := 5;
         anode5  := Frm_PPal.btree.Items.AddChild(anode4,pSPasta5);
         anode55 := Frm_PPal.btree.Items.AddChild(anode44,pSPasta5);
   //   aNode5.ImageIndex     := t;
         aNode5.SelectedIndex  := 1;
         END;
      IF (trim(pSPasta6) <> SPASTA6)and(trim(pSPasta6) <> '')THEN
         BEGIN
         SPASTA6 := trim(pSPasta6);
         T := 6;
         anode6  := Frm_PPal.btree.Items.AddChild(anode5,pSPasta6);
         anode66 := Frm_PPal.btree.Items.AddChild(anode55,pSPasta6);
   //   aNode6.ImageIndex     := t;
         aNode6.SelectedIndex  := 1;
         END;
      IF (trim(pSPasta7) <> SPASTA7)and(trim(pSPasta7) <> '')THEN
         BEGIN
         SPASTA7 := trim(pSPasta7);
         T := 7;
         anode7  := Frm_PPal.btree.Items.AddChild(anode6,pSPasta7);
         anode77 := Frm_PPal.btree.Items.AddChild(anode66,pSPasta7);
   //   aNode7.ImageIndex     := T;
         aNode7.SelectedIndex  := 1;
         END;
      IF (trim(pSPasta8) <> SPASTA8)and(trim(pSPasta8) <> '')THEN
         BEGIN
         SPASTA8 := trim(pSPasta8);
         T := 8;
         anode8  := Frm_PPal.btree.Items.AddChild(anode7,pSPasta8);
         anode88 := Frm_PPal.btree.Items.AddChild(anode77,pSPasta8);
   //   aNode8.ImageIndex     := t;
         aNode8.SelectedIndex  := 1;
         END;
      IF (trim(pSPasta9) <> SPASTA9)and(trim(pSPasta9) <> '')THEN
         BEGIN
         SPASTA9 := trim(pSPasta9);
         T := 9;
         anode9  := Frm_PPal.btree.Items.AddChild(anode8,pSPasta9);
         anode99 := Frm_PPal.btree.Items.AddChild(anode88,pSPasta9);
      //   aNode9.ImageIndex     := t;
         aNode9.SelectedIndex  := 1;
         END;
      if T = 1 THEN
         begin
         aNode2  := Frm_PPal.btree.Items.AddChild(anode1, Ptexto);
         aNode22 := Frm_PPal.btree_prog.Items.AddChild(anode11, ptexto+' @ '+pformul);
         aNode2.SelectedIndex  := 2;
         end;

      if T = 2  THEN
         begin
         if trim(pspasta2) <> '' then
            begin
            aNode3  := Frm_PPal.btree.Items.AddChild(anode2, Ptexto);
            aNode33 := Frm_PPal.btree_prog.Items.AddChild(anode22, ptexto+' @ '+pformul);
            aNode3.SelectedIndex  := 2;
            end
         else
            begin
            aNode2  := Frm_PPal.btree.Items.AddChild(anode1, Ptexto);
            aNode22 := Frm_PPal.btree_prog.Items.AddChild(anode11, ptexto+' @ '+pformul);
            aNode2.SelectedIndex  := 2;
            end;
         end;

      if T = 3  THEN
         begin
         if trim(pspasta3) <> '' then
            begin
            aNode4  := Frm_PPal.btree.Items.AddChild(anode3, Ptexto);
            aNode44  := Frm_PPal.btree_prog.Items.AddChild(anode33, ptexto+' @ '+pformul);
            aNode4.SelectedIndex  := 2;
            end
         else
            begin
            aNode3  := Frm_PPal.btree.Items.AddChild(anode2, Ptexto);
            aNode33  := Frm_PPal.btree_prog.Items.AddChild(anode22, ptexto+' @ '+pformul);
            aNode3.SelectedIndex  := 2;
            end;
         end;
      if T = 4  THEN
         begin
         if trim(pspasta4) <> '' then
            begin
            aNode5  := Frm_PPal.btree.Items.AddChild(anode4, Ptexto);
            aNode55  := Frm_PPal.btree_prog.Items.AddChild(anode44, ptexto+' @ '+pformul);
            aNode5.SelectedIndex  := 2;
            end
         else
            begin
            aNode4  := Frm_PPal.btree.Items.AddChild(anode3, Ptexto);
            aNode44  := Frm_PPal.btree_prog.Items.AddChild(anode33, ptexto+' @ '+pformul);
            aNode4.SelectedIndex  := 2;
            end;
         end;
      if T = 5  THEN
         begin
         if trim(pspasta5) <> '' then
            begin
            aNode6  := Frm_PPal.btree.Items.AddChild(anode5, Ptexto);
            aNode66 := Frm_PPal.btree_prog.Items.AddChild(anode55, ptexto+' @ '+pformul);
            aNode6.SelectedIndex  := 2;
            end
         else
            begin
            aNode5  := Frm_PPal.btree.Items.AddChild(anode4, Ptexto);
            aNode55 := Frm_PPal.btree_prog.Items.AddChild(anode44, ptexto+' @ '+pformul);
            aNode5.SelectedIndex  := 2;
            end;
         end;
      if T = 6  THEN
         begin
         if trim(pspasta6) <> '' then
            begin
            aNode7  := Frm_PPal.btree.Items.AddChild(anode6, Ptexto);
            aNode77 := Frm_PPal.btree_prog.Items.AddChild(anode66, ptexto+' @ '+pformul);
            end
         else
            begin
            aNode6  := Frm_PPal.btree.Items.AddChild(anode5, Ptexto);
            aNode66 := Frm_PPal.btree_prog.Items.AddChild(anode55, ptexto+' @ '+pformul);
            end;
         end;
      if T = 7  THEN
         begin
         if trim(pspasta7) <> '' then
            begin
            aNode8  := Frm_PPal.btree.Items.AddChild(anode7, Ptexto);
            aNode88 := Frm_PPal.btree_prog.Items.AddChild(anode77, ptexto+' @ '+pformul);
            end
         else
            begin
            aNode7  := Frm_PPal.btree.Items.AddChild(anode6, Ptexto);
            aNode77 := Frm_PPal.btree_prog.Items.AddChild(anode66, ptexto+' @ '+pformul);
           end;
        end;
      if T = 8  THEN
         begin
         if trim(pspasta8) <> '' then
            begin
            aNode9  := Frm_PPal.btree.Items.AddChild(anode8, Ptexto);
            aNode99 := Frm_PPal.btree_prog.Items.AddChild(anode88, ptexto+' @ '+pformul);
            end
         else
            begin
            aNode8  := Frm_PPal.btree.Items.AddChild(anode7, Ptexto);
            aNode88 := Frm_PPal.btree_prog.Items.AddChild(anode77, ptexto+' @ '+pformul);
            end;
         end;
      end;
   end;
end;

function ATUALIZAMENU(MODULOAUX : STRING): boolean;
VAR
NovoNome  : string;
Nome_aux  : string;
menu      : array of string;

begin
SPASTA1   := '';
SPASTA2   := '';
SPASTA3   := '';
SPASTA4   := '';
SPASTA5   := '';
SPASTA6   := '';
SPASTA7   := '';
SPASTA8   := '';
SPASTA9   := '';
SPASTA10  := '';

aNode   := NIL;
aNode1  := NIL;
aNode2  := Nil;
aNode3  := Nil;
aNode4  := Nil;
aNode5  := Nil;
aNode6  := Nil;
aNode7  := Nil;
aNode8  := Nil;
aNode9  := Nil;
aNode10 := Nil;

aNode00  := NIL;
aNode11  := NIL;
aNode22  := Nil;
aNode33  := Nil;
aNode44  := Nil;
aNode55  := Nil;
aNode66  := Nil;
aNode77  := Nil;
aNode88  := Nil;
aNode99  := Nil;
aNode100 := Nil;

Frm_PPal.btree.Items.Clear;
Frm_PPal.btree_prog.Items.Clear;

cmodulo := MODULOAUX;
//if  UpperCase(MODULOAUX)=('FINANCEIRO') then
    grava_treeview;
end;


function grava_treeview:Boolean;

var
mVisible: Boolean;
mEnable: Boolean;
a,b,c,d,e,f: Integer;
begin

indice := 0;
for a:=0 to Frm_PPal.MainMenu1.Items.Count-1 do
   begin
{   ShowMessage(Frm_PPal.MainMenu1.Items[a].Caption+
           iif(Frm_PPal.MainMenu1.items[a].Enabled,'enabled','disable'));
}
   if Frm_PPal.MainMenu1.Items[a].Count<1 then
      begin
      fInsertBusiness(Frm_PPal.MainMenu1.Items[a].Caption, // modulo
                         'Administrador', // cargo
                         '1', // nivel
                         Frm_PPal.MainMenu1.Items[a].Caption, // texto
                         Frm_PPal.MainMenu1.Items[a].Name,  // formulario
                         '', // status
                         ' ', // type
                         IntToStr(1111), // codusr
                         IntToStr(1), // codempresa
                         IntToStr(1), // cod filial
//                         Frm_PPal.MainMenu1.Items[a].Caption, // pasta 1
                         '',  // pasta 2
                         '',  // pasta 2
                         '', // pasta 3
                         '', // pasta 4
                         '', // pasta 5
                         '', // pasta 6
                         '', // pasta 7
                         '', // pasta 8
                         '', // pasta 9
                         '', // pasta 10
                         '', // pok
                         '', // pEstacao
                         '', // pPrograma
                         '', // pName
                         '', // pTFonte
                         '', // pcolor,
                         '', // pEstacaoReplica
                         '', // pProgramaReplica
                         Frm_PPal.MainMenu1.Items[a].Parent.Name, // pbloqueado,
                         '', // pFundo_btrree;
                         1, // pitem
                         4, // pimagei
                         4, // pimages
                         date, // timeupd
                         date, // timeupdreoplica
//                         true,true
                         Frm_PPal.MainMenu1.Items[a].Visible, //type
                         Frm_PPal.MainMenu1.Items[a].Enabled
                         );

//                         Frm_PPal.MainMenu1.Items[a].Visible, //type
//                         Frm_PPal.MainMenu1.Items[a].Enabled
      end;
   if trim(Frm_PPal.MainMenu1.Items[a].Caption)<>'' then
      begin
      for b:=0 to Frm_PPal.MainMenu1.Items[a].Count-1 do
         begin
//         Memo1.Lines.Add(Frm_PPal.MainMenu1.Items[a].Items[b].Parent.Name+'.'+Frm_PPal.MainMenu1.Items[a].Items[b].Caption);
         if Frm_PPal.MainMenu1.Items[a].Items[b].Count<1 then
            begin
            fInsertBusiness(Frm_PPal.MainMenu1.Items[a].Caption, // modulo
                      'Administrador', // cargo
                      '1', // nivel
                      Frm_PPal.MainMenu1.Items[a].Items[b].Caption, // texto
                      Frm_PPal.MainMenu1.Items[a].Items[b].Name,  // formulario
                      '', // status
                      ' ', // type
                      IntToStr(1111), // codusr
                      IntToStr(1), // codempresa
                      IntToStr(1), // cod filial
                      Frm_PPal.MainMenu1.Items[a].Caption, // pasta 1
//                      Frm_PPal.MainMenu1.Items[a].Items[b].Caption,  // pasta 2
                      '', // pasta 3
                      '', // pasta 3
                      '', // pasta 4
                      '', // pasta 5
                      '', // pasta 6
                      '', // pasta 7
                      '', // pasta 8
                      '', // pasta 9
                      '', // pasta 10
                      '', // pok
                      '', // pEstacao
                      '', // pPrograma
                      '', // pName
                      '', // pTFonte
                      '', // pcolor,
                      '', // pEstacaoReplica
                      '', // pProgramaReplica
                      Frm_PPal.MainMenu1.Items[a].Items[b].Parent.Name, // pbloqueado,
                      '', // pFundo_btrree;
                      1, // pitem
                      4, // pimagei
                      4, // pimages
                      date, // timeupd
                      date, // timeupdreoplica
//                      true,
//                      true
                      Frm_PPal.MainMenu1.Items[a].Items[b].Visible,
                      Frm_PPal.MainMenu1.Items[a].Items[b].Enabled
                      );
            end;
         if trim(Frm_PPal.MainMenu1.Items[a].Items[b].Caption)<>'' then
            begin
            for c:=0 to Frm_PPal.MainMenu1.Items[a].Items[b].Count-1 do
               begin
               if Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Count<1 then
                  begin
                  if not (Frm_PPal.MainMenu1.Items[a].Visible) then
                     mVisible:=false
                  else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Visible) then
                     mVisible:=False
                  else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Visible) then
                     mVisible:=False
                  else
                     mVisible:=true;
                  if not (Frm_PPal.MainMenu1.Items[a].Enabled) then
                     mEnable:=false
                  else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Enabled) then
                     mEnable:=False
                  else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Enabled) then
                     mEnable:=False
                  else
                     mEnable:=true;

                  fInsertBusiness(Frm_PPal.MainMenu1.Items[a].Caption, // modulo
                  'Administrador', // cargo
                  '1', // nivel
                  Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Caption, // texto
                  Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Name,  // formulario
                  '', // status
                  ' ', // type
                  IntToStr(1111), // codusr
                  IntToStr(1), // codempresa
                  IntToStr(1), // cod filial
                  Frm_PPal.MainMenu1.Items[a].Caption, // pasta 1
                  Frm_PPal.MainMenu1.Items[a].Items[b].Caption,  // pasta 2
//                  Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Caption,  // pasta 3
                  '', // pasta 4
                  '', // pasta 4
                  '', // pasta 5
                  '', // pasta 6
                  '', // pasta 7
                  '', // pasta 8
                  '', // pasta 9
                  '', // pasta 10
                  '', // pok
                  '', // pEstacao
                  '', // pPrograma
                  '', // pName
                  '', // pTFonte
                  '', // pcolor,
                  '', // pEstacaoReplica
                  '', // pProgramaReplica
                  Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Parent.Name, // pbloqueado,
                  '', // pFundo_btrree;
                  1, // pitem
                  4, // pimagei
                  4, // pimages
                  date, // timeupd
                  date, // timeupdreoplica
//                  Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Visible,
//                  Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Enabled
//                  true,true
                  mVisible,
                  mEnable
                  );
                  end;

               if trim(Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Caption)<>'' then
                  begin
                  for d:=0 to Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Count-1 do
                     begin
//            Memo1.Lines.Add(Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Parent.Name+'.'+Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption);
                     if Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Count<1 then
                        begin
                        if not (Frm_PPal.MainMenu1.Items[a].Visible) then
                           mVisible:=false
                        else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Visible) then
                           mVisible:=False
                        else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Visible) then
                           mVisible:=False
                        else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Visible) then
                           mVisible:=False
                        else
                           mVisible:=true;
                        if not (Frm_PPal.MainMenu1.Items[a].Enabled) then
                           mEnable:=false
                        else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Enabled) then
                           mEnable:=False
                        else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Enabled) then
                           mEnable:=False
                        else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Enabled) then
                           mEnable:=False
                        else
                           mEnable:=true;

                        fInsertBusiness(Frm_PPal.MainMenu1.Items[a].Caption, // modulo
                        'Administrador', // cargo
                        '1', // nivel
                        Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption, // texto
                        Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Name,  // formulario
                        '', // status
                        ' ', // type
                        IntToStr(1111), // codusr
                        IntToStr(1), // codempresa
                        IntToStr(1), // cod filial
                        Frm_PPal.MainMenu1.Items[a].Caption, // pasta 1
                        Frm_PPal.MainMenu1.Items[a].Items[b].Caption,  // pasta 2
                        Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Caption,  // pasta 3
//                      Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption,  // pasta 4
                        '', // pasta 5
                        '', // pasta 5
                        '', // pasta 6
                        '', // pasta 7
                        '', // pasta 8
                        '', // pasta 9
                        '', // pasta 10
                        '', // pok
                        '', // pEstacao
                        '', // pPrograma
                        '', // pName
                        '', // pTFonte
                        '', // pcolor,
                        '', // pEstacaoReplica
                        '', // pProgramaReplica
                        Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Parent.Name, // pbloqueado,
                        '', // pFundo_btrree;
                        1, // pitem
                        4, // pimagei
                        4, // pimages
                        date, // timeupd
                        date, // timeupdreoplica
//                        Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Visible,
//                        Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Enabled

//                        true,true
                       mVisible,
                       mEnable
                        );
                        end;
                     if trim(Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption)<>'' then
                        begin
                        for e:=0 to Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Count-1 do
                           begin
//                         Memo1.Lines.Add(Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Parent.Name+'.'+Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Caption);
                           if Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Count<1 then
                              begin
                              if not (Frm_PPal.MainMenu1.Items[a].Visible) then
                                 mVisible:=false
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Visible) then
                                 mVisible:=False
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Visible) then
                                 mVisible:=False
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Visible) then
                                 mVisible:=False
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[f].Visible) then
                                 mVisible:=False
                              else
                                 mVisible:=true;
                              if not (Frm_PPal.MainMenu1.Items[a].Enabled) then
                                 mEnable:=false
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Enabled) then
                                 mEnable:=False
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Enabled) then
                                 mEnable:=False
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Enabled) then
                                 mEnable:=False
                              else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Enabled) then
                                 mEnable:=False

                              else
                                 mEnable:=true;

                              fInsertBusiness(Frm_PPal.MainMenu1.Items[a].Caption, // modulo
                              'Administrador', // cargo
                              '1', // nivel
                              Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Caption, // texto
                              Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Name,  // formulario
                              '', // status
                              ' ', // type
                              IntToStr(1111), // codusr
                              IntToStr(1), // codempresa
                              IntToStr(1), // cod filial
                              Frm_PPal.MainMenu1.Items[a].Caption, // pasta 1
                              Frm_PPal.MainMenu1.Items[a].Items[b].Caption,  // pasta 2
                              Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Caption,  // pasta 3
                              Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption,  // pasta 4
       //                     Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Caption,  // pasta 5
                              '', // pasta 6
                              '', // pasta 6
                              '', // pasta 7
                              '', // pasta 8
                              '', // pasta 9
                              '', // pasta 10
                              '', // pok
                              '', // pEstacao
                              '', // pPrograma
                              '', // pName
                              '', // pTFonte
                              '', // pcolor,
                              '', // pEstacaoReplica
                              '', // pProgramaReplica
                              Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Parent.Name, // pbloqueado,
                              '', // pFundo_btrree;
                              1, // pitem
                              4, // pimagei
                              4, // pimages
                              date, // timeupd
                              date, // timeupdreoplica
//                              Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Visible,
//                              Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Enabled

//                              true,true
                              mVisible,
                              mEnable
                              );
                              end;
                           if trim(Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Caption)<>'' then
                              begin
                              for f:=0 to Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Count-1 do
                                 begin
                                 if Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Items[f].Count<1 then
                                    begin
                                    if not (Frm_PPal.MainMenu1.Items[a].Visible) then
                                       mVisible:=false
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Visible) then
                                       mVisible:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Visible) then
                                       mVisible:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Visible) then
                                       mVisible:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Visible) then
                                       mVisible:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Items[f].Visible) then
                                       mVisible:=False
                                    else
                                       mVisible:=true;
                                    if not (Frm_PPal.MainMenu1.Items[a].Enabled) then
                                       mEnable:=false
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Enabled) then
                                       mEnable:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Enabled) then
                                       mEnable:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Enabled) then
                                       mEnable:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Enabled) then
                                       mEnable:=False
                                    else if not (Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Items[f].Enabled) then
                                       mEnable:=False
                                    else
                                       mEnable:=true;

                                    fInsertBusiness(Frm_PPal.MainMenu1.Items[a].Caption, // modulo
                                    'Administrador', // cargo
                                    '1', // nivel
                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Items[f].Caption, // texto
                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Items[f].Name,  // formulario
                                    '', // status
                                    ' ', // type
                                    IntToStr(1111), // codusr
                                    IntToStr(1), // codempresa
                                    IntToStr(1), // cod filial
                                    Frm_PPal.MainMenu1.Items[a].Caption, // pasta 1
                                    Frm_PPal.MainMenu1.Items[a].Items[b].Caption,  // pasta 2
                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Caption,  // pasta 3
                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption,  // pasta 4
                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Caption, // pasta 5
                                    '', // pasta 6
                                    '', // pasta 7
                                    '', // pasta 8
                                    '', // pasta 9
                                    '', // pasta 10
                                    '', // pok
                                    '', // pEstacao
                                    '', // pPrograma
                                    '', // pName
                                    '', // pTFonte
                                    '', // pcolor,
                                   '', // pEstacaoReplica
                                    '', // pProgramaReplica
                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Parent.Name, // pbloqueado,
                                    '', // pFundo_btrree;
                                    1, // pitem
                                    4, // pimagei
                                    4, // pimages
                                    date, // timeupd
                                    date, // timeupdreoplica
//                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Items[f].Visible,
//                                    Frm_PPal.MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Items[f].Enabled
//                                    true,true
                                    mVisible,
                                    mEnable
                                    );
                                    end;
                                 end;
                              end;
                           end;
                        end;
                     end;
                  end;
               end;
            end;
         end;
      end;
   end;
result:=true;
end;
end.

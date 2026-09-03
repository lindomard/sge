{**********************************************************************************+
Sistema........: Sistema para Imobiliarias                                         +
Formulario.....: Processa Pedido - Processamento de Pedido por Paramêtros          +
Executavel.....: SGE.EXE                                                           +
Programador....: Wendel A. Galvao                                                  +
Data...........: 16/09/2008     Hora..: 13:25pm                                    +
***********************************************************************************}
unit ProcessaPedidos;

interface

uses BDE, Classes, DBIProcs, SysUtils, WinTypes, Messages, ComCtrls,
   Dialogs, DBCtrls, Printers, Db, DbTables, Windows, DbGRids, Graphics,
   Controls, Forms, StdCtrls, GRids, MaskUtils, ExtCtrls, Buttons, FMTBcd,
   IniFiles, SqlExpr, Winsock, ToolEdit, CurrEdit;

type
   TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
   TConsisteInscricaoEstadual = function(const Insc, UF: string): Integer; stdcall;

{=**=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
                  SESSÃO DAS FUNCTION´S DO SISTEMA
=*==*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*}
{=**=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*7
                  SESSÃO DAS PROCEDURES DO SISTEMA
=*==*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*}
//procedure StatusBtn(Sender: TObject; tipo : integer );
{16/09/2008 - Controla os Botoes de acesso a tabela, conforme o Botão Selecionado - Criado por Wendel Galvao}
//procedure LimpaEdits(Sender: TObject);
{16/09/2008 - Limpa conteudo do Grupo de Edit´s do Formulario - Criado por Wendel}
procedure AtualizaForm(Sender: TObject; AValue: Boolean);
{25/09/2008 - Atualiza Formulário conforme o botão selecionado - Criado por Wendel Galvao}



implementation
{

procedure StatusBtn(Sender: TObject; tipo: integer);
var
   Cont : integer;
begin
   { ========= TIPOS ==========
    0 - Incluir
    1 - Alterar
    2 - Desfazer, Confirmar
    3 - Primeiro
    4 - Anterior
    5 - Avançar
    6 - Ultimo
    7 - Consultar
    8 - Imprimir
    9 - Sair
    10 - Form Show

   for Cont := 0 to TForm(Sender).ComponentCount - 1 do begin
         if TForm(Sender).Components[cont] is TSpeedButton then begin
          // ======================== BOTÃO INCLUIR ========================= //
               if Tipo = 0 then begin
                     if (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_incluir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_alterar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_imprimir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_localizar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_excluir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_proximo') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_anterior') then begin
                           TSpeedButton(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                     if (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_gravar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_sair') then begin
                           TSpeedButton(TForm(Sender).Components[Cont]).Enabled := true;
                        end;
                  end;
          // ======================== BOTÃO ALTERAR ========================= //
               if Tipo = 1 then begin
                     if (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_incluir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_alterar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_imprimir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_localizar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_proximo') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_excluir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_anterior') then begin
                           TSpeedButton(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                     if (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_gravar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_sair') then begin
                           TSpeedButton(TForm(Sender).Components[Cont]).Enabled := true;
                        end;
                  end;
          // =============== BOTÕES DESFAZER/CONFIRMAR/EXCLUIR ============== //
               if Tipo = 2 then begin
                     if (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_incluir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_alterar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_localizar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_imprimir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_proximo') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_anterior') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_excluir') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_sair') then begin
                           TSpeedButton(TForm(Sender).Components[Cont]).Enabled := true;
                        end;
                     if (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_gravar') then begin
                           TSpeedButton(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                  end;
          // =============== BOTÃO DO FORM SHOW ============== //
               if Tipo = 10 then begin
                     if (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_cancelar') or
                        (TSpeedButton(TForm(Sender).Components[Cont]).Name = 'btn_gravar') then begin
                           TSpeedButton(TForm(Sender).Components[Cont]).Enabled := false;
                        end;
                  end;
            end;
      end;
end;
}

{
procedure LimpaEdits(Sender: TObject);
var
   Cont : integer;
begin
   for Cont := 0 to TForm(Sender).ComponentCount - 1 do begin
      if TForm(Sender).Components[cont] is TEdit then
         TEdit(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TMemo then
         TMemo(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TComboEdit then
         TComboEdit(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TComboBox then
         TComboBox(TForm(Sender).Components[Cont]).Text := '';
      if TForm(Sender).Components[cont] is TCurrencyEdit then
         TCurrencyEdit(TForm(Sender).Components[Cont]).Text := '0.00';
      if TForm(Sender).Components[cont] is TDateEdit then
         TDateEdit(TForm(Sender).Components[Cont]).Text := '';
   end;
end;
}
procedure AtualizaForm(Sender: TObject; AValue: Boolean);
var
  Cont: Integer;
  VarHint: String;
  CorAzul_Claro: TColor;
  CorAzul_Escuro: TColor;
  CorVerde_Claro: TColor;
  CorVerde_Escuro: TColor;
  CorPreto_Claro: TColor;
  CorPreto_Escuro: TColor;
  CorLaranja_Claro: TColor;
  CorLaranja_Escuro: TColor;
  CorOcre_Claro: TColor;
  CorOcre_Escuro: TColor;
begin
  VarHint := 'Favor clicar no botão Incluir ou Editar';

  CorAzul_Claro := clWindow;
  CorAzul_Escuro := clWindow;

  CorVerde_Claro := clWindow;
  CorVerde_Escuro := clWindow;

  CorPreto_Claro := clWindow;
  CorPreto_Escuro := clWindow;

  CorLaranja_Claro := clWindow;
  CorLaranja_Escuro := clWindow;

  CorOcre_Claro := clWindow;
  CorOcre_Escuro:= clWindow;

  for Cont := 0 to TForm(Sender).ComponentCount - 1 do
    begin
      if TForm(Sender).Components[cont] is TDBEdit then
         begin
           TDBEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TDBEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TDBEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;

           if AValue then
              //TDBEdit(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TDBEdit(TForm(Sender).Components[Cont]).Tag = 1 then
                // TDBEdit(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TDBEdit(TForm(Sender).Components[Cont]).Tag = 2 then
                 //TDBEdit(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
              if TDBEdit(TForm(Sender).Components[Cont]).Tag = 3 then
                 //TDBEdit(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
              if TDBEdit(TForm(Sender).Components[Cont]).Tag = 4 then
                 //TDBEdit(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TDBEdit(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;

      if TForm(Sender).Components[cont] is TComboBox then
         begin
           //TComboBox(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TComboBox(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TComboBox(TForm(Sender).Components[Cont]).ShowHint := not AValue;

           if AValue then
              //TComboBox(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TComboBox(TForm(Sender).Components[Cont]).Tag = 1 then
                 //TComboBox(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TComboBox(TForm(Sender).Components[Cont]).Tag = 2 then
                 //TComboBox(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
              if TComboBox(TForm(Sender).Components[Cont]).Tag = 3 then
                 //TComboBox(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
              if TComboBox(TForm(Sender).Components[Cont]).Tag = 4 then
                 //TComboBox(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TComboBox(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;

      if TForm(Sender).Components[cont] is TDateEdit then
         begin
           TDateEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TDateEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TDateEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;

           if AValue then
              //TDateEdit(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TDateEdit(TForm(Sender).Components[Cont]).Tag = 1 then
                 //TDateEdit(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TDateEdit(TForm(Sender).Components[Cont]).Tag = 2 then
                 //TDateEdit(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
              if TDateEdit(TForm(Sender).Components[Cont]).Tag = 3 then
                 //TDateEdit(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
              if TDateEdit(TForm(Sender).Components[Cont]).Tag = 4 then
                 //TDateEdit(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TDateEdit(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;


      if TForm(Sender).Components[cont] is TDBMemo then
         begin
           TDBMemo(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TDBMemo(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TDBMemo(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
           if AValue then
              //TDBMemo(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TDBMemo(TForm(Sender).Components[Cont]).Tag = 1 then
                 //TDBMemo(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TDBMemo(TForm(Sender).Components[Cont]).Tag = 2 then
                 //TDBMemo(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
              if TDBMemo(TForm(Sender).Components[Cont]).Tag = 3 then
                 //TDBMemo(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
              if TDBMemo(TForm(Sender).Components[Cont]).Tag = 4 then
                 //TDBMemo(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TDBMemo(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;

      if TForm(Sender).Components[cont] is TComboEdit then
         begin
           TComboEdit(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TComboEdit(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TComboEdit(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
           if AValue then
              //TComboEdit(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TComboEdit(TForm(Sender).Components[Cont]).Tag = 1 then
                 //TComboEdit(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TComboEdit(TForm(Sender).Components[Cont]).Tag = 2 then
                 //TComboEdit(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
              if TComboEdit(TForm(Sender).Components[Cont]).Tag = 3 then
                 //TComboEdit(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
              if TComboEdit(TForm(Sender).Components[Cont]).Tag = 4 then
                 //TComboEdit(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TComboEdit(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;


      if TForm(Sender).Components[cont] is TDBRadioGroup then
         begin
           TDBRadioGroup(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TDBRadioGroup(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TDBRadioGroup(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
           if AValue then
              //TDBRadioGroup(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TDBRadioGroup(TForm(Sender).Components[Cont]).Tag = 1 then
                 //TDBRadioGroup(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TDBRadioGroup(TForm(Sender).Components[Cont]).Tag = 2 then
                 //TDBRadioGroup(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
              if TDBRadioGroup(TForm(Sender).Components[Cont]).Tag = 3 then
                 //TDBRadioGroup(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
              if TDBRadioGroup(TForm(Sender).Components[Cont]).Tag = 4 then
                 //TDBRadioGroup(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TDBRadioGroup(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;

      if TForm(Sender).Components[cont] is TMemo then
         begin
           TMemo(TForm(Sender).Components[Cont]).ReadOnly  := not AValue;
           TMemo(TForm(Sender).Components[Cont]).Hint      := VarHint;
           TMemo(TForm(Sender).Components[Cont]).ShowHint  := not AValue;
           if AValue then
              //TMemo(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TMemo(TForm(Sender).Components[Cont]).Tag = 1 then
                 //TMemo(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TMemo(TForm(Sender).Components[Cont]).Tag = 2 then
                 //TMemo(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
              if TMemo(TForm(Sender).Components[Cont]).Tag = 3 then
                 //TMemo(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
              if TMemo(TForm(Sender).Components[Cont]).Tag = 4 then
                 //TMemo(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TMemo(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;

      if TForm(Sender).Components[cont] is TEdit then
         begin
           TEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;
           if AValue then
              //TEdit(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TEdit(TForm(Sender).Components[Cont]).Tag = 1  then
                 //TEdit(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TEdit(TForm(Sender).Components[Cont]).Tag = 2  then
                 //TEdit(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
               if TEdit(TForm(Sender).Components[Cont]).Tag = 3  then
                 //TEdit(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
               if TEdit(TForm(Sender).Components[Cont]).Tag = 4  then
                 //TEdit(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TEdit(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;

      if TForm(Sender).Components[cont] is TCurrencyEdit then
         begin
           TCurrencyEdit(TForm(Sender).Components[Cont]).ReadOnly := not AValue;
           TCurrencyEdit(TForm(Sender).Components[Cont]).Hint     := VarHint;
           TCurrencyEdit(TForm(Sender).Components[Cont]).ShowHint := not AValue;
           if AValue then
              //TCurrencyEdit(TForm(Sender).Components[Cont]).Color := clWindow
           else
              if TCurrencyEdit(TForm(Sender).Components[Cont]).Tag = 1  then
                 //TCurrencyEdit(TForm(Sender).Components[Cont]).Color := CorVerde_Claro
              else
              if TCurrencyEdit(TForm(Sender).Components[Cont]).Tag = 2  then
                 //TCurrencyEdit(TForm(Sender).Components[Cont]).Color := CorPreto_Claro
              else
               if TCurrencyEdit(TForm(Sender).Components[Cont]).Tag = 3  then
                 //TCurrencyEdit(TForm(Sender).Components[Cont]).Color := CorLaranja_Claro
              else
               if TCurrencyEdit(TForm(Sender).Components[Cont]).Tag = 4  then
                 //TCurrencyEdit(TForm(Sender).Components[Cont]).Color := CorOcre_Claro
              else
                 //TCurrencyEdit(TForm(Sender).Components[Cont]).Color := CorAzul_Claro;
         end;

      if TForm(Sender).Components[cont] is TBitBtn then
         begin
           TBitBtn(TForm(Sender).Components[Cont]).Cursor := crHandPoint;
         end;
     end;
end;


end.

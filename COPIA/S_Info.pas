unit S_Info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, func,  ComCtrls;

type
  TFrm_Info = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    RichEdit1: TRichEdit;
    bbReeNFE: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbReeNFEClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Info: TFrm_Info;
  minfo_tipo_ped: Integer=0;
  minfo_chave_ped: Integer=0;
  minfo_ordem_ped: Integer=0;
  minfo_codemp_ped: Integer=0;
  minfo_lotseq_ped: Integer=0;
  minfo_formace_ped: Integer=0;

implementation

uses Func2, S_DM1;

{$R *.dfm}

procedure TFrm_Info.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (FormState<>[fsModal]) then
   Action := caFree;
end;

procedure TFrm_Info.bbReeNFEClick(Sender: TObject);
begin
if minfo_chave_ped>0 then
   begin
   if minfo_tipo_ped=9 then  // emprestimo de mercadorias (vale)
      begin
      FPedEmiteNf(0,4,0,minfo_lotseq_ped,
                        minfo_chave_ped,minfo_ordem_ped,
                        minfo_codemp_ped,1,minfo_formace_ped,false,false,true,1,0,9) // lista emprestimo de mercadorias (Vale)



      end
   else // lista de separacao
      begin
      if DM1.Tb_PargerPLSEPSEP_ORDEM.AsInteger=1 then
         begin
         FPedEmiteNf(0,3,0,minfo_lotseq_ped,
                        minfo_chave_ped,minfo_ordem_ped,
                        minfo_codemp_ped,1,minfo_formace_ped,false,false,true,1,0,9); // lista de separacao
         if DM1.Tb_PargerPLSEPMOD02.AsInteger=1 then
            FPedEmiteNf(0,5,0,minfo_lotseq_ped,
                        minfo_chave_ped,minfo_ordem_ped,
                        minfo_codemp_ped,1,minfo_formace_ped,false,false,true,1,0,9); // lista de separacao
         end
      else
         begin
         FPedEmiteNf(0,3,0,minfo_lotseq_ped,
                        minfo_chave_ped,minfo_ordem_ped,
                        minfo_codemp_ped,1,minfo_formace_ped,false,false,true,1,0,9); // lista de separacao

         end;
      end;
   end;
end;

procedure TFrm_Info.FormActivate(Sender: TObject);
begin
// SetWindowPos (Handle, HWND_NOTOPMOST, Left, Top, Width, Height, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);

end;

end.

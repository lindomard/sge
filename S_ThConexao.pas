unit S_ThConexao;

interface

uses
  Classes;

type
  ThConexao = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses Func;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure ThConexao.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ ThConexao }

procedure ThConexao.Execute;
begin
{
Frm_Conexao_Remota.lbl_Capturando3.Caption:='INTERSYS';
GetComputers(0,'INTERSYS',Frm_Conexao_Remota.Computadores);
Frm_Conexao_Remota.lbl_Capturando3.Caption:='WORKGROUP';
GetComputers(1,'WORKGROUP',Frm_Conexao_Remota.Computadores);
Frm_Conexao_Remota.lbl_Capturando3.Caption:='MSHOME';
GetComputers(1,'MSHOME',Frm_Conexao_Remota.Computadores);
Frm_Conexao_Remota.lbl_Capturando3.Caption:='GRUPO';
GetComputers(1,'GRUPO',Frm_Conexao_Remota.Computadores);
Frm_Conexao_Remota.lbl_Capturando3.Caption:='';
}
end;

end.

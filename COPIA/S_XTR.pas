unit S_XTR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, WPRTEDefs, WPCTRMemo, WPCTRRich;

type
  TFrm_XTRS = class(TForm)
    pg_XTRS: TPageControl;
    ts_emis: TTabSheet;
    ts_iden: TTabSheet;
    m_iden: TMemo;
    ts_deta: TTabSheet;
    m_deta: TMemo;
    ts_tota: TTabSheet;
    m_tota: TMemo;
    ts_tran: TTabSheet;
    m_tran: TMemo;
    ts_dest: TTabSheet;
    m_dest: TMemo;
    ts_parc: TTabSheet;
    m_parc: TMemo;
    m_emis: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_XTRS: TFrm_XTRS;

implementation

{$R *.dfm}

end.

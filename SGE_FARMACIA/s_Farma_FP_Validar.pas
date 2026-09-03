unit s_Farma_FP_Validar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, DB, RxMemDS, ExtCtrls,
  Buttons, Grids,  lerarq, DBGrids, s_FP_ServicoSolicitacaoWS1,
  InvokeRegistry, Rio, SOAPHTTPClient,CAPICOM_TLB, Types, XSBuiltIns,FileCtrl,
  DBCtrls, ComCtrls, RXDBCtrl, DBTables;

type
  TFrm_Farma_FP_Validar = class(TForm)
    src_Sol_Pend_res: TDataSource;
    HTTPRIO1: THTTPRIO;
    opd1: TOpenDialog;
    PageControl1: TPageControl;
    tsPendentes: TTabSheet;
    tsAguardandoConclusao: TTabSheet;
    tsConcluidas: TTabSheet;
    Label7: TLabel;
    Panel2: TPanel;
    lbl_ambiente: TLabel;
    SAIR: TBitBtn;
    Qr_Sol_Pend_Res: TQuery;
    Qr_Sol_Pend: TQuery;
    Src_Qr_Sol_Pend: TDataSource;
    U_Sol_Pend: TUpdateSQL;
    Qr_Sol_Pend_ResSFP_CODEMP: TFloatField;
    Qr_Sol_Pend_ResSFP_ID_ANO: TFloatField;
    Qr_Sol_Pend_ResSFP_ID: TFloatField;
    Qr_Sol_Pend_ResCRM_MEDICO: TStringField;
    Qr_Sol_Pend_ResCRM_MEDICO_UF: TStringField;
    Qr_Sol_Pend_ResDATARECEITA: TDateTimeField;
    Qr_Sol_Pend_ResCODVEN: TFloatField;
    Qr_Sol_Pend_ResNOMVEN: TStringField;
    Qr_Sol_Pend_ResCLIENTE_CPF: TStringField;
    Qr_Sol_Pend_ResCLIENTE_NOME: TStringField;
    Qr_Sol_Pend_ResQTDPRESC: TFloatField;
    Qr_Sol_Pend_ResQTDSOL: TFloatField;
    Qr_Sol_Pend_ResQTDAUT: TFloatField;
    Qr_Sol_Pend_ResTOTAL_SOL: TFloatField;
    Qr_Sol_Pend_ResTOTPAGO_MS: TFloatField;
    Qr_Sol_Pend_ResTOTPAGO_CLIENTE: TFloatField;
    GroupBox4: TGroupBox;
    DBGrid_sol_res: TDBGrid;
    U_Sol_Pend_Res: TUpdateSQL;
    Qr_Sol_PendSFP_CODEMP: TFloatField;
    Qr_Sol_PendSFP_ID_ANO: TFloatField;
    Qr_Sol_PendSFP_ID: TFloatField;
    Qr_Sol_PendSFP_ITEM: TFloatField;
    Qr_Sol_PendSFP_CODPRO: TFloatField;
    Qr_Sol_PendSFP_CODBAR: TStringField;
    Qr_Sol_PendSFP_QTDPRESC: TFloatField;
    Qr_Sol_PendSFP_QTDSOL: TFloatField;
    Qr_Sol_PendSFP_QTDAUT: TFloatField;
    Qr_Sol_PendSFP_PCO_UNI_VENDA: TFloatField;
    Qr_Sol_PendSFP_QTD_CPR_ML_DIA: TFloatField;
    Qr_Sol_PendSFP_MENS_RECEPCAO: TMemoField;
    Qr_Sol_PendSFP_NUMAUT: TStringField;
    Qr_Sol_PendSFP_PAGO_MS: TFloatField;
    Qr_Sol_PendSFP_PAGO_CLIENTE: TFloatField;
    Qr_Sol_PendSFP_CRM_MEDICO: TStringField;
    Qr_Sol_PendSFP_CRM_MEDICO_UF: TStringField;
    Qr_Sol_PendSFP_DATARECEITA: TDateTimeField;
    Qr_Sol_PendSFP_CODVEN: TFloatField;
    Qr_Sol_PendSFP_STATUS: TFloatField;
    Qr_Sol_PendSFP_DATHOR_INC: TDateTimeField;
    Qr_Sol_PendSFP_CODUSR_INC: TFloatField;
    Qr_Sol_PendSFP_NOMUSR_INC: TStringField;
    Qr_Sol_PendSFP_DATHOR_ALT: TDateTimeField;
    Qr_Sol_PendSFP_CODUSR_ALT: TFloatField;
    Qr_Sol_PendSFP_NOMUSR_ALT: TStringField;
    Qr_Sol_PendSFP_CLIENTE_CPF: TStringField;
    Qr_Sol_PendSFP_CLIENTE_NOME: TStringField;
    Qr_Sol_PendVALORTOT_SOL: TFloatField;
    Qr_Sol_PendNOMVEN: TStringField;
    Qr_Sol_PendNOMPRO: TStringField;
    Qr_Sol_PendINCLUSO: TStringField;
    gb_itens: TGroupBox;
    DBGrid_sol_itens: TDBGrid;
    Panel4: TPanel;
    bbres_incluir: TBitBtn;
    bbres_alterar: TBitBtn;
    bbres_excluir: TBitBtn;
    bbres_gravar: TBitBtn;
    Panel3: TPanel;
    bbExcluirItem: TBitBtn;
    Panel5: TPanel;
    bbCotacao: TBitBtn;
    DBT_INCLUSO: TDBText;
    Qr_Sol_PendSFP_QTDEMB: TFloatField;
    Qr_Sol_PendSFP_STATUS_RECECAO: TStringField;
    GroupBox1: TGroupBox;
    DBGrid_pendentes: TDBGrid;
    Panel1: TPanel;
    DBText1: TDBText;
    BitBtn1: TBitBtn;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid_pendentes_res: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid_concluidas: TDBGrid;
    Panel7: TPanel;
    DBText2: TDBText;
    BitBtn3: TBitBtn;
    Panel8: TPanel;
    BitBtn4: TBitBtn;
    GroupBox5: TGroupBox;
    DBGrid_concluidas_res: TDBGrid;
    tsExtornada: TTabSheet;
    tsCanceladas: TTabSheet;
    tsExcluidas: TTabSheet;
    GroupBox6: TGroupBox;
    DBGrid_extornadas: TDBGrid;
    Panel9: TPanel;
    DBText3: TDBText;
    BitBtn5: TBitBtn;
    Panel10: TPanel;
    BitBtn6: TBitBtn;
    GroupBox7: TGroupBox;
    DBGrid_sol_canceladas: TDBGrid;
    Panel11: TPanel;
    DBText4: TDBText;
    BitBtn7: TBitBtn;
    Panel12: TPanel;
    BitBtn8: TBitBtn;
    GroupBox8: TGroupBox;
    DBGrid7: TDBGrid;
    Panel13: TPanel;
    DBText5: TDBText;
    BitBtn9: TBitBtn;
    Panel14: TPanel;
    BitBtn10: TBitBtn;
    GroupBox9: TGroupBox;
    DBGrid_extornadas_res: TDBGrid;
    GroupBox10: TGroupBox;
    DBGrid_sol_canceladas_res: TDBGrid;
    GroupBox11: TGroupBox;
    DBGrid_sol_excluidas: TDBGrid;
    Qr_Sol_Envidadas_Res: TQuery;
    src_Sol_Envidadas_Res: TDataSource;
    U_Sol_Envidadas_Res: TUpdateSQL;
    Qr_Sol_Envidadas: TQuery;
    Src_Sol_Envidadas: TDataSource;
    U_Sol_Envidadas: TUpdateSQL;
    Qr_Sol_Envidadas_ResSFP_CODEMP: TFloatField;
    Qr_Sol_Envidadas_ResSFP_ID_ANO: TFloatField;
    Qr_Sol_Envidadas_ResSFP_ID: TFloatField;
    Qr_Sol_Envidadas_ResCRM_MEDICO: TStringField;
    Qr_Sol_Envidadas_ResCRM_MEDICO_UF: TStringField;
    Qr_Sol_Envidadas_ResDATARECEITA: TDateTimeField;
    Qr_Sol_Envidadas_ResCODVEN: TFloatField;
    Qr_Sol_Envidadas_ResNOMVEN: TStringField;
    Qr_Sol_Envidadas_ResCLIENTE_CPF: TStringField;
    Qr_Sol_Envidadas_ResCLIENTE_NOME: TStringField;
    Qr_Sol_Envidadas_ResQTDPRESC: TFloatField;
    Qr_Sol_Envidadas_ResQTDSOL: TFloatField;
    Qr_Sol_Envidadas_ResQTDAUT: TFloatField;
    Qr_Sol_Envidadas_ResTOTAL_SOL: TFloatField;
    Qr_Sol_Envidadas_ResTOTPAGO_MS: TFloatField;
    Qr_Sol_Envidadas_ResTOTPAGO_CLIENTE: TFloatField;
    Qr_Sol_EnvidadasSFP_CODEMP: TFloatField;
    Qr_Sol_EnvidadasSFP_ID_ANO: TFloatField;
    Qr_Sol_EnvidadasSFP_ID: TFloatField;
    Qr_Sol_EnvidadasSFP_ITEM: TFloatField;
    Qr_Sol_EnvidadasSFP_CODPRO: TFloatField;
    Qr_Sol_EnvidadasSFP_CODBAR: TStringField;
    Qr_Sol_EnvidadasSFP_QTDPRESC: TFloatField;
    Qr_Sol_EnvidadasSFP_QTDSOL: TFloatField;
    Qr_Sol_EnvidadasSFP_QTDAUT: TFloatField;
    Qr_Sol_EnvidadasSFP_PCO_UNI_VENDA: TFloatField;
    Qr_Sol_EnvidadasSFP_QTD_CPR_ML_DIA: TFloatField;
    Qr_Sol_EnvidadasSFP_MENS_RECEPCAO: TMemoField;
    Qr_Sol_EnvidadasSFP_NUMAUT: TStringField;
    Qr_Sol_EnvidadasSFP_PAGO_MS: TFloatField;
    Qr_Sol_EnvidadasSFP_PAGO_CLIENTE: TFloatField;
    Qr_Sol_EnvidadasSFP_CRM_MEDICO: TStringField;
    Qr_Sol_EnvidadasSFP_CRM_MEDICO_UF: TStringField;
    Qr_Sol_EnvidadasSFP_DATARECEITA: TDateTimeField;
    Qr_Sol_EnvidadasSFP_CODVEN: TFloatField;
    Qr_Sol_EnvidadasSFP_STATUS: TFloatField;
    Qr_Sol_EnvidadasSFP_DATHOR_INC: TDateTimeField;
    Qr_Sol_EnvidadasSFP_CODUSR_INC: TFloatField;
    Qr_Sol_EnvidadasSFP_NOMUSR_INC: TStringField;
    Qr_Sol_EnvidadasSFP_DATHOR_ALT: TDateTimeField;
    Qr_Sol_EnvidadasSFP_CODUSR_ALT: TFloatField;
    Qr_Sol_EnvidadasSFP_NOMUSR_ALT: TStringField;
    Qr_Sol_EnvidadasSFP_CLIENTE_CPF: TStringField;
    Qr_Sol_EnvidadasSFP_CLIENTE_NOME: TStringField;
    Qr_Sol_EnvidadasSFP_QTDEMB: TFloatField;
    Qr_Sol_EnvidadasSFP_STATUS_RECECAO: TStringField;
    Qr_Sol_EnvidadasVALORTOT_SOL: TFloatField;
    Qr_Sol_EnvidadasNOMVEN: TStringField;
    Qr_Sol_EnvidadasNOMPRO: TStringField;
    Qr_Sol_EnvidadasINCLUSO: TStringField;
    Qr_Sol_Concluidas_Res: TQuery;
    Src_Sol_Concluidas_Res: TDataSource;
    U_Sol_Concluidas_Res: TUpdateSQL;
    Qr_Sol_Concluidas: TQuery;
    src_Sol_Concluidas: TDataSource;
    U_Sol_Concluidas: TUpdateSQL;
    Qr_Sol_Concluidas_ResSFP_CODEMP: TFloatField;
    Qr_Sol_Concluidas_ResSFP_ID_ANO: TFloatField;
    Qr_Sol_Concluidas_ResSFP_ID: TFloatField;
    Qr_Sol_Concluidas_ResCRM_MEDICO: TStringField;
    Qr_Sol_Concluidas_ResCRM_MEDICO_UF: TStringField;
    Qr_Sol_Concluidas_ResDATARECEITA: TDateTimeField;
    Qr_Sol_Concluidas_ResCODVEN: TFloatField;
    Qr_Sol_Concluidas_ResNOMVEN: TStringField;
    Qr_Sol_Concluidas_ResCLIENTE_CPF: TStringField;
    Qr_Sol_Concluidas_ResCLIENTE_NOME: TStringField;
    Qr_Sol_Concluidas_ResQTDPRESC: TFloatField;
    Qr_Sol_Concluidas_ResQTDSOL: TFloatField;
    Qr_Sol_Concluidas_ResQTDAUT: TFloatField;
    Qr_Sol_Concluidas_ResTOTAL_SOL: TFloatField;
    Qr_Sol_Concluidas_ResTOTPAGO_MS: TFloatField;
    Qr_Sol_Concluidas_ResTOTPAGO_CLIENTE: TFloatField;
    Qr_Sol_ConcluidasSFP_CODEMP: TFloatField;
    Qr_Sol_ConcluidasSFP_ID_ANO: TFloatField;
    Qr_Sol_ConcluidasSFP_ID: TFloatField;
    Qr_Sol_ConcluidasSFP_ITEM: TFloatField;
    Qr_Sol_ConcluidasSFP_CODPRO: TFloatField;
    Qr_Sol_ConcluidasSFP_CODBAR: TStringField;
    Qr_Sol_ConcluidasSFP_QTDPRESC: TFloatField;
    Qr_Sol_ConcluidasSFP_QTDSOL: TFloatField;
    Qr_Sol_ConcluidasSFP_QTDAUT: TFloatField;
    Qr_Sol_ConcluidasSFP_PCO_UNI_VENDA: TFloatField;
    Qr_Sol_ConcluidasSFP_QTD_CPR_ML_DIA: TFloatField;
    Qr_Sol_ConcluidasSFP_MENS_RECEPCAO: TMemoField;
    Qr_Sol_ConcluidasSFP_NUMAUT: TStringField;
    Qr_Sol_ConcluidasSFP_PAGO_MS: TFloatField;
    Qr_Sol_ConcluidasSFP_PAGO_CLIENTE: TFloatField;
    Qr_Sol_ConcluidasSFP_CRM_MEDICO: TStringField;
    Qr_Sol_ConcluidasSFP_CRM_MEDICO_UF: TStringField;
    Qr_Sol_ConcluidasSFP_DATARECEITA: TDateTimeField;
    Qr_Sol_ConcluidasSFP_CODVEN: TFloatField;
    Qr_Sol_ConcluidasSFP_STATUS: TFloatField;
    Qr_Sol_ConcluidasSFP_DATHOR_INC: TDateTimeField;
    Qr_Sol_ConcluidasSFP_CODUSR_INC: TFloatField;
    Qr_Sol_ConcluidasSFP_NOMUSR_INC: TStringField;
    Qr_Sol_ConcluidasSFP_DATHOR_ALT: TDateTimeField;
    Qr_Sol_ConcluidasSFP_CODUSR_ALT: TFloatField;
    Qr_Sol_ConcluidasSFP_NOMUSR_ALT: TStringField;
    Qr_Sol_ConcluidasSFP_CLIENTE_CPF: TStringField;
    Qr_Sol_ConcluidasSFP_CLIENTE_NOME: TStringField;
    Qr_Sol_ConcluidasSFP_QTDEMB: TFloatField;
    Qr_Sol_ConcluidasSFP_STATUS_RECECAO: TStringField;
    Qr_Sol_ConcluidasVALORTOT_SOL: TFloatField;
    Qr_Sol_ConcluidasNOMVEN: TStringField;
    Qr_Sol_ConcluidasNOMPRO: TStringField;
    Qr_Sol_ConcluidasINCLUSO: TStringField;
    Qr_Sol_Extornadas_Res: TQuery;
    src_Sol_Extornadas_Res: TDataSource;
    U_Sol_Extornadas_Res: TUpdateSQL;
    Qr_Sol_Extornadas: TQuery;
    src_Sol_Extornadas: TDataSource;
    U_Sol_Extornadas: TUpdateSQL;
    Qr_Sol_ExtornadasSFP_CODEMP: TFloatField;
    Qr_Sol_ExtornadasSFP_ID_ANO: TFloatField;
    Qr_Sol_ExtornadasSFP_ID: TFloatField;
    Qr_Sol_ExtornadasSFP_ITEM: TFloatField;
    Qr_Sol_ExtornadasSFP_CODPRO: TFloatField;
    Qr_Sol_ExtornadasSFP_CODBAR: TStringField;
    Qr_Sol_ExtornadasSFP_QTDPRESC: TFloatField;
    Qr_Sol_ExtornadasSFP_QTDSOL: TFloatField;
    Qr_Sol_ExtornadasSFP_QTDAUT: TFloatField;
    Qr_Sol_ExtornadasSFP_PCO_UNI_VENDA: TFloatField;
    Qr_Sol_ExtornadasSFP_QTD_CPR_ML_DIA: TFloatField;
    Qr_Sol_ExtornadasSFP_MENS_RECEPCAO: TMemoField;
    Qr_Sol_ExtornadasSFP_NUMAUT: TStringField;
    Qr_Sol_ExtornadasSFP_PAGO_MS: TFloatField;
    Qr_Sol_ExtornadasSFP_PAGO_CLIENTE: TFloatField;
    Qr_Sol_ExtornadasSFP_CRM_MEDICO: TStringField;
    Qr_Sol_ExtornadasSFP_CRM_MEDICO_UF: TStringField;
    Qr_Sol_ExtornadasSFP_DATARECEITA: TDateTimeField;
    Qr_Sol_ExtornadasSFP_CODVEN: TFloatField;
    Qr_Sol_ExtornadasSFP_STATUS: TFloatField;
    Qr_Sol_ExtornadasSFP_DATHOR_INC: TDateTimeField;
    Qr_Sol_ExtornadasSFP_CODUSR_INC: TFloatField;
    Qr_Sol_ExtornadasSFP_NOMUSR_INC: TStringField;
    Qr_Sol_ExtornadasSFP_DATHOR_ALT: TDateTimeField;
    Qr_Sol_ExtornadasSFP_CODUSR_ALT: TFloatField;
    Qr_Sol_ExtornadasSFP_NOMUSR_ALT: TStringField;
    Qr_Sol_ExtornadasSFP_CLIENTE_CPF: TStringField;
    Qr_Sol_ExtornadasSFP_CLIENTE_NOME: TStringField;
    Qr_Sol_ExtornadasSFP_QTDEMB: TFloatField;
    Qr_Sol_ExtornadasSFP_STATUS_RECECAO: TStringField;
    Qr_Sol_ExtornadasVALORTOT_SOL: TFloatField;
    Qr_Sol_ExtornadasNOMVEN: TStringField;
    Qr_Sol_ExtornadasNOMPRO: TStringField;
    Qr_Sol_ExtornadasINCLUSO: TStringField;
    Qr_Sol_Canceladas_Res: TQuery;
    Src_Sol_Canceladas_Res: TDataSource;
    U_Sol_Canceladas_Res: TUpdateSQL;
    Qr_Sol_Cenceladas: TQuery;
    src_Sol_Cenceladas: TDataSource;
    U_Sol_Cenceladas: TUpdateSQL;
    Qr_Sol_Canceladas_ResSFP_CODEMP: TFloatField;
    Qr_Sol_Canceladas_ResSFP_ID_ANO: TFloatField;
    Qr_Sol_Canceladas_ResSFP_ID: TFloatField;
    Qr_Sol_Canceladas_ResCRM_MEDICO: TStringField;
    Qr_Sol_Canceladas_ResCRM_MEDICO_UF: TStringField;
    Qr_Sol_Canceladas_ResDATARECEITA: TDateTimeField;
    Qr_Sol_Canceladas_ResCODVEN: TFloatField;
    Qr_Sol_Canceladas_ResNOMVEN: TStringField;
    Qr_Sol_Canceladas_ResCLIENTE_CPF: TStringField;
    Qr_Sol_Canceladas_ResCLIENTE_NOME: TStringField;
    Qr_Sol_Canceladas_ResQTDPRESC: TFloatField;
    Qr_Sol_Canceladas_ResQTDSOL: TFloatField;
    Qr_Sol_Canceladas_ResQTDAUT: TFloatField;
    Qr_Sol_Canceladas_ResTOTAL_SOL: TFloatField;
    Qr_Sol_Canceladas_ResTOTPAGO_MS: TFloatField;
    Qr_Sol_Canceladas_ResTOTPAGO_CLIENTE: TFloatField;
    Qr_Sol_CenceladasSFP_CODEMP: TFloatField;
    Qr_Sol_CenceladasSFP_ID_ANO: TFloatField;
    Qr_Sol_CenceladasSFP_ID: TFloatField;
    Qr_Sol_CenceladasSFP_ITEM: TFloatField;
    Qr_Sol_CenceladasSFP_CODPRO: TFloatField;
    Qr_Sol_CenceladasSFP_CODBAR: TStringField;
    Qr_Sol_CenceladasSFP_QTDPRESC: TFloatField;
    Qr_Sol_CenceladasSFP_QTDSOL: TFloatField;
    Qr_Sol_CenceladasSFP_QTDAUT: TFloatField;
    Qr_Sol_CenceladasSFP_PCO_UNI_VENDA: TFloatField;
    Qr_Sol_CenceladasSFP_QTD_CPR_ML_DIA: TFloatField;
    Qr_Sol_CenceladasSFP_MENS_RECEPCAO: TMemoField;
    Qr_Sol_CenceladasSFP_NUMAUT: TStringField;
    Qr_Sol_CenceladasSFP_PAGO_MS: TFloatField;
    Qr_Sol_CenceladasSFP_PAGO_CLIENTE: TFloatField;
    Qr_Sol_CenceladasSFP_CRM_MEDICO: TStringField;
    Qr_Sol_CenceladasSFP_CRM_MEDICO_UF: TStringField;
    Qr_Sol_CenceladasSFP_DATARECEITA: TDateTimeField;
    Qr_Sol_CenceladasSFP_CODVEN: TFloatField;
    Qr_Sol_CenceladasSFP_STATUS: TFloatField;
    Qr_Sol_CenceladasSFP_DATHOR_INC: TDateTimeField;
    Qr_Sol_CenceladasSFP_CODUSR_INC: TFloatField;
    Qr_Sol_CenceladasSFP_NOMUSR_INC: TStringField;
    Qr_Sol_CenceladasSFP_DATHOR_ALT: TDateTimeField;
    Qr_Sol_CenceladasSFP_CODUSR_ALT: TFloatField;
    Qr_Sol_CenceladasSFP_NOMUSR_ALT: TStringField;
    Qr_Sol_CenceladasSFP_CLIENTE_CPF: TStringField;
    Qr_Sol_CenceladasSFP_CLIENTE_NOME: TStringField;
    Qr_Sol_CenceladasSFP_QTDEMB: TFloatField;
    Qr_Sol_CenceladasSFP_STATUS_RECECAO: TStringField;
    Qr_Sol_CenceladasVALORTOT_SOL: TFloatField;
    Qr_Sol_CenceladasNOMVEN: TStringField;
    Qr_Sol_CenceladasNOMPRO: TStringField;
    Qr_Sol_CenceladasINCLUSO: TStringField;
    Qr_Sol_Excluidas_Res: TQuery;
    Src_Sol_Excluidas_Res: TDataSource;
    U_Sol_Excluidas_Res: TUpdateSQL;
    Qr_Sol_Excluidas: TQuery;
    src_Sol_Excluidas: TDataSource;
    U_Sol_Excluidas: TUpdateSQL;
    Qr_Sol_Excluidas_ResSFP_CODEMP: TFloatField;
    Qr_Sol_Excluidas_ResSFP_ID_ANO: TFloatField;
    Qr_Sol_Excluidas_ResSFP_ID: TFloatField;
    Qr_Sol_Excluidas_ResCRM_MEDICO: TStringField;
    Qr_Sol_Excluidas_ResCRM_MEDICO_UF: TStringField;
    Qr_Sol_Excluidas_ResDATARECEITA: TDateTimeField;
    Qr_Sol_Excluidas_ResCODVEN: TFloatField;
    Qr_Sol_Excluidas_ResNOMVEN: TStringField;
    Qr_Sol_Excluidas_ResCLIENTE_CPF: TStringField;
    Qr_Sol_Excluidas_ResCLIENTE_NOME: TStringField;
    Qr_Sol_Excluidas_ResQTDPRESC: TFloatField;
    Qr_Sol_Excluidas_ResQTDSOL: TFloatField;
    Qr_Sol_Excluidas_ResQTDAUT: TFloatField;
    Qr_Sol_Excluidas_ResTOTAL_SOL: TFloatField;
    Qr_Sol_Excluidas_ResTOTPAGO_MS: TFloatField;
    Qr_Sol_Excluidas_ResTOTPAGO_CLIENTE: TFloatField;
    Qr_Sol_ExcluidasSFP_CODEMP: TFloatField;
    Qr_Sol_ExcluidasSFP_ID_ANO: TFloatField;
    Qr_Sol_ExcluidasSFP_ID: TFloatField;
    Qr_Sol_ExcluidasSFP_ITEM: TFloatField;
    Qr_Sol_ExcluidasSFP_CODPRO: TFloatField;
    Qr_Sol_ExcluidasSFP_CODBAR: TStringField;
    Qr_Sol_ExcluidasSFP_QTDPRESC: TFloatField;
    Qr_Sol_ExcluidasSFP_QTDSOL: TFloatField;
    Qr_Sol_ExcluidasSFP_QTDAUT: TFloatField;
    Qr_Sol_ExcluidasSFP_PCO_UNI_VENDA: TFloatField;
    Qr_Sol_ExcluidasSFP_QTD_CPR_ML_DIA: TFloatField;
    Qr_Sol_ExcluidasSFP_MENS_RECEPCAO: TMemoField;
    Qr_Sol_ExcluidasSFP_NUMAUT: TStringField;
    Qr_Sol_ExcluidasSFP_PAGO_MS: TFloatField;
    Qr_Sol_ExcluidasSFP_PAGO_CLIENTE: TFloatField;
    Qr_Sol_ExcluidasSFP_CRM_MEDICO: TStringField;
    Qr_Sol_ExcluidasSFP_CRM_MEDICO_UF: TStringField;
    Qr_Sol_ExcluidasSFP_DATARECEITA: TDateTimeField;
    Qr_Sol_ExcluidasSFP_CODVEN: TFloatField;
    Qr_Sol_ExcluidasSFP_STATUS: TFloatField;
    Qr_Sol_ExcluidasSFP_DATHOR_INC: TDateTimeField;
    Qr_Sol_ExcluidasSFP_CODUSR_INC: TFloatField;
    Qr_Sol_ExcluidasSFP_NOMUSR_INC: TStringField;
    Qr_Sol_ExcluidasSFP_DATHOR_ALT: TDateTimeField;
    Qr_Sol_ExcluidasSFP_CODUSR_ALT: TFloatField;
    Qr_Sol_ExcluidasSFP_NOMUSR_ALT: TStringField;
    Qr_Sol_ExcluidasSFP_CLIENTE_CPF: TStringField;
    Qr_Sol_ExcluidasSFP_CLIENTE_NOME: TStringField;
    Qr_Sol_ExcluidasSFP_QTDEMB: TFloatField;
    Qr_Sol_ExcluidasSFP_STATUS_RECECAO: TStringField;
    Qr_Sol_ExcluidasVALORTOT_SOL: TFloatField;
    Qr_Sol_ExcluidasNOMVEN: TStringField;
    Qr_Sol_ExcluidasNOMPRO: TStringField;
    Qr_Sol_ExcluidasINCLUSO: TStringField;
    Qr_Sol_Extornadas_ResSFP_CODEMP: TFloatField;
    Qr_Sol_Extornadas_ResSFP_ID_ANO: TFloatField;
    Qr_Sol_Extornadas_ResSFP_ID: TFloatField;
    Qr_Sol_Extornadas_ResCRM_MEDICO: TStringField;
    Qr_Sol_Extornadas_ResCRM_MEDICO_UF: TStringField;
    Qr_Sol_Extornadas_ResDATARECEITA: TDateTimeField;
    Qr_Sol_Extornadas_ResCODVEN: TFloatField;
    Qr_Sol_Extornadas_ResNOMVEN: TStringField;
    Qr_Sol_Extornadas_ResCLIENTE_CPF: TStringField;
    Qr_Sol_Extornadas_ResCLIENTE_NOME: TStringField;
    Qr_Sol_Extornadas_ResQTDPRESC: TFloatField;
    Qr_Sol_Extornadas_ResQTDSOL: TFloatField;
    Qr_Sol_Extornadas_ResQTDAUT: TFloatField;
    Qr_Sol_Extornadas_ResTOTAL_SOL: TFloatField;
    Qr_Sol_Extornadas_ResTOTPAGO_MS: TFloatField;
    Qr_Sol_Extornadas_ResTOTPAGO_CLIENTE: TFloatField;
    Edit2: TEdit;
    cb_tppesq: TComboBox;
    edt_conteudo: TMaskEdit;
    bbPesquisar: TBitBtn;
    Edit1: TEdit;
    edt_qtd_pendentes: TEdit;
    bbCancelar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bbCotacaoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SAIRClick(Sender: TObject);
    procedure DBGrid_sol_resColExit(Sender: TObject);
    procedure bbPesquisarClick(Sender: TObject);
    procedure src_Sol_Pend_resDataChange(Sender: TObject; Field: TField);
    procedure DBGrid_sol_resKeyPress(Sender: TObject; var Key: Char);
    procedure Qr_Sol_Pend_ResAfterPost(DataSet: TDataSet);
    procedure Qr_Sol_Pend_ResBeforePost(DataSet: TDataSet);
    procedure Qr_Sol_Pend_ResAfterInsert(DataSet: TDataSet);
    procedure DBGrid_sol_itensColExit(Sender: TObject);
    procedure DBGrid_sol_itensKeyPress(Sender: TObject; var Key: Char);
    procedure bbExcluirItemClick(Sender: TObject);
    procedure bbres_incluirClick(Sender: TObject);
    procedure bbres_alterarClick(Sender: TObject);
    procedure bbres_gravarClick(Sender: TObject);
    procedure bbres_excluirClick(Sender: TObject);
    procedure Qr_Sol_PendBeforePost(DataSet: TDataSet);
    procedure Qr_Sol_PendAfterInsert(DataSet: TDataSet);
    procedure Qr_Sol_PendAfterEdit(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Qr_Sol_Pend_ResAfterEdit(DataSet: TDataSet);
    procedure Qr_Sol_Pend_ResAfterCancel(DataSet: TDataSet);
    procedure Qr_Sol_Pend_ResAfterDelete(DataSet: TDataSet);
    procedure DBGrid_sol_resExit(Sender: TObject);
    procedure DBGrid_sol_itensExit(Sender: TObject);
    procedure src_Sol_Envidadas_ResDataChange(Sender: TObject;
      Field: TField);
    procedure Src_Sol_Concluidas_ResDataChange(Sender: TObject;
      Field: TField);
    procedure bbCancelarClick(Sender: TObject);
  private
    { Private declarations }
    mUsuario: String;
    mSenha: String;
    mAmbiente: String;
    mString_Generica: String;
    mLista: TStringList;

    mNomePro: String;
    mPreco: String;
    mCodBar: String;



    function fcotacao: Boolean;

    function GetCertificadoNovo(out pCertificado: String): Boolean;


    function fLerSolicitacoes(pTabela: tQuery; pID,pID_Ano: Integer) : Boolean;

    function fLerSolicitacoes_Res(pTabela: tquery;pStatus,pTipo: Integer;pValor: String): Boolean;





//     Procedure GetDosOutput(CommandLine: string; Work: string ; OMemo : TMemo);

     function fTotais: Boolean;


  public
    { Public declarations }
  end;
var
  Frm_Farma_FP_Validar: TFrm_Farma_FP_Validar;
  fp_solicitacao: ServicoSolicitacaoWS;

implementation

uses Func, s_lerarq_geral, S_DM1, S_DM4, s_Pro_Farma_Apresentacao;

{$R *.dfm}

procedure TFrm_Farma_FP_Validar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
freeandnil(mLista);

if (FormState<>[fsModal]) then
   Action := caFree;

end;



procedure TFrm_Farma_FP_Validar.FormCreate(Sender: TObject);
begin
edt_conteudo.Text:='';
Qr_Sol_Pend_ResCLIENTE_CPF.EditMask:='999.999.999-99;0; ';
Qr_Sol_Pend_ResDATARECEITA.EditMask:=pEditMascData;



bbPesquisarClick(self);
mLista:=TStringList.Create;


end;

function TFrm_Farma_FP_Validar.fcotacao: Boolean;
var
mEnder: string;
begin
if mAmbiente='H' then
   mEnder:='http://homologacao.anvisa.gov.br/sngpc/webservice/sngpc.asmx?wsdl'
else
   mEnder:='http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?wsdl';
result:=true;
end;


procedure TFrm_Farma_FP_Validar.bbCotacaoClick(Sender: TObject);
var
Usuario          : UsuarioFarmaciaDTO;
Solicitacao      : SolicitacaoDTO;
Medicamentos     : ArrayOfMedicamentoDTO;
Autorizacao      : AutorizacaoDTO;

mVendedor_Senha  : String;
mVendedor_Usuario: String;
par              : string;
item             : Integer;
data: TXSDateTime;
marqGbasMsb: String;
mCertificado: String;
CertDados : ICertificate;
query_testa:TQuery;
mObs_Consistencia: String;
mEnder: string;
mDataHora_Receita: TDateTime;

        procedure fConfirmaAutorizacao;
        var
        query_exe: tQuery;
        x_med: Integer;
        begin
        query_exe:=tQuery.create(nil);
        query_exe.DatabaseName:='SG_ASSOC';
        query_exe.Close;
        query_exe.sql.clear;
        query_exe.sql.Add('Update CADSOL_FP set '
                         +' SFP_QTDAUT=:QTDAUT '
                         +' ,SFP_MENS_RECEPCAO=:MENS_RECEPCAO '
                         +' ,SFP_NUMAUT=:MENS_NUMAUT '
                         +' ,SFP_PAGO_MS=:PAGO_MS '
                         +' ,SFP_PAGO_CLIENTE=:PAGO_CLIENTE '
                         +' ,SFP_STATUS_RECECAO=:STATUS_RECECAO '
                         +' ,SFP_STATUS=:STATUS '
                         +' where SPF_ID=:ID '
                         +' and SPF_ID_ANO=:ID_ANO ');
        for x_med:=0 to high(Medicamentos)-1 do
           begin

           query_exe.ParamByName('QTDAUT').AsFloat          :=Medicamentos[x_med].qtAutorizada;
           query_exe.ParamByName('MENS_RECEPCAO').AsString  :=Autorizacao.descMensagemErro;
           query_exe.ParamByName('MENS_NUMAUT').AsString    :=Autorizacao.nuAutorizacao;
           query_exe.ParamByName('PAGO_MS').AsFloat         :=Medicamentos[x_med].vlPrecoSubsidiadoMS;
           query_exe.ParamByName('PAGO_CLIENTE').AsFloat    :=Medicamentos[x_med].vlPrecoSubsidiadoPaciente;
           query_exe.ParamByName('MENS_RECEPCAO').AsString  :=Autorizacao.descMensagemErro;
           query_exe.ParamByName('ID').AsInteger            :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
           query_exe.ParamByName('ID_ANO').AsInteger        :=Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger;
           query_exe.ParamByName('STATUS').AsInteger        :=1;
           try
              query_exe.Open;
           except on e : exception do
              begin
              Messagedlg('Erro ao atualizar CADSOL_FP '+e.message,mterror,[mbOk],0);
              end;
              end;
           end;
        freeandnil(query_exe);
        end;

begin
if (Qr_Sol_Pend_Res.Active=false) or (Qr_Sol_Pend_ResSFP_ID.AsInteger<=0) then
   exit;
query_testa:=TQuery.Create(nil);
query_testa.DatabaseName:='SG_ASSOC';
query_testa.Close;
query_testa.SQL.clear;
query_testa.SQL.Add('Select SFP_STATUS from CADSOL_FP '
                   +' where SFP_ID=:CHAVE '
                   +' and SFP_ID_ANO=:CHAVE_ANO ');
query_testa.ParamByName('CHAVE').AsInteger    :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
query_testa.ParamByName('CHAVE_ANO').AsInteger:=Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger;
try
   query_testa.Open;
except
   end;
mObs_Consistencia:='';

if query_testa.FieldByName('SFP_STATUS').AsInteger=9 then
   mObs_Consistencia:='Pedido Excluido'+#13
else if query_testa.FieldByName('SFP_STATUS').AsInteger=8 then
   mObs_Consistencia:='Pedido Cancelado'+#13
else if query_testa.FieldByName('SFP_STATUS').AsInteger=7 then
   mObs_Consistencia:='Pedido Extornado'+#13
else if query_testa.FieldByName('SFP_STATUS').AsInteger=1 then
   mObs_Consistencia:='Pedido Autorizado'+#13
else if query_testa.FieldByName('SFP_STATUS').AsInteger<>0 then
   mObs_Consistencia:='Status '+query_testa.fieldbyName('SFP_STATUS').asstring+' não esperado!'+#13;
if trim(mObs_Consistencia)<>'' then
   begin
   FreeAndNil(query_testa);
   MessageDlg(mObs_Consistencia,mtWarning,[mbOk],0);
   exit;
   end;
FreeAndNil(query_testa);
Qr_Sol_Pend.First;
While not qr_sol_pend.Eof do
   begin
   if Qr_Sol_PendSFP_QTDSOL.AsInteger<=0 then
      mObs_Consistencia:=mObs_Consistencia+'Quantidade Solicitada Não Informada!'+#13;
   if Qr_Sol_PendSFP_QTDEMB.AsInteger<=0 then
      mObs_Consistencia:=mObs_Consistencia+'Quantidade da Comprimidos/ml não informadada no cadastro do produto!'+#13;
   if Qr_Sol_PendSFP_QTD_CPR_ML_DIA.AsInteger<=0 then
      mObs_Consistencia:=mObs_Consistencia+'Quantidade de Comprimidos/ml ao dia não informadado!'+#13;
   Qr_Sol_Pend.Next;
   end;
Qr_Sol_Pend.First;

if Application.MessageBox('Quer realmente realizar a solicitação?','Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;


if mAmbiente='H' then
   mEnder:='https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS?wsdl'
else
   mEnder:='http://sngpc.anvisa.gov.br/webservice/sngpc.asmx?wsdl';

//     HTTPRIO1.URL         := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS?wsdl';
//    HTTPRIO1.WSDLLocation := 'https://200.214.130.41:9443/farmaciahomologa/services/ServicoSolicitacaoWS?wsdl';

HTTPRIO1.URL          := mEnder;
HTTPRIO1.WSDLLocation := mEnder;
HTTPRIO1.Service      := 'ServicoSolicitacaoWSService';
HTTPRIO1.Port         := 'ServicoSolicitacaoWS';

marqGbasMsb:=ExtractFilePath(Application.ExeName)+'farmacia\GBASMSB_1.0.1.5-Client\windows\GBASMSB.EXE';
if not FileExists(marqGbasMsb) then
   begin
   MessageDlg('Arquivo '+marqGbasMsb+' não encontrado!',mtWarning,[mbok],0);
   exit;
   end;


if not fLerGenerico02_campos('CADVEN','VFCIA_POPULAR_USUARIO,VFCIA_POPULAR_SENHA',' VCODVEN='+Qr_Sol_Pend_ResCODVEN.AsString ,mVendedor_Usuario,mVendedor_Senha) then
   begin
   MessageDlg('Vendedor não foi colocado!',mtWarning,[mbOk],0);
   exit;
   end;
if trim(mVendedor_Usuario)='' then
   begin
   MessageDlg('Usuario nao definido para o vendedor na Farmacia Popular!',mtWarning,[mbOk],0);
   exit;
   end;

mVendedor_Senha:=desCriptografar(mVendedor_Senha);
if trim(mVendedor_Senha)='' then
   begin
   MessageDlg('Não ha Senha definida para o vendedor na Farmacia Popular!',mtWarning,[mbOk],0);
   exit;
   end;

Usuario := UsuarioFarmaciaDTO.Create;
Usuario.senhaFarmacia   := mSenha;
Usuario.usuarioFarmacia := mUsuario;
Usuario.senhaVendedor   := mVendedor_Senha;
Usuario.usuarioFarmacia := mVendedor_Usuario;

Solicitacao  := SolicitacaoDTO.Create;
Solicitacao.coSolicitacaoFarmacia := Qr_Sol_Pend_ResSFP_ID.AsString;   // CODIGO SOLICITACAO
//   -- A DATA TEM QUE SER A DATA ATUAL, PQ SENAO ELE NAO LIBERA.
{
par := '--solicitacao '
       +' --CNPJ '+FormatFloat('00000000000000',DM1.Tb_EmpCGC.AsFloat)
       +' --CPF '+ edt_cpf_comprador.Text
       +' --CRM '+edt_crm_medico.Text
       +' --UF_CRM '+ cb_uf.Text
       +' --DT_EMISSAO_RECEITA '+ FormatDateTime(fdt2, Date);
{
       +fdeixanum(edt_cpf_comprador.Text)
       +' '+edt_crm_medico.Text
       +' ' + cb_uf.Text + ' ' + FormatDateTime(fdt2, Date);


--solicitacao --CNPJ cnpj --CPF cpf --CRM crm --UF_CRM ufCrm –
DT_EMISSAO_RECEITA dd/mm/aaaa
{
}

mDataHora_Receita:=now;

par := '--solicitacao'
       +' '+fdeixanum( Qr_Sol_Pend_ResCLIENTE_CPF.AsString )
       +' '+FormatFloat('00000000000000',DM1.Tb_EmpCGC.AsFloat)
       +' '+Qr_Sol_Pend_ResCRM_MEDICO.AsString
       +' '+Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString
       +' '+ FormatDateTime(fdt2, mDataHora_Receita);


Solicitacao.dnaEstacao := Trim(GetDosOutput(marqGbasMsb+' ' + par));

if trim(Solicitacao.dnaEstacao)='' then
   begin
   Messagedlg('n;ao foi possivel extrair o DNA da Estação!',mterror,[mbOk],0);
   exit;
   end;

Solicitacao.dtEmissaoReceita := TXSDateTime.Create;

//Solicitacao.dtEmissaoReceita.AsDateTime := mDataHora_Receita;
Solicitacao.dtEmissaoReceita.AsDateTime := mDataHora_Receita; // DATA DA RECEITA
Solicitacao.nuCnpj                      := FormatFloat('00000000000000',DM1.Tb_EmpCGC.AsFloat);
Solicitacao.nuCpf                       := fDeixanum(Qr_Sol_Pend_ResCLIENTE_CPF.AsString);
Solicitacao.nuCrm                       := Qr_Sol_Pend_ResCRM_MEDICO.AsString;
Solicitacao.sgUfCrm                     := Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString;

SetLength(Medicamentos, Qr_Sol_Pend.RecordCount);
Qr_Sol_Pend.First;
item:=0;
while not Qr_Sol_Pend.eof do
   begin
   Medicamentos[Item] := MedicamentoDTO.Create;
   Medicamentos[Item].coCodigoBarra := Qr_Sol_PendSFP_CODBAR.AsString;
   Medicamentos[Item].qtSolicitada  := Qr_Sol_PendSFP_QTDSOL.AsFloat;
   Medicamentos[Item].qtPrescrita   := Qr_Sol_PendSFP_QTDPRESC.AsFloat;
   Medicamentos[Item].vlPrecoVenda  := Qr_Sol_PendVALORTOT_SOL.AsFloat;
   Item := Item + 1;
   Qr_Sol_Pend.Next;
   end;

Solicitacao.arrMedicamentoDTO := Medicamentos;


Autorizacao := AutorizacaoDTO.Create;
try
   Autorizacao := GetServicoSolicitacaoWS().executarSolicitacao(Solicitacao, Usuario);
finally
   if (Autorizacao.inAutorizacaoSolicitacao = '00S') or
      (Autorizacao.inAutorizacaoSolicitacao = '01S') then
      begin
      fConfirmaAutorizacao;
      MessageDlg('Codigo retornado : ' + Autorizacao.inAutorizacaoSolicitacao + CHAR(13) +
              'Mensagem         : ' + Autorizacao.descMensagemErro + char(13) +
              'Nr. autorizacao  : ' + Autorizacao.nuAutorizacao,mtInformation,[mbOk],0);
      end
   else
      begin
      MessageDlg('Erro ao Buscar Solicitacao Codigo retornado : ' + Autorizacao.inAutorizacaoSolicitacao + CHAR(13) +
              'Mensagem         : ' + Autorizacao.descMensagemErro + char(13) +
              'solicicacaofarma        : ' + Autorizacao.coSolicitacaoFarmacia + char(13),mtError,[mbOk],0);
     end;
  end;   


FreeAndNil(Usuario);
FreeAndNil(Solicitacao);
FreeAndNil(Medicamentos);
FreeAndNil(Autorizacao);


end;






procedure TFrm_Farma_FP_Validar.FormActivate(Sender: TObject);
begin

mAmbiente:='H';

if flfilpad(0,'_FCIA_POPULAR','') then
   begin
   if DM4.Tb_FilPad2.Locate('FPCOMP','USUARIO',[]) then
      mUsuario:=DM4.Tb_FilPad2FPVALOR.AsString;
   if DM4.Tb_FilPad2.Locate('FPCOMP','SENHA',[]) then
      mSenha:=Criptografar(DM4.Tb_FilPad2FPVALOR.AsString);
   if DM4.Tb_FilPad2.Locate('FPCOMP','AMBIENTE',[]) then
      begin
      mAmbiente:=DM4.Tb_FilPad2FPVALOR.AsString;
      end;
   end;
if mAmbiente='P' then
   lbl_ambiente.Caption:='Ambiente de Produção'
else
   lbl_ambiente.Caption:='Ambiente de Homologação';





end;

function TFrm_Farma_FP_Validar.GetCertificadoNovo(out pCertificado: String): Boolean;
var
Store : IStore3;
CertsLista, CertsSelecionado : ICertificates2;
CertDados : ICertificate;
lSigner : TSigner;
lSignedData : TSignedData;
begin
Result := False;
Store := CoStore.Create;
Store.Open(CAPICOM_CURRENT_USER_STORE, 'My', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

CertsLista := Store.Certificates as ICertificates2;
CertsSelecionado := CertsLista.Select('Certificado(s) Digital(is) disponível(is)', 'Selecione o Certificado Digital para uso no aplicativo', false);

if not(CertsSelecionado.Count = 0) then
   begin
//   pcertificado:= toString(  CertsSelecionado.Item[1]) ;
   CertDados := IInterface(CertsSelecionado.Item[1]) as ICertificate2;
   pcertificado:=CertDados.SubjectName;
   if CertDados.ValidFromDate > Now then
      begin
      pCertificado:='certificado não liberado. aguardar '+datetostr(CertDados.ValidFromDate);
      exit;
      end;
   if CertDados.ValidToDate < Now then
      begin
      pCertificado:='certificado expirado';
      exit;
      end;
{
   if Pos(MaskCPFCNPJ2(DM1.Tb_EmpCGC.AsString),CertDados.SubjectName) = 0 then
      begin
      pCertificado:='certificado pertencente a outra empresa / pessoa'+chr(13)+CertDados.SubjectName;
      exit;
      end;
 }
   { Configura o objeto responsável por fazer a assinatura,
   informando qual é o certificado a ser usado e o conteúdo a ser assinado }
{
   lSigner := TSigner.Create(self);
   lSigner.Certificate := CertDados;
   lSignedData := TSignedData.Create(self);
   lSignedData.Content :=''  ;
}
{ Solicita a senha }
//   lSignedData.Sign(lSigner.DefaultInterface, false, CAPICOM_ENCODE_BASE64);
   Result := True;
//   lSignedData.Free;
//   lSigner.Free;
   end;
end;



 {
 Procedure tFrm_Farma_FP_Validar.GetDosOutput(CommandLine: string; Work: string ; OMemo : TMemo);
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin 
  with SA do begin
    nLength := SizeOf(SA); 
    bInheritHandle := True; 
    lpSecurityDescriptor := nil; 
  end; 
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0); 
  try 
    with SI do 
    begin
      FillChar(SI, SizeOf(SI), 0); 
      cb := SizeOf(SI); 
      dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
      wShowWindow := SW_HIDE; 
      hStdInput := GetStdHandle(STD_INPUT_HANDLE); // don't redirect stdin 
      hStdOutput := StdOutPipeWrite; 
      hStdError := StdOutPipeWrite; 
    end; 
    WorkDir := Work; 
    Handle := CreateProcess(nil, PChar('cmd.exe /C ' + CommandLine),
                            nil, nil, True, 0, nil,
                            PChar(WorkDir), SI, PI); 
    CloseHandle(StdOutPipeWrite); 
    if Handle then 
      try 
        repeat
        Application.ProcessMessages; 
          WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil); 
          if BytesRead > 0 then
          begin 
            Buffer[BytesRead] := #0; 
            OMemo.Text := OMemo.Text + Buffer; 
                    Application.ProcessMessages; 
          end; 
        until not WasOK or (BytesRead = 0); 
        WaitForSingleObject(PI.hProcess, INFINITE); 
      finally
        CloseHandle(PI.hThread); 
        CloseHandle(PI.hProcess); 
      end; 
  finally 
    CloseHandle(StdOutPipeRead); 
  end; 
end;
}
function TFrm_Farma_FP_Validar.fTotais: Boolean;
begin


end;

procedure TFrm_Farma_FP_Validar.SAIRClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Farma_FP_Validar.DBGrid_sol_resColExit(Sender: TObject);
var
query_nome: TQuery;
begin
if (Qr_Sol_Pend_Res.Active) and (Qr_Sol_Pend_Res.State in [dsedit,dsInsert]) then
   begin
   if DBGrid_sol_res.SelectedField=Qr_Sol_Pend_ResCODVEN then
      begin
      Qr_Sol_Pend_ResNOMVEN.Value:='';
      if Qr_Sol_Pend_ResCODVEN.AsFloat>0 then
         begin
         if not fLerGenerico_campos('CADVEN','VNOME,VFCIA_POPULAR_USUARIO,VFCIA_POPULAR_SENHA,VCPF',' VCODVEN='+Qr_Sol_Pend_ResCODVEN.AsString,mLista) then
            begin
            DBGrid_sol_res.SelectedField:=Qr_Sol_Pend_ResCODVEN;
            MessageDlg('Vendedor '+Qr_Sol_Pend_ResCODVEN.AsString+' não encontrado!',mtWarning,[mbOk],0);
            abort;
            exit;
            end
         else
            begin
            Qr_Sol_Pend_ResNOMVEN.Value:=mlista[0];
            if (trim(mlista[1])='') or (trim(mlista[2])='')  then
               begin
               DBGrid_sol_res.SelectedField:=Qr_Sol_Pend_ResCODVEN;
               MessageDlg('Vendedor '+Qr_Sol_Pend_ResCODVEN.AsString+' - '+mlista[0]+' não é um vendedor autorizado da farmacia popular!',mtWarning,[mbOk],0);
               abort;
               exit;
               end
            else if (fsonumero(mlista[3])=0) or (not Fcpf(mlista[3]))  then
               begin
               DBGrid_sol_res.SelectedField:=Qr_Sol_Pend_ResCODVEN;
               MessageDlg('CPF '+mLista[3]+' do Vendedor '+Qr_Sol_Pend_ResCODVEN.AsString+' - '+mlista[0]+' não é um CPF válido!',mtWarning,[mbOk],0);
               abort;
               exit;
               end;
            end
         end;
      end
   else if DBGrid_sol_res.SelectedField=Qr_Sol_Pend_ResCRM_MEDICO_UF then
      begin
      if length(Trim(Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString))>0 then
         begin
         if fCodigoEstado(Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString)<=0 then
            begin
            MessageDlg('Estado '+Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString+' não é um estado válido!',mtWarning,[mbOk],0);
            DBGrid_sol_res.SelectedField:=Qr_Sol_Pend_ResCRM_MEDICO_UF;
            abort;
            exit;
            end;
         end
      end
   else if DBGrid_sol_res.SelectedField=Qr_Sol_Pend_ResCLIENTE_CPF then
       begin
       if fsonumero(Qr_Sol_Pend_ResCLIENTE_CPF.AsString)>0 then
          begin
          if not Fcpf(fdeixanum(Qr_Sol_Pend_ResCLIENTE_CPF.AsString)) then
             begin
             MessageDlg(Qr_Sol_Pend_ResCLIENTE_CPF.asstring+' Não é um CPF Valido!',mtWarning,[mbOk],0);
             DBGrid_sol_res.SelectedField:=Qr_Sol_Pend_ResCLIENTE_CPF;
             abort;
             exit;
             end
          else
             begin
             if (length(Qr_Sol_Pend_ResCLIENTE_NOME.asstring)<1)   then
                begin
                query_nome:=TQuery.Create(nil);
                query_nome.DatabaseName:='SG_ASSOC';
                query_nome.SQL.Clear;
                query_nome.SQL.Add('Select max(SFP_CLIENTE_NOME) from CADSOL_FP '
                                  +' WHERE SFP_CLIENTE_CPF=:CPF ');
                query_nome.ParamByName('CPF').AsString:=fdeixanum(Qr_Sol_Pend_ResCLIENTE_CPF.AsString);
                query_nome.open;
                if query_nome.IsEmpty=false then
                   Qr_Sol_Pend_ResCLIENTE_NOME.value:=query_nome.fields[0].asstring;
                freeandnil(query_nome);
                end
             end;
          end;
       end;
   end;
end;


function TFrm_Farma_FP_Validar.fLerSolicitacoes_Res(pTabela: tquery;pStatus,pTipo: Integer;pValor: String): Boolean;

begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO' ,'PDCODEMP','SFP_CODEMP' ,'PDCODPRO' ,'SFP_CODPRO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADVEN' ,'VCODEMP','SFP_CODEMP' ,'VCODVEN' ,'SFP_CODVEN');


pTabela.Close;
pTabela.SQL.clear;
pTabela.SQL.Add('SELECT SFP_CODEMP,SFP_ID_ANO,SFP_ID '
                       +' ,max(SFP_CRM_MEDICO) as CRM_MEDICO '
                       +',max(SFP_CRM_MEDICO_UF) as CRM_MEDICO_UF '
                       +',max(SFP_DATARECEITA) as DATARECEITA '
                       +',max(SFP_CODVEN) as CODVEN '
                       +',max(VNOME) as nomven '
                       +',max(SFP_CLIENTE_CPF) as CLIENTE_CPF '
                       +',max(SFP_CLIENTE_NOME) as CLIENTE_NOME '
                       +',sum(SFP_QTDPRESC) as QTDPRESC '
                       +',sum(SFP_QTDSOL) as QTDSOL '
                       +',sum(SFP_QTDAUT) as QTDAUT '
                       +',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2) as TOTAL_SOL '
                       +',sum(SFP_PAGO_MS) as TOTPAGO_MS '
                       +',sum(SFP_PAGO_CLIENTE) as TOTPAGO_CLIENTE '
                       +' from CADSOL_FP ');
pTabela.SQL.Add(iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' SFP_CODEMP=0'+IntTosTr(codemp)
                        +' and SFP_STATUS=:STATUS');

pTabela.SQL.Add(' group by SFP_CODEMP,SFP_ID_ANO,SFP_ID ');
if trim(pValor)<>'' then
   begin
   if pTipo=0 then // codigo do vendedor
      begin
      pTabela.SQL.Add(' and SFP_CODVEN=:CODVEN ');
      pTabela.ParamByName('CODVEN').AsFloat:=fsonumero(pValor);
      end
   else if pTipo=1 then // cpf vendedor
      begin
      pTabela.SQL.Add(' and SFP_CLIENTE_CPF like :CPF ');
      pTabela.ParamByName('CPF').AsString:=MaskCPFCNPJ2(pValor);
      end
   else if pTipo=2 then // CRM do medico
      begin
      pTabela.SQL.Add(' and SFP_MEDICO_CRM like :MEDICO_CRM ');
      pTabela.ParamByName('MEDICO_CRM').AsString:=trim(pValor);
      end
   else if pTipo=3 then // data da receita
      begin
      pTabela.SQL.Add(' and SFP_DATARECEITA_CRM =:DATARECITA ');
      try
         pTabela.ParamByName('DATARECEITA').AsDateTime:=StrTodate(pValor);
      except
         pTabela.ParamByName('DATARECEITA').AsDateTime:=pdatanula;
         end;
      end
   else if pTipo=4 then // ID REGISRTRO
      begin
      pTabela.SQL.Add(' and SFP_ID =:ID ');
      pTabela.ParamByName('ID').AsInteger:=valint(pValor);
      end
   else if pTipo=5 then // nome do comprador
      begin
      pTabela.SQL.Add(' and SFP_CLIENTE_NOME like :NOMCLI ');
      pTabela.ParamByName('NOMCLI').AsString:=trim(pValor)+'%';
      end
   else if pTipo=6 then // nome do vendedor
      begin
      pTabela.SQL.Add(' and VNOME like :NOMVEN ');
      pTabela.ParamByName('NOMVEN').AsString:=trim(pValor)+'%';
      end
   else if pTipo=7 then
      begin
      pTabela.SQL.Add(' and SFP_ID=:MEDICO_CRM_UF ');
      pTabela.ParamByName('MEDICO_CRM_UF').AsString:=trim(pValor);
      end;
   end;
if valint(pValor)>0 then
   begin
   pTabela.SQL.Text:='Select * from ('
                        +pTabela.Text
                        +') where rownum<='+fdeixanum(edt_qtd_pendentes.text);
   end;
pTabela.ParamByName('STATUS').AsInteger:=pStatus;

try
   pTabela.Open;
   result:=true;
except on e : exception do
   begin
   pTabela.SQL.savetofile('c:\sql.txt');
   Messagedlg('Erro ao Abrir o Cadastro de Solicitacoes '+e.message,mterror,[mbOk],0);
   result:=false;
   end;
   end;
end;
procedure TFrm_Farma_FP_Validar.bbPesquisarClick(Sender: TObject);
begin
fLerSolicitacoes_Res(Qr_Sol_Pend_Res,0,cb_tppesq.ItemIndex,edt_conteudo.Text);
fLerSolicitacoes_Res(Qr_Sol_Envidadas_Res,1,cb_tppesq.ItemIndex,edt_conteudo.Text);
fLerSolicitacoes_Res(Qr_Sol_Concluidas_Res,2,cb_tppesq.ItemIndex,edt_conteudo.Text);
fLerSolicitacoes_Res(Qr_Sol_Extornadas_Res,7,cb_tppesq.ItemIndex,edt_conteudo.Text);
fLerSolicitacoes_Res(Qr_Sol_Canceladas_res,8,cb_tppesq.ItemIndex,edt_conteudo.Text);
fLerSolicitacoes_Res(Qr_Sol_Excluidas_Res,9,cb_tppesq.ItemIndex,edt_conteudo.Text);

end;

procedure TFrm_Farma_FP_Validar.src_Sol_Pend_resDataChange(Sender: TObject;
  Field: TField);
begin
if (not  (Qr_Sol_Pend.State in [dsEdit,dsInsert])) and
   ( (Qr_Sol_Pend.active=false) or
   (Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger<>Qr_Sol_PendSFP_ID_ANO.AsInteger) or
   (Qr_Sol_Pend_ResSFP_ID.AsInteger<>Qr_Sol_PendSFP_ID.AsInteger)) then
   begin
   fLerSolicitacoes(Qr_Sol_Pend,Qr_Sol_Pend_ResSFP_ID.AsInteger,Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger);
   end;



end;



function TFrm_Farma_FP_Validar.fLerSolicitacoes(pTabela: tQuery; pID,pID_Ano: Integer) : Boolean;
begin
la_tabelas  :='';
la_Join     :='';
la_instrucao:='';
fInnerJoin(1,'CADPRO' ,'PDCODEMP','SFP_CODEMP' ,'PDCODPRO' ,'SFP_CODPRO');
la_instrucao:=la_instrucao+' and ';
fInnerJoin(1,'CADVEN' ,'VCODEMP','SFP_CODEMP' ,'VCODVEN' ,'SFP_CODVEN');


pTabela.Close;
pTabela.SQL.clear;
pTabela.SQL.Add('SELECT CADSOL_FP.* '
                       +',SFP_PCO_UNI_VENDA*SFP_QTDSOL AS valortot_sol '
                       +',VNOME as nomven '
                       +',PDNOME as nompro '
                       +','+QuotedStr('Incluido por ')+' || NVL(SFP_CODUSR_INC,0) || '+QuotedStr('-')+' || NVL(SFP_NOMUSR_INC,'+QuotedStr('')+') || '+QuotedStr(' em ')
                       +'||  TO_CHAR(NVL(SFP_DATHOR_INC,SYSDATE), '+QuotedStr('dd/mm/yyyy hh:MM:ss')+') '
                       +'|| case when NVL(SFP_CODUSR_ALT,0)=0 then '+QuotedStr('')+' else '+QuotedStr(' alterado por ')+' || '
                       +'NVL(SFP_CODUSR_ALT,'+QuotedStr('')+') || '+QuotedStr('-')+' || NVL(SFP_NOMUSR_ALT,'+QuotedStr('')+') || '+QuotedStr(' em ')+' ||'
                       +'TO_CHAR(NVL(SFP_DATHOR_ALT,SYSDATE), '+QuotedStr('dd/mm/yyyy hh:mm:ss')+' ) end '
                       +' as incluso '
                       +' from CADSOL_FP ');
pTabela.SQL.Add(iif(la_tabelas='','',',')+la_tabelas
                        +'       '+la_Join
                        +'  where '+la_instrucao+iif(la_instrucao='','',' and ')
                        +' SFP_CODEMP=0'+IntTosTr(codemp)
                        +' and SFP_ID=:ID '
                        +' and SFP_ID_ANO=:ID_ANO '
                        );
pTabela.ParambyName('ID').Asinteger    :=pID;
pTabela.ParambyName('ID_ANO').Asinteger:=pID_Ano;
try
   pTabela.Open;
except on e : exception do
   begin
   pTabela.SQL.savetofile('c:\sql.txt');
   Messagedlg('Erro ao Abrir o Cadastro de Solicitacoes '+e.message,mterror,[mbOk],0);
   result:=false;
   end;
   end;
end;


procedure TFrm_Farma_FP_Validar.DBGrid_sol_resKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Qr_Sol_Pend_Res.Active) and (Qr_Sol_Pend_Res.State in [dsedit,dsInsert]) then
   begin
   if (key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%') then
      begin
      if DBGrid_sol_res.SelectedField=Qr_Sol_Pend_ResCODVEN then
         begin
         Qr_Sol_Pend_ResCODVEN.Value:=fsonumero(fChamaVen(0,'_venda',key));
         DBGrid_sol_resColExit(self);
         key:=#0;
         end;
      end


   end;

end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_Pend_ResAfterPost(
  DataSet: TDataSet);
var
query_sol: tquery;
begin
if not (Qr_Sol_Pend.State in [dsEdit,dsInsert]) then
   begin
   if Qr_Sol_Pend_ResSFP_ID.AsInteger>0 then
      begin
      query_sol:=tquery.Create(nil);
      query_sol.DatabaseName:='SG_ASSOC';
      query_sol.Close;
      query_sol.SQL.Clear;
      query_sol.SQL.Add('Update CADSOL_FP set SFP_CODVEN=:CODVEN '
                       +', SFP_CRM_MEDICO=:CRM_MEDICO '
                       +', SFP_CRM_MEDICO_UF=:CRM_MEDICO_UF '
                       +', SFP_DATARECEITA=:DATARECEITA '
                       +', SFP_CLIENTE_CPF=:CLIENTE_CPF '
                       +', SFP_CLIENTE_NOME=:CLIENTE_NOME '
                       +' where SFP_ID=:ID '
                       +' and SFP_ID_ANO=:ID_ANO ');
      query_sol.ParamByName('CODVEN').AsFloat        :=Qr_Sol_Pend_ResCODVEN.AsFloat;
      query_sol.ParamByName('CRM_MEDICO').AsString   :=Qr_Sol_Pend_ResCRM_MEDICO.AsString;
      query_sol.ParamByName('CRM_MEDICO_UF').AsString:=Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString;
      query_sol.ParamByName('DATARECEITA').AsDateTime:=Qr_Sol_Pend_ResDATARECEITA.AsDateTime;
      query_sol.ParamByName('CLIENTE_CPF').AsString  :=fdeixanum(Qr_Sol_Pend_ResCLIENTE_CPF.AsString);
      query_sol.ParamByName('CLIENTE_NOME').AsString :=Qr_Sol_Pend_ResCLIENTE_NOME.AsString;
      query_sol.ParamByName('ID').AsInteger          :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
      query_sol.ParamByName('ID_ANO').AsInteger      :=Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger;
      try
         Query_sol.execsql;
         fdm1startcommit;
         fLerSolicitacoes(Qr_Sol_Pend,Qr_Sol_Pend_ResSFP_ID.AsInteger,Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger);

      except on e : exception do
         begin
         Query_sol.SQL.savetofile('c:\sql.txt');
         Messagedlg('Erro ao atualizar cadastro CADSOL_FP '+e.message,mterror,[mbOk],0);
         end;
         end;
      freeandnil(query_sol);
      end;
   end;
end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_Pend_ResBeforePost(
  DataSet: TDataSet);
var
mFalta: String;
mQtdFalta: Integer;
begin
if Qr_Sol_Pend_ResDATARECEITA.AsDateTime<=pdatanula then
   Qr_Sol_Pend_ResDATARECEITA.AsDateTime:=date;
mQtdFalta:=0;
mFalta:='';
if (trim(Qr_Sol_Pend_ResCRM_MEDICO.AsString)='') then
   begin
   mFalta:=mFalta+ 'Falta o CRM do Medico'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if (trim(Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString)='') then
   begin
   mFalta:=mFalta+ 'Falta o Estado(UF) do CRM do Medico'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if (Qr_Sol_Pend_ResCODVEN.AsFloat=0) then
   begin
   mFalta:=mFalta+ 'Esta Faltando o Código do Vendedor'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if (fsonumero(Qr_Sol_Pend_ResCLIENTE_CPF.Asstring)=0) then
   begin
   mFalta:=mFalta+ 'Esta Faltando o CPF do Vendedor'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;
if mQtdFalta>3 then
   begin
   Qr_Sol_Pend_Res.Cancel;
   Abort;
   end
else if trim(mFalta)<>'' then
   begin
   if Application.MessageBox(pchar('Dados Incorretos '+mFalta+' Deseja Cancelar?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)=mryes then
      begin
      Qr_Sol_Pend_Res.Cancel;
      Abort;
      end
   else
      Abort;
   end;
end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_Pend_ResAfterInsert(
  DataSet: TDataSet);
begin
bbres_incluir.Enabled:=false;
bbres_alterar.Enabled:=false;
bbres_excluir.Enabled:=false;
bbres_gravar.Enabled :=true;

Qr_Sol_Pend_ResDATARECEITA.AsDateTime:=date;
Qr_Sol_Pend_ResSFP_CODEMP.AsInteger  :=codemp;



end;

procedure TFrm_Farma_FP_Validar.DBGrid_sol_itensColExit(Sender: TObject);
var
query_exe: TQuery;
begin

if (Qr_Sol_Pend.Active) and (Qr_Sol_Pend.State in [dsedit,dsInsert]) then
   begin
   if DBGrid_sol_itens.SelectedField=Qr_Sol_PendSFP_CODPRO then
      begin
      Qr_Sol_PendNOMPRO.Value:='';
      if Qr_Sol_PendSFP_CODPRO.AsFloat>0 then
         begin
         mlista.clear;
         Qr_Sol_PendSFP_CODPRO.Value:=fAchaCodigoOri(Qr_Sol_PendSFP_CODPRO.AsString);
         if not fLerGenerico_campos('CADPRO','PDNOME,PDPRECO1,PDCODBAR,PDAPRES_QTD',' PDCODPRO='+Qr_Sol_PendSFP_CODPRO.AsString,mLista) then
            begin
            MessageDlg('Produto '+Qr_Sol_PendSFP_CODPRO.AsString+' não cadastrado!',mtWarning,[mbOk],0);
            DBGrid_sol_itens.SelectedField:=Qr_Sol_PendSFP_CODPRO;
            abort;
            exit;
            end
         else
            begin
            Qr_Sol_PendNOMPRO.Value           :=mLista[0];
            Qr_Sol_PendSFP_PCO_UNI_VENDA.Value:=ValFloat(mLista[1]);
            Qr_Sol_PendSFP_CODBAR.Value       :=mLista[2];

            if Qr_Sol_Pend_ResSFP_ID.AsInteger>0 then
               begin
               if fLerGenerico01_campos('CADSOL_FP','SFP_ITEM',' SFP_ID='+Qr_Sol_Pend_ResSFP_ID.AsString
                  +' and SFP_ID_ANO='+Qr_Sol_Pend_ResSFP_ID_ANO.AsString
                  +' and SFP_CODPRO='+Qr_Sol_PendSFP_CODPRO.AsString
                  +' and SFP_ITEM<>'+Qr_Sol_PendSFP_ITEM.AsString
                  ,mString_Generica) then
                  begin
                  MessageDlg('Produto ja incluso item: '+mString_Generica+'!',mtWarning,[mbOk],0);
                  DBGrid_sol_itens.SelectedField:=Qr_Sol_PendSFP_CODPRO;
                  abort;
                  exit;
                  end;
               end;


            if ValInt(mLista[3])<=0 then
               begin
               Application.CreateForm(Tfrm_Pro_Farma_Apresentacao,frm_Pro_Farma_Apresentacao);
               frm_Pro_Farma_Apresentacao.lbl_produto.Caption:=Qr_Sol_PendSFP_CODPRO.AsString+' - '+Qr_Sol_PendNOMPRO.AsString;
               frm_Pro_Farma_Apresentacao.fMelhorColocacao(Qr_Sol_PendNOMPRO.AsString);
               frm_Pro_Farma_Apresentacao.ShowModal;
               if frm_Pro_Farma_Apresentacao.mOperacao=true then
                  begin
                  query_exe:=tquery.create(nil);
                  query_exe.DatabaseName:='SG_ASSOC';
                  query_exe.Close;
                  query_exe.SQL.Clear;
                  query_exe.SQL.Add('Update CADPRO set PDAPRES_QTD=:APRES_QTD '
                                   +' where PDCODPRO=:CODPRO ');
                  query_exe.ParamByName('APRES_QTD').AsInteger:=valint(frm_Pro_Farma_Apresentacao.edt_apres.text);
                  query_exe.ParamByName('CODPRO').Asfloat:=Qr_Sol_PendSFP_CODPRO.AsFloat;
                  try
                     Query_Exe.ExecSQL;
                     fdm1StartCommit;
                  except on e : exception do
                     begin
                     Messagedlg('Erro ao Atualizar o Cadastro de Produtos '+e.message,mterror,[mbOk],0);
                     freeandnil(query_exe);
                     DBGrid_sol_itens.SelectedField:=Qr_Sol_PendSFP_CODPRO;
                     abort;
                     exit;
                     end;
                     end;
                  Qr_Sol_PendSFP_QTDEMB.AsInteger:=valint(frm_Pro_Farma_Apresentacao.edt_apres.text);
                  FreeAndNil(query_exe);
                  end
               else
                  begin
                  Messagedlg('Para que seja feito o pedido é necessario que seja colocado a apresentação do produto!',mtWarning,[mbOk],0);
                  freeandnil(query_exe);
                  DBGrid_sol_itens.SelectedField:=Qr_Sol_PendSFP_CODPRO;
                  abort;
                  exit;
                  end;
               end
            else
               Qr_Sol_PendSFP_QTDEMB.AsInteger:=ValInt(mLista[3]);
            end;
         end
      end;
   Qr_Sol_PendVALORTOT_SOL.Value:=0;
   if (Qr_Sol_PendSFP_QTDSOL.AsFloat>0) and (Qr_Sol_PendSFP_PCO_UNI_VENDA.AsFloat>0) then
      Qr_Sol_PendVALORTOT_SOL.Value:=Arredonda( (Qr_Sol_PendSFP_QTDSOL.AsFloat*Qr_Sol_PendSFP_PCO_UNI_VENDA.AsFloat),2)
   end;
end;

procedure TFrm_Farma_FP_Validar.DBGrid_sol_itensKeyPress(Sender: TObject;
  var Key: Char);
begin
if (Qr_Sol_Pend.Active) then
   begin
   if DBGrid_sol_itens.SelectedField=Qr_Sol_PendSFP_CODPRO then
      begin
      if ((key in ['A'..'Z']) or (key in ['a'..'z']) or (key='%')) then
         begin
         if not (Qr_Sol_Pend.State in [dsedit,dsInsert]) then
            Qr_Sol_Pend.Edit;
         Qr_Sol_PendSFP_CODPRO.Value:=fSonumero(fChamaPesqPro(0,'_venda',key));
         DBGrid_sol_itensColExit(self);
         key:=#0;
         end;
      end;
   end;

end;

procedure TFrm_Farma_FP_Validar.bbExcluirItemClick(Sender: TObject);
begin
if (Qr_Sol_Pend.Active) and (not Qr_Sol_PendSFP_ID.IsNull) then
   begin
   if Application.MessageBox(pchar('Quer Realmente Exclui o Pedido do Produto '+Qr_Sol_PendSFP_CODPRO.asstring+' - '+ Qr_Sol_PendNOMPRO.asstring),'confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
      exit;
   end;
end;

procedure TFrm_Farma_FP_Validar.bbres_incluirClick(Sender: TObject);
begin

Qr_Sol_Pend_Res.Append;
fLerSolicitacoes(Qr_Sol_Pend,-1,-1);


DBGrid_sol_res.SelectedField:=Qr_Sol_Pend_ResCODVEN;
DBGrid_sol_res.SetFocus;


end;

procedure TFrm_Farma_FP_Validar.bbres_alterarClick(Sender: TObject);
begin
if (Qr_Sol_Pend_Res.active=false) or (Qr_Sol_Pend_ResSFP_ID.IsNull) then
   exit;
DBGrid_sol_res.SelectedField:=Qr_Sol_Pend_ResCODVEN;
DBGrid_sol_res.SetFocus;

end;

procedure TFrm_Farma_FP_Validar.bbres_gravarClick(Sender: TObject);
begin
Qr_Sol_Pend_Res.Post;

end;

procedure TFrm_Farma_FP_Validar.bbres_excluirClick(Sender: TObject);
var
query_sol: TQuery;
begin
if (Qr_Sol_Pend_Res.active=false) or (Qr_Sol_Pend_ResSFP_ID.IsNull) then
   exit;

if Application.MessageBox(pchar('Quer Realmente Exclui o Pedido '+Qr_Sol_Pend_ResSFP_ID.AsString+'/'+Qr_Sol_Pend_ResSFP_ID_ANO.AsString+' '
   +Qr_Sol_Pend_ResCLIENTE_NOME.AsString),'Confirmação',MB_YESNO+MB_DEFBUTTON2)<>mrYes then
   exit;

query_sol:=TQuery.create(nil);
query_sol.DatabaseName:='SG_ASSOC';
query_sol.sql.add('Delete from CADSOL_FP '
                 +' where SFP_ID=:ID '
                 +' and SFP_ID_ANO=:ID_ANO ');
query_sol.ParamByName('ID').AsInteger          :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
query_sol.ParamByName('ID_ANO').AsInteger      :=Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger;
try
   Query_sol.execsql;
   fdm1startcommit;
except on e : exception do
   begin
   Query_sol.SQL.savetofile('c:\sql.txt');
   Messagedlg('Erro ao atualizar cadastro CADSOL_FP '+e.message,mterror,[mbOk],0);
   end;
   end;
freeandnil(query_sol);
Qr_Sol_Pend_Res.Delete;


end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_PendBeforePost(DataSet: TDataSet);
var
mFalta: String;
mQtdFalta: Integer;
query_exe: TQuery;
query_item: TQuery;

begin
mQtdFalta:=0;

mFalta:='';

if Qr_Sol_PendSFP_CODPRO.AsFloat<=0 then
   begin
   mFalta:=mFalta+ 'Falta o Codigo do Produto'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if (trim(Qr_Sol_PendNOMPRO.AsString)='') then
   begin
   mFalta:=mFalta+ 'Código '+Qr_Sol_PendSFP_CODPRO.AsString+' do Produto é invalido'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if (Qr_Sol_PendSFP_CODVEN.AsFloat<=0) then
   begin
   mFalta:=mFalta+ 'Esta Faltando o Código do Vendedor'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if (fsonumero(Qr_Sol_PendSFP_CLIENTE_CPF.AsString)=0) then
   begin
   mFalta:=mFalta+ 'Esta Faltando o CPF do Comprador'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;


if (Qr_Sol_PendSFP_QTDPRESC.AsInteger=0) then
   begin
   mFalta:=mFalta+ 'Esta Faltando a Quantidade Prescrita'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if (Qr_Sol_PendSFP_QTDSOL.AsInteger=0) then
   begin
   mFalta:=mFalta+ 'Esta Faltando a Quantidade solicitada'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if length(trim(Qr_Sol_PendSFP_QTD_CPR_ML_DIA.AsString))<1 then
   begin
   mFalta:=mFalta+ 'Esta Faltando a Quantidade Comprimido/Ml ao dia'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;

if Qr_Sol_PendSFP_PCO_UNI_VENDA.AsFloat<=0 then
   begin
   mFalta:=mFalta+ 'Esta Faltando a Preco Unitario de Venda'+#13;
   mQtdFalta:=mQtdFalta+1;
   end;
if mQtdFalta>8 then
   begin
   Qr_Sol_Pend.Cancel;
   Abort;
   end
else if trim(mFalta)<>'' then
   begin
   if Application.MessageBox(pchar('Dados Incorretos '+mFalta+' Deseja Cancelar?'),'Confirmação',MB_YESNO+MB_DEFBUTTON2)=mryes then
      begin
      Qr_Sol_Pend.Cancel;
      Abort;
      end
   else
      Abort;
   end;
if not (Qr_Sol_Pend_Res.State in [dsEdit,dsInsert]) then
   Qr_Sol_Pend_Res.edit;

if Qr_Sol_Pend_ResSFP_ID.AsFloat=0 then
   begin
   Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger:=valint(FormatDateTime('yyyy', pdatasis));
   Qr_Sol_Pend_ResSFP_ID.AsInteger:=fbuscarSequencia('CHAVE_FP_'+FormatDateTime('yyyy', pdatasis));
   end
else
   begin
   Qr_Sol_Pend_ResSFP_ID_ANO .AsInteger  :=Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger;
   Qr_Sol_Pend_ResSFP_ID.AsInteger       :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
   end;


Qr_Sol_PendSFP_ID_ANO .AsInteger:=Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger;
Qr_Sol_PendSFP_ID.AsInteger     :=Qr_Sol_Pend_ResSFP_ID.AsInteger;

query_exe:=TQuery.Create(nil);
query_exe.DatabaseName:='SG_ASSOC';
query_exe.Close;
query_exe.SQL.Clear;
if Qr_Sol_PendSFP_ITEM.AsInteger=0 then
   begin
   query_item:=TQuery.Create(nil);
   query_item.DatabaseName:='SG_ASSOC';
   query_item.Close;
   query_item.SQL.Clear;
   query_item.SQL.Add('Select max(SFP_ITEM) as item from CADSOL_FP where  '
                     +' SFP_CODEMP=:CODEMP'
                     +' and SFP_ID_ANO=:ID_ANO '
                     +' and SFP_ID=:ID ');
   query_item.parambyName('CODEMP').AsInteger:=Qr_Sol_PendSFP_CODEMP.AsInteger;
   query_item.parambyName('ID_ANO').AsInteger:=Qr_Sol_Pend_ResSFP_ID_ano.AsInteger;
   query_item.parambyName('ID').AsInteger    :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
   query_item.Open;
   Qr_Sol_PendSFP_ITEM.AsInteger:=query_item.fields[0].AsInteger+1;
   freeandnil(query_item);



   query_exe.SQL.Add('Insert into CADSOL_FP ('
                    +' SFP_CODEMP '
                    +' ,SFP_ID_ANO '
                    +' ,SFP_ID '
                    +' ,SFP_ITEM '
                    +' ,SFP_CODPRO '
                    +' ,SFP_CODBAR '
                    +' ,SFP_QTDPRESC '
                    +' ,SFP_QTDSOL '
                    +' ,SFP_QTDAUT '
                    +' ,SFP_PCO_UNI_VENDA '
                    +' ,SFP_QTD_CPR_ML_DIA '
                    +' ,SFP_MENS_RECEPCAO '
                    +' ,SFP_NUMAUT '
                    +' ,SFP_PAGO_MS '
                    +' ,SFP_PAGO_CLIENTE '
                    +' ,SFP_CRM_MEDICO '
                    +' ,SFP_CRM_MEDICO_UF '
                    +' ,SFP_DATARECEITA '
                    +' ,SFP_CODVEN '
                    +' ,SFP_STATUS '
                    +' ,SFP_DATHOR_INC'
                    +' ,SFP_CODUSR_INC '
                    +' ,SFP_NOMUSR_INC '
                    +' ,SFP_DATHOR_ALT'
                    +' ,SFP_CODUSR_ALT'
                    +' ,SFP_NOMUSR_ALT'
                    +' ,SFP_CLIENTE_CPF '
                    +' ,SFP_CLIENTE_NOME '
                    +') values ('
                    +' :SFP_CODEMP '
                    +' ,:SFP_ID_ANO '
                    +' ,:SFP_ID '
                    +' ,:SFP_ITEM '
                    +' ,:SFP_CODPRO '
                    +' ,:SFP_CODBAR '
                    +' ,:SFP_QTDPRESC '
                    +' ,:SFP_QTDSOL '
                    +' ,:SFP_QTDAUT '
                    +' ,:SFP_PCO_UNI_VENDA '
                    +' ,:SFP_QTD_CPR_ML_DIA '
                    +' ,:SFP_MENS_RECEPCAO '
                    +' ,:SFP_NUMAUT '
                    +' ,:SFP_PAGO_MS '
                    +' ,:SFP_PAGO_CLIENTE '
                    +' ,:SFP_CRM_MEDICO '
                    +' ,:SFP_CRM_MEDICO_UF '
                    +' ,:SFP_DATARECEITA '
                    +' ,:SFP_CODVEN '
                    +' ,:SFP_STATUS '
                    +' ,:SFP_DATHOR_INC'
                    +' ,:SFP_CODUSR_INC '
                    +' ,:SFP_NOMUSR_INC '
                    +' ,:SFP_DATHOR_ALT'
                    +' ,:SFP_CODUSR_ALT'
                    +' ,:SFP_NOMUSR_ALT'
                    +' ,:SFP_CLIENTE_CPF '
                    +' ,:SFP_CLIENTE_NOME '
                    +')');


   end
else
   begin
   query_exe.SQL.Add('Update CADSOL_SP set '
                     +' SFP_CODEMP=:SFP_CODEMP '
                    +' ,SFP_ITEM=:SFP_ITEM '
                    +' ,SFP_CODPRO=:SFP_CODPRO '
                    +' ,SFP_CODBAR=:SFP_CODBAR '
                    +' ,SFP_QTDPRESC=:SFP_QTDPRESC '
                    +' ,SFP_QTDSOL=:SFP_QTDSOL '
                    +' ,SFP_QTDAUT=:SFP_QTDAUT '
                    +' ,SFP_PCO_UNI_VENDA=:SFP_PCO_UNI_VENDA '
                    +' ,SFP_QTD_CPR_ML_DIA=:SFP_QTD_CPR_ML_DIA '
                    +' ,SFP_MENS_RECEPCAO=:SFP_MENS_RECEPCAO '
                    +' ,SFP_NUMAUT=:SFP_NUMAUT '
                    +' ,SFP_PAGO_MS=:SFP_PAGO_MS '
                    +' ,SFP_PAGO_CLIENTE=:SFP_PAGO_CLIENTE '
                    +' ,SFP_CRM_MEDICO=:SFP_CRM_MEDICO '
                    +' ,SFP_CRM_MEDICO_UF=:SFP_CRM_MEDICO_UF '
                    +' ,SFP_DATARECEITA=:SFP_DATARECEITA '
                    +' ,SFP_CODVEN=:SFP_CODVEN '
                    +' ,SFP_STATUS=:SFP_STATUS '
                    +' ,SFP_DATHOR_INC=:SFP_DATHOR_INC'
                    +' ,SFP_CODUSR_INC=:SFP_CODUSR_INC '
                    +' ,SFP_NOMUSR_INC=:SFP_NOMUSR_INC '
                    +' ,SFP_DATHOR_ALT=:SFP_DATHOR_ALT'
                    +' ,SFP_CODUSR_ALT=:SFP_CODUSR_ALT'
                    +' ,SFP_NOMUSR_ALT=:SFP_NOMUSR_ALT'
                    +' ,SFP_CLIENTE_CPF=:SFP_CLIENTE_CPF '
                    +' ,SFP_CLIENTE_NOME=:SFP_CLIENTE_NOME '
                    +' where SFP_ID_ANO=:SFP_ID_ANO '
                    +' and  SFP_ID=:SFP_ID ');
   end;
query_exe.ParamByName('SFP_CODEMP').Value        :=Qr_Sol_PendSFP_CODEMP.AsInteger;
query_exe.ParamByName('SFP_ID_ANO').Value        :=Qr_Sol_PendSFP_ID_ANO.AsInteger;
query_exe.ParamByName('SFP_ID').Value            :=Qr_Sol_PendSFP_ID.AsInteger;
query_exe.ParamByName('SFP_ITEM').Value          :=Qr_Sol_PendSFP_ITEM.AsInteger;
query_exe.ParamByName('SFP_CODPRO').Value        :=Qr_Sol_PendSFP_CODPRO.AsFloat;
query_exe.ParamByName('SFP_CODBAR').Value        :=Qr_Sol_PendSFP_CODBAR.AsString;
query_exe.ParamByName('SFP_QTDPRESC').Value      :=Qr_Sol_PendSFP_QTDPRESC.AsFloat;
query_exe.ParamByName('SFP_QTDSOL').Value        :=Qr_Sol_PendSFP_QTDSOL.AsFloat;
query_exe.ParamByName('SFP_QTDAUT').Value        :=Qr_Sol_PendSFP_QTDAUT.AsFloat;
query_exe.ParamByName('SFP_PCO_UNI_VENDA').Value :=Qr_Sol_PendSFP_PCO_UNI_VENDA.AsFloat;
query_exe.ParamByName('SFP_QTD_CPR_ML_DIA').Value:=Qr_Sol_PendSFP_QTD_CPR_ML_DIA.AsFloat;
query_exe.ParamByName('SFP_MENS_RECEPCAO').Value :=Qr_Sol_PendSFP_MENS_RECEPCAO.AsString;
query_exe.ParamByName('SFP_NUMAUT').Value        :=Qr_Sol_PendSFP_NUMAUT.AsString;
query_exe.ParamByName('SFP_PAGO_MS').Value       :=Qr_Sol_PendSFP_PAGO_MS.AsFloat;
query_exe.ParamByName('SFP_PAGO_CLIENTE').Value  :=Qr_Sol_PendSFP_PAGO_CLIENTE.AsFloat;
query_exe.ParamByName('SFP_CRM_MEDICO').Value    :=Qr_Sol_PendSFP_CRM_MEDICO.AsString;
query_exe.ParamByName('SFP_CRM_MEDICO_UF').Value :=Qr_Sol_PendSFP_CRM_MEDICO_UF.AsString;
query_exe.ParamByName('SFP_DATARECEITA').Value   :=Qr_Sol_PendSFP_DATARECEITA.AsDateTime;
query_exe.ParamByName('SFP_CODVEN').Value        :=Qr_Sol_PendSFP_CODVEN.AsFloat;
query_exe.ParamByName('SFP_STATUS').Value        :=Qr_Sol_PendSFP_STATUS.AsString;
query_exe.ParamByName('SFP_DATHOR_INC').Value    :=Qr_Sol_PendSFP_DATHOR_INC.AsDateTime;
query_exe.ParamByName('SFP_CODUSR_INC').Value    :=Qr_Sol_PendSFP_CODUSR_INC.AsFloat;
query_exe.ParamByName('SFP_NOMUSR_INC').Value    :=Qr_Sol_PendSFP_NOMUSR_INC.AsString;
query_exe.ParamByName('SFP_DATHOR_ALT').Value    :=Qr_Sol_PendSFP_DATHOR_ALT.AsDateTime;
query_exe.ParamByName('SFP_CODUSR_ALT').Value    :=Qr_Sol_PendSFP_CODUSR_ALT.AsFloat;
query_exe.ParamByName('SFP_NOMUSR_ALT').Value    :=Qr_Sol_PendSFP_NOMUSR_ALT.AsString;
query_exe.ParamByName('SFP_CLIENTE_CPF').Value   :=Qr_Sol_PendSFP_CLIENTE_CPF.AsString;
query_exe.ParamByName('SFP_CLIENTE_NOME').Value  :=Qr_Sol_PendSFP_CLIENTE_NOME.AsString;
try
   query_exe.ExecSQL;
   fdm1StartCommit;
except on e : exception do
   begin
   query_exe.SQL.savetofile('c:\sql.txt');
   Messagedlg('Erro ao GERAR cadSOL_FP '+e.message,mterror,[mbOk],0);
   end;
   end;



query_exe.Close;
query_exe.SQL.Clear;
query_exe.SQL.Add('Select sum(SFP_QTDPRESC) as SFP_QTDPRESC '
                  +',sum(SFP_QTDSOL) as SFP_QTDSOL '
                  +',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2)  as TOTAL_SOLICITADO '
                  +' from CADSOL_FP where  '
                  +' SFP_CODEMP=:CODEMP'
                  +' and SFP_ID_ANO=:ID_ANO '
                  +' and SFP_ID=:ID ');
query_exe.parambyName('CODEMP').AsInteger:=Qr_Sol_PendSFP_CODEMP.AsInteger;
query_exe.parambyName('ID_ANO').AsInteger:=Qr_Sol_Pend_ResSFP_ID_ano.AsInteger;
query_exe.parambyName('ID').AsInteger    :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
query_exe.Open;

Qr_Sol_Pend_ResQTDSOL.AsFloat     :=query_exe.fieldbyName('SFP_QTDSOL').AsFloat;
Qr_Sol_Pend_ResQTDPRESC.AsFloat   :=query_exe.fieldbyName('SFP_QTDPRESC').AsFloat;
Qr_Sol_Pend_ResTOTAL_SOL.AsFloat  :=query_exe.fieldbyName('TOTAL_SOLICITADO').AsFloat;
Qr_Sol_Pend_Res.Post;

freeandnil(query_exe);




end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_PendAfterInsert(DataSet: TDataSet);
begin
Qr_Sol_PendSFP_STATUS.Value          :=0;
Qr_Sol_PendSFP_DATHOR_INC.Value      :=Now;
Qr_Sol_PendSFP_CODUSR_INC.Value      :=codusr;
Qr_Sol_PendSFP_NOMUSR_INC.Value      :=nomusr;
Qr_Sol_PendSFP_DATARECEITA.AsDateTime:=date;
Qr_Sol_PendSFP_ID_ANO.AsInteger      :=Qr_Sol_Pend_ResSFP_ID_ANO.AsInteger;
Qr_Sol_PendSFP_ID.AsInteger          :=Qr_Sol_Pend_ResSFP_ID.AsInteger;
Qr_Sol_PendSFP_CODVEN.AsFloat        :=Qr_Sol_Pend_ResCODVEN.AsFloat;
Qr_Sol_PendSFP_CLIENTE_CPF.AsString  :=Qr_Sol_Pend_ResCLIENTE_CPF.AsString;

Qr_Sol_PendSFP_CLIENTE_NOME.AsString :=Qr_Sol_Pend_ResCLIENTE_NOME.AsString;
Qr_Sol_PendSFP_CRM_MEDICO.AsString   :=Qr_Sol_Pend_ResCRM_MEDICO.AsString;
Qr_Sol_PendSFP_CRM_MEDICO_UF.AsString:=Qr_Sol_Pend_ResCRM_MEDICO_UF.AsString;



Qr_Sol_PendSFP_CODEMP.AsInteger        :=codemp;
Qr_Sol_PendSFP_QTDPRESC.AsInteger      :=1;
Qr_Sol_PendSFP_QTDSOL.AsInteger        :=1;
Qr_Sol_PendSFP_QTD_CPR_ML_DIA.AsInteger:=1;



end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_PendAfterEdit(DataSet: TDataSet);
begin
Qr_Sol_PendSFP_DATHOR_ALT.Value:=Now;
Qr_Sol_PendSFP_CODUSR_ALT.Value:=codusr;
Qr_Sol_PendSFP_NOMUSR_ALT.Value:=nomusr;

end;

procedure TFrm_Farma_FP_Validar.FormShow(Sender: TObject);
begin
Height:=508;
end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_Pend_ResAfterEdit(
  DataSet: TDataSet);
begin
bbres_incluir.Enabled:=false;
bbres_alterar.Enabled:=false;
bbres_excluir.Enabled:=false;
bbres_gravar.Enabled :=true;

end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_Pend_ResAfterCancel(
  DataSet: TDataSet);
begin
bbres_incluir.Enabled:=true;
bbres_alterar.Enabled:=true;
bbres_excluir.Enabled:=true;
bbres_gravar.Enabled :=false;

end;

procedure TFrm_Farma_FP_Validar.Qr_Sol_Pend_ResAfterDelete(
  DataSet: TDataSet);
begin
bbres_incluir.Enabled:=true;
bbres_alterar.Enabled:=true;
bbres_excluir.Enabled:=true;
bbres_gravar.Enabled :=false;

if Qr_Sol_Pend_Res.IsEmpty=true then
   begin
   bbres_alterar.Enabled:=false;
   bbres_excluir.Enabled:=false;
   end;

end;

procedure TFrm_Farma_FP_Validar.DBGrid_sol_resExit(Sender: TObject);
begin
if Qr_Sol_Pend_Res.State in [dsedit,dsinsert] then
   Qr_Sol_Pend_Res.Post;
end;

procedure TFrm_Farma_FP_Validar.DBGrid_sol_itensExit(Sender: TObject);
begin
if Qr_Sol_Pend.State in [dsEdit,dsInsert] then
   Qr_Sol_Pend.Post;
end;

procedure TFrm_Farma_FP_Validar.src_Sol_Envidadas_ResDataChange(
  Sender: TObject; Field: TField);
begin
if (not  (Qr_Sol_Envidadas.State in [dsEdit,dsInsert])) and
   ( (Qr_Sol_Envidadas.active=false) or
   (Qr_Sol_Envidadas_ResSFP_ID_ANO.AsInteger<>Qr_Sol_EnvidadasSFP_ID_ANO.AsInteger) or
   (Qr_Sol_Envidadas_ResSFP_ID.AsInteger<>Qr_Sol_EnvidadasSFP_ID.AsInteger)) then
   begin
   fLerSolicitacoes(Qr_Sol_Envidadas,Qr_Sol_Envidadas_ResSFP_ID.AsInteger,Qr_Sol_Envidadas_ResSFP_ID_ANO.AsInteger);
   end;

end;

procedure TFrm_Farma_FP_Validar.Src_Sol_Concluidas_ResDataChange(
  Sender: TObject; Field: TField);
begin
if (not  (Qr_Sol_Concluidas.State in [dsEdit,dsInsert])) and
   ( (Qr_Sol_Concluidas.active=false) or
   (Qr_Sol_Concluidas_ResSFP_ID_ANO.AsInteger<>Qr_Sol_ConcluidasSFP_ID_ANO.AsInteger) or
   (Qr_Sol_Concluidas_ResSFP_ID.AsInteger<>Qr_Sol_ConcluidasSFP_ID.AsInteger)) then
   begin
   fLerSolicitacoes(Qr_Sol_Concluidas,Qr_Sol_Concluidas_ResSFP_ID.AsInteger,Qr_Sol_Concluidas_ResSFP_ID_ANO.AsInteger);
   end;

end;

procedure TFrm_Farma_FP_Validar.bbCancelarClick(Sender: TObject);
begin
Qr_Sol_Pend_Res.Cancel;

end;

end.

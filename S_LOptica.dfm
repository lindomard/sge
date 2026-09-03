object Frm_LOptica: TFrm_LOptica
  Left = 101
  Top = 272
  Width = 612
  Height = 112
  ActiveControl = CODBAR
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Leitura Optica de Cheques'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 604
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Passe o documento Agora na leitora '#243'ptica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CODBAR: TEdit
    Left = 8
    Top = 24
    Width = 504
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object bbSair: TBitBtn
    Left = 193
    Top = 48
    Width = 175
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn1: TBitBtn
    Left = 515
    Top = 23
    Width = 76
    Height = 20
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object RDserial1: TRDserial
    About = 'RDserial 2.0 - Registrado'
    Velocidade = br9600
    Porta = COM2
    Paridade.Bits = prNone
    Paridade.Check = False
    Paridade.Replace = False
    Paridade.ReplaceChar = 0
    StopBits = sbOneStopBit
    DataBits = dbEight
    DiscardNull = False
    EventChar = 0
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    BufferWrite = 1024
    BufferRead = 1024
    FlowControl.OutCtsFlow = False
    FlowControl.OutDsrFlow = False
    FlowControl.ControlDtr = dtrDisable
    FlowControl.ControlRts = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Timeouts.ReadInterval = -1
    Timeouts.ReadTotalMultiplier = 0
    Timeouts.ReadTotalConstant = 0
    Timeouts.WriteTotalMultiplier = 100
    Timeouts.WriteTotalConstant = 1000
    SyncMethod = smSynchronize
    OnRxChar = RDserial1RxChar
    Left = 288
    Top = 48
  end
end

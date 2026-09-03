program SGE_FARMACIA;

uses
  Forms,
  SysUtils,
  windows,
  Dialogs,
  Controls,
  db,
  dbtables,
  commom in '..\commom.pas',
  S_ent in 'S_ENT.PAS' {Frm_Ent},
  Func in '..\Func.pas',
  S_DM1 in '..\S_DM1.PAS' {DM1: TDataModule},
  S_Sen01 in '..\S_Sen01.pas' {Frm_Sen01},
  S_Cal in '..\S_CAL.PAS' {Frm_Cal},
  S_IMPRES in '..\S_IMPRES.PAS' {Frm_Impres},
  S_EstGrf in '..\S_ESTGRF.PAS' {Frm_EstGrf},
  S_CPF in '..\S_CPF.pas' {Frm_CPF},
  S_Pgb in '..\S_PGB.PAS' {Frm_Pgb},
  S_PfPRe in '..\S_PfPRe.pas' {Frm_PfPRe},
  S_Par in '..\S_PAR.PAS' {Frm_Par},
  S_Ace in '..\S_ACE.PAS' {Frm_Ace},
  S_SI in '..\S_SI.PAS' {Frm_SI},
  S_CEle in '..\S_CEle.pas' {Frm_CEle},
  S_CEleR in '..\S_CEleR.pas' {Frm_CEleR},
  S_RCpag in '..\S_RCPAG.PAS' {Frm_RCPag},
  S_MCodP in '..\S_MCodP.pas' {Frm_MCodP},
  S_AcCP in '..\S_AcCP.pas' {Frm_AcCP},
  S_AcCPE in '..\S_ACCPE.PAS' {Frm_AcCPE},
  S_AcCPR in '..\S_ACCPR.PAS' {Frm_AcCPR},
  S_LMF in '..\S_LMF.PAS' {Frm_LMF},
  S_ImpBD in '..\S_ImpBD.pas' {Frm_ImpBD},
  S_LDR in '..\S_LDR.pas' {Frm_LDR},
  S_PLdr in '..\S_PLdr.pas' {Frm_PLDR},
  S_Sbco in '..\S_Sbco.pas' {Frm_SBco},
  S_RCPReal in '..\S_RCPReal.pas' {Frm_RCPReal},
  S_LRS in '..\S_LRS.PAS' {Frm_LRS},
  S_DM5 in '..\S_DM5.pas' {DM5: TDataModule},
  S_LRE in '..\S_LRE.PAS' {Frm_LRE},
  S_CV in '..\S_CV.pas' {Frm_CV},
  S_TProCa in '..\S_TProCa.pas' {Frm_TProCa},
  S_TPro in '..\S_TPro.pas' {Frm_TPro},
  S_TRelT in '..\S_TRelT.pas' {Frm_TrelT},
  S_ImpD in '..\S_ImpD.pas' {Frm_ImpD},
  S_Sintegra in '..\S_Sintegra.pas' {Frm_Sintegra},
  S_Apur in '..\S_APUR.pas' {Frm_Apur},
  S_NumNF in '..\S_NumNF.pas' {Frm_NumNf},
  S_Aju in '..\S_Aju.pas' {Frm_Aju},
  S_RCliC in '..\S_RCliC.pas' {Frm_RCliC},
  S_DM2 in '..\S_DM2.pas' {DM2: TDataModule},
  S_Oper in '..\S_Oper.pas' {Frm_Oper},
  S_Sdet in '..\S_Sdet.pas' {Frm_SDet},
  S_TPed in '..\S_TPed.pas' {Frm_TPed},
  S_ExpPro in '..\S_ExpPro.pas' {Frm_ExpPro},
  S_Stru in '..\S_Stru.pas' {Frm_Stru},
  S_ExpCli in '..\S_ExpCli.pas' {Frm_ExpCli},
  S_Cac in '..\S_Cac.pas' {Frm_Cac},
  S_Seg in '..\S_Seg.pas' {Frm_Seg},
  S_Gra in '..\S_Gra.pas' {Frm_Gra},
  S_ExpTDV in '..\S_ExpTDV.pas' {Frm_ExpTDV},
  S_ImpTDV in '..\S_ImpTDV.pas' {Frm_ImpTDV},
  SR_Lic in '..\SR_LIC.PAS' {Qr_Lic: TQuickRep},
  S_DM3 in '..\S_DM3.pas' {DM3: TDataModule},
  S_CME in '..\S_CME.pas' {Frm_CME},
  S_ExcAj in '..\S_ExcAj.pas' {Frm_ExcAJ},
  S_Tent in '..\S_Tent.pas' {Frm_Tent},
  Func2 in '..\Func2.pas',
  S_ImpDoc in '..\S_ImpDoc.pas' {Frm_ImpDoc},
  S_PForLoc in '..\S_PforLoc.pas' {Frm_PForLoc},
  S_AcCR in '..\S_AcCR.pas' {Frm_AcCR},
  S_AcCRE in '..\S_ACCRE.PAS' {Frm_AcCRE},
  S_AcCRR in '..\S_ACCRR.PAS' {Frm_AcCRR},
  S_Tdet in '..\S_Tdet.pas' {Frm_TDet},
  S_EDUP in '..\S_EDUP.pas' {Frm_EDUP},
  S_SLib in '..\S_SLIB.PAS' {Frm_SLib},
  S_JDoc in '..\S_JDoc.pas' {Frm_JDoc},
  S_LocJD in '..\S_LocJD.pas' {Frm_LocJD},
  S_MVcto in '..\S_MVcto.pas' {Frm_MVcto},
  S_VlrPres in '..\S_VlrPres.pas' {Frm_VlrPres},
  S_SQL in '..\S_SQL.pas' {Frm_SQL},
  S_Codbar in '..\S_Codbar.pas' {Frm_CodBar},
  SR_CodBar in '..\SR_CodBar.pas' {Qr_CodBar: TQuickRep},
  S_EBol in '..\S_EBol.pas' {Frm_EBol},
  Sr_Orc in '..\Sr_Orc.pas' {Qr_Orc: TQuickRep},
  S_CSF in '..\S_CSF.pas' {Frm_CSF},
  S_ArrPed in '..\S_ArrPed.pas' {Frm_ArrPed},
  S_CX_RD in '..\S_CX_RD.pas' {Frm_CX_RD},
  S_CX_RG in '..\S_CX_RG.pas' {Frm_CX_RG},
  S_CX_RCC in '..\S_CX_RCC.pas' {Frm_CX_RCC},
  S_CX_RAna in '..\S_CX_RAna.pas' {Frm_CX_RAna},
  S_RCRec in '..\S_RCRec.PAS' {Frm_RCRec},
  S_Imp_Pro01 in '..\S_Imp_Pro01.pas' {Frm_Imp_Pro01},
  S_C in '..\S_C.pas' {Frm_C},
  S_ComD in '..\S_ComD.pas' {Frm_ComD},
  S_Sup in '..\S_Sup.pas' {Frm_Sup},
  S_DtReaj in '..\S_DtReaj.pas' {Frm_DtReaj},
  S_ComV in '..\S_ComV.pas' {Frm_ComV},
  S_Pcus in '..\S_Pcus.pas' {Frm_Pcus},
  S_Dap in '..\S_Dap.pas' {Frm_Dap},
  S_Cli in '..\S_Cli.pas' {Frm_Cli},
  S_ACus in '..\S_ACus.pas' {Frm_ACus},
  S_Chq in '..\S_Chq.pas' {Frm_Chq},
  S_Mchq in '..\S_Mchq.pas' {Frm_MChq},
  S_BChq in '..\S_BChq.pas' {Frm_BChq},
  S_CbxChq in '..\S_CbxChq.pas' {Frm_CBxChq},
  S_Pchq in '..\S_Pchq.pas' {Frm_PChq},
  S_ComRV in '..\S_ComRV.pas' {Frm_ComRV},
  S_CRVC in '..\S_CRVC.pas' {Frm_CRVC},
  S_PComRV in '..\S_PComRV.pas' {Frm_PComRV},
  S_ComVV in '..\S_ComVV.pas' {Frm_ComVV},
  S_PComVV in '..\S_PComVV.pas' {Frm_PComVV},
  S_CVVC in '..\S_CVVC.pas' {Frm_CVVC},
  S_ExtP in '..\S_ExtP.pas' {Frm_ExtP},
  S_Extp2 in '..\S_Extp2.pas' {Frm_Extp2},
  S_Sobre in '..\S_Sobre.pas' {Frm_Sobre},
  S_Lib in '..\S_Lib.pas' {Frm_Lib},
  S_VABC in '..\S_VABC.pas' {Frm_VABC},
  S_ConDat in '..\S_ConDat.pas' {Frm_ConDat},
  S_Tra in '..\S_Tra.pas' {Frm_Tra},
  S_RFPR in '..\S_RFPR.pas' {Frm_RFPR},
  S_RFPP in '..\S_RFPP.pas' {Frm_RFPP},
  S_CodEmp in '..\S_CodEmp.pas' {Frm_CodEmp},
  S_CABC in '..\S_CABC.pas' {Frm_CABC},
  S_Pro in '..\S_Pro.pas' {Frm_Pro},
  S_Usr in '..\S_Usr.pas' {Frm_Usr},
  S_For in '..\S_For.pas' {Frm_For},
  S_Con in '..\S_Con.pas' {Frm_Con},
  S_Ven in 'S_Ven.pas' {Frm_Ven},
  S_Bco in '..\S_Bco.pas' {Frm_Bco},
  S_PV in '..\S_PV.pas' {Frm_PV},
  S_NE in '..\S_NE.pas' {Frm_NE},
  S_NS in '..\S_NS.pas' {Frm_NS},
  S_CFO in '..\S_CFO.pas' {Frm_CFO},
  S_Dar in '..\S_Dar.pas' {Frm_Dar},
  S_Emp in '..\S_Emp.pas' {Frm_Emp},
  lerarq in '..\lerarq.pas',
  S_Pen in '..\S_Pen.pas' {Frm_Pen},
  SR_Dup in '..\SR_Dup.pas' {Qr_Dup: TQuickRep},
  S_Rcob in '..\S_RCob.pas' {Frm_RCob},
  S_RCobC in '..\S_RCobC.pas' {Frm_RCobC},
  S_RCobL in '..\S_RCobL.pas' {Frm_RCobL},
  S_Tot in '..\S_Tot.pas' {Frm_Tot},
  S_Tab00 in '..\S_Tab00.pas' {Frm_Tab00},
  S_Tab01 in '..\S_Tab01.pas' {Frm_Tab01},
  S_Tab00Fil in '..\S_Tab00Fil.pas' {Frm_Tab00Fil},
  S_Tab00Ord in '..\S_Tab00Ord.pas' {Frm_Tab00Ord},
  S_Tab05 in '..\S_Tab05.pas' {Frm_Tab05},
  S_Tab00Gru in '..\S_Tab00Gru.pas' {Frm_Tab00Gru},
  S_Tab00SG in '..\S_Tab00SG.pas' {Frm_Tab00SG},
  S_Tab00Oper in '..\S_Tab00Oper.pas' {Frm_Tab00Oper},
  S_VisIns in '..\S_VisIns.pas' {Frm_VisIns},
  S_Tab00Div in '..\S_Tab00Div.pas' {Frm_Tab00Div},
  S_Tab06 in '..\S_Tab06.pas' {Frm_Tab06},
  S_Tab07 in '..\S_Tab07.pas' {Frm_Tab07},
  S_RDoc in '..\S_RDoc.pas' {Frm_RDoc},
  S_LocRD in '..\S_LocRD.pas' {Frm_LocRD},
  SR_CodBar2 in '..\SR_CodBar2.pas' {Qr_CodBar2: TQuickRep},
  S_Per2 in '..\S_Per2.pas' {Frm_Per2},
  S_Tab_CP in '..\S_Tab_CP.pas' {Frm_Tab_CP},
  S_Tab_Pro in '..\S_Tab_Pro.pas' {Frm_Tab_Pro},
  S_GPer in '..\S_GPer.pas' {Frm_GPer},
  S_GP_Pro in '..\S_GP_Pro.pas' {Frm_GP_Pro},
  S_Tab_Ldr in '..\S_Tab_Ldr.pas' {Frm_Tab_Ldr},
  S_Tab_AJ in '..\S_Tab_Aj.pas' {Frm_Tab_AJ},
  S_Tab_Gru in '..\S_Tab_Gru.pas' {Frm_Tab_Gru},
  S_Tab_Ven in '..\S_Tab_Ven.pas' {Frm_Tab_Ven},
  S_Tab_CCU in '..\S_Tab_CCu.pas' {Frm_Tab_CCU},
  S_Tab_Cli in '..\S_Tab_Cli.pas' {Frm_Tab_Cli},
  S_Tab_Dep in '..\S_Tab_Dep.pas' {Frm_Tab_Dep},
  S_Tab_PV in '..\S_Tab_PV.pas' {Frm_Tab_PV},
  S_Tab_Con in '..\S_Tab_Con.pas' {Frm_Tab_Con},
  S_Tab_NS in '..\S_Tab_NS.pas' {Frm_Tab_NS},
  S_Tab_Tra in '..\S_Tab_Tra.pas' {Frm_Tab_Tra},
  S_Tab_Usr in '..\S_Tab_USR.pas' {Frm_Tab_Usr},
  S_Tab_CR in '..\S_Tab_CR.pas' {Frm_Tab_CR},
  S_Tab_Tip in '..\S_Tab_TIP.pas' {Frm_Tab_Tip},
  S_Tab_UF in '..\S_Tab_UF.pas' {Frm_Tab_UF},
  S_Tab_PF in '..\S_Tab_PF.pas' {Frm_Tab_PF},
  S_Tab_Bco in '..\S_Tab_Bco.pas' {Frm_Tab_Bco},
  S_Tab_NE in '..\S_Tab_NE.pas' {Frm_Tab_NE},
  S_Tab_Pen in '..\S_Tab_Pen.pas' {Frm_Tab_Pen},
  S_Irpfor in '..\S_Irpfor.pas' {Frm_Irpfor},
  S_Tab_For in '..\S_Tab_For.pas' {Frm_Tab_For},
  S_Tab_Car in '..\S_Tab_Car.pas' {Frm_Tab_Car},
  S_Des in '..\S_Des.pas' {Frm_Des},
  S_Evento in 'S_Evento.pas' {Frm_Evento},
  S_GP_Ped in '..\S_GP_Ped.pas' {Frm_GP_Ped},
  S_GP_Dar in '..\S_GP_Dar.pas' {Frm_GP_Dar},
  S_GP_Dap in '..\S_GP_Dap.pas' {Frm_GP_Dap},
  S_GP_LDR in '..\S_GP_LDR.pas' {Frm_GP_LDR},
  S_GP_CHQ in '..\S_GP_CHQ.pas' {Frm_GP_CHQ},
  S_GP_Cli in '..\S_GP_Cli.pas' {Frm_GP_Cli},
  S_SitCre in '..\S_SitCre.pas' {Frm_SitCre},
  S_ in '..\S_.PAS' {Frm_},
  S_TabM in '..\S_TabM.pas' {Frm_TabM},
  S_Per in '..\S_Per.pas',
  S_CFG in '..\S_CFG.pas' {Frm_CFG},
  S_DefBac in '..\S_DefBac.pas' {frm_DefBac},
  S_Bkp in '..\S_Bkp.pas' {Frm_Bkp},
  S_Rest in '..\S_Rest.pas' {Frm_Rest},
  S_Info in '..\S_Info.pas' {Frm_Info},
  S_Zest in '..\S_Zest.pas' {Frm_ZEst},
  S_Tab_IE in '..\S_Tab_IE.pas' {Frm_Tab_IE},
  S_PCon in '..\S_PCON.PAS' {Frm_PCon},
  S_PcoLot in '..\S_PcoLot.pas' {Frm_PcoLot},
  S_DM4 in '..\S_DM4.pas' {DM4: TDataModule},
  S_PcoLotAP in '..\S_PcoLotAP.pas' {Frm_PcoLotAP},
  S_Tab_Ger in '..\S_Tab_Ger.pas' {Frm_Tab_Ger},
  S_PerGer in '..\S_PerGer.pas' {Frm_PerGer},
  S_Fec in '..\S_Fec.pas' {Frm_Fec},
  S_PVO in '..\S_PVO.pas' {Frm_PVO},
  S_PPR in '..\S_PPR.PAS' {Frm_PPR},
  S_CCob in '..\S_CCob.pas' {Frm_CCob},
  SR_Cob in '..\SR_Cob.pas' {Qr_Cob: TQuickRep},
  S_Dep in '..\S_Dep.pas' {Frm_Dep},
  S_Eve in '..\S_Eve.pas' {Frm_Eve},
  S_ParFolha in '..\S_ParFolha.pas' {Frm_ParFolha},
  S_Fun in '..\S_Fun.pas' {Frm_Fun},
  S_EvePref in '..\S_EvePref.pas' {Frm_EvePref},
  S_GFolha in '..\S_GFolha.pas' {Frm_GFolha},
  S_FolMan in '..\S_FolMan.pas' {Frm_FolMan},
  S_FolManL in '..\S_FolManL.pas' {Frm_FolManL},
  S_Imp_Folha in '..\S_Imp_Folha.pas' {Frm_Imp_Folha},
  SR_Folha in '..\SR_Folha.pas' {Qr_Folha: TQuickRep},
  Sr_FolRes in '..\Sr_FolRes.pas' {Qr_FolRes: TQuickRep},
  S_Imp_ResFol in '..\S_Imp_ResFol.pas' {Frm_Imp_ResFol},
  S_CServer in '..\S_CServer.pas' {Frm_CServer},
  S_CServerUser in '..\S_CServerUser.pas' {Frm_CServerUser},
  S_Conexao in '..\S_Conexao.pas' {Frm_Conexao},
  S_Caixa in '..\S_Caixa.pas' {Frm_Caixa},
  S_Producao in '..\S_Producao.pas' {Frm_Producao},
  S_Prod_Loc in '..\S_Prod_Loc.pas' {Frm_Prod_Loc},
  S_Proc in '..\S_Proc.pas' {Frm_Proc},
  S_fig in '..\S_fig.pas' {Frm_Fig},
  S_EmiChq in '..\S_EMICHQ.PAS' {Frm_EmiChq},
  S_ManNF in '..\S_ManNF.pas' {Frm_ManNF},
  S_AjuCCu in '..\S_AjuCCu.pas' {Frm_AjuCCu},
  S_Rom in '..\S_Rom.pas' {Frm_Rom},
  Sr_Rom in '..\Sr_Rom.pas' {Qr_Rom: TQuickRep},
  S_RPfor in '..\S_RPfor.pas' {Frm_RPFor},
  Zip in '..\Zip.pas',
  ZipDlls in '..\ZipDlls.pas',
  S_DCBPRO in '..\S_DCBPRO.pas' {Frm_DCBPRO},
  S_AMVS in '..\S_AMVS.pas' {Frm_AMVS},
  S_ANVISA in '..\S_ANVISA.pas' {Frm_ANVISA},
  flerarq in '..\flerarq.pas',
  uExport in '..\uExport.pas' {fExport},
  S_AcTab in '..\S_AcTab.pas' {Frm_AcTab},
  S_RasPlote in '..\S_RasPlote.pas' {Frm_RasPLote},
  S_Inv in '..\S_Inv.pas' {Frm_Inv},
  S_Tab_Ped in '..\S_Tab_Ped.pas' {Frm_Tab_Ped},
  S_VerPro in '..\S_VerPro.pas' {Frm_VerPro},
  S_Sen_Int in '..\S_Sen_Int.pas' {Frm_Sen_Int},
  S_PedXDup in '..\S_PedXDup.pas' {Frm_PedXDup},
  S_PedCabXMer in '..\S_PedCabXMer.pas' {Frm_PedCabXMer},
  S_MerDup in '..\S_MerDup.pas' {Frm_MerDup},
  S_Stru2 in '..\S_Stru2.pas' {Frm_Stru2},
  S_MedVen in '..\S_MedVen.pas' {Frm_MedVen},
  S_FABC in '..\S_FABC.pas' {Frm_FABC},
  S_MedFor in '..\S_MedFor.pas' {Frm_MedFor},
  Sr_Rom02 in '..\Sr_Rom02.pas' {Qr_Rom02: TQuickRep},
  S_CX_RM in '..\S_CX_RM.pas' {Frm_CX_RM},
  S_UFABC in '..\S_UFABC.pas' {Frm_UFABC},
  S_MedUF in '..\S_MedUF.pas' {Frm_MedUF},
  S_MedCli in '..\S_MedCli.pas' {Frm_MedCli},
  S_TProABC in '..\S_TProABC.pas' {Frm_TProABC},
  S_MedTPro in '..\S_MedTPro.pas' {Frm_MedTPro},
  S_GruABC in '..\S_GruABC.pas' {Frm_GruABC},
  S_MedGru in '..\S_MedGru.pas' {Frm_MedGru},
  S_TConABC in '..\S_TConABC.pas' {Frm_TConABC},
  S_MedTCon in '..\S_MedTCon.pas' {Frm_MedTCon},
  S_MedRPro in '..\S_MedRPro.pas' {Frm_MedRPro},
  S_RProABC in '..\S_RProABC.pas' {Frm_RProABC},
  S_SelGra in '..\S_SelGra.pas' {Frm_SelGra},
  S_Grafico in '..\S_Grafico.pas' {Frm_Grafico},
  S_RotCli in '..\S_RotCli.pas' {Frm_RotCli},
  Sr_RotCli in '..\Sr_RotCli.pas' {Qr_RotCli: TQuickRep},
  S_RMen in '..\S_RMEN.PAS' {Frm_RMen},
  S_SugCpr01 in '..\S_SugCpr01.pas' {Frm_SugCpr01},
  S_ComXVda in '..\S_ComXVda.pas' {Frm_ComXVda},
  S_CX_ReSel in '..\S_CX_ReSel.pas' {Frm_CX_ReSel},
  S_CarCor in '..\S_CarCor.pas' {Frm_CarCor},
  S_CarCor_Loc in '..\S_CarCor_Loc.pas' {Frm_CarCor_Loc},
  S_LOptica in '..\S_LOptica.pas' {Frm_LOptica},
  S_AjDescPro in '..\S_AjDescPro.pas' {Frm_AjDescPro},
  SR_PFor in '..\SR_PFor.PAS' {Qr_PFor: TQuickRep},
  S_TLDR in '..\S_TLDR.pas' {Frm_TLDR},
  S_VdaXComp in '..\S_VdaXComp.pas' {Frm_VdaXComp},
  S_CPed2 in '..\S_CPed2.pas' {Frm_CPed2},
  S_CICMSR in '..\S_CICMSR.pas' {Frm_CICMSR},
  S_LucSai in '..\S_LucSai.pas' {Frm_LucSai},
  Sr_LucSai in '..\Sr_LucSai.pas' {Qr_LucSai: TQuickRep},
  S_LucEnt in '..\S_LucEnt.pas' {Frm_LucEnt},
  Sr_LucEnt in '..\Sr_LucEnt.pas' {Qr_LucEnt: TQuickRep},
  S_DiasMeses in '..\S_DiasMeses.pas' {Frm_DiasMeses},
  S_ExtBco in '..\S_ExtBco.pas' {Frm_ExtBco},
  S_CX_Compens in '..\S_CX_Compens.pas' {Frm_CX_Compens},
  S_ImpPed in '..\S_ImpPed.pas' {Frm_ImpPed},
  S_CalcIcms in '..\S_CalcIcms.pas' {Frm_CalcIcms},
  S_Tab00JC in '..\S_Tab00JC.pas' {Frm_Tab00JC},
  S_Tab00Loc in '..\S_Tab00Loc.pas' {Frm_Tab00Loc},
  S_NF_CompImp in '..\S_NF_CompImp.pas' {Frm_NF_CompImp},
  S_ProMed in '..\S_ProMed.pas' {Frm_ProMed},
  S_ProABC in '..\S_ProABC.pas' {Frm_ProABC},
  S_PedCli in '..\S_PedCli.pas' {Frm_PedCli},
  S_VPro in '..\S_VPro.pas' {Frm_VPro},
  S_MUsar in '..\S_MUsar.pas' {Frm_Musar},
  S_Min2 in '..\S_Min2.pas' {Frm_Min2},
  func_excecoes in '..\func_excecoes.pas',
  S_MPed_Emp in '..\S_MPed_Emp.pas' {Frm_MPed_Emp},
  S_CImp in '..\S_CImp.pas' {Frm_CImp},
  S_CEC in '..\S_CEC.pas' {Frm_CEC},
  S_CECR in '..\S_CECR.pas' {Frm_CECR},
  S_ParPreco in '..\S_ParPreco.pas' {Frm_ParPreco},
  S_Criar_Instr in '..\S_Criar_Instr.pas' {Frm_Criar_Inst},
  S_RPed in '..\S_RPed.pas' {Frm_RPed},
  S_ManPed in '..\S_ManPed.pas' {Frm_ManPed},
  S_EtiVol in '..\S_EtiVol.pas' {Frm_EtiVol},
  S_ResPed in '..\S_ResPed.pas' {Frm_ResPed},
  S_RPed2 in '..\S_RPed2.pas' {Frm_RPed2},
  S_BDev in '..\S_BDev.pas' {Frm_BDev},
  S_Config_Leitor in '..\S_Config_Leitor.pas' {Frm_Config_Leitor},
  S_FolManL01 in '..\S_FolManL01.pas' {Frm_FolManL01},
  S_Ind_ManFor in '..\S_Ind_ManFor.pas' {Frm_Ind_ManFor},
  S_LOptico_Res in '..\S_LOptico_Res.pas' {Frm_LOptico_Res},
  S_ind_Comp02 in '..\S_ind_Comp02.pas' {Frm_Ind_Comp02},
  S_Ind_Fab in '..\S_Ind_Fab.pas' {Frm_Ind_Fab},
  S_RelNFS in '..\S_RelNFS.pas' {Frm_RelNFS},
  S_LotSeq in '..\S_LotSeq.pas' {Frm_LotSeq},
  S_RelNFE in '..\S_RelNFE.pas' {Frm_RelNFE},
  S_Contagem in '..\S_Contagem.pas' {Frm_Contagem},
  S_MedPro02 in '..\S_MedPro02.pas' {Frm_MedPro02},
  S_ConsLot in '..\S_ConsLot.pas' {Frm_ConsLot},
  S_Cus in '..\S_Cus.pas' {Frm_Cus},
  S_FPag in '..\S_FPag.pas' {Frm_FPag},
  S_RestLDR in '..\S_RestLDR.pas' {Frm_RestLDR},
  S_Fontes in '..\S_Fontes.pas' {Frm_Fontes},
  S_AjustaPro in '..\S_AjustaPro.pas' {Frm_AjustaPro},
  S_Fontes_Ajusta in '..\S_Fontes_Ajusta.pas' {Frm_Fontes_Ajusta},
  S_APco_For in '..\S_APco_For.pas' {Frm_APco_For},
  S_InfPed in '..\S_InfPed.pas' {Frm_InfPed},
  S_VisNF in '..\S_VisNF.pas' {Frm_VisNF},
  S_LotMOv in '..\S_LotMOv.pas' {Frm_LotMov},
  S_GNRE in '..\S_GNRE.pas' {Frm_GNRE},
  func_ecf in '..\func_ecf.pas',
  S_CapRedZ in '..\S_CapRedZ.pas' {Frm_CapRedZ},
  S_DadSint in '..\S_DadSint.pas' {Frm_DadSint},
  S_ExpTron in '..\S_ExpTron.pas' {Frm_ExpTron},
  S_ManOs in '..\S_ManOs.pas' {Frm_ManOs},
  S_ConsOS in '..\S_ConsOS.pas' {Frm_ConsOS},
  S_CabRom in '..\S_CabRom.pas' {Frm_CabRom},
  S_AjuInvGra in '..\S_AjuInvGra.pas' {Frm_AjuInvGra},
  S_Moe in '..\S_Moe.pas' {Frm_Moe},
  S_Ind in '..\S_Ind.pas' {Frm_Ind},
  S_Imo in '..\S_Imo.pas' {Frm_Imo},
  S_Vei in '..\S_Vei.pas' {Frm_Vei},
  S_ManImo in '..\S_ManImo.pas' {Frm_ManImo},
  S_ManVei in '..\S_ManVei.pas' {Frm_ManVei},
  S_MVei in '..\S_MVei.pas' {Frm_MVei},
  S_Tab_Imo in '..\S_Tab_Imo.pas' {Frm_Tab_Imo},
  S_Tab_Vei in '..\S_Tab_Vei.pas' {Frm_Tab_Vei},
  S_Tab_Moe in '..\S_Tab_Moe.pas' {Frm_Tab_Moe},
  S_Tab_OS in '..\S_Tab_OS.pas' {Frm_Tab_OS},
  S_MImo in '..\S_MImo.pas' {Frm_MImo},
  S_Tab_MVei in '..\S_Tab_MVei.pas' {Frm_Tab_MVei},
  S_Tab_MImo in '..\S_Tab_MImo.pas' {Frm_Tab_MImo},
  S_GirLoc in '..\S_GirLoc.pas' {Frm_GirLoc},
  S_GirLoc_Cons in '..\S_GirLoc_Cons.pas' {Frm_GirLoc_Cons},
  S_ManOS_SerAlt in '..\S_ManOS_SerAlt.pas' {Frm_ManOS_SerAlt},
  S_AtuSis in '..\S_AtuSis.pas' {Frm_AtuSis},
  S_Help in '..\S_Help.pas' {Frm_Help},
  S_UltCPR in '..\S_UltCPR.pas' {Frm_UltCPR},
  S_Est_Dif_Ext in '..\S_Est_Dif_Ext.pas' {Frm_Est_Dif_Ext},
  S_Editor in '..\S_Editor.pas' {Frm_Editor},
  S_DocOnLine in '..\S_DocOnLine.pas' {Frm_DocOnLine},
  S_Contrato in '..\S_Contrato.pas' {Frm_Contrato},
  S_RestDados in '..\S_RestDados.pas' {Frm_RestDados},
  S_Ani in '..\S_Ani.pas' {Frm_Ani},
  S_RAni in '..\S_RAni.pas' {Frm_RAni},
  S_figCli in '..\S_figCli.pas' {Frm_FigCli},
  S_BloqCli in '..\S_BloqCli.pas' {Frm_BloqCli},
  S_CxSaldo2dias in '..\S_CxSaldo2dias.pas' {Frm_CxSaldo2dias},
  S_IndProFab in '..\S_IndProFab.pas' {Frm_IndProFab},
  S_IndMpUtil in '..\S_IndMpUtil.pas' {Frm_IndMpUtil},
  S_ResNF in '..\S_Resnf.pas' {Frm_ResNF},
  S_Excel in '..\S_Excel.pas' {Frm_Excel},
  S_ResMapaRes in '..\S_ResMapaRes.pas' {Frm_ResMapaRes},
  S_Inc_ECF in '..\S_Inc_ECF.pas' {Frm_Inc_ECF},
  S_ProConf in '..\S_ProConf.pas' {Frm_ProConf},
  S_ExpCont01 in '..\S_ExpCont01.pas' {Frm_ExpCont01},
  S_ManCSF in '..\S_ManCSF.pas' {Frm_ManCSF},
  S_ManBal in '..\S_ManBal.pas' {Frm_ManBal},
  S_ManBal_loc in '..\S_ManBal_Loc.pas' {Frm_ManBal_Loc},
  S_ProCodBar in '..\S_ProCodBar.pas' {Frm_ProCodBar},
  SR_ProCodBar in '..\SR_ProCodBar.pas' {Qr_ProCodBar: TQuickRep},
  S_InvGra in '..\S_InvGra.pas' {Frm_InvGra},
  S_AjuInvGra_GD in '..\S_AjuInvGra_GD.pas' {Frm_AjuInvGra_GD},
  S_ImpMov_Importados in '..\S_ImpMov_Importados.pas' {Frm_ImpMov_Importados},
  S_ExpMov_Exportados in '..\S_ExpMov_Exportados.pas' {Frm_ExpMov_Exportados},
  S_Desbl_Pedido in '..\S_Desbl_Pedido.pas' {Frm_Desbl_Pedido},
  S_ResFat in '..\S_ResFat.pas' {Frm_ResFat},
  S_AcRem in '..\S_AcRem.pas' {Frm_AcRem},
  S_CanFdia in '..\S_CanFdia.pas' {Frm_CanFDia},
  S_FluxoDPCHQ in '..\S_FluxoDPCHQ.pas' {Frm_FluxoDPCHQ},
  S_DupAgru in '..\S_DupAgru.pas' {Frm_DupAgru},
  S_Tab_FE in '..\S_Tab_FE.pas' {Frm_Tab_FE},
  S_AgruBal in '..\S_AgruBal.pas' {Frm_AgruBal},
  S_Assessor in '..\S_Assessor.pas' {Frm_Assessor},
  S_Trocas in '..\S_Trocas.pas' {Frm_Trocas},
  S_Trocas_Loc in '..\S_Trocas_Loc.pas' {Frm_Trocas_Loc},
  S_PedBai in '..\S_PedBai.pas' {Frm_PedBai},
  S_AjuExt_Est in '..\S_AjuExt_Est.pas' {Frm_AjuExt_Est},
  S_Justif in '..\S_Justif.pas' {Frm_Justif},
  S_CompInvGra in '..\S_CompInvGra.pas' {Frm_CompInvGra},
  S_RelOS in '..\S_RelOS.pas' {Frm_RelOS},
  S_CX_RCCT in '..\S_CX_RCCT.pas' {Frm_CX_RCCT},
  S_ExpBChq in '..\S_ExpBChq.pas' {Frm_ExpBChq},
  S_MPer in '..\S_MPer.pas' {Frm_MPer},
  S_MPar in '..\S_MPar.pas' {Frm_MPar},
  S_ConProd in '..\S_ConProd.pas' {Frm_ConProd},
  Sr_ConProd in '..\Sr_ConProd.pas' {Qr_ConProd: TQuickRep},
  S_RelConProd in '..\S_RelConProd.pas' {Frm_RelConProd},
  S_ElimDados in '..\S_ElimDados.pas' {Frm_ElimDados},
  S_min3 in '..\S_min3.PAS' {Frm_min3},
  S_SelPed in '..\S_SELPED.pas' {Frm_SelPed},
  S_selmin in '..\s_selmin.pas' {Frm_Selmin},
  S_RTroMol in '..\S_RTroMol.pas' {Frm_RTroMol},
  SR_LBR in '..\SR_LBR.PAS' {Qr_LBR: TQuickRep},
  S_RCliNaoCompra in '..\S_RCliNaoCompra.pas' {Frm_RCliNaoCompra},
  S_PPR_Cons in '..\S_PPR_Cons.pas' {Frm_PPR_Cons},
  S_ImpAli in '..\S_IMPALI.PAS' {Frm_ImpAli},
  S_MedVenPgt in '..\S_MedVenPgt.pas' {Frm_MedVenPgt},
  S_ParCod in '..\S_ParCod.pas' {Frm_ParCod},
  S_Ajuda in '..\S_AJUDA.PAS' {Frm_Ajuda},
  S_Aju01 in '..\S_AJU01.PAS' {Frm_Aju01},
  S_Aju02 in '..\S_AJU02.PAS' {Frm_Aju02},
  S_Update in '..\S_Update.pas' {Frm_Update},
  S_Empresas in '..\S_Empresas.pas' {Frm_Empresas},
  S_PromVal in '..\S_PromVal.pas' {Frm_PromVal},
  S_TroMol in '..\S_TROMOL.PAS' {Frm_TroMol},
  S_DEGRADE in '..\S_DEGRADE.pas' {Frm_Degrade},
  S_ConProd1 in '..\S_ConProd1.pas' {Frm_ConProd1},
  S_CadFrasco in '..\S_Cadfrasco.pas' {Frm_CadFrasco},
  S_EstDifLot in '..\S_EstDifLot.pas' {Frm_EstDifLot},
  S_Imp_Prod in '..\S_Imp_Prod.pas' {Frm_Imp_Prod},
  S_RelImp_Prod in '..\S_RelImp_Prod.pas' {Frm_RelImp_Prod},
  S_RelPro in '..\S_RelPro.pas' {Frm_RelPro},
  S_TotCus in '..\S_TotCus.pas' {Frm_TotCus},
  S_Lic1 in '..\S_Lic1.pas' {Frm_Lic1},
  S_BloqueioVenda in '..\S_BloqueioVenda.pas' {Frm_BloqueioVenda},
  S_SelBloqueio in '..\S_SelBloqueio.pas' {Frm_SelBloqueio},
  S_BloqueioVenda_Seleciona in '..\S_BloqueioVenda_Seleciona.pas' {Frm_BloqueioVenda_Seleciona},
  S_CobEle_Retorno in '..\S_CobEle_Retorno.pas' {Frm_CobEle_Retorno},
  S_VendaBloqueada_Relacao in '..\S_VendaBloqueada_Relacao.pas' {Frm_VendaBloqueada_Relacao},
  S_BloqueioVenda_Motivo in '..\S_BloqueioVenda_Motivo.pas' {Frm_BloqueioVenda_Motivo},
  S_CobEle_Remessa in '..\S_CobEle_Remessa.pas' {Frm_CobEle_Remessa},
  reguad in '..\reguad.pas' {Frm_regua_degrade},
  S_CobEle_Remessa_Local in '..\S_CobEle_Remessa_Local.pas' {Frm_CobEle_Remessa_Local},
  S_CobEle_Remessa_Pesq in '..\S_CobEle_Remessa_Pesq.pas' {Frm_CobEle_Remessa_Pesq},
  S_LPreco1 in '..\S_LPreco1.pas' {Frm_LPreco1},
  S_Mfor01 in '..\S_Mfor01.pas' {Frm_MFor01},
  S_mensagem in '..\S_mensagem.pas' {Frm_Mensagem},
  S_EnviarEmail in '..\S_EnviarEmail.pas' {Frm_EnviarEmail},
  S_MFor01_Cons in '..\S_MFor01_Cons.pas' {Frm_MFor01_Cons},
  S_Liberar in '..\S_Liberar.pas' {Frm_Liberar},
  S_Liberar_Resp in '..\S_Liberar_Resp.pas' {Frm_Liberar_Resp},
  S_Cont_Serv in '..\S_Cont_Serv.pas' {Frm_Cont_Serv},
  S_DapAgru in '..\S_DapAgru.pas' {Frm_DapAgru},
  S_EtiqCli in '..\S_EtiqCli.pas' {Frm_EtiqCli},
  SR_EtiqCli2 in '..\SR_EtiqCli2.pas' {Qr_EtiqCli2: TQuickRep},
  SR_EtiqCli in '..\SR_EtiqCli.pas' {Qr_EtiqCli: TQuickRep},
  S_Fig_TelaCheia in '..\S_Fig_TelaCheia.pas' {Frm_Fig_TelaCheia},
  S_ResQtdPed in '..\S_ResQtdPed.pas' {Frm_ResQtdPed},
  S_Aviso in '..\S_Aviso.pas' {Frm_Aviso},
  S_Texto in '..\S_Texto.pas' {Frm_Texto},
  S_LancAutoFC in '..\S_LancAutoFC.pas' {Frm_LancAutoFC},
  S_DestPro in '..\S_DestPro.pas' {Frm_DestPro},
  S_ProdTit in '..\S_ProdTit.pas' {Frm_ProdTit},
  S_CX_Sintetico in '..\S_CX_Sintetico.pas' {Frm_CX_Sintetico},
  S_ind_ForEnv in '..\S_ind_ForEnv.pas' {Frm_Ind_ForEnv},
  S_Cons_Pro_Nov in '..\S_Cons_Pro_Nov.pas' {Frm_Cons_Pro_Nov},
  S_Receber_Sint in '..\S_Receber_Sint.pas' {Frm_Receber_Sint},
  S_HistPro in '..\S_HistPro.pas' {Frm_HistPro},
  S_Conh_Mercad in '..\S_Conh_Mercad.pas' {Frm_Conh_Mercad},
  S_DM6 in '..\S_DM6.pas' {DM6: TDataModule},
  AlinharEdit in '..\AlinharEdit.pas',
  S_Conh_MercCons in '..\S_Conh_MercCons.pas' {Frm_Conh_MercCons},
  S_Conh_MercRelat in '..\S_Conh_MercRelat.pas' {Frm_Conh_MercRelat},
  S_Conh_Merc_Total in '..\S_Conh_Merc_Total.pas' {Frm_Conh_Merc_Total},
  S_Receber_Lev in '..\S_Receber_Lev.pas' {Frm_Receber_Lev},
  S_Pagar_Lev in '..\S_Pagar_Lev.pas' {Frm_Pagar_Lev},
  S_Resumo_FPPed in '..\S_Resumo_FPPed.pas' {Frm_Resumo_FPPed},
  S_Conh_MercConfirma in '..\S_Conh_MercConfirma.pas' {Frm_Conh_MercConfirma},
  S_ProdEntregar in '..\S_ProdEntregar.pas' {Frm_ProdEntregar},
  S_RFechaConh in '..\S_RFechaConh.pas' {Frm_RFechaConh},
  S_Login_Usuario in '..\S_Login_Usuario.pas' {Frm_Login_Usuario},
  S_LucroPed in '..\S_LucroPed.pas' {Frm_LucroPed},
  S_MCodCli in '..\S_MCodCli.pas' {Frm_MCodCli},
  S_RelPed_FPPed in '..\S_RelPed_FPPed.pas' {Frm_RelPed_FPPed},
  S_GerarDuplic in '..\S_GerarDuplic.pas' {Frm_GerarDuplic},
  S_Fin_TitAgru in '..\S_Fin_TitAgru.pas' {Frm_Fin_TitAgru},
  S_DevCli in '..\S_DevCli.pas' {Frm_DevCli},
  S_RelVendaComis in '..\S_RelVendaComis.pas' {Frm_RelVendaComis},
  S_detBaiChq in '..\S_detBaiChq.pas' {Frm_DetBaiChq},
  S_Vend_CotaMes in '..\S_Vend_CotaMes.pas' {Frm_Vend_CotaMes},
  S_Vend_Venda in '..\S_Vend_Venda.pas' {Frm_Vend_Venda},
  S_EtiqProd in '..\S_EtiqProd.pas' {Frm_EtiqProd},
  S_EmitirNF in '..\S_EmitirNF.pas' {Frm_EmitirNF},
  S_PedBloq in '..\S_PedBloq.pas' {Frm_PedBloq},
  S_SuperGer in '..\S_SuperGer.pas' {Frm_SuperGer},
  S_CEleOk in '..\S_CEleOk.pas' {Frm_CEleOK},
  S_Fiscal_RelPisCofins in '..\S_Fiscal_RelPisCofins.pas' {Frm_Fiscal_RelPisCofins},
  S_Fatur_OrcGrupo in '..\S_Fatur_OrcGrupo.pas' {Frm_Fatur_OrcGrupo},
  S_mensagemSom in '..\S_mensagemSom.pas' {Frm_MensagemSom},
  S_Vend_RelGFor in '..\S_Vend_RelGFor.pas' {Frm_Vend_RelGFor},
  S_Lev_RecPag in '..\S_Lev_RecPag.pas' {Frm_Lev_RecPag},
  S_Vend_RelVendGFor in '..\S_Vend_RelVendGFor.pas' {Frm_Vend_RelVendGFor},
  S_Pfor01_PedAut in '..\S_Pfor01_PedAut.pas' {Frm_Pfor01_PedAut},
  S_CFTabIcm in '..\S_CFTabIcm.pas' {Frm_CFTabIcm},
  S_MinRel in '..\S_MinRel.pas' {Frm_MinRel},
  S_RelBaixaRec in '..\S_RelBaixaRec.PAS' {Frm_RelBaixaRec},
  S_AjuDevCli in '..\S_AjuDevCli.pas' {Frm_AjuDevCli},
  S_Fin_RelCob in '..\S_Fin_RelCob.PAS' {Frm_Fin_RelCob},
  S_BalProCol in '..\S_BalProCol.pas' {Frm_BalProCol},
  S_DivTit in '..\S_DivTit.pas' {Frm_DivTit},
  S_Etivol02 in '..\S_Etivol02.pas' {Frm_Etivol02},
  S_RelComis_Rec in '..\S_RelComis_Rec.PAS' {Frm_RelComis_Rec},
  S_GerDup in '..\S_GerDup.pas' {Frm_GerDup},
  S_Sintegra_Advert in '..\S_Sintegra_Advert.pas' {Frm_Sintegra_Advert},
  S_Accr_AjustaColunas in '..\S_Accr_AjustaColunas.pas' {Frm_Accr_AjustaColunas},
  S_Ped_ObsCli in '..\S_Ped_ObsCli.pas' {Frm_Ped_ObsCli},
  S_OriPed in '..\S_OriPed.pas' {Frm_OriPed},
  S_Regiao in '..\S_Regiao.pas' {Frm_Regiao},
  S_SI_Formulas in '..\S_SI_Formulas.pas' {Frm_SI_Formulas},
  S_AJCOMIS in '..\S_AJCOMIS.pas' {Frm_AJCOMIS},
  S_Pro_CodBar in '..\S_Pro_CodBar.pas' {Frm_Pro_CodBar},
  S_Pro_Fornec in '..\S_Pro_Fornec.pas' {Frm_Pro_Fornec},
  S_Pro_AjPcoInd in '..\S_Pro_AjPcoInd.pas' {Frm_Pro_AjPcoInd},
  S_Tab_Loc in '..\S_Tab_Loc.pas' {Frm_Tab_Loc},
  S_PFor01_Exp in '..\S_PFor01_Exp.pas' {Frm_PFor01_Exp},
  S_DivTit_Pagar in '..\S_DivTit_Pagar.pas' {Frm_DivTit_Pagar},
  S_Mensagem_Barrar in '..\S_Mensagem_Barrar.pas' {Frm_Mensagem_Barrar},
  S_CotaProVend_Mes in '..\S_CotaProVend_Mes.pas' {Frm_CotaProVend_Mes},
  S_CotaForVend_Mes in '..\S_CotaForVend_Mes.pas' {Frm_CotaForVend_Mes},
  S_Recibo in '..\S_Recibo.pas' {Frm_Recibo},
  S_Lf_CompraLegalBA in '..\S_Lf_CompraLegalBA.pas' {Frm_Lf_CompraLegalBA},
  S_EstProFor2Cpr in '..\S_EstProFor2Cpr.pas' {Frm_EstProFor2Cpr},
  S_Confirma_Entrega in '..\S_Confirma_Entrega.pas' {Frm_Confirma_Entrega},
  S_WebService in '..\S_WebService.pas' {Frm_WebService},
  S_CliOutFil in '..\S_CliOutFil.pas' {Frm_CliOutFil},
  S_Tab_Fol in '..\S_Tab_Fol.pas' {Frm_Tab_Fol},
  S_MchqCP in '..\S_MchqCP.pas' {Frm_MChqCP},
  S_ChqCP in '..\S_ChqCP.pas' {Frm_ChqCP},
  S_BloqCliMed in '..\S_BloqCliMed.pas' {Frm_BloqCliMed},
  S_PFor_CalcCus in '..\S_PFor_CalcCus.pas' {Frm_PFor_CalcCus},
  S_Ped_Expedicao in '..\S_Ped_Expedicao.pas' {Frm_Ped_Expedicao},
  S_Ped_Expedicao_Resumo in '..\S_Ped_Expedicao_Resumo.pas' {Frm_Ped_Expedicao_Resumo},
  S_RPed_Encargos in '..\S_RPed_Encargos.pas' {Frm_RPed_Encargos},
  S_CrPosCar in '..\S_CrPosCar.pas' {Frm_CrPosCar},
  S_Fin_FluxoCaixa in '..\S_Fin_FluxoCaixa.pas' {Frm_Fin_FluxoCaixa},
  S_RelDiv in '..\S_RelDiv.pas' {Frm_RelDiv},
  S_Integra_SimilarEMS in '..\S_Integra_SimilarEMS.pas' {Frm_Integra_SimilarEMS},
  S_IndEnv_MFor in '..\S_IndEnv_MFor.pas' {Frm_IndEnv_MFor},
  S_BChq_CP_Loc in '..\S_BChq_CP_Loc.pas' {Frm_BChq_CP_Loc},
  S_BChq_CP in '..\S_BChq_CP.pas' {Frm_BChq_CP},
  S_Pchq_CP in '..\S_Pchq_CP.pas' {Frm_PChq_CP},
  S_IndEnv_Fab in '..\S_IndEnv_Fab.pas' {Frm_IndEnv_Fab},
  S_IndEnv_Fab_Loc in '..\S_IndEnv_Fab_Loc.pas' {Frm_IndEnv_Fab_Loc},
  S_PPR_AjustarDesc in '..\S_PPR_AjustarDesc.pas' {Frm_PPR_AjustarDesc},
  S_LPreco2 in '..\S_LPreco2.pas' {Frm_LPreco2},
  UCalculadora in '..\UCalculadora.pas' {frmCalculadora},
  S_Agde_nfe in '..\S_AGDE_nfe.PAS' {Frm_Agde_nfe},
  S_ABC_Assessor in '..\S_ABC_Assessor.pas' {Frm_ABC_Assessor},
  S_MTipo_Ped in '..\S_MTipo_Ped.pas' {Frm_MTipo_Ped},
  S_UF in '..\S_UF.pas' {Frm_UF},
  S_Loc in '..\S_Loc.pas' {Frm_Loc},
  S_NFE_reg in '..\S_NFE_Reg.pas' {Frm_NFE_Reg},
  S_NFE_Pais in '..\S_NFE_Pais.pas' {Frm_NFE_Pais},
  S_Ram in '..\S_Ram.pas' {Frm_Ram},
  S_Depen in '..\S_Depen.pas' {frm_tipodependente},
  S_Ind_RegInv in '..\S_Ind_RegInv.pas' {Frm_Ind_RegInv},
  S_Sindicato in '..\S_Sindicato.pas' {frm_sindicato},
  S_Bai in '..\S_Bai.pas' {frm_bai},
  S_GPro in '..\S_GPro.pas' {Frm_GPro},
  S_TCon in '..\S_TCon.pas' {frm_tcon},
  S_TipPro in '..\s_tipPro.pas' {Frm_TipPro},
  S_DCB in '..\S_DCB.pas' {frm_DCB},
  S_GFor in '..\S_GFor.pas' {Frm_GFor},
  S_Red in '..\S_Red.pas' {Frm_Red},
  S_RCli in '..\S_RCli.pas' {Frm_RCli},
  S_CCU in '..\S_CCu.pas' {frm_CCU},
  S_Dpto in '..\S_Dpto.pas' {Frm_Dpto},
  S_Funcao in '..\S_Funcao.pas' {Frm_Funcao},
  S_Rel_For in '..\S_Rel_For.pas' {Frm_Rel_For},
  S_BuscaCep in '..\S_BuscaCep.pas' {Frm_BuscaCep},
  s_serasa in '..\s_serasa.pas' {frm_serasa},
  func_bde in '..\func_bde.pas',
  S_rel_finan in '..\S_rel_finan.pas' {frm_rel_finan},
  S_PesqProd in 'S_PesqProd.pas' {frm_pesqprod},
  S_CPSimples in '..\S_CPSimples.pas' {Frm_CPSimples},
  S_Pendencia in '..\S_Pendencia.pas' {frm_pendencia},
  S_Turnos in '..\S_Turnos.pas' {frm_turnos},
  S_Config_Caixa in '..\S_Config_Caixa.pas' {Frm_Config_Caixa},
  S_Tab_Bai in '..\S_Tab_Bai.pas' {Frm_Tab_Bai},
  S_Tab_Fun in '..\S_Tab_Fun.pas' {Frm_Tab_Fun},
  S_NossoPrograma in '..\S_NossoPrograma.pas' {frm_ExpNosso},
  S_Tab_Ram in '..\S_Tab_Ram.pas' {Frm_Tab_Ram},
  S_ExpPro_Balanca in '..\S_ExpPro_Balanca.pas' {Frm_ExpPro_Balanca},
  S_Dep_Prod in '..\S_Dep_Prod.pas' {Frm_Dep_Prod},
  S_Editor_Word in '..\S_Editor_Word.pas' {Frm_Editor_Word},
  S_GPro_Espec in '..\S_GPro_Espec.pas' {Frm_GPro_Espec},
  S_Pedido_Fortes in '..\S_Pedido_Fortes.pas' {Frm_Pedido_Fortes},
  S_Editor_Richedit in '..\S_Editor_Richedit.pas' {Frm_Editor_Richedit},
  S_NFE in '..\S_NFE.pas' {frm_NFE},
  S_Planilha in '..\S_Planilha.pas' {frm_Planilha},
  S_RPlanilha in '..\S_RPlanilha.pas' {frm_RPlanilha},
  SR_PFor01 in '..\SR_PFor01.pas' {Qr_PFor01},
  S_Demonstativo in '..\S_Demonstativo.pas' {frm_demonstrativo},
  S_Editor_PedOP in '..\S_Editor_PedOP.pas' {Frm_Editor_PedOP},
  S_Pedido_OP in '..\S_Pedido_OP.pas' {Frm_Pedido_OP},
  S_ImpExcel in '..\S_ImpExcel.pas' {frm_ImpExcel},
  s_coeficiente in '..\s_coeficiente.pas' {frm_coefic},
  S_Cli_Debitos in '..\S_Cli_Debitos.pas' {Frm_Cli_Debitos},
  s_ultVen in '..\s_ultVen.pas' {Frm_UltVen},
  s_comp_comiss in '..\s_comp_comiss.pas' {frm_comp_comiss},
  S_ECF_Comp_MRxNS in '..\S_ECF_Comp_MRxNS.pas' {Frm_ECF_Comp_MRxNS},
  S_BDev_For in '..\S_BDev_for.pas' {Frm_BDev_For},
  S_VdaGForCotas in '..\S_VdaGForCotas.pas' {Frm_VdaGForCotas},
  S_REL_ENV in '..\S_REL_ENV.pas' {frm_rel_env},
  S_Pro_Replica_Precos in '..\S_Pro_Replica_Precos.pas' {Frm_Pro_Replica_Precos},
  s_sobra_dev in '..\s_sobra_dev.pas' {frm_sobra_dev},
  S_HLic in '..\S_HLIC.PAS' {Frm_HLic},
  S_APcusAcabado in '..\S_APcusAcabado.pas' {Frm_APcusAcabado},
  s_DRE in '..\s_DRE.pas' {frm_DRE},
  S_TPDRE in '..\S_TPDRE.pas' {frm_tpdre},
  s_nfsser in '..\s_nfsser.pas' {frm_nfsser},
  S_MCodF in '..\S_MCodF.pas' {Frm_MCodF},
  S_MCodL in '..\S_MCodL.pas' {Frm_MCodL},
  D7ComboBoxStringsGetPatch in '..\D7ComboBoxStringsGetPatch.pas',
  s_Princ in 's_Princ.pas' {Frm_Princ},
  S_ProSimples01 in '..\S_ProSimples01.pas' {Frm_ProSimples01},
  S_RELREP in '..\S_RELREP.pas' {FRM_RELREP},
  s_Obs_Grid in '..\s_Obs_Grid.pas' {frm_obs_Grid},
  S_SelEmp in '..\S_SelEmp.pas' {Frm_SelEmp},
  S_NFE_Inutilizar in '..\S_NFE_Inutilizar.pas' {Frm_NFE_Inutilizar},
  s_ultvenc in '..\s_ultvenc.pas' {Frm_UltVenC},
  s_estmin in '..\s_estmin.pas' {frm_estmin},
  s_Cont_Locacao in '..\s_Cont_Locacao.pas' {Frm_Cont_Locacao},
  s_sac in '..\s_sac.pas' {frm_sac},
  S_ProEntxSai in '..\S_ProEntxSai.pas' {Frm_ProEntxSai},
  S_Caixa_Provisoes in '..\S_Caixa_Provisoes.pas' {Frm_Caixa_Provisoes},
  S_RE in '..\S_RE.pas' {Frm_RE},
  S_CodBarSeq in '..\S_CodBarSeq.pas' {Frm_CodBarSeq},
  s_PedEnt in '..\s_PedEnt.pas' {Frm_PedEnt},
  S_PSFor in '..\S_PSFor.pas' {Frm_PSFor},
  S_Agenda in '..\S_Agenda.pas' {Frm_Agenda},
  S_clipen in '..\S_clipen.pas' {Frm_CliPen},
  S_SPED_EFD in '..\S_SPED_EFD.pas' {Frm_SPED_EFD},
  S_XTR in '..\S_XTR.pas' {Frm_XTRS},
  S_CMOVPRO in '..\S_CMOVPRO.pas' {Frm_CMOVPRO},
  S_ProdProduz in '..\S_ProdProduz.pas' {Frm_ProdProduz},
  S_FatEst in '..\S_FatEst.pas' {Frm_FatEst},
  S_NFe_ConsCad in '..\S_NFe_ConsCad.pas' {Frm_NFe_ConsCad},
  S_CarCor2 in '..\S_CarCor2.pas' {Qr_carcor2},
  S_Memo_Quebra in '..\S_Memo_Quebra.pas' {Frm_Memo_Quebra},
  S_Relatorios in '..\S_Relatorios.pas' {Frm_Relatorios},
  s_manped02 in '..\s_manped02.pas' {Frm_ManPed02},
  S_LucroPro in '..\S_LucroPro.pas' {Frm_LucroPro},
  S_RelRecbCartao in '..\S_RelRecbCartao.pas' {Frm_RelRecbCartao},
  S_QtdVia in '..\S_QtdVia.pas' {Frm_QtdVia},
  S_ComisVend_Item in '..\S_ComisVend_Item.pas' {Frm_ComisVend_Item},
  S_LivMemFiscal in '..\S_LivMemFiscal.pas' {Frm_LivMemFiscal},
  S_SPED_EFD_NotasST in '..\S_SPED_EFD_NotasST.pas' {Frm_SPED_EFD_NotasST},
  s_expcli_csv in '..\s_expcli_csv.pas' {Frm_ExpCli_CSV},
  S_Graf_Dep in '..\S_Graf_Dep.pas' {Frm_Graf_Dep},
  S_EstMin_Vendas in '..\S_EstMin_Vendas.pas' {Frm_EstMin_Vendas},
  S_Agde in '..\S_AGDE.PAS' {Frm_Agde},
  S_CUSPED in '..\S_CUSPED.pas' {Frm_CusPed},
  S_ComVP in '..\S_ComVP.pas' {Frm_ComVP},
  S_PComVP in '..\S_PComVP.pas' {Frm_PComVP},
  S_CVVP in '..\S_CVVP.pas' {Frm_CVVP},
  S_VERFINAN in '..\S_VERFINAN.pas',
  S_VER_PEDELE in '..\S_VER_PEDELE.pas',
  S_Pagar_Sint in '..\S_Pagar_Sint.pas' {frm_Pagar_Sint},
  S_REVECF in '..\S_REVECF.pas' {Frm_REVECF},
  S_Vendas_GravarPedido in '..\S_Vendas_GravarPedido.pas' {Frm_Vendas_GravarPedido},
  S_ManBal_GerInv in '..\S_ManBal_GerInv.pas' {Frm_ManBal_GerInv},
  S_eventosproducao in '..\S_eventosproducao.pas' {frm_eventosproducao},
  S_DM_MYSQL in '..\S_DM_MYSQL.pas' {DM_MYSQL: TDataModule},
  S_AtuSis02 in '..\S_AtuSis02.pas' {Frm_AtuSis02},
  S_CBurden in '..\S_CBurden.pas' {Frm_CBurden},
  S_ThConexao in '..\S_ThConexao.pas',
  S_Ext_Prod in '..\S_Ext_Prod.pas' {Frm_Ext_Prod},
  s_nfe_Agde in '..\s_nfe_Agde.PAS' {Frm_nfe_Agde},
  S_DM1_ADO in '..\S_DM1_ADO.pas' {DM1_ADO: TDataModule},
  S_Compras_Orc in '..\S_Compras_Orc.pas' {Frm_Compras_Orc},
  S_Compras_GravarPedido in '..\S_Compras_GravarPedido.pas' {Frm_Compras_GravarPedido},
  s_compras_orc_impxml in '..\s_compras_orc_impxml.pas' {frm_compras_orc_impxml},
  S_Compras_Orc_Localizar in '..\S_Compras_Orc_Localizar.pas' {Frm_Compras_Orc_Localizar},
  S_compras_ProdSemRel in '..\S_compras_ProdSemRel.pas' {Frm_compras_ProdSemRel},
  S_Ocorrencias in '..\S_Ocorrencias.pas' {Frm_Ocorrencias},
  S_NFE_Impressao in '..\S_NFE_Impressao.pas' {Frm_NFE_Impressao},
  S_Extp3 in '..\S_Extp3.pas' {Frm_Extp3},
  s_cHoraOp in '..\s_cHoraOp.pas' {Frm_cHoraOp},
  S_ThReplica in '..\S_ThReplica.pas',
  S_Ped02_Canc in '..\S_Ped02_Canc.pas' {Frm_Ped02_Canc},
  s_pedpen in '..\s_pedpen.pas' {Frm_pedpen},
  S_Venda_Pre_CMET in '..\S_Venda_Pre_CMET.pas' {Frm_Venda_Pre_CMET},
  s_listarcompras in '..\s_listarcompras.pas' {Frm_listarcompras},
  S_IndEnv_Fab_Etapas in '..\S_IndEnv_Fab_Etapas.pas' {Frm_IndEnv_Fab_Etapas},
  S_CX_MovDia in '..\S_CX_MovDia.pas' {Frm_CX_MovDia},
  S_Ind_Prod_Analise in '..\S_Ind_Prod_Analise.pas' {Frm_Ind_Prod_Analise},
  S_Local_Estoque in '..\S_Local_Estoque.pas' {frm_Local_Estoque},
  S_Pro_EstFilial in '..\S_Pro_EstFilial.pas' {frm_Pro_EstFilial},
  S_Pro_Transf_Filial in '..\S_Pro_Transf_Filial.pas' {Frm_Pro_Transf_Filial},
  S_NFE_XmlCliente in '..\S_NFE_XmlCliente.pas' {Frm_NFE_XmlCliente},
  s_VoltaEstoque in '..\s_VoltaEstoque.pas' {Frm_VoltaEstoque},
  S_Venda_Pre_CMET_Consultas in '..\S_Venda_Pre_CMET_Consultas.pas' {Frm_Venda_Pre_CMET_Consultas},
  S_Ocorrencias_ecf in '..\S_Ocorrencias_ecf.pas' {Frm_Ocorrencias_ecf},
  S_Venda_Pre_Armas in '..\S_Venda_Pre_Armas.pas' {Frm_Venda_Pre_Armas},
  XLConst in '..\XLCONST.PAS',
  S_Obs in '..\S_Obs.pas' {Frm_Obs},
  S_ConDiv in '..\S_ConDiv.pas' {Frm_ConDiv},
  S_SitMaq in '..\S_SitMaq.pas' {Frm_SitMaq},
  S_CadMolde in '..\S_CadMolde.pas' {Frm_CadMolde},
  S_Mped in '..\S_Mped.pas' {Frm_MPed},
  S_Ped_TrocaMer_Efetivadas in '..\S_Ped_TrocaMer_Efetivadas.pas' {Frm_Ped_TrocaMer_Efetivadas},
  S_LerSintegra in '..\S_LerSintegra.pas' {Frm_LerSintegra},
  s_lerarq_geral in 's_lerarq_geral.pas',
  S_Pro_Farma in 'S_Pro_Farma.pas' {Frm_Pro_Farma},
  S_Pro_Farma_Menu in 'S_Pro_Farma_Menu.pas' {Frm_Pro_Farma_Menu},
  S_pesqprod_Menu in 'S_pesqprod_Menu.pas' {frm_pesqprod_Menu},
  S_DadCli in '..\S_DadCli.pas' {Frm_DadCli},
  S_Venda_Pre_Farma in 'S_Venda_Pre_Farma.pas' {Frm_Venda_Pre_Farma},
  s_Venda_pre_Fpgto_Mais in '..\s_Venda_pre_Fpgto_Mais.pas' {Frm_Venda_pre_Fpgto_Mais},
  s_thread_fecharmov in '..\s_thread_fecharmov.pas',
  S_NFE_Download_Entra in '..\S_NFE_Download_Entra.pas' {Frm_NFE_Download_Entra},
  S_Farma_SNGPC in '..\S_Farma_SNGPC.pas' {Frm_Farma_SNGPC},
  S_Farma_SNGPC_DadosComprador in '..\S_Farma_SNGPC_DadosComprador.pas' {Frm_Farma_SNGPC_DadosComprador},
  s_Farma_SNGPC_DadosDaCompra in '..\s_Farma_SNGPC_DadosDaCompra.pas' {Frm_Farma_SNGPC_DadosdaCompra},
  S_Farma_SNGPC_Inventario in '..\S_Farma_SNGPC_Inventario.pas' {Frm_Farma_SNGPC_Inventario},
  S_Compras_Orc_Precos in '..\S_Compras_Orc_Precos.pas' {Frm_Compras_Orc_Precos},
  S_Caixa_ConcManual in '..\S_Caixa_ConcManual.pas' {Frm_Caixa_ConcManual},
  S_Caixa_ConsAuto in '..\S_Caixa_ConsAuto.pas' {Frm_Caixa_ConsAuto},
  s_Caixa_ConcManual_DataConc in '..\s_Caixa_ConcManual_DataConc.pas' {Frm_Caixa_ConcManual_DataConc},
  S_YMOFXReader in '..\S_YMOFXReader.pas',
  S_Informacoes in '..\S_Informacoes.pas' {Frm_Informacoes},
  s_sngpc in '..\s_sngpc.pas',
  S_MD5 in '..\S_MD5.pas',
  ByteArray in '..\ByteArray.pas',
  S_RelNFS_Comparar in '..\S_RelNFS_Comparar.pas' {Frm_RelNFS_Comparar},
  S_FatEmp in '..\S_FatEmp.pas' {Frm_FatEmp},
  S_Ped_02_Venda in '..\S_Ped_02_Venda.pas' {Frm_Ped_02_Venda},
  S_Download_XML_NFE in '..\S_Download_XML_NFE.pas' {Frm_Download_XML_NFE},
  S_NFE_Manifestacao in '..\S_NFE_Manifestacao.pas' {Frm_NFE_Manifestacao},
  S_DM_Replica in '..\S_DM_Replica.pas' {DM_Replica: TDataModule},
  S_SPED_EFD_NOVO in '..\S_SPED_EFD_NOVO.pas' {Frm_SPED_EFD_NOVO},
  S_FISCAL_LivroEle_DF in '..\S_FISCAL_LivroEle_DF.pas' {Frm_FISCAL_LivroEle_DF},
  S_Prod_Classificar in '..\S_Prod_Classificar.pas' {Frm_Prod_Classificar},
  s_AjuInvGra_Gerar in '..\s_AjuInvGra_Gerar.pas' {Frm_AjuInvGra_Gerar},
  s_Farma_FP_Validar in 's_Farma_FP_Validar.pas' {Frm_Farma_FP_Validar},
  s_Imagem_WebCam in '..\s_Imagem_WebCam.pas' {frm_Imagem_WebCam},
  s_Captura_Scaner in '..\s_Captura_Scaner.pas' {Frm_Captura_Scaner},
  s_FormaPgto in '..\s_FormaPgto.pas' {Frm_FormaPgto},
  S_LRS_Cat52 in '..\S_LRS_Cat52.pas' {Frm_LRS_Cat52},
  s_CAT52xPedido in '..\s_CAT52xPedido.pas' {Frm_CAT52xPedido},
  s_ConfigGrade in '..\s_ConfigGrade.pas' {Frm_ConfigGrade},
  s_Farma_FP_Configurar in 's_Farma_FP_Configurar.pas' {Frm_Farma_FP_Configurar},
  s_FP_ServicoSolicitacaoWS1 in 's_FP_ServicoSolicitacaoWS1.pas',
  s_Pro_Farma_Apresentacao in 's_Pro_Farma_Apresentacao.pas' {frm_Pro_Farma_Apresentacao};

//  S_LucroPro in '..\..\..\BKP PROJETOS\SGE\S_LucroPro.pas' {Frm_LucroPro};

//  S_HLic in '..\S_HLIC.PAS' {Frm_HLic};
//  S_Config_Word in '..\S_Config_Word.pas' {Frm_Config_Word};

//  S_PesqProd in '..\S_PesqProd.pas' {frm_pesqprod};

//  S_PesqProd in '..\S_PesqProd.pas' {frm_pesqprod};

{$R *.RES}

var
mcorrige: Boolean=False; // TEMPORARIO
mposigual: Integer;
x: Integer;
mAjustaPed: Boolean=false;
mAjustadad: Boolean=false;
mAjustacaixa: Boolean=false;
MeuIPExterno: String;
mVerAnt: Integer;
//x: Integer; // temporario
mlinha: string;
xNovoNome: String;
// mlin01, mlin02, mlin03, mlin04: String;
//f_saida: TextFile;
query_temp: tQuery;
query_temp_02: tQuery;
form_agde :tFrm_agde;
query_cadver:tQuery;

begin
pdatanula :=StrToDate('01/01/1900');
mposigual:=0;

if not FileExists('C:\SGE\SGE.INI') then
   begin
   ftestaconfigantiga;
   if not FileExists('C:\SGE\SGE.INI') then
      begin
      fmensagem('Arquivo de Configuração de ambiente não encontrado. Contactar com suporte!',0,['0'],0);
      Application.Terminate;
      exit;
      end;
   end;


AssignFile(f,'C:\SGE\SGE.INI');
Reset(F);
//mlogomarcas:='';
pBanco     :=9999;
{ Bancos ja testados e funcionando
pBanco=0 - Oracle
       1 - Interbase
       2 - FireBird
       3 - paradox
}
while not eof(f) do
   begin
   ReadLn(F,mlinha);
   for x:=1 to length(mlinha) do
      begin
      if mlinha[x]='=' then
         begin
         mposigual:=x;
         break;
         end;
      end;
   mposigual:=mposigual+1;
   if LowerCase(copy(mlinha,1,12))='banco versao' then
      pbanco_versao:=valint(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)))
   else if LowerCase(copy(mlinha,1,6))='thread' then
      pthread:=upperCase(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)))
   else if LowerCase(copy(mlinha,1,5))='banco' then
      begin
      if lowercase(trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1))))='paradox' then
         pbanco:=3
      else if lowercase(trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1))))='interbase' then
         pbanco:=1
      else if lowercase(trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1))))='oracle' then
         pbanco:=0
      else if lowercase(trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1))))='firebird' then
         pbanco:=2;
      end
   else if lowercase(copy(mlinha,1,5))='alias' then
      begin
      Banco_alias:=trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)));
      end
   else if lowercase(copy(mlinha,1,7))='caminho' then
      begin
      banco_caminho:=trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)));
      end
   else if lowercase(copy(mlinha,1,12))='rede externa' then
      begin
      if lowercase(trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1))))='sim' then
         sisRedeExterna:=true
      else
         sisRedeExterna:=false;
      end
   else if lowercase(copy(mlinha,1,07))='usuario' then
      begin
      Banco_usuario:=trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)));
      end
   else if lowercase(copy(mlinha,1,08))='servidor' then
      begin
      Banco_servidor:=trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)));
      end
   else if lowercase(copy(mlinha,1,12))='nome servico' then
      begin
      Banco_ServerName:=trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)));
      end
   else if lowercase(copy(mlinha,1,6))='versao' then
      begin
      pValidaVersao:=trim(copy(mlinha,mposigual,length(mlinha)-(mposigual-1)));
      end;
   end;
closefile(f);


try
  MeuIPExterno:=ObterIPRealInternet('http://checkip.dyndns.org/');
except
  MeuIPExterno:='';
  end;
if (pTipoVersao='BETA') and not ((MeuIPExterno='187.115.66.177') or (pValidaVersao='BETA')) then
  begin
  fmensagem('Versão Teste ainda não Aprovada!',0,['0'],0);
  Application.Terminate;
  exit;
  end;

if pbanco=9999 then
   begin
   fmensagem('Banco de Dados Inválido!',0,['0'],0);
   Application.Terminate;
   exit;
   end;
if Banco_Servidor[length(banco_servidor)]='\' then
   Banco_Servidor:=copy(Banco_Servidor,1,length(banco_servidor)-1);

{

mlogomarcas:=copy(mlinha,2,50);
mlogomarcas:=Trim(mlogomarcas);
mlinha:=copy(mlinha,1,1);
if (mlinha<>'0') and (mlinha<>'1') then
   begin
   ShowMessage('Arquivo de Configuração danificado. Contactar suporte');
   Application.Terminate;
   exit;
   end;
pbanco:=StrToInt(mlinha);
mpastadefault:=GetCurrentDir;

if eof(f) then
   SisRedeExterna:=False
else
   begin
   ReadLn(F,mlinha);
   if copy(mlinha,1,1)='1' then
      sisRedeExterna:=True;
   end;

if pbanco=0 then
   begin
   palias  :='SGE';
   musuario:='SGE';
   end
else
   begin
   palias:='INTRBASE1';
   musuario:='SYSDBA';
   end;

if not eof(f) then
   begin
   ReadLn(F,mlinha);
   if Trim(mlinha)<>''  then
      palias:=Trim(mlinha);
   end;
if not eof(f) then
   begin
   ReadLn(F,mlinha);
   if Trim(mlinha)<>''  then
      musuario:=Trim(mlinha);
   end;


{ conteudo do SGE.CF
primeiro registro
inicio termino tamanho conteudo
1         1       1    Valores que se referem ao banco de dados 0-Oracle 1-Interbase
2        51      50    caminho onde se encontra as logomarcas e servidor
segundo registro
1         1       1    Valores 1 indica que possui rede remota/externa
terceiro registro
1        50      50    nome do alias do dbe
Quarto registro
1        50      50    nome do usuario do banco de dados




closefile(f);
}
if sisRedeExterna then
   begin
   If not SetCurrentDir('C:\TEMP') then
      begin
      CreateDir('C:\TEMP');
      SetCurrentDir('C:\TEMP');
      end;
//   mcamtmp:='C:\TEMP\T'+FormatDateTime('hhsszzz',Time);
   mcamtmp:='\TEMP\T'+FormatDateTime('hhsszzz',Time);
   While true do
      begin
      mcamtmp:='\TEMP\T'+FormatDateTime('hhsszzz',Time);
      if not DirectoryExists(mcamtmp) then
         break;
      end;
   if not SetCurrentDir(mcamtmp) then CreateDir(mcamtmp);
   SetCurrentDir(mcamtmp);
   mpastadefault:=mcamtmp;
//   CopyFile('\sge\sge.ini',pchar(mcamtmp+'\sge.ini'),false);
   end
else
   begin
//   mcamtmp:=GetCurrentDir;
   mcamtmp:='\SGE\TEMP';
   if not DirectoryExists('\SGE') then
      CreateDir('\SGE');
   if not DirectoryExists('\SGE\TEMP') then
      CreateDir('\SGE\TEMP');
   SetCurrentDir(mcamtmp);
   mpastadefault:=mcamtmp;
   end;
  Application.Initialize;


if Frm_Agde=nil then
  Application.CreateForm(TFrm_Agde, Frm_Agde);
  Application.CreateForm(TFrm_Farma_FP_Configurar, Frm_Farma_FP_Configurar);
  Application.CreateForm(Tfrm_Pro_Farma_Apresentacao, frm_Pro_Farma_Apresentacao);
  if frm_agde.fAgdeQtdProg('SGE - Sistema de Gestão Empresarial')>3 then
   begin
   fmensagem('O SGE - Sistema de Gestão Empresarial não pode ser aberto'+#13
               +'mais de duas vezes',0,['0'],0);
   Frm_Agde.Free;
   Frm_Agde:=nil;
   application.Terminate;
   exit;
   end;

Frm_Agde.Free;
Frm_Agde:=nil;



  Frm_Tent:=TFrm_Tent.Create(Application);
  Frm_Tent.Show;
  Frm_Tent.ST1.Caption:='Carregando o Banco de dados aguarde...';
  Frm_Tent.Update;
  try
     Application.Title := 'SGE - Sistema de Gestão Empresarial';
//     Application.CreateForm(TFrm_PPal, Frm_PPal);
  Application.CreateForm(TDM1, DM1);


  Application.CreateForm(TDM6, DM6);
  if DM1.SG_ASSOC.Connected = True then
    DM1.SG_ASSOC.Connected := False;
  fConfiguraBanco;

     DM1.SG_ASSOC.Connected:=true;

     Application.CreateForm(TDM2, DM2);
     Application.CreateForm(TDM3, DM3);
     Application.CreateForm(TDM4, DM4);
   if flfilpad(0,'_principal','SERVNFE') then
      mNFE_HostName:=DM4.Tb_FilPad2FPVALOR.AsString;
   if flfilpad(0,'_principal','SERVCEP') then
      mCEP_HostName:=DM4.Tb_FilPad2FPVALOR.AsString;

     try
        Application.CreateForm(TDM_MYSQL, DM_MYSQL);
     except
        end;


//     Application.CreateForm(TFrm_Impres, Frm_Impres);
//     Application.CreateForm(TFrm_login_Usuario, Frm_login_Usuario);
  except
     fmensagem('Erro ao Tentar abrir o Banco de Dados verifique se o database'+#13
               +'esta configurado Corretamente e se existe Banco de Dados'
               +' User Name: '+Banco_usuario+' Service Name: '+Banco_ServerName
               ,0,['0'],0);

     DM1.SG_ASSOC.Close;
     DM1.SG_ASSOC.Connected:=false;
     application.Terminate;
     exit;
     end;

Frm_Tent.ST1.Caption:=' Preparando tabelas para uso aguarde...';
Frm_Tent.Update;
pdatanula:=StrtoDate('01/01/1900');
Frm_Tent.ST1.Caption:=' Verificando a estrutura do banco de dados aguarde...';
Frm_Tent.Update;
try
  DM1.Query1.Close;
  DM1.Query1.Sql.clear;
  DM1.Query1.Sql.add('select * from user_tab_columns where table_name='+chr(39)+'CADEMP'+chr(39));
  DM1.Query1.Sql.add('and COLUMN_NAME='+chr(39)+'EMP_CONT_NOMLOC'+chr(39)+' and DATA_TYPE='+chr(39)+'VARCHAR2'+chr(39));
  DM1.Query1.Open;
  if DM1.Query1.IsEmpty then
    begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('alter table cademp drop column EMP_CONT_NOMLOC');
    try
      DM1.Query2.ExecSQL;
    except
      end;
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('UPDATE CADVER SET VERSAO='+chr(39)+'0'+chr(39));
    try
      DM1.Query2.ExecSQL;
     except
       end;
     end;
except
  end;

try
  DM1.Query1.Close;
  DM1.Query1.Sql.clear;
  DM1.Query1.Sql.add('select * from user_tab_columns where table_name='+chr(39)+'CADEXTH'+chr(39));
  DM1.Query1.Sql.add('and COLUMN_NAME='+chr(39)+'HORAINICIO'+chr(39)+' and DATA_TYPE='+chr(39)+'DATE'+chr(39));
  DM1.Query1.Open;
  if not DM1.Query1.IsEmpty then
    begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('alter table CADEXTH drop column HORAINICIO');
    try
      DM1.Query2.ExecSQL;
    except
      end;
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('alter table CADEXTH drop column HORAFIM');
    try
      DM1.Query2.ExecSQL;
    except
      end;
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('UPDATE CADVER SET VERSAO='+chr(39)+'0'+chr(39));
    try
      DM1.Query2.ExecSQL;
     except
       end;
     end;
except
  end;


try
  DM1.Query1.Close;
  DM1.Query1.Sql.clear;
  DM1.Query1.Sql.add('select * from user_tab_columns where table_name='+chr(39)+'CADEMP'+chr(39));
  DM1.Query1.Sql.add('and COLUMN_NAME='+chr(39)+'EMP_CONT_UF'+chr(39)+' and DATA_TYPE='+chr(39)+'VARCHAR2'+chr(39));
  DM1.Query1.Open;
  if DM1.Query1.IsEmpty then
    begin
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('alter table cademp drop column EMP_CONT_UF');
    try
      DM1.Query2.ExecSQL;
    except
      end;
    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.Add('UPDATE CADVER SET VERSAO='+chr(39)+'0'+chr(39));
    try
      DM1.Query2.ExecSQL;
    except
      end;
    end;
except
  end;


  
DM1.Query1.Close;
DM1.Query1.Sql.clear;
if (pbanco=1) or (pbanco=2) then
   begin
   DM1.Query1.Sql.add('SELECT count(*) FROM RDB$USER_PRIVILEGES '
                     +' where RDB$RELATION_NAME=');
   end
else
   begin
    DM1.Query1.SQL.Add('Select count(*) from user_objects '
                      +' where object_type='+chr(39)+'TABLE'+chr(39)
                      +' and object_name=');
   end;
DM1.Query1.Sql.add(chr(39)+'CADVER'+chr(39));
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger<1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('CREATE TABLE CADVER ('
                     +'VERSAO VARCHAR(10), '
                     +'VERFRENTE VARCHAR(10), '
                     +'VERTRIG VARCHAR(10), '
                     +'VERTRIG_FRENTE VARCHAR(10), '
                     +'OBSERV VARCHAR(100), '
                     +'VERGRUPO VARCHAR(10), '
                     +' STATUS '
                     +iif(pbanco=0,' NUMBER(02)',' DOUBLE PRECISION ')
                     +')');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,509,'SGE','CADVER');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.Add('insert into CADVER ('
                    +'VERSAO, '
                    +'VERFRENTE, '
                    +'VERTRIG, '
                    +'VERTRIG_FRENTE, '
                    +'OBSERV,'
                    +'VERGRUPO,'
                    +'STATUS) values ('
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'Nao ha nenhuma versao'+chr(39)
                    +chr(39)+'0'+chr(39)+','
                    +',0)');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,523,'SGE','CADVER');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select VERSAO,VERFRENTE,VERTRIG,VERTRIG_FRENTE,OBSERV,STATUS,VERGRUPO From CADVER');
   DM1.Query1.Open;
   end
else
   begin

   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select VERFRENTE From CADVER');
   try
      DM1.Query1.Open;
   except
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      if pbanco=1 then
         DM1.Query2.SQL.Add('alter table CADVER ADD VERFRENTE VARCHAR(10)')
      else
         DM1.Query2.SQL.Add('alter table CADVER ADD(VERFRENTE VARCHAR(10))');
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
//         ex_erroSql(02,567,'SGE','CADVER');
         end;
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select VERTRIG From CADVER');
   try
      DM1.Query1.Open;
   except
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      if pbanco=1 then
         DM1.Query2.SQL.Add('alter table CADVER ADD VERTRIG VARCHAR(10)')
      else
         DM1.Query2.SQL.Add('alter table CADVER ADD(VERTRIG VARCHAR(10))');
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
//         ex_erroSql(02,567,'SGE','CADVER');
         end;
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select VERTRIG_FRENTE From CADVER');
   try
      DM1.Query1.Open;
   except
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      if pbanco=1 then
         DM1.Query2.SQL.Add('alter table CADVER ADD VERTRIG_FRENTE VARCHAR(10)')
      else
         DM1.Query2.SQL.Add('alter table CADVER ADD(VERTRIG_FRENTE VARCHAR(10))');
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
//         ex_erroSql(02,567,'SGE','CADVER');
         end;
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select STATUS From CADVER');
   try
      DM1.Query1.Open;
   except
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      if pbanco=1 then
         DM1.Query2.SQL.Add('alter table CADVER ADD STATUS DOUBLE PRECISION')
      else
         DM1.Query2.SQL.Add('alter table CADVER ADD(STATUS NUMBER(02))');
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
//         ex_erroSql(02,567,'SGE','CADVER');
         end;
      end;


   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select VERGRUPO From CADVER');
   try
      DM1.Query1.Open;
   except
      DM1.Query2.Close;
      DM1.Query2.SQL.clear;
      if pbanco=1 then
         DM1.Query2.SQL.Add('alter table CADVER ADD VERGRUPO VARCHAR(10)')
      else
         DM1.Query2.SQL.Add('alter table CADVER ADD(VERGRUPO VARCHAR(10))');
      try
         DM1.Query2.ExecSQL;
         fdm1StartCommit;
      except
//         ex_erroSql(02,567,'SGE','CADVER');
         end;

      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select VERSAO, VERFRENTE,VERTRIG,VERTRIG_FRENTE,OBSERV,STATUS,VERGRUPO From CADVER');
   DM1.Query1.Open;
   end;
if DM1.Query1.IsEmpty then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQl.Add('insert into CADVER ('
                    +'VERSAO, '
                    +'VERFRENTE, '
                    +'VERTRIG, '
                    +'VERTRIG_FRENTE, '
                    +'OBSERV,'
                     +'VERGRUPO, '
                    +'STATUS) values ('
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'0'+chr(39)+','
                    +chr(39)+'Nao ha nenhuma versao'+chr(39)
                    +',0)');
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,523,'SGE','CADVER');
      end;
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Select VERSAO,VERTRIG,VERTRIG_FRENTE,OBSERV,STATUS,VERGRUPO From CADVER');
   DM1.Query1.Open;
   end;
if valint(DM1.Query1.FieldbyName('VERGRUPO').AsString)>valint(pGrupo_Versao) then
   begin
   if Application.MessageBox('É necessario baixar uma nova versao do SGE.EXE posso fazer isso agora','Confirmação',MB_YESNO+MB_DEFBUTTON2)=mrYes then
      begin
      codemp:=1;
      Application.createform(TFrm_Atusis,Frm_Atusis);
      Application.CreateForm(TFrm_agde, form_agde);
      Form_agde.Label1.Caption:='Aguarde enquanto é feito o download do SGE.EXE ';
      form_agde.show;
      Frm_AtuSis.bbAtuaSGE.Click;
      freeandnil(frm_atusis);
      freeandnil(form_agde);
      end;
   Application.Terminate;
   end
else if valint(DM1.Query1.FieldbyName('VERGRUPO').AsString)<valint(pGrupo_Versao) then
   begin
   query_cadver:=tQuery.Create(nil);
   query_cadver.DatabaseName:='SG_ASSOC';
   query_cadver.Close;
   query_cadver.sql.Clear;
   query_cadver.sql.Add('Update cadver set VERGRUPO=:VERGRUPO ');
   query_cadver.parambyName('VERGRUPO').asstring:=pGrupo_Versao;
   try
      query_cadver.ExecSQL;
      fdm1StartCommit;
   except
      end;
   freeandnil(query_cadver);
   end;


 mVerAnt:=valint(DM1.Query1.FieldbyName('VERSAO').AsString);



if DM1.Query1.FieldbyName('VERSAO').AsString<>pversao then
  begin
    if valint(DM1.Query1.fields[0].AsString)<1782 then
      mAjustaPed:=true
    else
      mAjustaPed:=false;

    if ValInt(DM1.Query1.Fields[0].AsString)<1232 then
      mAjustaPed:=true;


    DM1.Query2.Close;
    DM1.Query2.SQL.Clear;
    DM1.Query2.SQL.add('Update CADVER set VERSAO='+chr(39)+pversao+chr(39)
                      +', STATUS=2 '
                      +', OBSERV='+chr(39)+NomeComputador +chr(39));
    try
      DM1.Query2.ExecSQL;
      fdm1StartCommit;
    except
      ex_erroSql(02,554,'SGE','CADVER');
      end;
    Application.CreateForm(TFrm_Agde, Frm_Agde);
    Frm_Agde.Label1.Caption:='Ajustando a estrutura do Banco de Dados, Aguarde!';
    Frm_Agde.Show;
    Frm_Agde.Update;
    pexecutar:=True;
    Application.CreateForm(TFrm_Stru, Frm_Stru);
    DM1.Tb_Funcao.Close;
    DM4.Tb_Usr.Close;
    DM4.Tb_Par01.Close;
    DM4.Tb_Par02.Close;
    Frm_Stru.verificar(0);
    Frm_Stru.Free;
    Frm_Stru:=nil;
    pexecutar:=False;
    if mVerAnt<2313 then
       FAjustarCodigoFilial(0);

    DM1.Query1.Close;
    DM1.Query1.SQL.Clear;
    DM1.Query1.SQL.Add('Select VERSAO,VERTRIG,VERTRIG_FRENTE,OBSERV,STATUS From CADVER');
    DM1.Query1.Open;


    if ValInt(DM1.Query1.Fields[0].AsString)<2319 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('update cadpro set PDFIS_ORIGEM=0 where PDFIS_ORIGEM is null');
      DM1.Query2.ExecSQL;
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('update cadp02 set P2SIT=0||p2SIT where length(P2SIT)=2');
      DM1.Query2.ExecSQL;
      end;

    if ValInt(DM1.Query1.Fields[0].AsString)<1744 then
      mAjustacaixa:=true
    else
      mAjustacaixa:=false;

    if ValInt(DM1.Query1.Fields[0].AsString)<1744 then
      mAjustacaixa:=true
    else
      mAjustacaixa:=false;
    

    if ValInt(DM1.Query1.Fields[0].AsString)<2258 then
       begin
       if query_temp=nil then
          begin
          query_temp:=tQuery.create(nil);
          query_temp.databasename:='SG_ASSOC';
          end;

       query_temp.Close;
       query_temp.SQL.Clear;
       query_temp.SQL.Add(' update CADCLI set CMOTDES=0 where CMOTDES is null');
       query_temp.ExecSQL;
       query_temp.Close;
       query_temp.SQL.Clear;
       query_temp.SQL.Add(' update CADPRO set PDDESICMS=0 where PDDESICMS is null');
       query_temp.ExecSQL;
       fdm1StartCommit;
       end;
   if ValInt(DM1.Query1.Fields[0].AsString)<2320 then
      begin
      if query_temp=nil then
         begin
         query_temp:=tQuery.create(nil);
         query_temp.databasename:='SG_ASSOC';
         end;
      query_temp.Close;
      query_temp.SQL.Clear;
      query_temp.SQL.Add(' delete from CADP02 where P2CHAVE is null or P2CHAVE=0');
      query_temp.ExecSQL;
      query_temp.Close;
      query_temp.SQL.Clear;
      query_temp.SQL.Add(' delete from CADP01 where P1CHAVE is null or P1CHAVE=0');
      query_temp.ExecSQL;
      fdm1StartCommit;
      end;



  if mVerAnt<1751 then
    begin
      if query_temp=nil then
         begin
         query_temp:=tQuery.create(nil);
         query_temp.databasename:='SG_ASSOC';
         end;

    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('Update NFE_CADREG set CRCODREG=5 where '
                      +' CRNOMREG='+chr(39)+'REGIAO CENTRO-OESTE'+chr(39)
                      +' and CRCODREG=3 ');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    end;

  if mVerAnt<2238 then
    begin
      if query_temp_02=nil then
         begin
         query_temp_02:=tQuery.create(nil);
         query_temp_02.databasename:='SG_ASSOC';
         end;

      if query_temp=nil then
         begin
         query_temp:=tQuery.create(nil);
         query_temp.databasename:='SG_ASSOC';
         end;

    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('update CADP02 set P2CSOSN='+chr(39)+'101'+chr(39)+' where P2CSOSN is null');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    query_temp_02.Close;
    query_temp_02.SQL.Clear;
    query_temp_02.SQL.Add(' select p2codemp, p2chave, sum(p2valdes) as descc, sum(p2basen) as basen, '
                  +' sum(p2icmsn)as icmsn, sum(p2totdes) as totdes, '
                  +' sum(p2valipi) as totipi, sum(p2bcinr) as basenr, '
                  +' sum(p2baser) as baser, sum(p2icmsr) as icmsr, '
                  +' sum(p2icmsnr) as icmsnr, sum(p2totliq) as totliq, '
                  +' sum(p2descrat) as descrat from cadp02 '
                  +'   where p2chave in (select p1chave from cadp01 where p1totall is null )'
                  +' group by p2codemp, p2chave ');
    query_temp_02.Open;
    while not query_temp_02.eof do
      begin
      query_temp.Close;
      query_temp.SQL.Clear;
      query_temp.SQL.Add(' update cadp01 set p1basen='+chr(39)+query_temp_02.FieldByName('basen').AsString+chr(39)+','
                        +' p1icmsn='+chr(39)+query_temp_02.FieldByName('icmsn').AsString+chr(39)+','
                        +' p1basenri='+chr(39)+query_temp_02.FieldByName('basenr').AsString+chr(39)+','
                        +' p1icmsnri='+chr(39)+query_temp_02.FieldByName('icmsnr').AsString+chr(39)+','
                        +' p1baser='+chr(39)+query_temp_02.FieldByName('baser').AsString+chr(39)+','
                        +' p1icmsr='+chr(39)+query_temp_02.FieldByName('icmsr').AsString+chr(39)+','
                        +' p1totdes='+chr(39)+query_temp_02.FieldByName('totdes').AsString+chr(39)+','
                        +' p1totall='+chr(39)+query_temp_02.FieldByName('totliq').AsString+chr(39)+','
                        +' p1ipiina='+chr(39)+query_temp_02.FieldByName('totipi').AsString+chr(39));
      query_temp.SQL.Add(' where p1chave='+query_temp_02.FieldByName('p2chave').AsString+' and P1CODEMP='+query_temp_02.FieldByName('p2codemp').AsString);
      try
        query_temp.ExecSQL;
      except
        showmessage('Erro ao atualizar totalizadores CADP01');
        query_temp.Sql.SaveToFile('c:\sge\errototal.txt');
        end;
      query_temp_02.Next;
      end;

    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('update CADP02 set P2CSOSN_ORI='+chr(39)+'1'+chr(39)+' where P2CSOSN_ORI is null');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    end;


  if mVerAnt<2234 then
    begin
    if query_temp=nil then
       begin
       query_temp:=tQuery.create(nil);
       query_temp.databasename:='SG_ASSOC';
       end;

    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('UPDATE CADP01 SET P1TOTOUT = P1TOTOUT - (P1TOTALL-P1BASEN) WHERE P1TOTOUT > 0');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('update cadpro set pdfis_origem='+chr(39)+'0'+chr(39)+' where trim(pdfis_origem) is null');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    end;



  if mVerAnt<2147 then
    begin
    if query_temp=nil then
       begin
       query_temp:=tQuery.create(nil);
       query_temp.databasename:='SG_ASSOC';
       end;

    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('Update CADLC1 set LC1_CASASDEC=LC1_CASASDEC+1');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    end;

  if mVerAnt<2306 then
    begin
  {  Application.CreateForm(TFrm_Stru,Frm_Stru);
    Frm_Stru.CB_ALTCAMPOS.Checked:=True;
    fTestaCampos(0,'CADP01');
    Frm_Stru.CB_ALTCAMPOS.Checked:=False;
    FreeAndNil(Frm_Stru);}
    end;


  if mVerAnt<2206 then
    begin
    fAjustarCSTPISCOFINS(0);
    end;

  if mVerAnt<2192 then
    begin
    if query_temp=nil then
       begin
       query_temp:=tQuery.create(nil);
       query_temp.databasename:='SG_ASSOC';
       end;

    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('alter table cadcburden modify ccb_ccu varchar(6)');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    end;

  if mVerAnt<2183 then
    begin
    if query_temp=nil then
       begin
       query_temp:=tQuery.create(nil);
       query_temp.databasename:='SG_ASSOC';
       end;

    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('Update CADPCUS set PTIPO=0 where PTIPO is null');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    end;

  if mVerAnt<2140 then
    begin
    if query_temp=nil then
       begin
       query_temp:=tQuery.create(nil);
       query_temp.databasename:='SG_ASSOC';
       end;

    //CRIA CAMPO FCGC_ANT
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('ALTER TABLE CADFOR ADD FCGC_ANT FLOAT');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    //COPIA INFORMAÇÃO FCGC PARA FCGC_ANT
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('UPDATE CADFOR SET FCGC_ANT=FCGC');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    //DELETA CAMPO FGCG
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('ALTER TABLE CADFOR DROP COLUMN FCGC');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    // CRIA CAMPO NOVO FCGC
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('ALTER TABLE CADFOR ADD FCGC VARCHAR(14)');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    // ATUALIZA INFORMAÇÕES FCGC
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('UPDATE CADFOR SET FCGC=FCGC_ANT');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    // ATUALIZA INFORMAÇÕES FCGC
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('UPDATE CADFOR SET FCGC='+chr(39)+'0'+chr(39)+' WHERE FCGC IS NULL');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    // DELETA FCGC_ANT
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('ALTER TABLE CADFOR DROP COLUMN FCGC_ANT');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    end;

  if mVerAnt<2206 then
    begin
    if query_temp_02=nil then
       begin
       query_temp_02:=tQuery.create(nil);
       query_temp_02.databasename:='SG_ASSOC';
       end;

    query_temp_02.Close;
    query_temp_02.SQL.Clear;
    query_temp_02.SQL.Add(' Select TPCODIGO, TPNOME from CADTIPPED ');
    query_temp_02.SQL.Add(' order by TPCODIGO ');
    query_temp_02.Open;
    while not query_temp_02.Eof do
      begin
      xNovoNome:=RetiraAcentos(query_temp_02.FieldByName('TPNOME').AsString);
      query_temp.close;
      query_temp.SQL.Clear;
      query_temp.SQL.Add('Update CADTIPPED set TPNOME='+chr(39)+xNovoNome+chr(39)
                        +' where TPCODIGO='+query_temp_02.FieldByName('TPCODIGO').AsString);
      query_temp.ExecSQL;
      try
        fdm1StartCommit;
      except
        end;
      query_temp_02.Next;
      end;
    query_temp.close;
    query_temp.SQL.Clear;
    query_temp.SQL.Add('Update CADP02 set P2PCODIG=P2PRECO '
                      +' where P2PCODIG=0 or P2PCODIG is null');
    try
      query_temp.ExecSQL;
      fdm1StartCommit;
    except
      end;
    query_temp_02.Next;
    end;



   if mAjustacaixa then
      begin
    if query_temp=nil then
       begin
       query_temp:=tQuery.create(nil);
       query_temp.databasename:='SG_ASSOC';
       end;

      Frm_Agde.Label1.Caption:='Ajustando o arquivo de Fluxo de caixa, Aguarde...';
      Frm_Agde.Update;
      query_temp.Close;
      query_temp.SQL.Clear;
      query_temp.SQL.Add('Update CADLDR set DTSALDO=DATAREAL '
                        +' where (DTSALDO<>DATAREAL) OR (DTSALDO is null and not DATAREAL is null)');
       try
          query_temp.ExecSQL;
          fdm1StartCommit;
       except
          end;
      end;

   Frm_Agde.free;
   Frm_Agde:=nil;


{
   ShowMessage('Foi Detectado uma atualizacao de  Versao  o  Sistema'+#13
               +'ira reparar o Banco de Dados. Apos  Reparar  Emitira'+#13
               +'um relatorio de ocorrencias. Se houver uma observacao'+#13
               +'para que seja enviado um fax do mesmo, pedimos para'+#13
               +'que nos envie para podermos analiza-lo.');
}

    if query_temp=nil then
       begin
       query_temp:=tQuery.create(nil);
       query_temp.databasename:='SG_ASSOC';
       end;

   query_temp.Close;
   query_temp.SQL.Clear;
   query_temp.SQL.add('Update CADVER set VERSAO='+chr(39)+pversao+chr(39)
                     +', STATUS=1 '
                     +', OBSERV='+chr(39)+'Atualizacao Feita em: '
                     +FormatDateTime(fdt2,date)+' as '
                     +FormatDateTime(fhr,Time)+chr(39));
   try
      query_temp.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(02,554,'SGE','CADVER');
      end;


   end
else if DM1.Query1.FieldByName('STATUS').AsInteger=2 then
  begin
  if query_temp=nil then
     begin
     query_temp:=tQuery.create(nil);
     query_temp.databasename:='SG_ASSOC';
     end;

   if DM1.Query1.FieldByName('OBSERV').AsString=NomeComputador then
    begin
    query_temp.Close;
    query_temp.SQL.Clear;
    query_temp.SQL.add('Update CADVER set STATUS=1');
    try
       query_temp.ExecSQL;
       fdm1StartCommit;
    except
       ex_erroSql(02,554,'SGE','CADVER');
       end;
//    exit;
    end
  else
    begin
    Application.CreateForm(TFrm_Agde, Frm_Agde);
    Frm_Agde.Label1.Caption:='Aguardando verificação de estrutura no computador: '+DM1.Query1.fields[2].AsString;
    Frm_Agde.Show;
    Frm_Agde.Update;
    mplid:=0;
    While DM1.Query1.FieldByName('STATUS').AsInteger=2 do
      begin
      frm_agde.update;
      Sleep(10000);
      mplid:=mplid+1;
      if mplid>30 then
        begin
        if query_temp=nil then
           begin
           query_temp:=tQuery.create(nil);
           query_temp.databasename:='SG_ASSOC';
           end;

        query_temp.Close;
        query_temp.SQL.Clear;
        query_temp.SQL.add('Update CADVER set STATUS=1');
        try
          query_temp.ExecSQL;
          fdm1StartCommit;
        except
          ex_erroSql(02,554,'SGE','CADVER');
          end;
        break;
        end;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('Select VERSAO,VERTRIG,VERTRIG_FRENTE,OBSERV,STATUS From CADVER');
      DM1.Query1.Open;
      end;
    Frm_Agde.Free;
    Frm_Agde:=nil;
    end;
  end;

Frm_Tent.ST1.Caption:='Carregando o programa aguarde...';
Frm_Tent.Update;
DM1.Qr_TID.Close;
DM1.Qr_TID.SQL.Clear;
DM1.Qr_TID.SQL.Add('Select * from CADTID');
DM1.Qr_TID.open;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.add('Select COUNT(*) FROM CADPAR_NF');
DM1.Query1.open;
if DM1.Query1.Fields[0].AsInteger<1 then
   begin
   DM1.Query3.Close;
   DM1.Query3.SQL.Clear;
   DM1.Query3.SQL.Add('Select count(*) from USER_TAB_COLUMNS where TABLE_NAME='+chr(39)+'CADPAR'+chr(39)
                    +' and COLUMN_NAME='+chr(39)+'PNUMNF'+chr(39));
   DM1.Query3.Open;
   if DM1.Query3.Fields[0].AsInteger>0 then
      begin
      DM1.Query2.Close;
      DM1.Query2.SQL.Clear;
      DM1.Query2.SQL.Add('select PCODEMP, PSERIENF ,PSUBSERNF ,PMODNF ,PNUMNF ,PNUMAUT, '
                        +'       PSERIENF2,PSUBSERNF2           ,PMODNF2,PNUMNF2,PNUMAUT2 '
                        +',POBSNF1,POBSNF2,POBSNF3 '
                        +' from CADPAR '
                        +' ORDER BY PCODEMP,PSERIENF ');
      DM1.Query2.Open;
      While not DM1.Query2.Eof do
         begin
         DM1.Query1.Close;
         DM1.Query1.SQL.Clear;
         DM1.Query1.SQL.add('Insert into CADPAR_NF ('
                           +'  PNF_CODEMP '
                           +' ,PNF_CHAVE '
                           +' ,PNF_SERIE '
                           +' ,PNF_MODELO '
                           +' ,PNF_NUMNF '
                           +' ,PNF_TIPOFORM '
                           +' ,PNF_DTVCTO '
                           +' ,PNF_MANNNF '
                           +' ,PNF_OBSL01 '
                           +' ,PNF_OBSL02 '
                           +' ,PNF_OBSL03 '
                           +' ) values ('
                           +'  :PNF_CODEMP '
                           +' ,:PNF_CHAVE '
                           +' ,:PNF_SERIE '
                           +' ,:PNF_MODELO '
                           +' ,:PNF_NUMNF '
                           +' ,:PNF_TIPOFORM '
                           +' ,:PNF_DTVCTO '
                           +' ,:PNF_MANNNF '
                           +' ,:PNF_OBSL01 '
                           +' ,:PNF_OBSL02 '
                           +' ,:PNF_OBSL03 '
                           +')');
         DM1.Query1.ParamByName('PNF_CODEMP').Value  :=DM1.Query2.fieldbyName('PCODEMP').AsInteger;
         DM1.Query1.ParamByName('PNF_CHAVE').Value   :='SERIE1';
         DM1.Query1.ParamByName('PNF_SERIE').Value   :=DM1.Query2.fieldbyName('PSERIENF').AsString;
         DM1.Query1.ParamByName('PNF_MODELO').Value  :=DM1.Query2.fieldbyName('PMODNF').AsString;
         DM1.Query1.ParamByName('PNF_NUMNF').Value   :=DM1.Query2.fieldbyName('PNUMNF').AsInteger;
         if DM1.Query2.fieldbyName('PMODNF').AsString='55' then
            DM1.Query1.ParamByName('PNF_TIPOFORM').Value:=1
         else
            DM1.Query1.ParamByName('PNF_TIPOFORM').Value:=0;

         DM1.Query1.ParamByName('PNF_DTVCTO').Value  :='';
{         if DM1.Query2.fieldbyName('PNF_DTVCTO').AsDateTime<=pDatanula then
            DM1.Query1.ParamByName('PNF_DTVCTO').Value  :=''
         else
            DM1.Query1.ParamByName('PNF_DTVCTO').Value  :=FormatDateTime(fdt2, DM1.Query2.fieldbyName('PNF_DTVCTO').AsDateTime);}
         DM1.Query1.ParamByName('PNF_MANNNF').Value  :=DM1.Query2.fieldbyName('PNUMAUT').AsInteger;
         DM1.Query1.ParamByName('PNF_OBSL01').Value  :=DM1.Query2.fieldbyName('POBSNF1').AsString;
         DM1.Query1.ParamByName('PNF_OBSL02').Value  :=DM1.Query2.fieldbyName('POBSNF2').AsString;
         DM1.Query1.ParamByName('PNF_OBSL03').Value  :=DM1.Query2.fieldbyName('POBSNF3').AsString;
         DM1.Query1.ExecSQL;
         fdm1StartCommit;

         if DM1.Query2.fieldbyName('PNUMNF2').AsInteger>0 then
            begin
            DM1.Query1.ParamByName('PNF_CODEMP').Value  :=DM1.Query2.fieldbyName('PCODEMP').AsInteger;
            DM1.Query1.ParamByName('PNF_CHAVE').Value   :='SERIE2';
            DM1.Query1.ParamByName('PNF_SERIE').Value   :=DM1.Query2.fieldbyName('PSERIENF2').AsString;
            DM1.Query1.ParamByName('PNF_MODELO').Value  :=DM1.Query2.fieldbyName('PMODNF2').AsString;
            DM1.Query1.ParamByName('PNF_NUMNF').Value   :=DM1.Query2.fieldbyName('PNUMNF2').AsInteger;
            DM1.Query1.ParamByName('PNF_TIPOFORM').Value:=0;
            DM1.Query1.ParamByName('PNF_DTVCTO').Value  :='';
            DM1.Query1.ParamByName('PNF_MANNNF').Value  :=DM1.Query2.fieldbyName('PNUMAUT2').AsInteger;
            DM1.Query1.ParamByName('PNF_OBSL01').Value  :=DM1.Query2.fieldbyName('POBSNF1').AsString;
            DM1.Query1.ParamByName('PNF_OBSL02').Value  :=DM1.Query2.fieldbyName('POBSNF2').AsString;
            DM1.Query1.ParamByName('PNF_OBSL03').Value  :=DM1.Query2.fieldbyName('POBSNF3').AsString;
            DM1.Query1.ExecSQL;
            fdm1StartCommit;
            end;
         DM1.Query2.Next;
         end;
      DM1.Query1.Close;
      DM1.Query1.SQL.Clear;
      DM1.Query1.SQL.Add('alter table CADPAR RENAME COLUMN PNUMNF TO PNUMNF_ANT ');
      try
         DM1.Query1.ExecSQL;
         fdm1StartCommit;
      except
         end;
      end;

   end;





{
if not DM1.Qr_tid.locate('TINOME','CADCLI',[]) then
   begin
   DM1.Tb_Cli.close;
   DM1.Tb_Cli.SQL.Clear;
   DM1.Tb_Cli.Params.CreateParam(ftString,'CODEMP',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'RAZAO',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'CODCLI',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'CNPJ',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'CPF',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'CIDADE',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'BAIRRO',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'CODRED',ptInput);
   DM1.Tb_Cli.Params.CreateParam(ftString,'DENOM',ptInput);
   DM1.Tb_Cli.SQL.Add('Select * from CADCLI '
                     +'  where CCODEMP like :CODEMP '
                     +'  and   CRAZAO  like :RAZAO '
                     +'  and   CCODCLI like :CODCLI '
                     +'  and   CCNPJ   like :CNPJ '
                     +'  and   CCPF    like :CPF '
                     +'  and   CCIDADE like :CIDADE '
                     +'  and   CBAIRRO like :BAIRRO '
                     +'  and   CCODRED like :CODRED '
                     +'  and   CDENOM like :DENOM ');
   end;
}
try
  DM4.Tb_FilPad.Open;
except
  dm4.Tb_FilPad.SQL.SaveToFile('c:\sql.txt');
  end;

DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select count(*) from CADUF where PREDUTRA_SN is null');
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>1 then
   begin
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.Add('Update CADUF set PREDUTRA_SN=PREDUTRA '
                     +'                ,PREDUTRB_SN=PREDUTRB '
                     +'                ,PREDUTRC_SN=PREDUTRC '
                     +'                ,PREDUTRD_SN=PREDUTRD '
                     +'                ,PREDUTRE_SN=PREDUTRE '
                     +'                ,PREDUTRF_SN=PREDUTRF '
                     +'                ,PREDUTRG_SN=PREDUTRG '
                     +'                ,PREDUTRH_SN=PREDUTRH '
                     +'                ,PREDUTRI_SN=PREDUTRI '
                     +'                ,PICMSC_SN=PICMSC '
                     +'                ,PICMSD_SN=PICMSD '
                     +'                ,PIVAPOS_SN=PIVAPOS '
                     +'                ,PIVANEG_SN=PIVANEG '
                     +'                ,PIVAINA_SN=PIVAINA ');

   try
      DM1.query1.ExecSQL;
      fdm1StartCommit;
   except
      end;
   end;

if not flparger(0,0,'1') then
   begin
   DM1.Tb_Parger.Append;
   DM1.Tb_PargerCODIGO.Value:=1;
   DM1.Tb_Parger.Post;
   flparger(0,0,'1');
   end;

if not flparger02(0,0,'1') then
   begin
   DM4.Tb_Parger02.Append;
   DM4.Tb_ParGer02PG2CODIGO.Value:=1;
   DM4.Tb_Parger02.Post;
   flparger02(0,0,'1');
   end;

if DM1.Tb_PargerEMPPRE.AsInteger>0 then
  begin
  codemp:=DM1.Tb_PargerEMPPRE.AsInteger
  end
else
   codemp:=1;
if DM1.Tb_PargerPCRDOCSIG.IsNull then
   begin
   DM1.Tb_Parger.Edit;
   DM1.Tb_PargerPCRDOCSIG.Value:='DP-';
   if DM1.Tb_PargerPCRDOC.IsNull then
      DM1.Tb_PargerPCRDOC.Value:=0;
   DM1.Tb_Parger.Post;
   flparger(0,0,'1');
   end;
if DM1.Tb_PargerPCODMOE.IsNull then
   begin
   DM1.Tb_Parger.Edit;
   DM1.Tb_PargerPCODMOE.Value:=9;
   if DM1.Tb_PargerPMOEDA.IsNull then
      DM1.Tb_PargerPMOEDA.Value:='R$';
   DM1.Tb_Parger.Post;
   flparger(0,0,'1');
   end;

mpseg:=DM1.Tb_PargerPSEGMENTO.Value;
if ValInt(copy(mpseg,4,2))=2 then
   begin
   Log_TipoLote:=2;
   Log_TitLote:='Grade';
   Log_UsaDtVcto:=false;
   end
else if ValInt(copy(mpseg,4,2))=1 then
   begin
   Log_TipoLote:=1;
   Log_TitLote:='Lote';
   Log_UsaDtVcto:=True;
   end
else if ValInt(copy(mpseg,4,2))=3 then
   begin
   Log_TipoLote:=3;
   Log_TitLote:='Lote';
   Log_UsaDtVcto:=false;
   end
else
   begin
   Log_TipoLote:=0;
   Log_UsaDtVcto:=false;
   end;

if DM1.Tb_PargerPCRDOC.IsNull then
   begin
   DM1.Tb_Parger.Edit;
   DM1.Tb_PargerPCRDOC.Value:=0;
   DM1.Tb_Parger.Post;
   flparger(0,0,'1');
   end;


  Application.CreateForm(TDM5, DM5);
//  Application.CreateForm(TDM2, DM2);
//  Application.CreateForm(TDM3, DM3);






sys_decimal:=DecimalSeparator;
sys_milhar :=ThousandSeparator;
mQtdCas_arredpu:=DM1.Tb_PargerPCASASPU.AsInteger;
if mQtdCas_arredpu<0 then
   mQtdCas_arredpu:=5;
mcasaspu   :=fRetornaFormatFloat(DM1.Tb_PargerPCASASPU.AsInteger);
mcasas     :=fRetornaFormatFloat(DM1.Tb_PargerPCASAS.AsInteger);
mcasqtd    :=fRetornaFormatFloat(DM1.Tb_PargerPCASQTD.AsInteger);
mcasind    :=fRetornaFormatFloat(DM1.Tb_PargerPCASIND.AsInteger);
mcaspuind  :=fRetornaFormatFloat(DM1.Tb_PargerPCASPUIND.AsInteger);
if DM1.Tb_PargerPCASAS.AsInteger<0 then
   mcasger :=5
else
   mcasger    :=DM1.Tb_PargerPCASAS.AsInteger;
//       DDDD
DM1.Query1.Close;
DM1.Query1.Sql.clear;
DM1.Query1.Sql.add('select BANNER from v$version ');
DM1.Query1.Sql.add(' where BANNER like '+chr(39)+'Oracle%'+chr(39));
try
   DM1.Query1.Open;
except
   end;
if DM1.Query1.FieldByName('BANNER').AsString='Oracle8i Enterprise Edition Release 8.1.7.0.0 - Production' then
   pbanco_versao:=8  //8
else
   pbanco_versao:=10;

{
DM1.Query1.Close;
DM1.Query1.Sql.clear;
DM1.Query1.Sql.add('SELECT VERSION FROM SYSMAN.MGMT_VERSIONS');
try
   DM1.Query1.Open;
   pbanco_versao:=10;
except
   pbanco_versao:=8;
   end;
}

if query_temp<>nil then
   FreeandNil(query_temp);

if query_temp_02<>nil then
   FreeandNil(query_temp_02);

//Application.CreateForm(TFrm_PPal, Frm_PPal);
  Application.CreateForm(TFrm_Princ, Frm_Princ);

Application.CreateForm(TFrm_CServer, Frm_CServer);
Application.CreateForm(TFrm_CServerUser, Frm_CServerUser);
Application.CreateForm(TFrm_Conexao, Frm_Conexao);
Application.Createform(TFrm_Empresas, Frm_Empresas);
Application.CreateForm(TFrm_Liberar, Frm_Liberar);
Application.CreateForm(TFrm_Impres, Frm_Impres);
Application.CreateForm(TFrm_SQL, Frm_SQL);


mboolean:=false;
{
DM1.SQLConnection1.Close;
for x := 0 to DM1.SQLConnection1.Params.Count-1 do
   begin
   if uppercase(copy(DM1.SQLConnection1.Params[x],1,8))='DATABASE' then
      DM1.SQLConnection1.Params[x]:='DataBase='+Banco_ServerName
   else if uppercase(copy(DM1.SQLConnection1.Params[x],1,9))='USER_NAME' then
      DM1.SQLConnection1.Params[x]:='User_Name='+Banco_usuario;
   end;

try
   DM1.SQLConnection1.Connected:=true;
except
   end;
}
//mlogomarcas:='';
//pBanco     :=9999;
{ Bancos ja testados e funcionando
pBanco=0 - Oracle
       1 - Interbase
       2 - FireBird
       3 - paradox
}
fppaldisplayformat(0);

if DM1.Tb_PargerPINDUSTRIA.Value=0 then
   begin
   Frm_Princ.Industria1.Visible:=False;
   Frm_Princ.Industria2.Visible:=False;
   Frm_Princ.mpro_0154.Visible :=False;
   Frm_Princ.mpro_0155.Visible :=False;
   Frm_Princ.Industria_Envase.Visible:=false;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   begin
   Frm_Princ.Industria1.Visible      :=False;
   Frm_Princ.Industria2.Visible      :=true;
   Frm_Princ.mpro_0154.Visible       :=False;
   Frm_Princ.mpro_0155.Visible       :=True;
   Frm_Princ.Industria_Envase.Visible:=true;
   end
else
   begin
   Frm_Princ.Industria1.Visible:=true;
   Frm_Princ.Industria2.Visible:=true;
   Frm_Princ.mpro_0154.Visible :=true;
   Frm_Princ.mpro_0155.Visible :=true;
   Frm_Princ.Industria_Envase.Visible:=false;
   end;
if DM1.Tb_PargerPKITPROD.AsInteger=1 then
   Frm_Princ.consembprod.Visible:=true
else
   Frm_Princ.consembprod.Visible:=False;

if DM1.Tb_PargerPPEDFPGTO.AsInteger>0 then
   begin
   Frm_Princ.N60.Visible    :=true;
   Frm_Princ.cr_0318.Visible:=true;
   end
else
   begin
   Frm_Princ.N60.Visible    :=false;
   Frm_Princ.cr_0318.Visible:=false;
   end;

if ValInt(copy(mpseg,7,2))<>01 then  // Prestação de servicos
   Frm_Princ.os.Visible:=False
else
   Frm_Princ.os.Visible:=True;

if DM1.Tb_PargerPECFDIR.Value=1 then
   begin
   Frm_Princ.sai_0112.Visible:=True;
   end
else
   begin
   Frm_Princ.sai_0112.Visible:=False;
   end;


if DM1.Tb_PargerPCODLOC.Value=1  then
   begin
   Frm_Princ.mloc_0106.Visible:=True;
   Frm_Princ.mloc_0107.Visible:=True;
   Frm_Princ.mloc_0108.Visible:=True;
   end
else
   begin
   Frm_Princ.mloc_0106.Visible:=False;
   Frm_Princ.mloc_0107.Visible:=False;
   Frm_Princ.mloc_0108.Visible:=False;
   end;

if DM1.Tb_PargerPCODDBC.Value=1  then
   begin
   Frm_Princ.mpro_0148.Visible:=True;
   Frm_Princ.rpro_0124.Visible:=True;
   Frm_Princ.rpro_0133.Visible:=True;
   end
else
   begin
   Frm_Princ.mpro_0148.Visible:=False;
   Frm_Princ.rpro_0124.Visible:=False;
   Frm_Princ.rpro_0133.Visible:=False;
   end;

if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   Frm_Princ.mloc_0109.Visible:=True;
   end
else
   begin
   Frm_Princ.mloc_0109.Visible:=False;
   end;

if DM1.Tb_PargerPPCOGRA.Value=1 then
   begin
   Frm_Princ.mpro_0166.Visible :=True;
   Frm_Princ.NMP.Visible :=True;
   end
else
   begin
   Frm_Princ.mpro_0166.Visible :=False;
   Frm_Princ.NMP.Visible       :=False;
   end;


if DM1.Tb_PargerPUFOLHA.Value=1 then
   begin
   Frm_Princ.folha.Visible:=True;
   end
else
   begin
   Frm_Princ.folha.Visible:=false;
   end;

if DM1.Tb_PargerPUIMOBIL.Value=1 then
   begin
   Frm_Princ.Imobilizados.Visible    :=True;
   Frm_Princ.rel_imobilizados.Visible:=True;
   end
else
   begin
   Frm_Princ.Imobilizados.Visible:=false;
   Frm_Princ.rel_imobilizados.Visible:=false;
   end;
if (valint(copy(mpseg,4,2))<>1) then
   begin
   Frm_Princ.sis2103.Visible  :=false;
   end;

if (valint(copy(mpseg,4,2))=2) then
   begin
   Frm_Princ.lf_0142.Visible         :=true;
   Frm_Princ.lf_0145.Visible         :=true;
   Frm_Princ.mpro_0166.Visible       :=true;
//   Frm_Princ.rven_0130.Visible       :=true;
//   Frm_Princ.rven_0133.Visible       :=true;
   end
else
   begin
   Frm_Princ.lf_0142.Visible          :=false;
   Frm_Princ.lf_0145.Visible         :=true;   
//   Frm_Princ.lf_0145.Visible          :=false;
   Frm_Princ.mpro_0166.Visible        :=false;
//   Frm_Princ.rven_0130.Visible        :=false;
//   Frm_Princ.rven_0133.Visible        :=false;
   end;




if DM1.Tb_PargerPUCONVEI.Value=1 then
   begin
   Frm_Princ.veiculos.Visible    :=True;
   Frm_Princ.rel_veiculos.Visible:=True;
   end
else
   begin
   Frm_Princ.veiculos.Visible    :=false;
   Frm_Princ.rel_veiculos.Visible:=False;
   end;

if DM1.Tb_PargerPECFCAI.Value=1 then
   begin
   Frm_Princ.sai_0127.Visible:=True;
   end
else
   begin
   Frm_Princ.sai_0127.Visible:=false;
   end;


if DM1.Tb_PargerPINDUSTRIA.Value=0 then
   begin
   Frm_Princ.Industria1.Visible:=False;
   Frm_Princ.Industria2.Visible:=False;
   Frm_Princ.mpro_0154.Visible :=False;
   Frm_Princ.mpro_0155.Visible :=False;
   Frm_Princ.Industria_Envase.Visible:=false;
   end
else if DM1.Tb_PargerPINDUSTRIA.Value=4 then
   begin
   Frm_Princ.Industria1.Visible      :=False;
   Frm_Princ.Industria2.Visible      :=true;
   Frm_Princ.mpro_0154.Visible       :=False;
   Frm_Princ.mpro_0155.Visible       :=True;
   Frm_Princ.Industria_Envase.Visible:=true;
   end
else
   begin
   Frm_Princ.Industria1.Visible:=true;
   Frm_Princ.Industria2.Visible:=true;
   Frm_Princ.mpro_0154.Visible :=true;
   Frm_Princ.mpro_0155.Visible :=true;
   Frm_Princ.Industria_Envase.Visible:=false;
   end;
if DM1.Tb_PargerPKITPROD.AsInteger=1 then
   Frm_Princ.consembprod.Visible:=true
else
   Frm_Princ.consembprod.Visible:=False;

if DM1.Tb_PargerPPEDFPGTO.AsInteger>0 then
   begin
   Frm_Princ.N60.Visible    :=true;
   Frm_Princ.cr_0318.Visible:=true;
   end
else
   begin
   Frm_Princ.N60.Visible    :=false;
   Frm_Princ.cr_0318.Visible:=false;
   end;

if ValInt(copy(mpseg,7,2))<>01 then  // Prestação de servicos
   Frm_Princ.os.Visible:=False
else
   Frm_Princ.os.Visible:=True;


if DM1.Tb_PargerPECFDIR.Value=1 then
   begin
   Frm_Princ.sai_0112.Visible:=True;
   end
else
   begin
   Frm_Princ.sai_0112.Visible:=False;
   end;


if DM1.Tb_PargerPCODLOC.Value=1  then
   begin
   Frm_Princ.mloc_0106.Visible:=True;
   Frm_Princ.mloc_0107.Visible:=True;
   Frm_Princ.mloc_0108.Visible:=True;
   end
else
   begin
   Frm_Princ.mloc_0106.Visible:=False;
   Frm_Princ.mloc_0107.Visible:=False;
   Frm_Princ.mloc_0108.Visible:=false;
   end;

if DM1.Tb_PargerPCODDBC.Value=1  then
   begin
   Frm_Princ.mpro_0148.Visible:=True;
   Frm_Princ.rpro_0124.Visible:=True;
   Frm_Princ.rpro_0133.Visible:=True;
   end
else
   begin
   Frm_Princ.mpro_0148.Visible:=False;
   Frm_Princ.rpro_0124.Visible:=False;
   Frm_Princ.rpro_0133.Visible:=False;
   end;

if DM1.Tb_PargerPCODBAI.Value=1 then
   begin
   Frm_Princ.mloc_0109.Visible:=True;
   end
else
   begin
   Frm_Princ.mloc_0109.Visible:=False;
   end;



if DM1.Tb_PargerPUFOLHA.Value=1 then
   begin
   Frm_Princ.folha.Visible:=True;
   end
else
   begin
   Frm_Princ.folha.Visible:=false;
   end;

if DM1.Tb_PargerPUIMOBIL.Value=1 then
   begin
   Frm_Princ.Imobilizados.Visible    :=True;
   Frm_Princ.rel_imobilizados.Visible:=True;
   end
else
   begin
   Frm_Princ.Imobilizados.Visible    :=false;
   Frm_Princ.rel_imobilizados.Visible:=false;
   end;



if DM1.Tb_PargerPUCONVEI.Value=1 then
   Frm_Princ.veiculos.Visible:=True
else
   Frm_Princ.veiculos.Visible:=false;


if DM1.Tb_PargerPECFCAI.Value=1 then
   begin
   Frm_Princ.sai_0127.Visible:=True;
   end
else
   begin
   Frm_Princ.sai_0127.Visible:=false;
   end;

Frm_Tent.ST1.Caption:='Verificando as Configuracoes do sistema aguarde...';
Frm_Tent.Update;
if dm1.Tb_PargerPCOMEMP.Value=1 then
   pconsemp:=True
else
   pconsemp:=False;
DM1.Qr_TID.Close;
DM1.Qr_TID.SQL.Clear;
DM1.Qr_TID.SQL.Add('Select * from CADTID');
DM1.Qr_TID.open;
if not flcadpar01(0,0,'1') then
   begin
   fmensagem('Programa Nao Configurado. Favor Confirgura-lo!',0,['0'],0);

   DM1.SG_ASSOC.Close;
   DM1.SG_ASSOC.Connected:=false;
   Application.Terminate;
   exit;
   end;

ls_numped   :=DM4.Tb_Par01PNUMPED_LS.AsInteger;
ls_numpf    :=DM4.Tb_Par01PNUMPF_LS.AsInteger;
ls_codldr   :=DM4.Tb_Par01PCODLDR_LS.AsInteger;
ls_codchqcli:=DM4.Tb_Par01PCODCHQCLI_LS.AsInteger;
ls_codchqemi:=DM4.Tb_Par01PCODCHQ_PE_LS.AsInteger;
ls_numlic   :=DM4.Tb_Par01PNUMLIC_LS.AsInteger;
ls_lotbcp   :=DM4.Tb_Par01PLOTBCP_LS.AsInteger;
ls_lotbcr   :=DM4.Tb_Par01PLOTBCR_LS.AsInteger;
ls_lotfab   :=DM4.Tb_Par01PCHAVFAB_LS.AsInteger;
ls_cadaju   :=DM4.Tb_Par01PCADAJU_LS.AsInteger;
ls_cadcac   :=DM4.Tb_Par01PCADCAC_LS.AsInteger;

Application.CreateForm(TFrm_Stru, Frm_Stru);
DM1.Query1.Close;
DM1.Query1.SQL.Clear;
DM1.Query1.SQL.Add('Select VERSAO,VERTRIG,VERTRIG_FRENTE,OBSERV,STATUS From CADVER');
DM1.Query1.Open;
if DM1.Query1.FieldByName('VERTRIG').AsString<>pver_Trig then
   begin
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Excluindo Triggers antigas, Aguarde...';
   Frm_Agde.Show;
   frm_agde.Update;
   Frm_Stru.fcriarTriggers(1); // excluir
   DM1.Query1.Close;
   DM1.Query1.SQL.Clear;
   DM1.Query1.SQL.add('Update CADVER set VERTRIG='+chr(39)+pver_Trig+chr(39));
   try
      DM1.Query1.ExecSQL;
      fdm1StartCommit;
   except
      ex_erroSql(01,820,'SGE','CADVER');
      end;
   Frm_Agde.Free;
   Frm_Agde:=nil;
   end;

if not Frm_Stru.FCriarTriggers(2) then
   begin
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   Frm_Agde.Label1.Caption:='Criando Novas Triggers, Aguarde...';
   Frm_Agde.Show;
   frm_Agde.update;

   if pbanco=1 then
      begin
      if not Frm_Stru.ftestainterb(0) then
         begin
         DM1.SG_ASSOC.Close;
         DM1.SG_ASSOC.Connected:=false;
         Application.Terminate;
         exit;
         end;
      end;


   Frm_Stru.fcriarTriggers(1); // excluir
   Frm_Stru.fcriarTriggers(0); // criar
   Frm_Agde.Free;
   Frm_Agde:=nil;
   if not Frm_Stru.fcriarTriggers(3) then
      begin
      fmensagem('Feche todas as copias do Programa  e  Execute  o  programa'+#13
                +'no servidor, caso venha a aparecer esta mensagem novamente'+#13
                +'Solicite Suporte imediatamente.Fones ',0,['0'],0);

      DM1.SG_ASSOC.Close;
      DM1.SG_ASSOC.Connected:=false;
      Application.Terminate;
      exit;
      end;
{
   if (FMensagem('O programa tera que ajustar alguns campos, este processo'+#13
                +'pode ser um pouco demorado, deseja executar agora?',mtInformation,[mbYes,mbNo],0)=mrYes) then


      begin
      Application.CreateForm(TFrm_Agde, Frm_Agde);
      Frm_Agde.Label1.Caption:='Ajustando as Triggers, Aguarde...';
      Frm_Agde.Show;
      frm_Agde.update;
      FCriarTriggers(4); // Atualizar
      Frm_Agde.Free;
      Frm_Agde:=nil;
      end;
}
   end;
Frm_Stru.Free;
Frm_Stru:=nil;


fTestaBDE;
{if not fTestaBDE then
   begin
   fmensagem('Para que seu sistema tenha um desempenho melhor sera necessario reinicializar o computador '
                ,0,['0'],0);
   end;}

   
if pbanco=1 then
   begin
   frm_Stru2.Free;
   Frm_Stru2:=nil;
   end;

if mAjustaPed then
   begin
   Application.CreateForm(TFrm_Agde, Frm_Agde);
   DM1.Qr_TID.Close;
   DM1.Qr_TID.SQL.Clear;
   DM1.Qr_TID.SQL.Add('Select * from CADTID');
   DM1.Qr_TID.open;
   Frm_Agde.Label1.Caption:='Ajustando o arquivo de Pedidos, Aguarde...';
   Frm_Agde.Label1.Caption:='Excluindo Triggers antigas, Aguarde...';
   Frm_Agde.Show;
   frm_Agde.update;
   fAjustarTipoPedido(0);
   end;
//LUIZ
DM1.Query1.close;
DM1.Query1.SQL.clear;
DM1.Query1.SQL.Add('select count(*) from CADPRO where PDFIS_CST_ICMS_EST_REV  is null ');
DM1.Query1.Open;
if DM1.Query1.Fields[0].AsInteger>0 then
  begin
  fAjustarCSTPISCOFINS(0);
  end;


if flcadpar01(0,0,'1') then
   begin
   ls_numped   :=DM4.Tb_Par01PNUMPED_LS.AsInteger;
   ls_numpf    :=DM4.Tb_Par01PNUMPF_LS.AsInteger;
   ls_codldr   :=DM4.Tb_Par01PCODLDR_LS.AsInteger;
   ls_codchqcli:=DM4.Tb_Par01PCODCHQCLI_LS.AsInteger;
   ls_codchqemi:=DM4.Tb_Par01PCODCHQ_PE_LS.AsInteger;
   ls_numlic   :=DM4.Tb_Par01PNUMLIC_LS.AsInteger;
   ls_lotbcp   :=DM4.Tb_Par01PLOTBCP_LS.AsInteger;
   ls_lotbcr   :=DM4.Tb_Par01PLOTBCR_LS.AsInteger;
   ls_lotfab   :=DM4.Tb_Par01PCHAVFAB_LS.AsInteger;
   ls_cadaju   :=DM4.Tb_Par01PCADAJU_LS.AsInteger;
   end;

DM1.Tb_CI.Close;
DM1.Tb_CI.ParamByName('IMPRESSORA').AsString:='EPSON LX';
DM1.Tb_CI.Open;
if DM1.Tb_CI.Eof then
   begin
   DM1.Tb_CI.Append;
   DM1.Tb_CIIMPRESSORA.Value:='EPSON LX';
   DM1.Tb_CIC10CPPD.Value:=#14#18;
   DM1.Tb_CIC12CPPD.Value:=#14#18#27#77;
   DM1.Tb_CIC17CPPD.Value:=#14#15;
   DM1.Tb_CIC20CPPD.Value:=#14#15#27#77;
   DM1.Tb_CIC10CPP.Value :=#18;
   DM1.Tb_CIC12CPP.Value :=#18#27#77;
   DM1.Tb_CIC14CPP.Value :='';
   DM1.Tb_CIC17CPP.Value :=#15;
   DM1.Tb_CIC20CPP.Value :=#15#27#77;
   DM1.Tb_CICNORMAL.Value:=#20#18#27#80;
   DM1.Tb_CIL8P1.Value   :=#27+'0';
   DM1.Tb_CIL10P1.Value  :=#27+'1';
   DM1.Tb_CIL6P1.Value   :=#27+'2';
   DM1.Tb_CIL3P1.Value   :=#27+'3';
   DM1.Tb_CIPEJECT.Value :=#12;
   DM1.Tb_CI.Post;
   end;
//FAjustarCodigoFilial(0);
Application.CreateForm(TDM1_ADO, DM1_ADO);
DM1_ADO.ADOConnection1.Close;
DM1_ADO.ADOConnection1.ConnectionString:='Provider=MSDAORA.1;Password=DEZENOVE;User ID='+Banco_usuario+';Data Source='+Banco_ServerName+';Persist Security Info=True';
DM1_ADO.ADOConnection1.Open;

Frm_Tent.Free;
Frm_Tent:=nil;
Application.Run;


end.


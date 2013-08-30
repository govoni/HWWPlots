root -l -q HWWPlots/finalPlot.C+'(0,1,"m_{\ell\ell}","GeV","rootFiles/hww_mll_0j.root","m_ll_0j",0,125,24.4,1,1)';                                            # fig 1 left
root -l -q HWWPlots/finalPlot.C+'(0,1,"m_{\ell\ell}","GeV","rootFiles/hww_mll_1j.root","m_ll_1j",0,125,24.4,1,1)';                                            # fig 1 right
root -l -q HWWPlots/finalPlot.C+'(5,1,"#Delta#eta_{jj}","","rootFiles/detajj-WW-2j.root","delta_eta_jj",0,125,19.5,1,100)';                             # fig 2 left
root -l -q HWWPlots/finalPlot.C+'(5,1,"m_{jj}","GeV","rootFiles/mjj-WW-2j.root","m_jj",0,125,19.5,1,100)';                                              # fig 2 right
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mT.root",  "st_mT",  0, 125, 24.4, 1, 1)';             # fig 6 left
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{\ell\ell}", "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mll.root", "st_mll", 0, 125, 24.4, 1, 1)';             # fig 7 left
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{\ell\ell}", "GeV","rootFiles/plotrootfile_CR1_mll_0j.root", "mll_CR1", 0,125,19.5,1,1)';                            # fig 8 top right
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{\ell\ell}", "GeV","rootFiles/plotrootfile_CR2_mll_0j.root", "mll_CR2", 0,125,19.5,1,1)';                            # fig 8 bottom right
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV","rootFiles/plotrootfile_CR1_mT_0j.root",  "mT_CR1",  0,125,19.5,1,1)';                            # fig 8 top left
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV","rootFiles/plotrootfile_CR2_mT_0j.root",  "mT_CR2",  0,125,19.5,1,1)';                            # fig 8 bottom left
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{\ell\ell}", "GeV", "rootFiles/plotrootfile_SS_mll_0j.root", "SS_mll_0j", 0, 125, 24.4, 1, 1)';                      # fig 9 left
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV", "rootFiles/plotrootfile_Top_mt_1j.root", "Top_mt_1j", 0, 125, 24.4, 1, 1)';                      # fig 9 right
root -l -q HWWPlots/finalPlot.C+'(6,1,"m_{\ell\ell}","GeV","rootFiles/mll-VBF-2011.root","mll_vbf_2011",0,125,4.9,1,1)';                                      # fig 10 left
root -l -q HWWPlots/finalPlot.C+'(6,1,"m_{\ell\ell}","GeV","rootFiles/mll-VBF-2012.root","mll_vbf_2012",0,125,19.5,1,1)';                                     # fig 10 right
root -l -q HWWPlots/finalPlot.C+'(7,1,"m_{\ell\ell}","GeV","rootFiles/mll-VH-2012.root","mll_vh",0,125,19.5,1,1)';                                            # fig 12
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_of_0j.root",    "topcontrol_mT_of_0j",   0,125,19.5,1,1)'; # fig 30 right
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{\ell\ell}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_of_0j.root",   "topcontrol_mll_of_0j",  0,125,19.5,1,1)'; # fig 30 left
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_of_1j.root",    "topcontrol_mT_of_1j",   0,125,19.5,1,1)'; # fig 31 right
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{\ell\ell}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_of_1j.root",   "topcontrol_mll_of_1j",  0,125,19.5,1,1)'; # fig 31 left
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_incl_2j.root",  "topcontrol_mT_incl_2j", 0,125,19.5,1,1)'; # fig 32 right
root -b -q HWWPlots/finalPlot.C+'(9,1,"m_{\ell\ell}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_incl_2j.root", "topcontrol_mll_incl_2j",0,125,19.5,1,1)'; # fig 32 left

root -l -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_ossf_7tev_new.root","histo_drmin_afterallothercuts_ossf_7tev",1,125,4.91,0,1)'; # fig 14
root -l -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_sssf_7tev_new.root","histo_drmin_afterallothercuts_sssf_7tev",1,125,4.92,0,1)'; # fig 14
root -l -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_ossf_8tev_new.root","histo_drmin_afterallothercuts_ossf_8tev",1,125,19.51,0,1)'; # fig 14
root -l -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_sssf_8tev_new.root","histo_drmin_afterallothercuts_sssf_8tev",1,125,19.52,0,1)'; # fig 14

root -l -q HWWPlots/finalPlot.C+'(8,1,"Reconstructed mass","GeV","rootFiles/ZH_histos_7TeV.root","histo_mh_7tev",0,125,4.9,0,10)'; # fig 16
root -l -q HWWPlots/finalPlot.C+'(8,1,"Reconstructed mass","GeV","rootFiles/ZH_histos_8TeV.root","histo_mh_8tev",0,125,19.5,0,10)'; # fig 16

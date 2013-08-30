root -l -q finalPlot.C+'(0,1,"m_{ll}","GeV","../hww_mll_0j.root","m_ll_0j",0,125,24.4,1,1)';                                            # fig 1 left
root -l -q finalPlot.C+'(0,1,"m_{ll}","GeV","../hww_mll_1j.root","m_ll_1j",0,125,24.4,1,1)';                                            # fig 1 right
root -l -q finalPlot.C+'(5,1,"#Delta#eta_{jj}","","../detajj-WW-2j.root","delta_eta_jj",0,125,19.5,1,100)';                             # fig 2 left
root -l -q finalPlot.C+'(5,1,"m_{jj}","GeV","../mjj-WW-2j.root","m_jj",0,125,19.5,1,100)';                                              # fig 2 right
root -b -q finalPlot.C+'(9,1,"m_{T}",  "GeV", "../plotrootfile_stackdataminusbkg_mT.root",  "st_mT",  0, 125, 24.4, 1, 1)';             # fig 6 left
root -b -q finalPlot.C+'(9,1,"m_{ll}", "GeV", "../plotrootfile_stackdataminusbkg_mll.root", "st_mll", 0, 125, 24.4, 1, 1)';             # fig 7 left
root -b -q finalPlot.C+'(9,1,"m_{ll}", "GeV","../plotrootfile_CR1_mll_0j.root", "mll_CR1", 0,125,19.5,1,1)';                            # fig 8 top right
root -b -q finalPlot.C+'(9,1,"m_{ll}", "GeV","../plotrootfile_CR2_mll_0j.root", "mll_CR2", 0,125,19.5,1,1)';                            # fig 8 bottom right
root -b -q finalPlot.C+'(9,1,"m_{T}",  "GeV","../plotrootfile_CR1_mT_0j.root",  "mT_CR1",  0,125,19.5,1,1)';                            # fig 8 top left
root -b -q finalPlot.C+'(9,1,"m_{T}",  "GeV","../plotrootfile_CR2_mT_0j.root",  "mT_CR2",  0,125,19.5,1,1)';                            # fig 8 bottom left
root -b -q finalPlot.C+'(9,1,"m_{ll}", "GeV", "../plotrootfile_SS_mll_0j.root", "SS_mll_0j", 0, 125, 24.4, 1, 1)';                      # fig 9 left
root -b -q finalPlot.C+'(9,1,"m_{T}",  "GeV", "../plotrootfile_Top_mt_1j.root", "Top_mt_1j", 0, 125, 24.4, 1, 1)';                      # fig 9 right
root -l -q finalPlot.C+'(6,1,"m_{ll}","GeV","../mll-VBF-2011.root","mll_vbf_2011",0,125,4.9,1,1)';                                      # fig 10 left
root -l -q finalPlot.C+'(6,1,"m_{ll}","GeV","../mll-VBF-2012.root","mll_vbf_2012",0,125,19.5,1,1)';                                     # fig 10 right
root -l -q finalPlot.C+'(7,1,"m_{ll}","GeV","../mll-VH-2012.root","mll_vh",0,125,19.5,1,1)';                                            # fig 12
root -b -q finalPlot.C+'(9,1,"m_{T}",   "GeV","../plotrootfile_topcontrol_mT_of_0j.root",    "topcontrol_mT_of_0j",   0,125,19.5,1,1)'; # fig 30 right
root -b -q finalPlot.C+'(9,1,"m_{ll}",  "GeV","../plotrootfile_topcontrol_mll_of_0j.root",   "topcontrol_mll_of_0j",  0,125,19.5,1,1)'; # fig 30 left
root -b -q finalPlot.C+'(9,1,"m_{T}",   "GeV","../plotrootfile_topcontrol_mT_of_1j.root",    "topcontrol_mT_of_1j",   0,125,19.5,1,1)'; # fig 31 right
root -b -q finalPlot.C+'(9,1,"m_{ll}",  "GeV","../plotrootfile_topcontrol_mll_of_1j.root",   "topcontrol_mll_of_1j",  0,125,19.5,1,1)'; # fig 31 left
root -b -q finalPlot.C+'(9,1,"m_{T}",   "GeV","../plotrootfile_topcontrol_mT_incl_2j.root",  "topcontrol_mT_incl_2j", 0,125,19.5,1,1)'; # fig 32 right
root -b -q finalPlot.C+'(9,1,"m_{ll}",  "GeV","../plotrootfile_topcontrol_mll_incl_2j.root", "topcontrol_mll_incl_2j",0,125,19.5,1,1)'; # fig 32 left

# root -b -q finalPlot.C+'(9,1,"#Delta R(l^{+}l^{-})", "", "../histo_drmin_afterallothercuts_sssf_8tev_new.root", "histo_drmin_afterallothercuts_sssf_8tev",     0,125,19.51,1,1)' ;
# root -b -q finalPlot.C+'(9,1,"#Delta R(l^{+}l^{-})", "", "../histo_drmin_afterallothercuts_sssf_7tev_new.root", "histo_drmin_afterallothercuts_sssf_7tev",     0,125,4.91,1,1)' ;
# root -b -q finalPlot.C+'(9,1,"#Delta R(l^{+}l^{-})", "", "../histo_drmin_afterallothercuts_ossf_8tev_new.root", "histo_drmin_afterallothercuts_ossf_8tev_new", 0,125,19.52,1,1)' ;
# root -b -q finalPlot.C+'(9,1,"#Delta R(l^{+}l^{-})", "", "../histo_drmin_afterallothercuts_ossf_7tev_new.root", "histo_drmin_afterallothercuts_ossf_7tev_new", 0,125,4.92,1,1)' ;



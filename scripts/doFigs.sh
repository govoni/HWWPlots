#!/bin/sh

root -q HWWPlots/finalPlot.C+'(0,1,"m_{\\ell\\ell}","GeV","rootFiles/hww_mll_0j.root","wwpresel_0j_mh125_massll",0,125,24.4,0,1)';					      # fig 1 left
root -q HWWPlots/finalPlot.C+'(0,1,"m_{\\ell\\ell}","GeV","rootFiles/hww_mll_1j.root","wwpresel_1j_mh125_massll",0,125,24.4,0,1)';					      # fig 1 right
root -q HWWPlots/finalPlot.C+'(5,1,"#Delta#eta_{jj}","","rootFiles/detajj-WW-2j.root","detajj",0,125,19.5,0,100)';			       # fig 2 left
root -q HWWPlots/finalPlot.C+'(5,1,"m_{jj}","GeV","rootFiles/mjj-WW-2j.root","mjj",0,125,19.5,0,100)';  					    # fig 2 right
root -q HWWPlots/finalPlot.C+'(10,1,"m_{T}",  "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mT.root",  "st_mT",  0, 125, 24.4, 0, 1)';	     # fig 6 left
root -q HWWPlots/finalPlot.C+'(10,1,"m_{\\ell\\ell}", "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mll.root", "st_mll", 0, 125, 24.4, 0, 1)';	     # fig 7 left
root -q HWWPlots/finalPlot.C+'(10,1,"m_{\\ell\\ell}", "GeV","rootFiles/plotrootfile_CR1_mll_0j.root", "mll_CR1", 0,125,19.5,0,1)';			     # fig 8 top right
root -q HWWPlots/finalPlot.C+'(10,1,"m_{\\ell\\ell}", "GeV","rootFiles/plotrootfile_CR2_mll_0j.root", "mll_CR2", 0,125,19.5,0,1)';			     # fig 8 bottom right
root -q HWWPlots/finalPlot.C+'(10,1,"m_{T}",  "GeV","rootFiles/plotrootfile_CR1_mT_0j.root",  "mT_CR1",  0,125,19.5,0,1)';			     # fig 8 top left
root -q HWWPlots/finalPlot.C+'(10,1,"m_{T}",  "GeV","rootFiles/plotrootfile_CR2_mT_0j.root",  "mT_CR2",  0,125,19.5,0,1)';			     # fig 8 bottom left
root -q HWWPlots/finalPlot.C+'(9,1,"m_{\\ell\\ell}", "GeV", "rootFiles/plotrootfile_SS_mll_0j.root", "SS_mll_0j", 0, 125, 24.4, 0, 1)'; 		     # fig 9 left
root -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV", "rootFiles/plotrootfile_Top_mt_1j.root", "Top_mt_1j", 0, 125, 24.4, 0, 1)'; 		     # fig 9 right
root -q HWWPlots/finalPlot.C+'(6,1,"m_{\\ell\\ell}","GeV","rootFiles/mll-VBF-2011.root","Mll_prefit_zoom_7TeV",0,125,4.9,0,1)'; 				     # fig 10 left
root -q HWWPlots/finalPlot.C+'(6,1,"m_{\\ell\\ell}","GeV","rootFiles/mll-VBF-2012.root","Mll_prefit_zoom_8TeV",0,125,19.5,0,1)';				     # fig 10 right
root -q HWWPlots/finalPlot.C+'(7,1,"m_{\\ell\\ell}","GeV","rootFiles/mll-VH-2012.root","histo_mll_aftershapecuts_osof_8tev",0,125,19.5,0,1)';						 # fig 12
root -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_of_0j.root",    "topcontrol_mT_of_0j",   0,125,19.5,0,1)'; # fig 30 right
root -q HWWPlots/finalPlot.C+'(9,1,"m_{\\ell\\ell}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_of_0j.root",   "topcontrol_mll_of_0j",  0,125,19.5,0,1)'; # fig 30 left
root -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_of_1j.root",    "topcontrol_mT_of_1j",   0,125,19.5,0,1)'; # fig 31 right
root -q HWWPlots/finalPlot.C+'(9,1,"m_{\\ell\\ell}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_of_1j.root",   "topcontrol_mll_of_1j",  0,125,19.5,0,1)'; # fig 31 left
root -q HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_incl_2j.root",  "topcontrol_mT_incl_2j", 0,125,19.5,0,1)'; # fig 32 right
root -q HWWPlots/finalPlot.C+'(9,1,"m_{\\ell\\ell}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_incl_2j.root", "topcontrol_mll_incl_2j",0,125,19.5,0,1)'; # fig 32 left

root -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_ossf_7tev_new.root","histo_drmin_afterallothercuts_ossf_7tev",1,125,4.91,0,1)'; # fig 14
root -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_sssf_7tev_new.root","histo_drmin_afterallothercuts_sssf_7tev",1,125,4.92,0,1)'; # fig 14
root -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_ossf_8tev_new.root","histo_drmin_afterallothercuts_ossf_8tev",1,125,19.51,0,1)'; # fig 14
root -q HWWPlots/finalPlot.C+'(2,8,"#Delta R_{\\ell^{+}\\ell^{-}}","","rootFiles/histo_drmin_afterallothercuts_sssf_8tev_new.root","histo_drmin_afterallothercuts_sssf_8tev",1,125,19.52,0,1)'; # fig 14

root -q HWWPlots/finalPlot.C+'(8,1,"Reconstructed mass","GeV","rootFiles/ZH_histos_7TeV.root","histo_mh_7tev",0,125,4.9,0,10)'; # fig 16
root -q HWWPlots/finalPlot.C+'(8,1,"Reconstructed mass","GeV","rootFiles/ZH_histos_8TeV.root","histo_mh_8tev",0,125,19.5,0,10)'; # fig 16

if [ $1 == 1 ]; then

  export MAINDIR=/home/ceballos/tex/PAS/papers/HIG-13-023/trunk/figures;

  mv plots/wwpresel_0j_mh125_massll.pdf                  $MAINDIR/wwlevel/wwpresel_0j_mh125_massll.pdf;
  mv plots/wwpresel_1j_mh125_massll.pdf                  $MAINDIR/wwlevel/wwpresel_1j_mh125_massll.pdf;
  mv plots/detajj.pdf                                    $MAINDIR/wwlevel/detajj.pdf;
  mv plots/mjj.pdf                                       $MAINDIR/wwlevel/mjj.pdf;
  mv plots/st_mT.pdf                                     $MAINDIR/hww01j/st_mT.pdf;
  mv plots/st_mll.pdf                                    $MAINDIR/hww01j/st_mll.pdf;
  mv plots/mT_CR1.pdf                                    $MAINDIR/hww01j/mT_CR1.pdf;
  mv plots/mll_CR1.pdf                                   $MAINDIR/mll_CR1.pdf;
  mv plots/mT_CR2.pdf                                    $MAINDIR/mT_CR2.pdf;
  mv plots/mll_CR2.pdf                                   $MAINDIR/mll_CR2.pdf;
  mv plots/SS_mll_0j.pdf		                 $MAINDIR/control/SS_mll_0j.pdf;
  mv plots/Top_mt_1j.pdf		                 $MAINDIR/control/Top_mt_1j.pdf;
  mv plots/Mll_prefit_zoom_7TeV.pdf	                 $MAINDIR/vbf/Mll_prefit_zoom_7TeV.pdf;
  mv plots/Mll_prefit_zoom_8TeV.pdf	                 $MAINDIR/vbf/Mll_prefit_zoom_8TeV.pdf;
  mv plots/histo_mll_aftershapecuts_osof_8tev.pdf        $MAINDIR/vhwwqq2l2n/histo_mll_aftershapecuts_osof_8tev.pdf;
  mv plots/histo_drmin_afterallothercuts_ossf_7tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_ossf_7tev.pdf;
  mv plots/histo_drmin_afterallothercuts_sssf_7tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_sssf_7tev.pdf;
  mv plots/histo_drmin_afterallothercuts_ossf_8tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_ossf_8tev.pdf;
  mv plots/histo_drmin_afterallothercuts_sssf_8tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_sssf_8tev.pdf;
  mv plots/histo_mh_7tev.pdf	                         $MAINDIR/zh3lnqq/histo_mh_7tev.pdf;
  mv plots/histo_mh_8tev.pdf	                         $MAINDIR/zh3lnqq/histo_mh_8tev.pdf;
  mv plots/topcontrol_mll_of_0j.pdf                      $MAINDIR/control/topcontrol_mll_of_0j.pdf;
  mv plots/topcontrol_mT_of_0j.pdf                       $MAINDIR/control/topcontrol_mT_of_0j.pdf;
  mv plots/topcontrol_mll_of_1j.pdf                      $MAINDIR/control/topcontrol_mll_of_1j.pdf;
  mv plots/topcontrol_mT_of_1j.pdf                       $MAINDIR/control/topcontrol_mT_of_1j.pdf;
  mv plots/topcontrol_mll_incl_2j.pdf                    $MAINDIR/control/topcontrol_mll_incl_2j.pdf;
  mv plots/topcontrol_mT_incl_2j.pdf                     $MAINDIR/control/topcontrol_mT_incl_2j.pdf;

fi

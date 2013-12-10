#!/bin/sh

root -q -b HWWPlots/finalPlot.C+'(0,1,"m_{#font[12]{l}#font[12]{l}}","GeV","rootFiles/hww_mll_0j.root","wwpresel_0j_mh125_massll",0,125,24.4,0,1,3)';                                            # fig 1 left
root -q -b HWWPlots/finalPlot.C+'(0,1,"m_{#font[12]{l}#font[12]{l}}","GeV","rootFiles/hww_mll_1j.root","wwpresel_1j_mh125_massll",0,125,24.4,0,1,4)';                                            # fig 1 right
root -q -b HWWPlots/finalPlot.C+'(5,1,"|#Delta#eta_{jj}|","","rootFiles/detajj-WW-2j.root","detajj",0,125,19.4,0,100,5)';                             # fig 2 left
root -q -b HWWPlots/finalPlot.C+'(5,1,"m_{jj}","GeV","rootFiles/mjj-WW-2j.root","mjj",0,125,19.4,0,100,5)';                                              # fig 2 right
root -q -b HWWPlots/finalPlot.C+'(10,1,"m_{T}",  "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mT_1dweight.root",  "st_mT_1dweight", 0,125, 24.4,0,1,6)';            # fig 7 left
root -q -b HWWPlots/finalPlot.C+'(10,1,"m_{#font[12]{l}#font[12]{l}}", "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mll_1dweight.root", "st_mll_1dweight",0,125, 24.4,0,1,6)';            # fig 8 left
root -q -b HWWPlots/finalPlot.C+'(10,1,"m_{T}",  "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mT.root",  "st_mT", 0,125, 24.4,0,1,6)';            # fig 7 left (old)
root -q -b HWWPlots/finalPlot.C+'(10,1,"m_{#font[12]{l}#font[12]{l}}", "GeV", "rootFiles/plotrootfile_stackdataminusbkg_mll.root", "st_mll",0,125, 24.4,0,1,6)';            # fig 8 left (old)
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{#font[12]{l}#font[12]{l}}", "GeV","rootFiles/plotrootfile_CR1_mll_0j.root", "mll_CR1", 0,125,19.4,0,1,13)';                            # fig 10 top right
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{#font[12]{l}#font[12]{l}}", "GeV","rootFiles/plotrootfile_CR2_mll_0j.root", "mll_CR2", 0,125,19.4,0,1,14)';                            # fig 10 bottom right
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV","rootFiles/plotrootfile_CR1_mT_0j.root",  "mT_CR1",  0,125,19.4,0,1,13)';                            # fig 10 top left
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV","rootFiles/plotrootfile_CR2_mT_0j.root",  "mT_CR2",  0,125,19.4,0,1,14)';                            # fig 10 bottom left
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{#font[12]{l}#font[12]{l}}", "GeV", "rootFiles/plotrootfile_SS_mll_0j.root", "SS_mll_0j",0,125, 24.4,0,1,15)';                      # fig 11 left
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{T}",  "GeV", "rootFiles/plotrootfile_Top_mt_1j.root", "Top_mt_1j",0,125, 24.4,0,1,16)';                      # fig 11 right
root -q -b HWWPlots/finalPlot.C+'(6,1,"m_{#font[12]{l}#font[12]{l}}","GeV","rootFiles/mll-VBF-2011.root","Mll_prefit_zoom_7TeV",0,125,4.9,0,1,7)';                                      # fig 12 left
root -q -b HWWPlots/finalPlot.C+'(6,1,"m_{#font[12]{l}#font[12]{l}}","GeV","rootFiles/mll-VBF-2012.root","Mll_prefit_zoom_8TeV",0,125,19.4,0,1,7)';                                     # fig 12 right
root -q -b HWWPlots/finalPlot.C+'(7,1,"m_{#font[12]{l}#font[12]{l}}","GeV","rootFiles/mll-VH-2012.root","histo_mll_aftershapecuts_osof_8tev",0,125,19.4,0,1,8)';                                            # fig 14
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_of_0j.root",    "topcontrol_mT_of_0j",   0,125,19.4,0,1,9)'; # fig 33 right
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{#font[12]{l}#font[12]{l}}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_of_0j.root",   "topcontrol_mll_of_0j",  0,125,19.4,0,1,9)'; # fig 33 left
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_of_1j.root",    "topcontrol_mT_of_1j",   0,125,19.4,0,1,10)'; # fig 34 right
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{#font[12]{l}#font[12]{l}}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_of_1j.root",   "topcontrol_mll_of_1j",  0,125,19.4,0,1,10)'; # fig 34 left
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{T}",   "GeV","rootFiles/plotrootfile_topcontrol_mT_incl_2j.root",  "topcontrol_mT_incl_2j", 0,125,19.4,0,1,17)'; # fig 35 right
root -q -b HWWPlots/finalPlot.C+'(9,1,"m_{#font[12]{l}#font[12]{l}}",  "GeV","rootFiles/plotrootfile_topcontrol_mll_incl_2j.root", "topcontrol_mll_incl_2j",0,125,19.4,0,1,17)'; # fig 35 left

root -q -b HWWPlots/finalPlot.C+'(3,1,"m_{#font[12]{l}#font[12]{l}}",  "GeV","rootFiles/histo_wg3l_mll_all_new.root", "wg3l_mll",0,999,24.4,0,1,11)'; # fig 30

root -q -b HWWPlots/finalPlot.C+'(2,8,"\\Delta R_{#font[12]{l}^{+}#font[12]{l}^{-}}","","rootFiles/histo_drmin_afterallothercuts_ossf_7tev_new.root","histo_drmin_afterallothercuts_ossf_7tev",1,125,4.9,0,1,1)'; # fig 16
root -q -b HWWPlots/finalPlot.C+'(2,8,"\\Delta R_{#font[12]{l}^{+}#font[12]{l}^{-}}","","rootFiles/histo_drmin_afterallothercuts_sssf_7tev_new.root","histo_drmin_afterallothercuts_sssf_7tev",1,125,4.9,0,1,2)'; # fig 16
root -q -b HWWPlots/finalPlot.C+'(2,8,"\\Delta R_{#font[12]{l}^{+}#font[12]{l}^{-}}","","rootFiles/histo_drmin_afterallothercuts_ossf_8tev_new.root","histo_drmin_afterallothercuts_ossf_8tev",1,125,19.4,0,1,1)'; # fig 16
root -q -b HWWPlots/finalPlot.C+'(2,8,"\\Delta R_{#font[12]{l}^{+}#font[12]{l}^{-}}","","rootFiles/histo_drmin_afterallothercuts_sssf_8tev_new.root","histo_drmin_afterallothercuts_sssf_8tev",1,125,19.4,0,1,2)'; # fig 16

root -q -b HWWPlots/finalPlot.C+'(8,1,"m_{T}^{#font[12]{l}#nu2j}","GeV","rootFiles/ZH_histos_7TeV.root","histo_mh_7tev",0,125,4.9,0,10,12)'; # fig 18
root -q -b HWWPlots/finalPlot.C+'(8,1,"m_{T}^{#font[12]{l}#nu2j}","GeV","rootFiles/ZH_histos_8TeV.root","histo_mh_8tev",0,125,19.4,0,10,12)'; # fig 18

if [ $1 == 1 ]; then

  export MAINDIR=/home/ceballos/tex/PAS/papers/HIG-13-023/trunk/figures;

  scp plots/*                                            lxplus5:public/limits/plots_twiki/.;

  mv plots/wwpresel_0j_mh125_massll.pdf                  $MAINDIR/wwlevel/wwpresel_0j_mh125_massll.pdf;
  mv plots/wwpresel_1j_mh125_massll.pdf                  $MAINDIR/wwlevel/wwpresel_1j_mh125_massll.pdf;
  mv plots/detajj.pdf                                    $MAINDIR/wwlevel/detajj.pdf;
  mv plots/mjj.pdf                                       $MAINDIR/wwlevel/mjj.pdf;
  mv plots/st_mT_1dweight.pdf                            $MAINDIR/hww01j/st_mT_1dweight.pdf;
  mv plots/st_mll_1dweight.pdf                           $MAINDIR/hww01j/st_mll_1dweight.pdf;
  mv plots/st_mT.pdf                                     $MAINDIR/hww01j/st_mT.pdf;
  mv plots/st_mll.pdf                                    $MAINDIR/hww01j/st_mll.pdf;
  mv plots/mT_CR1.pdf                                    $MAINDIR/hww01j/mT_CR1.pdf;
  mv plots/mll_CR1.pdf                                   $MAINDIR/hww01j/mll_CR1.pdf;
  mv plots/mT_CR2.pdf                                    $MAINDIR/hww01j/mT_CR2.pdf;
  mv plots/mll_CR2.pdf                                   $MAINDIR/hww01j/mll_CR2.pdf;
  mv plots/SS_mll_0j.pdf                                 $MAINDIR/control/SS_mll_0j.pdf;
  mv plots/Top_mt_1j.pdf                                 $MAINDIR/control/Top_mt_1j.pdf;
  mv plots/Mll_prefit_zoom_7TeV.pdf                      $MAINDIR/vbf/Mll_prefit_zoom_7TeV.pdf;
  mv plots/Mll_prefit_zoom_8TeV.pdf                      $MAINDIR/vbf/Mll_prefit_zoom_8TeV.pdf;
  mv plots/histo_mll_aftershapecuts_osof_8tev.pdf        $MAINDIR/vhwwqq2l2n/histo_mll_aftershapecuts_osof_8tev.pdf;
  mv plots/histo_drmin_afterallothercuts_ossf_7tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_ossf_7tev.pdf;
  mv plots/histo_drmin_afterallothercuts_sssf_7tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_sssf_7tev.pdf;
  mv plots/histo_drmin_afterallothercuts_ossf_8tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_ossf_8tev.pdf;
  mv plots/histo_drmin_afterallothercuts_sssf_8tev.pdf   $MAINDIR/wh3l/histo_drmin_afterallothercuts_sssf_8tev.pdf;
  mv plots/histo_mh_7tev.pdf                             $MAINDIR/zh3lnqq/histo_mh_7tev.pdf;
  mv plots/histo_mh_8tev.pdf                             $MAINDIR/zh3lnqq/histo_mh_8tev.pdf;
  mv plots/topcontrol_mll_of_0j.pdf                      $MAINDIR/control/topcontrol_mll_of_0j.pdf;
  mv plots/topcontrol_mT_of_0j.pdf                       $MAINDIR/control/topcontrol_mT_of_0j.pdf;
  mv plots/topcontrol_mll_of_1j.pdf                      $MAINDIR/control/topcontrol_mll_of_1j.pdf;
  mv plots/topcontrol_mT_of_1j.pdf                       $MAINDIR/control/topcontrol_mT_of_1j.pdf;
  mv plots/topcontrol_mll_incl_2j.pdf                    $MAINDIR/control/topcontrol_mll_incl_2j.pdf;
  mv plots/topcontrol_mT_incl_2j.pdf                     $MAINDIR/control/topcontrol_mT_incl_2j.pdf;
  mv plots/wg3l_mll.pdf                                  $MAINDIR/control/wg3l_mll.pdf;

  rm -f plots/*;
fi

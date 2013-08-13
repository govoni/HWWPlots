Tool to make the plots for the CMS HWW legacy paper
---------------------------------------------------

The input root file is expected to contain backgrounds with the following names:

- WW      : WW bkg
- DYjets  : DY + jets bkg
- top     : top and ttbar bkg
- VV      : VV excluding WW
- VVV     : VV (excluding WW) and VVV (read for VH H > lvjj only)
- Wjets   : W + jets and Vgamma(*)
- CMSdata : data
- ggH     : gluon fusion singal
- qqH     : vbf signal (if missing is not used)
- VH      : VH signal (if missing is not used)

The available analysis categories for the plotting are the following:

- nsel == 0 : HWW main analysis
- nsel == 1 :
- nsel == 2 : VH 3 leptons analysis
- nsel == 3 :
- nsel == 4 :
- nsel == 5 : VBF
- nsel == 6 :
- nsel == 7 : VH V > jj
- nsel == 8 : ZH H > lvjj

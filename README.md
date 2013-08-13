Tool to make the plots for the CMS HWW legacy paper
---------------------------------------------------

Usage example:

```
.x finalPlot.C+(0,5,"E_{T}^{miss}","GeV","histo.root","histo_zhpresel_met",1,125,24.4)
```

with the following arguments:

- nsel : what type of plots
- ReBin : rebinning
- XTitle[300] : x axis title
- units[300] : x axis units
- plotName[300] : name of the plot
- outputName[300] : name of the output file
- isLogY : log y option
- MassH : higgs mass
- lumi : integrated lumi


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
- nsel == 5 : VBF @ WW level (signal X 30)
- nsel == 6 : VBF @ Higgs level
- nsel == 7 : VH V > jj
- nsel == 8 : ZH H > lvjj
- nsel == 9 :

# 
# WW fit validation plots  
# 
root -b -q finalPlot.C+'(9,1,"M_{ll}", "GeV","inputrootfiles/plotrootfile_CR1_mll_0j.root", "mll_CR1", 0,125,19.5,1,1)';
root -b -q finalPlot.C+'(9,1,"M_{ll}", "GeV","inputrootfiles/plotrootfile_CR2_mll_0j.root", "mll_CR2", 0,125,19.5,1,1)';
root -b -q finalPlot.C+'(9,1,"M_{T}",  "GeV","inputrootfiles/plotrootfile_CR1_mT_0j.root",  "mT_CR1",  0,125,19.5,1,1)';
root -b -q finalPlot.C+'(9,1,"M_{T}",  "GeV","inputrootfiles/plotrootfile_CR2_mT_0j.root",  "mT_CR2",  0,125,19.5,1,1)';
# 
# 

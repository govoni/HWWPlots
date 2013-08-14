#include<vector>

//#if !defined (__CINT__) || defined (__MAKECINT__)
#include "THStack.h"
#include "TGaxis.h"
#include "TH1F.h"
#include "TLatex.h"
#include "TPad.h"
#include "TCanvas.h"
#include "TAxis.h"
#include "TLegend.h"
#include "TFrame.h"
#include "TExec.h"
#include <iostream>
#include "TPaveText.h"
//#endif

//const Bool_t isHWWOverlaid = false;
//enum samp { iHWW, iWW, iZJets, iTop, iVV, iWJets, iWZ, iZZ, iFakes, iZGamma, nSamples };

const Bool_t isHWWOverlaid = false;
//PG NB nSamples is the actual size of the enum
enum samp { iWW, iZJets, iTop, iVV, iWJets, iWZ, iZZ, iFakes, iZGamma, iVVV, iEM, iHWW, iggH, iVBF, iVH, iWgamma, iWgammaS, nSamples };

float xPos[nSamples+1] = {0.19,0.19,0.19,0.41,0.41,0.41,0.41,0.41,0.41,0.41,0.41,0.41}; 
float yOff[nSamples+1] = {0   ,1   ,2   ,0   ,1   ,2   ,3   ,4   ,1   ,0   ,1   ,2   ,3};

const Float_t _tsize   = 0.033;
const Float_t _xoffset = 0.20;
const Float_t _yoffset = 0.05;


//------------------------------------------------------------------------------
// GetMaximumIncludingErrors
//------------------------------------------------------------------------------
Float_t GetMaximumIncludingErrors (TH1F* h)
{
    Float_t maxWithErrors = 0;

    for (Int_t i=1; i<=h->GetNbinsX (); i++) {

        Float_t binHeight = h->GetBinContent (i) + h->GetBinError (i);

        if (binHeight > maxWithErrors) maxWithErrors = binHeight;
    }

    return maxWithErrors;
}


//------------------------------------------------------------------------------
// AxisFonts
//------------------------------------------------------------------------------
void AxisFonts (TAxis*  axis,
        TString coordinate,
        TString title)
{
    axis->SetLabelFont (   42);
    axis->SetLabelOffset (0.015);
    axis->SetLabelSize (0.050);
    axis->SetNdivisions (  505);
    axis->SetTitleFont (   42);
    axis->SetTitleOffset (  1.5);
    axis->SetTitleSize (0.050);

    if (coordinate == "y") axis->SetTitleOffset (1.6);

    axis->SetTitle (title);
}


//------------------------------------------------------------------------------
// THStackAxisFonts
//------------------------------------------------------------------------------
void THStackAxisFonts (THStack* h,
        TString  coordinate,
        TString  title)
{
    TAxis* axis = NULL;

    if (coordinate.Contains ("x")) axis = h->GetHistogram ()->GetXaxis ();
    if (coordinate.Contains ("y")) axis = h->GetHistogram ()->GetYaxis ();

    AxisFonts (axis, coordinate, title);
}


//------------------------------------------------------------------------------
// DrawLegend
//------------------------------------------------------------------------------
void DrawLegend (Float_t x1,
        Float_t y1,
        TH1F*   hist,
        TString label,
        TString option)
{
    TLegend* legend = new TLegend (x1,
            y1,
            x1 + _xoffset,
            y1 + _yoffset);

    legend->SetBorderSize (0) ;
    legend->SetFillColor (0) ;
    legend->SetTextAlign (12) ;
    legend->SetTextFont (42) ;
    legend->SetTextSize (_tsize) ;

    legend->AddEntry (hist, label.Data (), option.Data ());

    legend->Draw ();
}


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


class StandardPlot {

    public: 
        StandardPlot () 
          { 
            _hist.resize (nSamples, 0); 
            _bkgHist.resize (nSamples, 0); 
            _sigHist.resize (nSamples, 0); 
            _data = 0; 
            _breakdown = false; 
            _mass = 0; 
            _signalZoom = 1; 
          }


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


        void setMCHist  (const samp & s, TH1F * h)   
          { 
            _hist[s] = h ; 
            cout << "READING SAMPLE " << s << endl ; 
            if (s != iHWW && s != iggH && s != iVBF && s != iVH)
              {
                cout << "DEBUG reading background\n" ;
                _bkgHist[s] = h ;
              }
            else  
              {
                cout << "DEBUG reading singal\n" ;
                _sigHist[s] = h ;
              }
          } 


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


void SetColorsAndLabels ()
  {
    _sampleColor = new Color_t [nSamples] ;
    _sampleColor[iHWW    ] = kRed + 1 ;
    _sampleColor[iWW     ] = kAzure - 9 ;
    _sampleColor[iEM     ] = kYellow ;
    _sampleColor[iZJets  ] = kGreen + 2 ;
    _sampleColor[iTop    ] = kYellow ;
    _sampleColor[iVV     ] = kAzure - 2 ;
    _sampleColor[iWJets  ] = kGray + 1 ;
    _sampleColor[iWZ     ] = kAzure-2 ;
    _sampleColor[iZZ     ] = kAzure-9 ;
    _sampleColor[iVVV    ] = kGray + 1 ;
    _sampleColor[iFakes  ] = kGray + 1 ;
    _sampleColor[iZGamma ] = kViolet - 9 ;
    _sampleColor[iggH    ] = kRed + 1 ;
    _sampleColor[iVBF    ] = kBlue + 1 ;
    _sampleColor[iVH     ] = 635 ; // kRed + 3?
    _sampleColor[iWgamma ] = 616+1; // kViolet + 1 ;
    _sampleColor[iWgammaS] = 616+1; // kViolet + 1  ;
  
    _sampleLabel = new TString [nSamples] ;
    TString higgsLabel ;
    if (_signalZoom > 1) 
      {
        higgsLabel.Form ("%d x HWW",_signalZoom);
        _sampleLabel[iHWW    ] = higgsLabel ;
        higgsLabel.Form ("%d x qqH",_signalZoom);
        _sampleLabel[iVBF    ] = higgsLabel ;
        higgsLabel.Form ("%d x ggH",_signalZoom);
        _sampleLabel[iggH    ] = higgsLabel ;
        higgsLabel.Form ("%d x VH",_signalZoom);
        _sampleLabel[iVH     ] = higgsLabel ;
      }
    else                 
      {
        higgsLabel.Form ("HWW");
        _sampleLabel[iHWW  ] = higgsLabel ;
        higgsLabel.Form ("qqH");
        _sampleLabel[iVBF  ] = higgsLabel ;
        higgsLabel.Form ("ggH");
        _sampleLabel[iggH  ] = higgsLabel ;
        higgsLabel.Form ("VH");
        _sampleLabel[iVH   ] = higgsLabel ;
      }

    _sampleLabel[iWW    ] = " WW"            ;
    _sampleLabel[iZJets ] = " DY+jets"       ;
    _sampleLabel[iTop   ] = " top"           ;
    _sampleLabel[iVV    ] = " WZ/ZZ/VVV"     ;
    _sampleLabel[iWJets ] = " W+jets"        ;
    _sampleLabel[iWZ    ] = " WZ"            ;
    _sampleLabel[iZZ    ] = " ZZ"            ;
    _sampleLabel[iVVV   ] = " VVV"           ;
    _sampleLabel[iEM    ] = " WW/top/W+jets" ;
    _sampleLabel[iZGamma] = " Z+#gamma"      ;
    _sampleLabel[iFakes ] = " fakes"         ;

    return ;
  
  }


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


  void setDataHist (TH1F * h)                 { _data          = h;  } 
  void setHWWHist  (TH1F * h)                 { setMCHist (iHWW  ,h); } 
  void setWWHist   (TH1F * h)                 { setMCHist (iWW   ,h); } 
  void setZJetsHist (TH1F * h)                 { setMCHist (iZJets,h); } 
  void setTopHist  (TH1F * h)                 { setMCHist (iTop  ,h); } 
  void setVVHist   (TH1F * h)                 { setMCHist (iVV   ,h); } 
  void setWZHist   (TH1F * h)                 { setMCHist (iWZ   ,h); } 
  void setZZHist   (TH1F * h)                 { setMCHist (iZZ   ,h); } 
  void setFakesHist (TH1F * h)                 { setMCHist (iFakes,h); } 
  void setWJetsHist (TH1F * h)                 { setMCHist (iWJets,h); }
  void setZGammaHist (TH1F * h)                 { setMCHist (iZGamma,h);}
  void setVVVHist  (TH1F * h)                 { setMCHist (iVVV  ,h); } 
  void setEMHist   (TH1F * h)                 { setMCHist (iEM   ,h); } 


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


  TH1F* getDataHist () { return _data; }


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


  void setMass (const int &m)         
    { 
      _mass = m ; 
      TString dummy = "m#lower[0.3]{_{H}} = " ;
      dummy += _mass ;
      dummy += " GeV";
      _extraLabels.push_back (dummy) ;
    }


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


  void setSignalZoom (const int zoom) { _signalZoom = zoom ; }


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


  TH1* DrawAndRebinTo (const int &rebinTo) 
    {
      if (rebinTo == 0) return Draw ();
      int rebin = 0, nbins = 0;
      for (int i=0; i<nSamples; i++) {
  
          // in case the user doesn't set it
          if ( !_hist[i] ) continue;
  
          nbins = _hist[i]->GetNbinsX ();
      }
      if (nbins == 0) return Draw ();
  
      rebin = nbins / rebinTo;
      while (nbins % rebin != 0) rebin--;
      return Draw (rebin);
   }


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


  TH1* Draw (const int &rebin=1) 
    {
      //setUpStyle ();
      //if (!gPad) new TCanvas ();
    
      //PG prepare the THStack
      //PG ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----

       
      THStack* hstack = new THStack ();
      TH1D* hSum = (TH1D*)_data->Clone ();
      hSum->Rebin (rebin);
      hSum->Scale (0.0);

      //PG fill the THStack
      for (int i = 0 ; i < nSamples ; i++) 
        {
          if (_bkgHist[i] == 0) 
            {
              if (!isHWWOverlaid ) continue ;
              else if (_sigHist[i] == 0) continue ;
            }  

          if (_hist[i] == 0)
            {
              cerr << "error: something is messed up in reading samples, exiting" << endl ;
              exit (1) ;
            }
    
          bool modifyXAxis = false;
          if (modifyXAxis == true)
            {
              TAxis *xa =_hist[i]->GetXaxis ();
              for (Int_t k=1;k<=_hist[i]->GetNbinsX ();++k)
                {
                  xa->SetBinLabel (1 ,"2#mu+#mu");
                  xa->SetBinLabel (2 ,"2#mu+e");
                  xa->SetBinLabel (3 ,"2e+#mu");
                  xa->SetBinLabel (4 ,"2e+e");
                  xa->SetRangeUser (1,4);
                }
            }
            
          _hist[i]->Rebin (rebin);
          _hist[i]->SetLineColor (_sampleColor[i]);
    
          _hist[i]->SetFillColor (_sampleColor[i]);
          _hist[i]->SetFillStyle (1001);
    
          hstack->Add (_hist[i]);
          hSum->Add (_hist[i]);
        } //PG fill the THStack
    
      //PG setup signal samples
      for (int i=0; i<nSamples; i++) 
        {
          if (_sigHist[i] == 0 ) continue ;
          _hist[i]->SetLineWidth (3) ;
          _hist[i]->SetLineColor (_sampleColor[i]) ;
          _hist[i]->SetFillStyle (0) ;          
          if (i == iVBF) _hist[i]->SetLineStyle (2) ;
        } //PG setup signal samples
    
      if (_data) _data->Rebin (rebin);
      if (_data) _data->SetLineColor (kBlack);
      if (_data) _data->SetMarkerStyle (kFullCircle);

      hstack->Draw ("hist");
    
      bool plotSystErrorBars = true;
      if (plotSystErrorBars == true)
        {
          TGraphAsymmErrors * gsyst = new TGraphAsymmErrors (hSum);
          for (int i = 0; i < gsyst->GetN (); ++i) 
            {
              gsyst->SetPointEYlow (i, sqrt (hSum->GetBinError (i+1)*hSum->GetBinError (i+1)+hSum->GetBinContent (i+1)*hSum->GetBinContent (i+1)*0.10*0.10));
              gsyst->SetPointEYhigh (i, sqrt (hSum->GetBinError (i+1)*hSum->GetBinError (i+1)+hSum->GetBinContent (i+1)*hSum->GetBinContent (i+1)*0.10*0.10));
            }
          gsyst->SetFillColor (12);
          gsyst->SetFillStyle (3345);
          gsyst->SetMarkerSize (0);
          gsyst->SetLineWidth (0);
          gsyst->SetLineColor (kWhite);
          gsyst->Draw ("E2same");
          //TExec *setex1 = new TExec ("setex1","gStyle->SetErrorX (0)");
          //setex1->Draw ();
        }
    
      if (_hist[iHWW] && isHWWOverlaid == false) _hist[iHWW]->Draw ("hist,same");
    
      //PG draw signal samples
      for (int i = 0 ; i < nSamples; i++) 
        {
          if (_sigHist[i]) _hist[i]->Rebin(rebin);
          if (_sigHist[i]) _hist[i]->Draw ("hist,same") ;
        } //PG draw signal samples

      if (_data) 
        {
          bool plotCorrectErrorBars = true;
          if (plotCorrectErrorBars == true) 
            {
              TGraphAsymmErrors * g = new TGraphAsymmErrors (_data);
              for (int i = 0; i < g->GetN (); ++i) 
                {
                  double N = g->GetY ()[i];
                  double alpha= (1-0.6827);
                  double L = (N==0) ? 0  : (ROOT::Math::gamma_quantile (alpha/2,N,1.));
                  double U = (N==0) ? ( ROOT::Math::gamma_quantile_c (alpha,N+1,1.) ) :
                                       ( ROOT::Math::gamma_quantile_c (alpha/2,N+1,1.) );
                  g->SetPointEYlow (i,double (N)-L);
                  if (N > 0) g->SetPointEYhigh (i, U-double (N));
                  else      g->SetPointEYhigh (i, 0.0);
                }
              g->Draw ("P");
            }
          else {
              _data->Draw ("ep,same");
            }
        }
          
      hstack->SetTitle ("");

      Float_t theMax = hstack->GetMaximum ();
      Float_t theMin = hstack->GetMinimum ();

      if (_hist[iHWW]) {
          if (_hist[iHWW]->GetMaximum () > theMax) theMax = _hist[iHWW]->GetMaximum ();
          if (_hist[iHWW]->GetMinimum () < theMin) theMin = _hist[iHWW]->GetMinimum ();
      }

      if (_data) {
          Float_t dataMax = GetMaximumIncludingErrors (_data);
          if (dataMax > theMax) theMax = dataMax;
      }

      if (gPad->GetLogy ()) {
          hstack->SetMaximum (18 * theMax);
          hstack->SetMinimum (0.10);
      } else {
        hstack->SetMaximum (1.55 * theMax);
      }

      if (_breakdown) {
          THStackAxisFonts (hstack, "y", "entries");
          hstack->GetHistogram ()->LabelsOption ("v");
      } else {
          THStackAxisFonts (hstack, "x", TString::Format ("%s [%s]",_xLabel.Data (),_units.Data ()));
          if (_units.Sizeof () == 1) {
              THStackAxisFonts (hstack, "x", _xLabel.Data ());
              THStackAxisFonts (hstack, "y", "entries");
          } else {
              THStackAxisFonts (hstack, "x", TString::Format ("%s [%s]",_xLabel.Data (),_units.Data ()));
              if (_data->GetBinWidth (0) < 1) THStackAxisFonts (hstack, "y", TString::Format ("entries / %.1f %s", _data->GetBinWidth (0),_units.Data ()));
              else                            THStackAxisFonts (hstack, "y", TString::Format ("entries / %.0f %s", _data->GetBinWidth (0),_units.Data ()));
          }
      }

      //PG plotting the legend
      //PG ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
      
      size_t j=0;

      //PG data
      if (_data         ) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _data,          " data",    "lp"); j++; }

      //PG signals
      TString signalLegendRepr = "f" ;
      if (!isHWWOverlaid) signalLegendRepr = "l" ;      
      if (_hist[iHWW      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iHWW      ], _sampleLabel [iHWW      ], signalLegendRepr); j++; }
      if (_hist[iggH      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iggH      ], _sampleLabel [iggH      ], signalLegendRepr); j++; }
      if (_hist[iVBF      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iVBF      ], _sampleLabel [iVBF      ], signalLegendRepr); j++; }
      if (_hist[iVH       ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iVH       ], _sampleLabel [iVH       ], signalLegendRepr); j++; }

      //PG backgrounds
      if (_hist[iWW      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iWW      ], _sampleLabel [iWW      ], "f" ); j++; }
      if (_hist[iZJets   ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iZJets   ], _sampleLabel [iZJets   ], "f" ); j++; }
      if (_hist[iTop     ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iTop     ], _sampleLabel [iTop     ], "f" ); j++; }
      if (_hist[iVV      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iVV      ], _sampleLabel [iVV      ], "f" ); j++; }
      if (_hist[iWJets   ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iWJets   ], _sampleLabel [iWJets   ], "f" ); j++; }
      if (_hist[iWZ      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iWZ      ], _sampleLabel [iWZ      ], "f" ); j++; }
      if (_hist[iZZ      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iZZ      ], _sampleLabel [iZZ      ], "f" ); j++; }
      if (_hist[iVVV     ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iVVV     ], _sampleLabel [iVVV     ], "f" ); j++; }
      if (_hist[iEM      ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iEM      ], _sampleLabel [iEM      ], "f" ); j++; }
      if (_hist[iZGamma  ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iZGamma  ], _sampleLabel [iZGamma  ], "f" ); j++; }
      if (_hist[iFakes   ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iFakes   ], _sampleLabel [iFakes   ], "f" ); j++; }
      if (_hist[iWgamma  ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iWgamma  ], _sampleLabel [iWgamma  ], "f" ); j++; }
      if (_hist[iWgammaS ]) { DrawLegend (xPos[j], 0.84 - yOff[j]*_yoffset, _hist[iWgammaS ], _sampleLabel [iWgammaS ], "f" ); j++; }

//      //PG the "CMS" flag
//      TPaveText *pt = new TPaveText (0.61,0.8337762,0.9408059,0.8862238,"blNDC");
//      pt->SetName ("title");
//      pt->SetBorderSize (0);
//      pt->SetFillColor (10);
//      pt->SetTextFont (42);
//      pt->SetTextSize (_tsize);
//      pt->AddText ("CMS");
//      pt->Draw ();
 
      double dist = 0.05 ;
      int distTimes = 0 ;
      double xstart = 0.9 ;
      double ystart = 0.85 ;
  
      //PG the CMS label
      TLatex* flag_cms = new TLatex (xstart, ystart - dist * distTimes++, TString ("#bf{CMS}"));
      flag_cms->SetNDC ();
      flag_cms->SetTextAlign (32);
      flag_cms->SetTextFont (42);
      flag_cms->SetTextSize (_tsize);
      flag_cms->Draw ("same");
      
      //PG the lumi label
      TLatex* flag_lumi = new TLatex (xstart, ystart - dist * distTimes++, TString::Format ("L = %.1f fb#lower[0.3]{^{-1}}", _lumi)) ;
      flag_lumi->SetNDC ();
      flag_lumi->SetTextAlign (32);
      flag_lumi->SetTextFont (42);
      flag_lumi->SetTextSize (_tsize);
      flag_lumi->Draw ("same");
      
      //PG the lumi label
      for (int i = 0 ; i < _extraLabels.size () ; ++i) 
        {
          TLatex* flag_extra = new TLatex (xstart, ystart - dist * distTimes++, _extraLabels.at (i)) ;
          flag_extra->SetNDC ();
          flag_extra->SetTextAlign (32);
          flag_extra->SetTextFont (42);
          flag_extra->SetTextSize (_tsize);
          flag_extra->Draw ("same");
        }

      return hstack->GetHistogram () ;
    }


// ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----


        void setLumi (const float &l) { _lumi = l; }
        void setLabel (const TString &s) { _xLabel = s; }
        void setUnits (const TString &s) { _units = s; }
        void setBreakdown (const bool &b = true) { _breakdown = b; }
        void addLabel (const std::string &s) {
            _extraLabel = new TLatex (0.9, 0.74, TString (s));
            _extraLabel->SetNDC ();
            _extraLabel->SetTextAlign (32);
            _extraLabel->SetTextFont (42);
            _extraLabel->SetTextSize (_tsize);
            _extraLabels.push_back (TString (s.c_str ())) ;
        }

    private: 
        std::vector<TH1F*> _hist;
        std::vector<TH1F*> _bkgHist ;
        std::vector<TH1F*> _sigHist ;
        std::vector<TString> _extraLabels ;
        TH1F* _data;

        //MWL
        float    _lumi;          //PG lumi on the plot
        TString  _xLabel;        //PG label of the x axis
        TString  _units;         //PG units of the x axis
        TLatex * _extraLabel;    //PG label with the centre of mass energy
        bool     _breakdown;     //PG 
        int      _mass;          //PG higgs mass
        int      _signalZoom;    // PG signal scale factor for plotting and legenda writing
        TString * _sampleLabel ; // PG list of labels for the samples
        Color_t * _sampleColor ; //PG list of colors for the samples


};



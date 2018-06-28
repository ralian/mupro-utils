(* ::Package:: *)

(* ::Input:: *)
(**)


avEnergy = Import[SystemDialogInput["FileOpen"]];
avEnergy = Transpose[Extract[avEnergy,{2;;Length[avEnergy]}]];
MatrixPlot[avEnergy]
columns = {{"Total Energy","Stray Field","Anisotropy","Exchange"},{2,4,5,7}};


(* ::Input:: *)
(**)


avEnergy2 = Import[SystemDialogInput["FileOpen"]];
avEnergy2 = Transpose[Extract[avEnergy2,{2;;Length[avEnergy2]}]];
MatrixPlot[avEnergy2]


ListLogPlot[{avEnergy[[2]],avEnergy2[[2]]},Joined->True,ImageSize->Scaled[.7],PlotLabel->"Total Energy",PlotLegends->{"Single","Bicrystal: 45 Degree"}, PlotTheme->"Detailed"]


ListLogPlot[{avEnergy[[4]],avEnergy2[[4]]},Joined->True,ImageSize->Scaled[0.7],PlotLabel->"Stray Field Energy",PlotLegends->{"Single","Bicrystal: 45 Degree"}, PlotTheme->"Detailed"]


ListLogPlot[{avEnergy[[5]],avEnergy2[[5]]},Joined->True,ImageSize->Scaled[0.7],PlotLabel->"Anisotropy Energy",PlotLegends->{"Single","Bicrystal: 45 Degree"}, PlotTheme->"Detailed"]


ListLogPlot[{avEnergy[[7]],avEnergy2[[7]]},Joined->True,ImageSize->Scaled[0.7],PlotLabel->"Exchange Energy",PlotLegends->{"Single","Bicrystal: 45 Degree"}, PlotTheme->"Detailed"]


dFdt = Join[avEnergy[[2]],{0}] - Join[{0},avEnergy[[2]]];
dFdt2 = Join[dFdt,{0}] - Join[{0},dFdt];
ListPlot[{dFdt,dFdt2},Joined->True,PlotLegends->{"\!\(\*SubscriptBox[\(\[PartialD]\), \(t\)]\)F","\!\(\*SubscriptBox[\(\[PartialD]\), \(t\)]\)F2"}, PlotTheme->"Detailed"]







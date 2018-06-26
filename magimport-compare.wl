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


ListLogPlot[avEnergy[[columns[[2]]]],Joined->True,PlotLegends->columns[[1]], PlotTheme->"Detailed"]


dFdt = Join[avEnergy[[2]],{0}] - Join[{0},avEnergy[[2]]];
dFdt2 = Join[dFdt,{0}] - Join[{0},dFdt];
ListPlot[{dFdt,dFdt2},Joined->True,PlotLegends->{"\!\(\*SubscriptBox[\(\[PartialD]\), \(t\)]\)F","\!\(\*SubscriptBox[\(\[PartialD]\), \(t\)]\)F2"}, PlotTheme->"Detailed"]







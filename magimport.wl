(* ::Package:: *)

(* ::Input:: *)
(*avEnergy =Import["avEnergy.dat"]*)
(*avEnergy = Transpose[Extract[avEnergy,{2;;Length[avEnergy]}]]*)
(*MatrixPlot[avEnergy]*)
(*columns = {{"Total Energy","Stray Field","Anisotropy","Exchange"},{2,4,5,7}}*)


(* ::Input:: *)
(*Export["avEnergy.png",ListLogPlot[avEnergy[[columns[[2]]]],Joined->True,PlotLegends->columns[[1]], PlotTheme->"Detailed"]]*)

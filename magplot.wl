(* ::Package:: *)

mijk = Import[SystemDialogInput["FileOpen"]];


mijkfield = Extract[mijk,{2;;Length[mijk]}];


ListVectorPlot3D[mijkfield,VectorScale->Small,VectorPoints->Fine,VectorColorFunction->(CMYKColor[#4,#5,#6,0]&)]


ParametricPlot3D[{Cos[the]Sin[phi],Sin[the]Sin[phi],Cos[phi]},{the,0,2*Pi},{phi,0,Pi},ColorFunction->(CMYKColor[#1,#2,#3,0]&),PlotPoints->70,Mesh->None]

(* ::Package:: *)

(* ::Input:: *)
(*eulerAng =Table[*)
(*{Mod[Quotient[param,60^2],60]+1,*)
(*Mod[Quotient[param,60],60]+1,*)
(*Mod[param,60]+1,*)
(*0,If[Mod[Quotient[param,60],60]+1 > 30, 15, -15],0},{param,0,60^3-1}];*)
(**)


(* ::Input:: *)
(*Export["eulerAng.dat",Join[{{60,60,60}},eulerAng], Alignment->Right, "FieldSeparators"-> "  "]*)


(* ::Input:: *)
(*RenameFile["eulerAng.dat","eulerAng.in"] *)


(* ::Input:: *)
(*SystemOpen[DirectoryName[AbsoluteFileName["eulerAng.txt"]]]*)

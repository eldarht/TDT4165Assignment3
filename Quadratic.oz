
proc {QuadraticEquation A B C ?RealSol ?X1 ?X2}

  if B*B - 4.0*A*C >= 0.0 then
    X1 = (~B + {Sqrt (B*B)-(4.0*A*C)})/(2.0*A)
    X2 = (~B - {Sqrt (B*B)-(4.0*A*C)})/(2.0*A)
    RealSol = true
  else
    RealSol = false 
    X1= nil 
    X2= nil 
  end
end


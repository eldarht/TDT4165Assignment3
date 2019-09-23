
/**
 * @brief      Task 1.a solution. Calculates the solution of ax^2+bx+c
 * 
 * @param[in]  A        The value multiplied by x^2
 * @param[in]  B        The value multiplied by x
 * @param[in]  C        The constant value
 * 
 * @param[out] RealSol  True if there exist a solution
 * @param[out] X1       The solution when using - in the equation
 * @param[out] X1       The solution when using + in the equation
 * 
 */
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

/**
 * @brief      Task 4 solution. Creates a function of the form f(x)= ax^2+bx+c
 *
 * @param[in]  A       The value multiplied by x^2
 * @param[in]  B       The value multiplied by x
 * @param[in]  C       The constant value
 *
 * @return     An anonymus function taking x as an argument.
 */
fun {Quadratic A B C}
  fun {$ X} A*X*X + B*X + C end 
end

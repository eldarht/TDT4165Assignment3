/**
 * @brief      Task 1.a solution. Counts the elements in the list.
 *
 * @param      List  The list
 *
 * @return     The number of elements in the list (excluding nil)
 */
fun {Length List}
  case List of _|T then
    1+{Length T}
  else
    0
  end
end


/**
 * @brief      Task 2 solution. Sums the elements in the list.
 *
 * @param      List  The list
 *
 * @return     The sum of all the elements in the list (excluding nil)
 */
fun {Sum List}
  case List of H|T then
    H+{Sum T}
  else
    0
  end
end

/**
 * @brief      Creates a single value from a list based on given function
 *
 * @param      List  The list
 * @param      Op    The operation
 * @param      U     The neutral unit
 *
 * @return     { description_of_the_return_value }
 */
fun {RightFold List Op U}           % Defines the function
  case List of H|T then             % Splits the list into first element and the rest
    {Op H {RightFold T Op U}}       % Calls the operation with the first element and the result of the operation on each following pair of values
  else                              % Whene there is no more elements
    U                               % Return the element that won't change the value when calling the operation on it and the preceeding value in the list.
  end                               % No other pattern that may match the list is relevant
end                                 % End of function. The function should start at the end of the list as {RightFold T Op U} needs to be evaluated before before the surrounding {Op} call 


/**
 * @brief      Creates a tuple with the number given as parameter as its first value and the second value being a function that returns the following number and its function for folllowing numbers.
 *
 * @param      StartValue  The start value
 *
 * @return     tupe with number and function returning the same as this function.
 */
fun {LazyNumberGenerator StartValue}
  tree(StartValue fun {$} {LazyNumberGenerator StartValue+1} end)
end
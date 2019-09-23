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
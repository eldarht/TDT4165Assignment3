functor 
import 
  Application 
  System 
define
  \insert Quadratic.oz
  \insert List.oz

  Solution1 X1A X2A 
  Solution2 X1B X2B in

  {QuadraticEquation 2.0 1.0 ~1.0 Solution1 X1A X2A}
  {QuadraticEquation 2.0 1.0 2.0 Solution2 X1B X2B}

  {System.showInfo "========================"}
  {System.showInfo "Task 1"}
  {System.showInfo "a)"}
  {System.showInfo "\tA = 2, B = 1 C = -1"}
  {System.showInfo "\tHas solution: "# if Solution1 then "true" else "false" end #"\n\t\tRoot1: "# X1A #"\n\t\tRoot2: "# X2A}
  {System.showInfo "\tA = 2s, B = 1 C = 2"}
  {System.showInfo "\tHas solution: "# if Solution2 then "true" else "false" end #"\n\t\tRoot1: "# X1B #"\n\t\tRoot2: "# X2B}
  {System.showInfo "========================"}
  {System.showInfo "Task 2"}
  {System.showInfo "\tThe sum of the elements in [1,2,3] is: "# {Sum [1 2 3]}}
  {System.showInfo "========================"}

  {Application.exit 0}
end

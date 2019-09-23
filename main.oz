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
  {System.showInfo "Task 3"}
  {System.showInfo "a)"}
  {System.printInfo "\tRightFold with multiplication on [1,2,3,4] with neutral element 1: "}
  {System.show {RightFold [1 2 3 4] fun {$ A B} A * B end 1}}
  {System.showInfo "c)"}
  {System.printInfo "\tcalculating Length on [1,2,3,4]: "}
  {System.show {RightFold [1 2 3 4] fun {$ A B} 1 + B end 0}}
  {System.printInfo "\tcalculating Sum on [1,2,3,4]:    "}
  {System.show {RightFold [1 2 3 4] fun {$ A B} A + B end 0}}
  {System.showInfo "========================"}
  {System.showInfo "Task 4"}
  {System.showInfo "\tThe quadratic function with a = 3, b = 2, c = 1 and x = 2: "# {{Quadratic 3 2 1}2}}
  {System.showInfo "========================"}  
  {System.showInfo "Task 5"}
  {System.showInfo "\tLazyNumberGenerator starting at 0:"}
  {System.showInfo "\t\t {LazyNumberGenerator 0}.1}:                    "# {LazyNumberGenerator 0}.1}
  {System.showInfo "\t\t {{LazyNumberGenerator 0}.2}.1}:                "# {{LazyNumberGenerator 0}.2}.1}
  {System.showInfo "\t\t {{{{{{LazyNumberGenerator 0}.2}.2}.2}.2}.2}.1: "# {{{{{{LazyNumberGenerator 0}.2}.2}.2}.2}.2}.1}
  {System.showInfo "========================"}
  {System.showInfo "Task 6"}
  {System.showInfo "\tTail recursive sum of the elements in [1,2,3] is:"# {SumTail [1 2 3] 0}}
  {System.showInfo "========================"}

  {Application.exit 0}
end

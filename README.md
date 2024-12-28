# Ada Constraint_Error Example

This repository demonstrates a common but easily overlooked error in Ada: the `Constraint_Error` exception.  Ada's strong typing system enforces range checks, meaning that if you try to assign a value outside the declared range of a subtype, an exception is raised.

The `bug.ada` file contains code that may raise a `Constraint_Error` when the variable `X` is incremented and exceeds the range of `My_Subtype`. The `bugSolution.ada` file shows how to handle this exception using an exception handler.

This example highlights the importance of careful type checking and exception handling in Ada to create robust and reliable programs.
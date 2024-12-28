```ada
procedure Example is
   subtype My_Subtype is Integer range 1..10;
   X : My_Subtype := 1;
begin
   X := X + 5; -- This line might raise Constraint_Error
   if X > 10 then
     Put_Line("X is greater than 10");
   end if;
exception
   when Constraint_Error =>
     Put_Line("Constraint Error occurred. X is out of bounds");
     -- Add error handling, such as setting X to the max/min value or logging
     X := My_Subtype'Last; -- Set X to the maximum value
     Put_Line("X reset to: " & Integer'Image(X));
end Example;
```
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
     Put_Line("Constraint Error occurred");
end Example;
```
-- There are two procedures in the package Ada.Text_IO:
-- procedure Put(Item : in Character) and
-- procedure Put(Item : in String).
-- The compiler will select automatically the suitable subprogramm according to the type of parameter.

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Overloads is
   type Vector is array(1 .. 5) of Integer;
   a, b, c:Vector;

   function "+"(left,right:Vector) return Vector is
      result:Vector;
   begin
      for i in left'Range loop
         result(i) := left(i) + right(i);
      end loop;
      return result;
   end "+";

   procedure Put(Item:Vector) is
   begin
      for i in Item'range loop
         Put(Item(i));
      end loop;
   end Put;

begin
   a := (1,2,3,4,5);
   b := (1,2,3,4,5);
   c := a + b;
   Put(c);
end Overloads;

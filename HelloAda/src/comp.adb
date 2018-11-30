with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Comp is
   procedure compare (A:Integer; B:Integer) is
   begin
      if A > B then
         Put_Line("A > B.");
      elsif A < B then
         Put_Line("A < B.");
      else
         Put_Line("A = B.");
      end if;
   end compare;

   X, Y:Integer;
begin
   Put("Enter A: ");
   Get(X);
   Put("Enter B: ");
   Get(Y);
   compare(X,Y);

end Comp;

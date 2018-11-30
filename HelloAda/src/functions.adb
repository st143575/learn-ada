with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure comp is
   function compare (A:Integer; B:Integer) return Integer is
   begin
      return (A - B);
   end compare;

   X, Y, Result:Integer;

begin
   Put("Subprogram-Functions:");
   New_Line;
   Put("Enter A: ");  Get(X);
   Put("Enter B: ");  Get(Y);
   Result := compare(X, Y);

   case Result is
      when Integer'First .. -1 => Put_Line("A < B.");
      when 1 .. Integer'Last => Put_Line("A > B.");
      when 0 => Put_Line("A = B.");
      when others => null;
   end case;
end comp;

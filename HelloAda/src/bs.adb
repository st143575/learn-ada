with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Bs is
   V:Integer := 1;
   U:Integer := 2;

begin
   PutVU1:
   begin
      Put("V is:");
      Put(V);
      New_Line;

      Put("U is:");
      Put(U);
      New_Line;
   end PutVU1;

   Swap:
   declare
      Temp:Integer;
   begin
      Temp := V;
      V := U;
      U := Temp;
   end Swap;

   Put_Line ("After swap");

   PutVU2:
   begin
      Put("V is:");
      Put(V);
      New_Line;

      Put("U is:");
      Put(U);
      New_Line;
   end PutVU2;
end Bs;

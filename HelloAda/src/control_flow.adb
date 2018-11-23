with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Control_Flow is
   Var1, Var2:Integer;
   type Arr is array (1 .. 5) of Integer;
   a1, a2, a3, a4, a5:Integer;
   Eingabe, Ausgabe:Arr;

begin
   ------------------
   -- if statement --
   ------------------
   Ada.Text_IO.Put("Enter an Integer number to confirm its range: ");
   Get(Var1);
   if Var1 in Integer'First .. -1 then
      Put_Line("It's a negative number.");
   elsif Var1 in 1 .. Integer'Last then
      Put_Line("It's a positive number.");
   else
      Put_Line("It's 0.");
   end if;



   --------------------
   -- case statement --
   --------------------
   Ada.Text_IO.Put("Enter an Integer number to confirm whether it is even or odd: ");
   Get(Var2);

   case Var2 mod 2 is
      when 0
         => Put_Line("It's a even(gerade) number.");
      when others
         => Put_Line("It's a odd(ungerade) number.");
   end case;


   --------------------
   -- loop statement --
   --------------------
   Ada.Text_IO.Put("Enter 5 Integer numbers as elements of an array. The programm will select the positive even elements. ");
   New_Line;
   Get(a1);
   Get(a2);
   Get(a3);
   Get(a4);
   Get(a5);
   Eingabe := (a1, a2, a3, a4, a5);

   Put("Your input is: ");
   for j in Eingabe'Range loop
      Put(Eingabe(j));
   end loop;
   New_Line;

   Put("The positive even element(s) is/are: ");
   for i in Eingabe'First .. Eingabe'Last loop
      if Eingabe(i) in 1 .. Integer'Last then
         if Eingabe(i) mod 2 = 0 then
            Ausgabe(i) := Eingabe(i);
            Put(Ausgabe(i));
         end if;
      end if;
      end loop;

end Control_Flow;

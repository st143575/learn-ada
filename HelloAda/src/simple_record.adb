with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Simple_Record is
   type ID_Card is
      record
         Family_Name:String(1..10);
         First_Name:String(1..10);
         Student_ID:Positive;
         Birthday:String(1..15);
         Major:String(1..10);
         Average_Grade:Float;
      end record;

   MyCard:ID_Card;

begin
   Ada.Text_IO.Put("Student:");
   Ada.Text_IO.New_Line;
   MyCard:=("Shen      ", "Chong     ", 123456, "Oct 01, 1949   ", "EE        ", 1.0);
   Ada.Text_IO.Put_Line(MyCard.Family_Name & MyCard.First_Name & Integer'Image(MyCard.Student_ID) & "   " & MyCard.Birthday & MyCard.Major & Float'Image(MyCard.Average_Grade));
end Simple_Record;

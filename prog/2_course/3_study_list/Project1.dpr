program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils, Classes,
  Unit1 in 'Unit1.pas',
  Unit2 in 'Unit2.pas',
  Unit3 in 'Unit3.pas',
  Unit4 in 'Unit4.pas',
  StrUtils, Windows;

var
i:integer;
List:Tlist;
phuman:^THuman;
TestVar1: THuman;
TestVar2: THuman;
TestVar3: THuman;

begin
writeln('Spisok');
TestVar1 := THuman.Init('Warfalamey', 94);
TestVar2 := TStudent.Init('Pafnutiy', 20, 222, 4.33);
TestVar3 := TTutor.Init('Inokentiy', 'Physics', 55, 10);
List:=TList.Create;

TestVar1.print();
TestVar2.print();
TestVar3.print();

SetConsoleTextAttribute(GetStdHandle(STD_OUTPUT_HANDLE),
			FOREGROUND_RED
      or
      FOREGROUND_GREEN
      or
      FOREGROUND_BLUE
      or
    	FOREGROUND_INTENSITY
      );

List.Add(@TestVar1);
THuman(List.Items[0]^).print;

new(phuman);
phuman^:=THuman.Init('Patrokl', 44);
List.Add(phuman);

new(phuman);
phuman^:=TStudent.Init('Matfey', 25, 333, 3.85);
List.Add(phuman);

for i:=1 to List.Count-1 do
THuman(List.Items[i]^).print;

readln;
end.


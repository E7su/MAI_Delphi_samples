program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
N=20;

type
vector=array[1..N] of integer;

procedure print(a:vector);
 var
 i:integer;
 begin
 for i:=1 to N do
 begin
 write(a[i],' ');
 end;
 writeln;
 end;

function sort(a:vector):vector;
 var
 buf,i,j:integer;
 begin
 for j:=1 to length(a)-1 do
  begin
  for i:=1 to length(a) do
   begin
   if (a[i])>(a[i+1])
    then
     begin
     buf:=a[i+1];
     a[i+1]:=a[i];
     a[i]:=buf;
     end;
   end;
  print(a);
  end;
 result:=a;
 end;

var
i:integer;
a:vector;

begin
randomize;
for i:=1 to N do
 begin
 a[i]:=random(100);
 write(a[i],' ');
 end;
writeln;
writeln;
a:=sort(a);
writeln;
for i:=1 to N do write(a[i],' ');
readln;
end.

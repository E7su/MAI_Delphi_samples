program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
N=10;
R=100;

type
vector=array[1..N] of integer;

procedure print(a:vector);
 var
 i:integer;
 begin
 for i:=1 to N do write(a[i],' ');
 end;

function init(a:vector):vector;
 var
 sum,num,i:integer;
 sr:real;
 begin
 sum:=0;
 num:=0;
  for i:=1 to length(a) do
   begin
   sum:=a[i]+sum;
   num:=num+1;
   end;
 sr:=sum/num;
 result:=a;
 write('Srednee arifmeticheskoe: ',sr:0:2);
 end;

var
i:integer;
a:vector;

begin
randomize;
for i:=1 to N do a[i]:=random(R);
print(a);
writeln;
a:=init(a);
readln;
end.

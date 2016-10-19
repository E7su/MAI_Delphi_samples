unit Unit3;

interface
uses Unit1;
type
TTutor = class(THuman)
private
  subj: string;
  hour: integer;

public
  constructor init(n, s: string; a, h: integer);
  Function get_subj(): string;
  Function get_hour(): integer;
  procedure print(); override;
end;

implementation

Constructor TTutor.Init(n, s: string; a, h: integer);
 begin
 inherited Init(n, a);
 subj := s;
 hour :=  h;
 end;

Function TTutor.get_subj(): string;
 begin
 result := subj;
 end;

Function TTutor.get_hour(): integer;
 begin
 result := hour;
 end;

procedure TTutor.print();
 begin
 inherited print;
 writeln('Subject: ', subj);
 writeln('Hour: ', hour);
 end;

end.


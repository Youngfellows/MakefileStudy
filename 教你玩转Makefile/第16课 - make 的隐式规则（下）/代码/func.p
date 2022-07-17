unit Func;

interface

procedure Greeting(); attribute (name = 'greeting');

implementation

procedure Greeting();
begin
  WriteLn('Hello, Pascal!');
end;


end.

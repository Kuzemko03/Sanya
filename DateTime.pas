function IsLeapYear(y: integer): boolean;
begin
  Result := False;
  if (y mod 4 = 0) and ((y mod 100 <> 0) or (y mod 400 = 0)) then Result := True;
end;


function LaterInYear(month1,day1, month2, day2 : integer; var m,d : integer): integer;
begin
  if 12- month1 > 12 - month2 then 
    begin
      m := month1;
      d := day1;
    end;
  if 12- month1 = 12 - month2 then 
  begin
     if 31 - day1 > 31 - day2 then
     begin
       m := month1;
       d := day1;
     end
     else
     begin
       m := month2;
       d := day2;
     end;
  end;
end;

function DaysInYear(y: integer) : boolean;
begin
  Result := IsLeapYear(y);
end;


begin
  
end.
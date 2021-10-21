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

function DaysInYear(y: integer) : integer;
begin
  if IsLeapYear(y) then Result := 366
  else Result := 365;
end;

function DaysInYearRange(y1, y2 : integer): integer;
begin
  var s := 0;
  for var i := y1 to y2 do
  begin
    Result += DaysInYear(i);
  end;
  
end;

function SeconsInHours(h1, h2: integer): integer;
begin
  for var i := h1 to h2 do
  begin
    Result+= 3600; 
  end;
end;

function IsYearOfApocalypse(y : integer): boolean;
begin
  Result := False;
  if (y = 1992) or (y = 2005) or (y = 2011) then Result := True;
end;

begin
  
end.
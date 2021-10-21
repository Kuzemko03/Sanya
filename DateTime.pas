function IsLeapYear(y: integer): boolean;
begin
  Result := False;
  if (y mod 4 = 0) and ((y mod 100 <> 0) or (y mod 400 = 0)) then Result := True;
end;

function SecondsInMinute(): integer;
begin
  Result := 60;
end;

begin
  
end.
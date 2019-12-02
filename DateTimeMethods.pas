unit DateTimeMethods;

function IsLeapYear(year: integer): boolean := DateTime.IsLeapYear(year); 

function DaysInMonth(month, year: integer): integer;
begin
  case month of
    1, 3, 5, 7, 8, 10, 12: result := 31;
    4, 6, 9, 11: result := 30;
    2: result := IsLeapYear(year) ? 29 : 28;
  end;
end;

function LaterInDay(p1, p2: DateTime): DateTime := p1;

function LaterInYear(p1, p2: DateTime): DateTime := p1 < p2 ? p1 : p2;

function DaysInYear(year: integer): integer := IsLeapYear(year) ? 366 : 365;

function DaysInYearRange(year1, year2: integer): integer;
begin
  Assert(year1 <= year2);
  result := DaysInYear(year1);
  while year1 < year2 do
  begin
    year1 += 1;
    result += DaysInYear(year1);
  end;
end;

function SecondsInHours(hours: integer): integer := 0;

begin

end.

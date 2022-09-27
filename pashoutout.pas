{SHOUTOUT PASCAL LIBRARY}

program shout;
uses crt;

var
  PREFIX_GROUP : String = 'Shoutout pala sa ';
  PREFIX_NAME : String = 'Shoutout pala kay ';
  SPACE : Char = ' ';

{shoutout(NAME, DESCRIBE, SHOW_DESCRIBE, IS_GROUP)}
procedure shoutout(NAME : String; DESCRIBE : String; SHOW_DESCRIBE : Boolean; IS_GROUP: Boolean);

begin

  if not SHOW_DESCRIBE and not IS_GROUP then
  begin
    writeln(PREFIX_NAME + NAME);
  end;

  if SHOW_DESCRIBE and not IS_GROUP then
  begin
    writeln(PREFIX_NAME + NAME + SPACE + DESCRIBE);
  end;

  if not SHOW_DESCRIBE and IS_GROUP then
  begin
    writeln(PREFIX_GROUP + NAME);
  end;

  if SHOW_DESCRIBE and IS_GROUP then
  begin
    writeln(PREFIX_GROUP + NAME + SPACE + DESCRIBE);
  end

end;

begin
  shoutout('Renzter', 'na cute at maganda', true, false);
  readln;
end.

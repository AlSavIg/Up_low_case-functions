var
  input: text;
  STRING_Input: STRING;
BEGIN
  assign(input, 'input.txt');
  rewrite(input);
  WHILE STRING_Input <> 'end' DO BEGIN
    ReadLn(STRING_Input);
    WriteLn(input, STRING_Input);
  END;
  close(input);
END.

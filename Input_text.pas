var
  input: text;
  STRING_Input: STRING;
BEGIN
  assign(input, 'input.txt');
  rewrite(input);
  ReadLn(STRING_Input);
  WriteLn(input, STRING_Input);
  close(input);
END.

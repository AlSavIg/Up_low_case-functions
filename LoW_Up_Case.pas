var
  input, output: text;
  Char_input: CHAR;
  STRING_mas: STRING;
BEGIN
  STRING_mas := '';
  assign(input, 'input.txt');
  reset(input);
  assign(output, 'output.txt');
  rewrite(output);
  WHILE not eof(input) DO BEGIN
    ReadLn(input, STRING_mas);
    STRING_mas := lowercase(STRING_mas);
    Writeln(output, STRING_mas);
    STRING_mas := '';
  END;
    close(output);
    close(input);
END.

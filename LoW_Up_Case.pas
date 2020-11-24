CONST
  high = ['A'..'Z'];
var
  input, output: text;
  STRING_Input: STRING;
  i: INTEGER;
BEGIN
  assign(input, 'input.txt');
  reset(input);
  read(input, STRING_Input);
  assign(output, 'output.txt');
  rewrite(output);
  for i := 1 to length(STRING_Input) do
    if (STRING_Input[i] in high) then STRING_Input[i] := lowercase(STRING_Input[i]);
    Write(output, STRING_Input);
    close(output);
    close(input);
END.

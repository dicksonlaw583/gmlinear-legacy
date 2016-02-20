///rnn(...)
{
  var result;
  switch (argument_count) {
    case 1:
      result[0, 0] = argument[0];
    break;
    case 4:
      result[0, 0] = argument[0];
      result[0, 1] = argument[1];
      result[1, 0] = argument[2];
      result[1, 1] = argument[3];
    break;
    case 9:
      result[0, 0] = argument[0];
      result[0, 1] = argument[1];
      result[0, 2] = argument[2];
      result[1, 0] = argument[3];
      result[1, 1] = argument[4];
      result[1, 2] = argument[5];
      result[2, 0] = argument[6];
      result[2, 1] = argument[7];
      result[2, 2] = argument[8];
    break;
    case 16:
      result[0, 0] = argument[0];
      result[0, 1] = argument[1];
      result[0, 2] = argument[2];
      result[0, 3] = argument[3];
      result[1, 0] = argument[4];
      result[1, 1] = argument[5];
      result[1, 2] = argument[6];
      result[1, 3] = argument[7];
      result[2, 0] = argument[8];
      result[2, 1] = argument[9];
      result[2, 2] = argument[10];
      result[2, 3] = argument[11];
      result[3, 0] = argument[12];
      result[3, 1] = argument[13];
      result[3, 2] = argument[14];
      result[3, 3] = argument[15];
    break;
    default:
      show_error("Expected 1, 4, 9 or 16 arguments, got " + string(argument_count) + ".", true);
    break;
  }
  return result;
}

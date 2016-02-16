///r22_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0, 0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(';', str);
  result[0, 1] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1, 0] = real(string_copy(str, 1, pos-1));
  result[1, 1] = real(string_delete(str, 1, pos));
  return result;
}

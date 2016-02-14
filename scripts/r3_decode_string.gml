///r3_decode_string(str)
{
  var str, pos, result;
  str = argument0;
  pos = string_pos(',', str);
  result[0] = real(string_copy(str, 1, pos-1));
  str = string_delete(str, 1, pos);
  pos = string_pos(',', str);
  result[1] = real(string_copy(str, 1, pos-1));
  result[2] = real(string_delete(str, 1, pos));
  return result;
}

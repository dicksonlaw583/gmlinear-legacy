///r2_decode_string_to(str, vout)
{
  var str, pos;
  str = argument0;
  pos = string_pos(',', str);
  argument1[@ 0] = real(string_copy(str, 1, pos-1));
  argument1[@ 1] = real(string_delete(str, 1, pos));
  return argument1;
}

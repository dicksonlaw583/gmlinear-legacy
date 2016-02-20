///r22_encode_string(M)
{
  return string_replace_all(
      string_format(argument0[0, 0], 15, 14)+","+
      string_format(argument0[0, 1], 15, 14)+";"+
      string_format(argument0[1, 0], 15, 14)+","+
      string_format(argument0[1, 1], 15, 14)
  , ' ', '');
}

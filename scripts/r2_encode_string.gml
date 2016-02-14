///r2_encode_string(v)
{
  return string_replace_all(string_format(argument0[0], 15, 14)+","+string_format(argument0[1], 15, 14), ' ', '');
}

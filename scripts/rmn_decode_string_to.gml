///rmn_decode_string_to(str, Mout)
{
  var str = argument0,
      i_dim = string_count(';', str);
  var cpos, spos, rowstr, j_dim;
  for (var i = 0; i < i_dim; i++) {
    spos = string_pos(';', str);
    rowstr = string_copy(str, 1, spos-1);
    str = string_delete(str, 1, spos);
    j_dim = string_count(',', rowstr);
    for (var j = 0; j < j_dim; j++) {
      cpos = string_pos(',', rowstr);
      argument1[@ i, j] = real(string_copy(rowstr, 1, cpos-1));
      rowstr = string_delete(rowstr, 1, cpos);
    }
    argument1[@ i, j_dim] = real(rowstr);
  }
  for (var j = 0; j < j_dim; j++) {
    cpos = string_pos(',', str);
    argument1[@ i_dim, j] = real(string_copy(str, 1, cpos-1));
    str = string_delete(str, 1, cpos);
  }
  argument1[@ i_dim, j_dim] = real(str);
  return argument1;
}

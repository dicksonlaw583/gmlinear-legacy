///rmn_decode_string_to(enc, Mout)
{
  var enc = argument0,
      i_dim = string_count(';', enc);
  var cpos, spos, rowenc, j_dim;
  for (var i = 0; i < i_dim; i++) {
    spos = string_pos(';', enc);
    rowenc = string_copy(enc, 1, spos-1);
    enc = string_delete(enc, 1, spos);
    j_dim = string_count(',', rowenc);
    for (var j = 0; j < j_dim; j++) {
      cpos = string_pos(',', rowenc);
      argument1[@ i, j] = real(string_copy(rowenc, 1, cpos-1));
      rowenc = string_delete(rowenc, 1, cpos);
    }
    argument1[@ i, j_dim] = real(rowenc);
  }
  for (var j = 0; j < j_dim; j++) {
    cpos = string_pos(',', enc);
    argument1[@ i_dim, j] = real(string_copy(enc, 1, cpos-1));
    enc = string_delete(enc, 1, cpos);
  }
  argument1[@ i_dim, j_dim] = real(enc);
  return argument1;
}

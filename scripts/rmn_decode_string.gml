///rmn_decode_string(enc)
{
  var enc = argument0,
      i_dim = string_count(';', enc);
  var cpos, spos, rowenc, j_dim, result;
  for (var i = 0; i < i_dim; i++) {
    spos = string_pos(';', enc);
    rowenc = string_copy(enc, 1, spos-1);
    enc = string_delete(enc, 1, spos);
    j_dim = string_count(',', rowenc);
    for (var j = 0; j < j_dim; j++) {
      cpos = string_pos(',', rowenc);
      result[i, j] = real(string_copy(rowenc, 1, cpos-1));
      rowenc = string_delete(rowenc, 1, cpos);
    }
    result[i, j_dim] = real(rowenc);
  }
  for (var j = 0; j < j_dim; j++) {
    cpos = string_pos(',', enc);
    result[i_dim, j] = real(string_copy(enc, 1, cpos-1));
    enc = string_delete(enc, 1, cpos);
  }
  result[i_dim, j_dim] = real(enc);
  return result;
}

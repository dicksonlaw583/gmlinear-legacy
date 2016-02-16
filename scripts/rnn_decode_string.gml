///rnn_decode_string(enc)
{
  var enc = argument0,
      n_dim = string_count(';', enc);
  var cpos, spos, rowenc, result;
  for (var i = 0; i < n_dim; i++) {
    spos = string_pos(';', enc);
    rowenc = string_copy(enc, 1, spos-1);
    enc = string_delete(enc, 1, spos);
    for (var j = 0; j < n_dim; j++) {
      cpos = string_pos(',', rowenc);
      result[i, j] = real(string_copy(rowenc, 1, cpos-1));
      rowenc = string_delete(rowenc, 1, cpos);
    }
    result[i, n_dim] = real(rowenc);
  }
  for (var j = 0; j < n_dim; j++) {
    cpos = string_pos(',', enc);
    result[n_dim, j] = real(string_copy(enc, 1, cpos-1));
    enc = string_delete(enc, 1, cpos);
  }
  result[n_dim, n_dim] = real(enc);
  return result;
}

///rnn_decode_string(str)
{
  var str = argument0,
      n_dim = string_count(';', str);
  var cpos, spos, rowstr, result;
  for (var i = 0; i < n_dim; i++) {
    spos = string_pos(';', str);
    rowstr = string_copy(str, 1, spos-1);
    str = string_delete(str, 1, spos);
    for (var j = 0; j < n_dim; j++) {
      cpos = string_pos(',', rowstr);
      result[i, j] = real(string_copy(rowstr, 1, cpos-1));
      rowstr = string_delete(rowstr, 1, cpos);
    }
    result[i, n_dim] = real(rowstr);
  }
  for (var j = 0; j < n_dim; j++) {
    cpos = string_pos(',', str);
    result[n_dim, j] = real(string_copy(str, 1, cpos-1));
    str = string_delete(str, 1, cpos);
  }
  result[n_dim, n_dim] = real(str);
  return result;
}

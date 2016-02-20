///rmn_decode_base64(enc, m, n)
{
  var i_dim = argument1,
      j_dim = argument2,
      buffer = buffer_create(8*argument1*argument2, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  for (var i = 0; i < i_dim; i++) {
    for (var j = 0; j < j_dim; j++) {
      result[i, j] = buffer_read(buffer, buffer_f64);
    }
  }
  buffer_delete(buffer);
  return result;
}

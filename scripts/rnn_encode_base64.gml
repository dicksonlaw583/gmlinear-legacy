///rnn_encode_base64(M)
{
  var n = array_height_2d(argument0),
      buffer = buffer_create(8*n*n, buffer_fixed, 1);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      buffer_write(buffer, buffer_f64, argument0[i, j]);
    }
  }
  var result = buffer_base64_encode(buffer, 0, 8*n*n);
  buffer_delete(buffer);
  return result;
}

///rmn_encode_base64(M)
{
  var m = array_height_2d(argument0),
      n = array_length_2d(argument0, 0),
      buffer = buffer_create(8*m*n, buffer_fixed, 1);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      buffer_write(buffer, buffer_f64, argument0[i, j]);
    }
  }
  var result = buffer_base64_encode(buffer, 0, 8*m*n);
  buffer_delete(buffer);
  return result;
}

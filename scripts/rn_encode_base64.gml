///rn_encode_base64(v)
{
  var v_dim = array_length_1d(argument0);
  var buffer = buffer_create(8*v_dim, buffer_fixed, 1);
  for (var i = 0; i < v_dim; i++) {
    buffer_write(buffer, buffer_f64, argument0[i]);
  }
  result = buffer_base64_encode(buffer, 0, 8*v_dim);
  buffer_delete(buffer);
  return result;
}

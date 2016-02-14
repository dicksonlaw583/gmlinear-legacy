///r2_encode_base64(v)
{
  var buffer = buffer_create(16, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0]);
  buffer_write(buffer, buffer_f64, argument0[1]);
  result = buffer_base64_encode(buffer, 0, 16);
  buffer_delete(buffer);
  return result;
}

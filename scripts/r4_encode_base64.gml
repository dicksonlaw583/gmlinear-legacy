///r4_encode_base64(v)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_write(buffer, buffer_f64, argument0[0]);
  buffer_write(buffer, buffer_f64, argument0[1]);
  buffer_write(buffer, buffer_f64, argument0[2]);
  buffer_write(buffer, buffer_f64, argument0[3]);
  result = buffer_base64_encode(buffer, 0, 32);
  buffer_delete(buffer);
  return result;
}

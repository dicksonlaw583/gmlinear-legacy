///r3_decode_base64(enc)
{
  var buffer = buffer_create(24, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0] = buffer_read(buffer, buffer_f64);
  result[1] = buffer_read(buffer, buffer_f64);
  result[2] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

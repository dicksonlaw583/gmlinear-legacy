///r3_decode_base64_to(enc, vout)
{
  var buffer = buffer_create(24, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 2] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

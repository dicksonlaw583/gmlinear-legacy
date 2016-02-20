///r22_decode_base64_to(enc, Mout)
{
  var buffer = buffer_create(32, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  argument1[@ 0, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 0, 1] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 0] = buffer_read(buffer, buffer_f64);
  argument1[@ 1, 1] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return argument1;
}

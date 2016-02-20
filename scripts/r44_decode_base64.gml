///r44_decode_base64(enc)
{
  var buffer = buffer_create(128, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  var result;
  result[0, 0] = buffer_read(buffer, buffer_f64);
  result[0, 1] = buffer_read(buffer, buffer_f64);
  result[0, 2] = buffer_read(buffer, buffer_f64);
  result[0, 3] = buffer_read(buffer, buffer_f64);
  result[1, 0] = buffer_read(buffer, buffer_f64);
  result[1, 1] = buffer_read(buffer, buffer_f64);
  result[1, 2] = buffer_read(buffer, buffer_f64);
  result[1, 3] = buffer_read(buffer, buffer_f64);
  result[2, 0] = buffer_read(buffer, buffer_f64);
  result[2, 1] = buffer_read(buffer, buffer_f64);
  result[2, 2] = buffer_read(buffer, buffer_f64);
  result[2, 3] = buffer_read(buffer, buffer_f64);
  result[3, 0] = buffer_read(buffer, buffer_f64);
  result[3, 1] = buffer_read(buffer, buffer_f64);
  result[3, 2] = buffer_read(buffer, buffer_f64);
  result[3, 3] = buffer_read(buffer, buffer_f64);
  buffer_delete(buffer);
  return result;
}

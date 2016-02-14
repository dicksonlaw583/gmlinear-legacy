///rn_decode_base64_to(enc, n, vout)
{
  var v_dim = argument1,
      buffer = buffer_create(8*v_dim, buffer_fixed, 1);
  buffer_base64_decode_ext(buffer, argument0, 0);
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = buffer_read(buffer, buffer_f64);
  }
  buffer_delete(buffer);
  return argument2;
}

///rn_decode_string_to(enc, vout)
{
  var enc = argument0,
      v_dim = string_count(',', enc);
  var pos;
  for (var i = 0; i < v_dim; i++) {
    pos = string_pos(',', enc);
    argument1[@ i] = real(string_copy(enc, 1, pos-1));
    enc = string_delete(enc, 1, pos);
  }
  argument1[@ v_dim] = real(enc);
  return argument1;
}

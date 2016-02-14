///rn_decode_string(enc)
{
  var enc = argument0,
      v_dim = string_count(',', enc);
  var pos, result;
  for (var i = 0; i < v_dim; i++) {
    pos = string_pos(',', enc);
    result[i] = real(string_copy(enc, 1, pos-1));
    enc = string_delete(enc, 1, pos);
  }
  result[v_dim] = real(enc);
  return result;
}

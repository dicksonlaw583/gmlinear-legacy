///rn_scale(v, r)
{
  var v_dim = array_length_1d(argument0);
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = argument1*argument0[i];
  }
  return result;
}

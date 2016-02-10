///rn_scale_to(v, r, vout)
{
  var v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument1*argument0[i];
  }
  return argument2;
}

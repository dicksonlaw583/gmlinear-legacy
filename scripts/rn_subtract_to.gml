///rn_subtract_to(v1, v2, vout)
{
  var v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument0[i]-argument1[i];
  }
  return argument2;
}

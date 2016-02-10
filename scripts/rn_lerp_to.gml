///rn_lerp_to(v1, v2, amount, vout)
{
  var v_dim = array_length_1d(argument0);
  if (GMLIN_DEBUG_MODE && v_dim != array_length_1d(argument1)) {
    show_error("Vector dimension mismatch: " + string(v_dim) + " and " + string(array_length_1d(argument1)), true);
  }
  
  for (var i = 0; i < v_dim; i++) {
    argument3[@ i] = lerp(argument0[i], argument1[i], argument2);
  }
  return argument3;
}

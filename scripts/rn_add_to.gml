///rn_add_to(v1, v2, vout)
{
  var v_dim = array_length_1d(argument0);
  if (GMLIN_DEBUG_MODE && v_dim != array_length_1d(argument1)) {
    show_error("Vector dimension mismatch: " + string(v_dim) + " and " + string(array_length_1d(argument1)), true);
  }
  
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument0[i]+argument1[i];
  }
  return argument2;
}

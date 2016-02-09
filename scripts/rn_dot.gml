///rn_dot(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  if (GMLIN_DEBUG_MODE && v_dim != array_length_1d(argument1)) {
    show_error("Vector dimension mismatch: " + string(v_dim) + " and " + string(array_length_1d(argument1)), true);
  }
  
  var result = 0;
  for (var i = 0; i < v_dim; i++) {
    result += argument0[i]*argument1[i];
  }
  return result;
}

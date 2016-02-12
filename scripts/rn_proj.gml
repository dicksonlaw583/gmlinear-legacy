///rn_proj(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  if (GMLIN_DEBUG_MODE && v_dim != array_length_1d(argument1)) {
    show_error("Vector dimension mismatch: " + string(v_dim) + " and " + string(array_length_1d(argument1)), true);
  }
  
  var aa = 0,
      bb = 0;
  for (var i = 0; i < v_dim; i++) {
    aa += argument0[i]*argument1[i];
    bb += argument1[i]*argument1[i];
  }
  var factor = aa/bb;
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = factor*argument1[i];
  }
  return result;
}

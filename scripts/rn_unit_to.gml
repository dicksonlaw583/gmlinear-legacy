///rn_unit_to(v, vout)
{
  var v_dim = array_length_1d(argument0);
  var factor = 0;
  for (var i = 0; i < v_dim; i++) {
    factor += argument0[i]*argument0[i];
  }
  if (factor == 0) {
    for (var i = 0; i < v_dim; i++) {
      argument1[@ i] = 0;
    }
  } else {
    factor = 1/sqrt(factor);
    for (var i = 0; i < v_dim; i++) {
      argument1[@ i] = factor*argument0[i];
    }
  }
  return argument1;
}

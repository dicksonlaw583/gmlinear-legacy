///rn_unit(v)
{
  var v_dim = array_length_1d(argument0);
  var factor = 0;
  for (var i = 0; i < v_dim; i++) {
    factor += argument0[i]*argument0[i];
  }
  var result;
  if (factor == 0) {
    for (var i = 0; i < v_dim; i++) {
      result[i] = 0;
    }
  } else {
    factor = 1/sqrt(factor);
    for (var i = 0; i < v_dim; i++) {
      result[i] = factor*argument0[i];
    }
  }
  return result;
}

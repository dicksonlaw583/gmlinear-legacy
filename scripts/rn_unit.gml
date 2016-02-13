///rn_unit(v)
{
  var v_dim = array_length_1d(argument0);
  var factor = 0;
  for (var i = 0; i < v_dim; i++) {
    factor += argument0[i]*argument0[i];
  }
  factor = 1/sqrt(factor);
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = factor*argument0[i];
  }
  return result;
}

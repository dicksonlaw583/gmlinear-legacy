///rn_maxnorm(v)
{
  var v_dim = array_length_1d(argument0),
      result = 0;
  var val;
  for (var i = 0; i < v_dim; i++) {
    val = abs(argument0[i]);
    if (val > result) {
      result = val;
    }
  }
  return result;
}

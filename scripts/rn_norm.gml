///rn_norm(v)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  for (var i = 0; i < v_dim; i++) {
    result += argument0[i]*argument0[i];
  }
  return sqrt(result);
}

///rn_1dist(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  for (var i = 0; i < v_dim; i++) {
    result += abs(argument1[i]-argument0[i]);
  }
  return result;
}

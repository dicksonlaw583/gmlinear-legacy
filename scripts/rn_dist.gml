///rn_dist(v1, v2)
{
  var v_dim = array_length_1d(argument0);
  var result = 0;
  var diff;
  for (var i = 0; i < v_dim; i++) {
    diff = argument1[i]-argument0[i];
    result += diff*diff;
  }
  return sqrt(result);
}

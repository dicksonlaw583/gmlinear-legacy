///rn_lerp(v1, v2, amount)
{
  var v_dim = array_length_1d(argument0);
  var result;
  for (var i = 0; i < v_dim; i++) {
    result[i] = lerp(argument0[i], argument1[i], argument2);
  }
  return result;
}

///rn_clone(v)
{
  var v_new, v_dim;
  v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    v_new[i] = argument0[i];
  }
  return v_new;
}

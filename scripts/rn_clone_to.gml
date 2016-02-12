///rn_clone_to(v, vout)
{
  var v_dim;
  v_dim = array_length_1d(argument0);
  for (var i = 0; i < v_dim; i++) {
    argument1[@ i] = argument0[i];
  }
  return argument1;
}

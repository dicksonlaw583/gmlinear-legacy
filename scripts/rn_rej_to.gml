///rn_rej_to(v1, v2, vout)
{
  var v_dim = array_length_1d(argument0);
  var aa = 0,
      bb = 0;
  for (var i = 0; i < v_dim; i++) {
    aa += argument0[i]*argument1[i];
    bb += argument1[i]*argument1[i];
  }
  var factor = aa/bb;
  for (var i = 0; i < v_dim; i++) {
    argument2[@ i] = argument0[i]-factor*argument1[i];
  }
  return argument2;
}

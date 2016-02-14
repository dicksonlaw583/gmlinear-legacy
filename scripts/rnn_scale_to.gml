///rnn_scale_to(M, r, Mout)
{
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n; j++) {
      argument2[@ i, j] = argument0[i, j]*argument1;
    }
  }
  return argument2;
}

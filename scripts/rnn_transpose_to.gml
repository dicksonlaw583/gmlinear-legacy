///rnn_transpose_to(M, Mout)
{
  var result, tmp;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j <= i; j++) {
      tmp = argument0[i, j];
      argument1[@ i, j] = argument0[j, i];
      argument1[@ j, i] = tmp;
    }
  }
  return argument1;
}

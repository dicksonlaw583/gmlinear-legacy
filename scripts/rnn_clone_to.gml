///rnn_clone_to(M, Mout)
{
  var M_dim;
  M_dim = array_height_2d(argument0);
  for (var i = 0; i < M_dim; i++) {
    for (var j = 0; j < M_dim; j++) {
      argument1[@ i, j] = argument0[i, j];
    }
  }
  return argument1;
}

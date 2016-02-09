///rnn_clone(M)
{
  var M_new, M_dim;
  M_dim = array_height_2d(argument0);
  for (var i = 0; i < M_dim; i++) {
    for (var j = 0; j < M_dim; j++) {
      M_new[i, j] = argument0[i, j];
    }
  }
  return M_new;
}

///rnn_identity(n)
{
  var M;
  for (var i = 0; i < argument0; i++) {
    for (var j = 0; j < argument0; j++) {
      M[i, j] = 0;
    }
  }
  for (var i = 0; i < argument0; i++) {
    M[i, i] = 1;
  }
  return M;
}

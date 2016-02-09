///rnn_zero(n)
{
  var M;
  for (var i = 0; i < argument0; i++) {
    for (var j = 0; j < argument0; j++) {
      M[i, j] = 0;
    }
  }
  return M;
}

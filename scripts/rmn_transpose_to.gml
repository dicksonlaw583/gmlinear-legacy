///rmn_transpose_to(M, Mout)
{
  var result;
  var m = array_height_2d(argument0),
      n = array_length_2d(argument0, 0);
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      result[i, j] = argument0[j, i];
    }
  }
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < m; j++) {
      argument1[@ i, j] = result[i, j];
    }
  }
  return argument1;
}

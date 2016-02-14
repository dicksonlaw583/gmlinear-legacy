///rmn_multiply_to(M1, M2, Mout)
{
  var result;
  var m = array_height_2d(argument0),
      q = array_height_2d(argument1),
      n = array_length_2d(argument1, 0);
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      result[i, j] = 0;
      for (var k = 0; k < q; k++) {
        result[i, j] += argument0[i, k]*argument1[k, j];
      }
    }
  }
  for (var i = 0; i < m; i++) {
    for (var j = 0; j < n; j++) {
      argument2[@ i, j] = result[i, j];
    }
  }
  return argument2;
}

///rmn_transform_to(M, v, vout)
{
  var result;
  var n = array_height_2d(argument0);
  for (var i = 0; i < n; i++) {
    result[i] = 0;
    for (var j = 0; j < n; j++) {
      result[i] += argument0[i, j]*argument1[j];
    }
  }
  for (var i = 0; i < n; i++) {
    argument2[@ i] = result[i];
  }
  return argument2;
}

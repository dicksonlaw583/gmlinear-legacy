///r22_transform(M, v)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      b0 = argument1[0],
      b1 = argument1[1];
  var result;
  result[0] = a00*b0 + a01*b1;
  result[1] = a10*b0 + a11*b1;
  return result;
}

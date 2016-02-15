///r44_transform(M, v)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a03 = argument0[0, 3],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a13 = argument0[1, 3],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      a23 = argument0[2, 3],
      a30 = argument0[3, 0],
      a31 = argument0[3, 1],
      a32 = argument0[3, 2],
      a33 = argument0[3, 3],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3];
  var result;
  result[0] = a00*b0 + a01*b1 + a02*b2 + a03*b3;
  result[1] = a10*b0 + a11*b1 + a12*b2 + a13*b3;
  result[2] = a20*b0 + a21*b1 + a22*b2 + a23*b3;
  result[3] = a30*b0 + a31*b1 + a32*b2 + a33*b3;
  return result;
}

///r33_transform_to(M, v, vout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2];
  argument2[@ 0] = a00*b0 + a01*b1 + a02*b2;
  argument2[@ 1] = a10*b0 + a11*b1 + a12*b2;
  argument2[@ 2] = a20*b0 + a21*b1 + a22*b2;
  return argument2;
}

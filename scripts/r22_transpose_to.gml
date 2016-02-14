///r22_transpose_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1];
  argument1[@ 0, 0] = a00;
  argument1[@ 0, 1] = a10;
  argument1[@ 1, 0] = a01;
  argument1[@ 1, 1] = a11;
  return argument1;
}

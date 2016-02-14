///r33_transpose_to(M, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a02 = argument0[0, 2],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      a12 = argument0[1, 2],
      a20 = argument0[2, 0],
      a21 = argument0[2, 1],
      a22 = argument0[2, 2];
  argument1[@ 0, 0] = a00;
  argument1[@ 0, 1] = a10;
  argument1[@ 0, 2] = a20;
  argument1[@ 1, 0] = a01;
  argument1[@ 1, 1] = a11;
  argument1[@ 1, 2] = a21;
  argument1[@ 2, 0] = a02;
  argument1[@ 2, 1] = a12;
  argument1[@ 2, 2] = a22;
  return argument1;
}

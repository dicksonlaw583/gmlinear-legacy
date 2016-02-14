///r44_transpose_to(M, Mout)
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
      a33 = argument0[3, 3];
  argument1[@ 0, 0] = a00;
  argument1[@ 0, 1] = a10;
  argument1[@ 0, 2] = a20;
  argument1[@ 0, 3] = a30;
  argument1[@ 1, 0] = a01;
  argument1[@ 1, 1] = a11;
  argument1[@ 1, 2] = a21;
  argument1[@ 1, 3] = a31;
  argument1[@ 2, 0] = a02;
  argument1[@ 2, 1] = a12;
  argument1[@ 2, 2] = a22;
  argument1[@ 2, 3] = a32;
  argument1[@ 3, 0] = a03;
  argument1[@ 3, 1] = a13;
  argument1[@ 3, 2] = a23;
  argument1[@ 3, 3] = a33;
  return argument1;
}

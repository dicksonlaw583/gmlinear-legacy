///r33_multiply_to(M1, M2, Mout)
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
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b02 = argument1[0, 2],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1],
      b12 = argument1[1, 2],
      b20 = argument1[2, 0],
      b21 = argument1[2, 1],
      b22 = argument1[2, 2];
  argument2[@ 0, 0] = a00*b00 + a01*b10 + a02*b20;
  argument2[@ 0, 1] = a00*b01 + a01*b11 + a02*b21;
  argument2[@ 0, 2] = a00*b02 + a01*b12 + a02*b22;
  argument2[@ 1, 0] = a10*b00 + a11*b10 + a12*b20;
  argument2[@ 1, 1] = a10*b01 + a11*b11 + a12*b21;
  argument2[@ 1, 2] = a10*b02 + a11*b12 + a12*b22;
  argument2[@ 2, 0] = a20*b00 + a21*b10 + a22*b20;
  argument2[@ 2, 1] = a20*b01 + a21*b11 + a22*b21;
  argument2[@ 2, 2] = a20*b02 + a21*b12 + a22*b22;
  return argument2;
}

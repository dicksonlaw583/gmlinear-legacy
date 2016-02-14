///r22_multiply_to(M1, M2, Mout)
{
  var a00 = argument0[0, 0],
      a01 = argument0[0, 1],
      a10 = argument0[1, 0],
      a11 = argument0[1, 1],
      b00 = argument1[0, 0],
      b01 = argument1[0, 1],
      b10 = argument1[1, 0],
      b11 = argument1[1, 1];
  argument2[@ 0, 0] = a00*b00 + a01*b10;
  argument2[@ 0, 1] = a00*b01 + a01*b11;
  argument2[@ 1, 0] = a10*b00 + a11*b10;
  argument2[@ 1, 1] = a10*b01 + a11*b11;
  return argument2;
}

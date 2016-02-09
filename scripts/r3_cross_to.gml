///r3_cross_to(v1, v2, vout)
{
  var a0 = argument0[0],
      a1 = argument0[1],
      a2 = argument0[2],
      b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2];
  argument2[@ 0] = a1*b2-a2*b1;
  argument2[@ 1] = a2*b0-a0*b2;
  argument2[@ 2] = a0*b1-a1*b0;
  return argument2;
}

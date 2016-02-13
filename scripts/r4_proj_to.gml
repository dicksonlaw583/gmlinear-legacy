///r4_proj_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2] + b3*argument0[3]) / (b0*b0 + b1*b1 + b2*b2 + b3*b3);
  argument2[@ 0] = factor*b0;
  argument2[@ 1] = factor*b1;
  argument2[@ 2] = factor*b2;
  argument2[@ 3] = factor*b3;
  return argument2;
}

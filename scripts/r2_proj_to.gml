///r2_proj_to(v1, v2, vout)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      factor = (b0*argument0[0] + b1*argument0[1]) / (b0*b0 + b1*b1);
  argument2[@ 0] = factor*b0;
  argument2[@ 1] = factor*b1;
  return argument2;
}

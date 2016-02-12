///r4_proj(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      b3 = argument1[3],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2] + b3*argument0[3]) / (b0*b0 + b1*b1 + b2*b2 + b3*b3);
  var result;
  result[0] = factor*b0;
  result[1] = factor*b1;
  result[2] = factor*b2;
  result[3] = factor*b3;
  return result;
}

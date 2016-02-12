///r2_rej(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      factor = (b0*argument0[0] + b1*argument0[1]) / (b0*b0 + b1*b1);
  var result;
  result[0] = argument0[0]-factor*b0;
  result[1] = argument0[1]-factor*b1;
  return result;
}

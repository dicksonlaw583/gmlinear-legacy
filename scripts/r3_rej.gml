///r3_rej(v1, v2)
{
  var b0 = argument1[0],
      b1 = argument1[1],
      b2 = argument1[2],
      factor = (b0*argument0[0] + b1*argument0[1] + b2*argument0[2]) / (b0*b0 + b1*b1 + b2*b2);
  var result;
  result[0] = argument0[0]-factor*b0;
  result[1] = argument0[1]-factor*b1;
  result[2] = argument0[2]-factor*b2;
  return result;
}

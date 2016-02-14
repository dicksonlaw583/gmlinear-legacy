///r3_cyl_rec(v_rpz)
{
  var result;
  result[0] = argument0[0]*cos(argument0[1]);
  result[1] = argument0[0]*sin(argument0[1]);
  result[2] = argument0[2];
  return result;
}

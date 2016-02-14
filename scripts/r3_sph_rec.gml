///r3_sph_rec(v_rpt)
{
  var result;
  result[0] = argument0[0]*cos(argument0[1])*sin(argument0[2]);
  result[1] = argument0[0]*sin(argument0[1])*sin(argument0[2]);
  result[2] = argument0[0]*cos(argument0[2]);
  return result;
}

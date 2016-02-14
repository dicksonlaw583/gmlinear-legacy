///r2_pol_rec_to(vi_rt, vo_xy)
{
  var r = argument0[0],
      theta = argument0[1];
  argument1[@ 0] = r*cos(theta);
  argument1[@ 1] = r*sin(theta);
  return argument1;
}

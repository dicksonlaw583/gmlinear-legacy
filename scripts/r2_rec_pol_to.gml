///r2_rec_pol_to(vi_xy, vo_rt)
{
  var xx = argument0[0],
      yy = argument0[1];
  argument1[@ 0] = sqrt(xx*xx + yy*yy);
  argument1[@ 1] = arctan2(yy, xx);
  return argument1;
}

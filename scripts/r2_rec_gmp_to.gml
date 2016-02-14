///r2_rec_gmp_to(vi_xy, vo_ld)
{
  var xx = argument0[0],
      yy = argument0[1];
  argument1[@ 0] = sqrt(xx*xx + yy*yy);
  argument1[@ 1] = darctan2(-yy, xx);
  return argument1;
}

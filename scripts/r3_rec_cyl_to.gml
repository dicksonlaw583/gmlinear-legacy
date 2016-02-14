///r3_rec_cyl_to(vi_xyz, vo_rpz)
{
  var xx = argument0[0],
      yy = argument0[1],
      zz = argument0[2];
  argument1[@ 0] = sqrt(xx*xx + yy*yy);
  if (argument1[@ 0] == 0) {
    argument1[@ 1] = 0;
  }
  else {
    argument1[@ 1] = arctan2(yy, xx);
  }
  argument1[@ 2] = zz;
  return argument1;
}

///r3_rec_sph_to(vi_xyz, vo_rpt)
{
  var xx = argument0[0],
      yy = argument0[1],
      zz = argument0[2];
  argument1[@ 0] = sqrt(xx*xx + yy*yy + zz*zz);
  if (argument1[@ 0] == 0) {
    argument1[@ 1] = 0;
    argument1[@ 2] = 0;
  }
  else {
    argument1[@ 1] = arctan2(yy, xx);
    argument1[@ 2] = arccos(zz/argument1[@ 0]);
  }
  return argument1;
}

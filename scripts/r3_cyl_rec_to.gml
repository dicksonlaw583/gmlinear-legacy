///r3_cyl_rec_to(vi_rpz, vo_xyz)
{
  var rho = argument0[0],
      azi = argument0[1],
      zz = argument0[2];
  argument1[@ 0] = rho*cos(azi);
  argument1[@ 1] = rho*sin(azi);
  argument1[@ 2] = zz;
  return argument1;
}

///r3_cyl_sph_to(vi_rpz, vo_rpt)
{
  var rho = argument0[0],
      azi = argument0[1],
      zzz = argument0[2];
  argument1[@ 0] = sqrt(argument0[0]*argument0[0]+argument0[2]*argument0[2]);
  argument1[@ 1] = azi;
  argument1[@ 2] = arccos(zzz/argument1[@ 0]);
  return argument1;
}

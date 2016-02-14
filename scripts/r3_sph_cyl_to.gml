///r3_sph_cyl_to(vi_rpt, vo_rpz)
{
  var rho = argument0[0],
      azi = argument0[1],
      zen = argument0[2];
  argument1[@ 0] = rho*sin(zen);
  argument1[@ 1] = azi;
  argument1[@ 2] = rho*cos(zen);
  return argument1;
}

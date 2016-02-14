///r3_sph_rec_to(vi_rpt, vo_xyz)
{
  var rho = argument0[0],
      azi = argument0[1],
      zen = argument0[2];
  argument1[@ 0] = rho*cos(azi)*sin(zen);
  argument1[@ 1] = rho*sin(azi)*sin(zen);
  argument1[@ 2] = rho*cos(zen);
  return argument1;
}

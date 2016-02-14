///r2_gmp_rec_to(vi_ld, vo_xy)
{
  var len = argument0[0],
      dir = argument0[1];
  argument1[@ 0] = lengthdir_x(len, dir);
  argument1[@ 1] = lengthdir_y(len, dir);
  return argument1;
}

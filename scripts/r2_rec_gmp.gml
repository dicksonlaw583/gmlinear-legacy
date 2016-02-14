///r2_rec_gmp(v_xy)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]);
  result[1] = darctan2(-argument0[1], argument0[0]);
  return result;
}

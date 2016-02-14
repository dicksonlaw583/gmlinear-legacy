///r3_cyl_sph(v_rpz)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[2]*argument0[2]);
  result[1] = argument0[1];
  result[2] = arccos(argument0[2]/result[0]);
  return result;
}

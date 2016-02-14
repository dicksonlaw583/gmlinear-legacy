///r3_rec_sph(v_xyz)
{
  var result;
  result[0] = sqrt(argument0[0]*argument0[0]+argument0[1]*argument0[1]+argument0[2]*argument0[2]);
  if (result[0] == 0) {
    result[1] = 0;
    result[2] = 0;
  }
  else {
    result[1] = arctan2(argument0[1], argument0[0]);
    result[2] = arccos(argument0[2]/result[0]);
  }
  return result;
}

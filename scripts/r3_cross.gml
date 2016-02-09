///r3_cross(v1, v2)
{
  var result;
  result[0] = argument0[1]*argument1[2]-argument0[2]*argument1[1];
  result[1] = argument0[2]*argument1[0]-argument0[0]*argument1[2];
  result[2] = argument0[0]*argument1[1]-argument0[1]*argument1[0];
  return result;
}
